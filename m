Return-Path: <devicetree+bounces-10906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6537D36D8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DBF15B20E70
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 12:36:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B46418E1A;
	Mon, 23 Oct 2023 12:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE4418E1C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 12:36:06 +0000 (UTC)
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38153D6E;
	Mon, 23 Oct 2023 05:36:05 -0700 (PDT)
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39NB8ExR021705;
	Mon, 23 Oct 2023 08:36:02 -0400
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 3tvugj7ftc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 08:36:02 -0400 (EDT)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 39NCZx54012918
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 23 Oct 2023 08:36:00 -0400
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.14; Mon, 23 Oct
 2023 08:35:59 -0400
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.986.14 via Frontend
 Transport; Mon, 23 Oct 2023 08:35:59 -0400
Received: from rbolboac.ad.analog.com ([10.48.65.174])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 39NCZjdu025089;
	Mon, 23 Oct 2023 08:35:51 -0400
From: Ramona Gradinariu <ramona.gradinariu@analog.com>
To: <jic23@kernel.org>, <nuno.sa@analog.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <linux-iio@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>
CC: Ramona Gradinariu <ramona.gradinariu@analog.com>
Subject: [PATCH 1/3] iio: imu: adis: Use spi cs inactive delay
Date: Mon, 23 Oct 2023 15:35:40 +0300
Message-ID: <20231023123542.582392-2-ramona.gradinariu@analog.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231023123542.582392-1-ramona.gradinariu@analog.com>
References: <20231023123542.582392-1-ramona.gradinariu@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: B_RqpLKz7ZpU8hEXjaRE3QD91StcXUCG
X-Proofpoint-GUID: B_RqpLKz7ZpU8hEXjaRE3QD91StcXUCG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-23_10,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 clxscore=1015 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2310170000
 definitions=main-2310230109

A delay is needed each time the chip selected becomes inactive,
even after burst data readings are performed.
Currently, there is no delay added after a burst reading
and in case a new SPI transfer is performed before
the needed delay, the adis device becomes unresponsive until
reset.

This commit is adding the needed delay directly to the spi driver,
using the cs_inactive parameter, in case it is not set and is
removing the additional chip select change delay present in adis
APIs to remove the double delay.

Signed-off-by: Ramona Gradinariu <ramona.gradinariu@analog.com>
---
 drivers/iio/imu/adis.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/iio/imu/adis.c b/drivers/iio/imu/adis.c
index bc40240b29e2..495caf4ce87a 100644
--- a/drivers/iio/imu/adis.c
+++ b/drivers/iio/imu/adis.c
@@ -44,8 +44,6 @@ int __adis_write_reg(struct adis *adis, unsigned int reg, unsigned int value,
 			.cs_change = 1,
 			.delay.value = adis->data->write_delay,
 			.delay.unit = SPI_DELAY_UNIT_USECS,
-			.cs_change_delay.value = adis->data->cs_change_delay,
-			.cs_change_delay.unit = SPI_DELAY_UNIT_USECS,
 		}, {
 			.tx_buf = adis->tx + 2,
 			.bits_per_word = 8,
@@ -53,8 +51,6 @@ int __adis_write_reg(struct adis *adis, unsigned int reg, unsigned int value,
 			.cs_change = 1,
 			.delay.value = adis->data->write_delay,
 			.delay.unit = SPI_DELAY_UNIT_USECS,
-			.cs_change_delay.value = adis->data->cs_change_delay,
-			.cs_change_delay.unit = SPI_DELAY_UNIT_USECS,
 		}, {
 			.tx_buf = adis->tx + 4,
 			.bits_per_word = 8,
@@ -62,8 +58,6 @@ int __adis_write_reg(struct adis *adis, unsigned int reg, unsigned int value,
 			.cs_change = 1,
 			.delay.value = adis->data->write_delay,
 			.delay.unit = SPI_DELAY_UNIT_USECS,
-			.cs_change_delay.value = adis->data->cs_change_delay,
-			.cs_change_delay.unit = SPI_DELAY_UNIT_USECS,
 		}, {
 			.tx_buf = adis->tx + 6,
 			.bits_per_word = 8,
@@ -144,8 +138,6 @@ int __adis_read_reg(struct adis *adis, unsigned int reg, unsigned int *val,
 			.cs_change = 1,
 			.delay.value = adis->data->write_delay,
 			.delay.unit = SPI_DELAY_UNIT_USECS,
-			.cs_change_delay.value = adis->data->cs_change_delay,
-			.cs_change_delay.unit = SPI_DELAY_UNIT_USECS,
 		}, {
 			.tx_buf = adis->tx + 2,
 			.bits_per_word = 8,
@@ -153,8 +145,6 @@ int __adis_read_reg(struct adis *adis, unsigned int reg, unsigned int *val,
 			.cs_change = 1,
 			.delay.value = adis->data->read_delay,
 			.delay.unit = SPI_DELAY_UNIT_USECS,
-			.cs_change_delay.value = adis->data->cs_change_delay,
-			.cs_change_delay.unit = SPI_DELAY_UNIT_USECS,
 		}, {
 			.tx_buf = adis->tx + 4,
 			.rx_buf = adis->rx,
@@ -163,8 +153,6 @@ int __adis_read_reg(struct adis *adis, unsigned int reg, unsigned int *val,
 			.cs_change = 1,
 			.delay.value = adis->data->read_delay,
 			.delay.unit = SPI_DELAY_UNIT_USECS,
-			.cs_change_delay.value = adis->data->cs_change_delay,
-			.cs_change_delay.unit = SPI_DELAY_UNIT_USECS,
 		}, {
 			.rx_buf = adis->rx + 2,
 			.bits_per_word = 8,
@@ -524,6 +512,12 @@ int adis_init(struct adis *adis, struct iio_dev *indio_dev,
 	}
 
 	mutex_init(&adis->state_lock);
+
+	if (!spi->cs_inactive.value) {
+		spi->cs_inactive.value = data->cs_change_delay;
+		spi->cs_inactive.unit = SPI_DELAY_UNIT_USECS;
+	}
+
 	adis->spi = spi;
 	adis->data = data;
 	iio_device_set_drvdata(indio_dev, adis);
-- 
2.34.1


