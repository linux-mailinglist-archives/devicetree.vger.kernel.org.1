Return-Path: <devicetree+bounces-59438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7EB8A569D
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 17:39:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 067341F2247F
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 15:39:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E32B79B8E;
	Mon, 15 Apr 2024 15:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="BbOSTrUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6407776045
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 15:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713195567; cv=none; b=brkeCfxdGF6fZhKlk5GlBWH2LXVM7i4Nvtl1ATkPJfLyTBk16cbuxOAHclDn3RvtMhsBkNhik91KYcr3c9V44A6OGhIa1o8Tje6GmJqIH1Hxn3H6JKEcyfVPrl6tKH6sChJo/nVousaFKEwjc7wgulmVu81lLZHRmXRSLwZCz5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713195567; c=relaxed/simple;
	bh=70dx/ou8GVzm8vJ7hEmuOa8uQyebiWjz87gkUQy0JHw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KTco8A5lM2cr5ExtfYvpll7BThdsDdPFr/ZlqCUCFfC9o3ePn1l/FNskidKWmG6el+H6Gov3K2oRhty2sINyNuckyZ4++x0KRbtGawccSaOlW4FPYiLnXLXHQ2jRX6Z1owxMTddjt5OsXBB3kiuj9ii6j9Ghv5d+jxCzs68yGDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=BbOSTrUQ; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353727.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43FFOV0R026530;
	Mon, 15 Apr 2024 15:39:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=8gD9Q15uiMKFaUikFvJOq8GCxu8UDsueaEdnVNUd0sQ=;
 b=BbOSTrUQoMC8bhtiursUbN+MBOMvXElmZkVpuZGg/ql1iJQjzK3fLI6/ozRmN7SdERmf
 HEVJ6DePyGe4MH4/CaumU/3Ft5rMTpgCQa4HUyeuZGfqIKOd1Plj7uC3aGMthJZU3nKW
 2ZIJ6ZHg6grjTMyzQsIyZP51+B1Ug2sflqJrs54Mm7qz8X2C+RtvIo/ZZemMXua8mGs1
 NxZxrNSNxYPaLeQHvHsBI9GyA1JP8KbuiynsLm2nHyMs8eRlISSN/toFB/g0em6vW9WQ
 fgUwn2GvZuMyx9CINJ3pKKzmiSsHpl51tM3SfXo8H6+bs1YiNuiEU+rONScudIagfLO7 dg== 
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xh6rbr1fp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Apr 2024 15:39:13 +0000
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43FChWln023572;
	Mon, 15 Apr 2024 15:39:12 GMT
Received: from smtprelay01.wdc07v.mail.ibm.com ([172.16.1.68])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xg5cnrn5e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 15 Apr 2024 15:39:12 +0000
Received: from smtpav05.dal12v.mail.ibm.com (smtpav05.dal12v.mail.ibm.com [10.241.53.104])
	by smtprelay01.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43FFd8Gv47841812
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 15 Apr 2024 15:39:11 GMT
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 974D15806B;
	Mon, 15 Apr 2024 15:39:08 +0000 (GMT)
Received: from smtpav05.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 5682F58069;
	Mon, 15 Apr 2024 15:39:08 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.157.174])
	by smtpav05.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Mon, 15 Apr 2024 15:39:08 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
        linux-fsi@lists.ozlabs.org, robh@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, jk@ozlabs.org, alistair@popple.id.au,
        eajames@linux.ibm.com, lakshmiy@us.ibm.com
Subject: [PATCH v2 2/3] fsi: sbefifo: Prevent async FFDC collection for Odyssey SBEFIFOs
Date: Mon, 15 Apr 2024 10:39:06 -0500
Message-Id: <20240415153907.10051-3-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240415153907.10051-1-eajames@linux.ibm.com>
References: <20240415153907.10051-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: eH5GKfZHX7o5NrUHgoRebTrOREzYfLAR
X-Proofpoint-ORIG-GUID: eH5GKfZHX7o5NrUHgoRebTrOREzYfLAR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-15_12,2024-04-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 mlxlogscore=999 impostorscore=0 clxscore=1015
 suspectscore=0 spamscore=0 bulkscore=0 adultscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2404010000 definitions=main-2404150102

