import React from 'react';
import styles from './components/CohortDetails.module.css';

const cohorts = [
  {
    id: 'INTADMDF10',
    title: '.NET FSD',
    startDate: '22-Feb-2022',
    status: 'Scheduled',
    coach: 'Aathma',
    trainer: 'Jojo Jose',
    color: 'blue'
  },
  {
    id: 'ADM21JF014',
    title: 'Java FSD',
    startDate: '10-Sep-2021',
    status: 'Ongoing',
    coach: 'Apoorv',
    trainer: 'Elisa Smith',
    color: 'green'
  },
  {
    id: 'CDBJF21025',
    title: 'Java FSD',
    startDate: '24-Dec-2021',
    status: 'Ongoing',
    coach: 'Aathma',
    trainer: 'John Doe',
    color: 'green'
  }
];

function CohortDetails() {
  return (
    <div>
      <h2>Cohorts Details</h2>
      <div className={styles.cardContainer}>
        {cohorts.map((cohort, index) => (
          <div key={index} className={styles.card}>
            <p className={styles.cohortId} style={{ color: cohort.color }}>
              {cohort.id} - {cohort.title}
            </p>
            <p><strong>Started On</strong><br />{cohort.startDate}</p>
            <p><strong>Current Status</strong><br />{cohort.status}</p>
            <p><strong>Coach</strong><br />{cohort.coach}</p>
            <p><strong>Trainer</strong><br />{cohort.trainer}</p>
          </div>
        ))}
      </div>
    </div>
  );
}

export default CohortDetails;