A new type of SBE on the Odyssey chip will return any async FFDC in the
next transaction, so collecting the FFDC is unnecessary and results in
unexpected behavior. Turn off the async collection for Odyssey SBEFIFOs.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
Changes since v1:
 - Change "ody" to "odyssey"

 drivers/fsi/fsi-sbefifo.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/fsi/fsi-sbefifo.c b/drivers/fsi/fsi-sbefifo.c
index 0385476bfb03..b8add20e05ec 100644
--- a/drivers/fsi/fsi-sbefifo.c
+++ b/drivers/fsi/fsi-sbefifo.c
@@ -125,6 +125,7 @@ struct sbefifo {
 	struct mutex		lock;
 	bool			broken;
 	bool			dead;
+	bool			need_async;
 	bool			async_ffdc;
 	bool			timed_out;
 	u32			timeout_in_cmd_ms;
@@ -141,6 +142,10 @@ struct sbefifo_user {
 	u32			read_timeout_ms;
 };
 
+struct sbefifo_data {
+	bool need_async;
+};
+
 static DEFINE_MUTEX(sbefifo_ffdc_mutex);
 
 static ssize_t timeout_show(struct device *dev, struct device_attribute *attr,
@@ -317,6 +322,10 @@ static int sbefifo_check_sbe_state(struct sbefifo *sbefifo)
 		return -ESHUTDOWN;
 	}
 
+	/* Newer SBEFIFOs don't need async FFDC collection */
+	if (!sbefifo->need_async)
+		return 0;
+
 	/* Is there async FFDC available ? Remember it */
 	if (sbm & CFAM_SBM_SBE_ASYNC_FFDC)
 		sbefifo->async_ffdc = true;
@@ -1031,6 +1040,7 @@ static void sbefifo_free(struct device *dev)
 
 static int sbefifo_probe(struct device *dev)
 {
+	const struct sbefifo_data *md = of_device_get_match_data(dev);
 	struct fsi_device *fsi_dev = to_fsi_dev(dev);
 	struct sbefifo *sbefifo;
 	struct device_node *np;
@@ -1044,6 +1054,11 @@ static int sbefifo_probe(struct device *dev)
 	if (!sbefifo)
 		return -ENOMEM;
 
+	if (md)
+		sbefifo->need_async = md->need_async;
+	else
+		sbefifo->need_async = true;
+
 	/* Grab a reference to the device (parent of our cdev), we'll drop it later */
 	if (!get_device(dev)) {
 		kfree(sbefifo);
@@ -1128,6 +1143,27 @@ static int sbefifo_remove(struct device *dev)
 	return 0;
 }
 
+static const struct sbefifo_data p9_sbefifo_data = {
+	.need_async = true,
+};
+
+static const struct sbefifo_data odyssey_sbefifo_data = {
+	.need_async = false,
+};
+
+static const struct of_device_id sbefifo_of_ids[] = {
+	{
+		.compatible = "ibm,p9-sbefifo",
+		.data = &p9_sbefifo_data,
+	},
+	{
+		.compatible = "ibm,odyssey-sbefifo",
+		.data = &odyssey_sbefifo_data,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, sbefifo_of_ids);
+
 static const struct fsi_device_id sbefifo_ids[] = {
 	{
 		.engine_type = FSI_ENGID_SBE,
@@ -1141,6 +1177,7 @@ static struct fsi_driver sbefifo_drv = {
 	.drv = {
 		.name = DEVICE_NAME,
 		.bus = &fsi_bus_type,
+		.of_match_table = sbefifo_of_ids,
 		.probe = sbefifo_probe,
 		.remove = sbefifo_remove,
 	}
-- 
2.39.3


