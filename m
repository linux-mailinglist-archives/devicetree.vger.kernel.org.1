Return-Path: <devicetree+bounces-61036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 317D68AB660
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 23:18:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBF8E2812F2
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 21:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E24612DD97;
	Fri, 19 Apr 2024 21:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="i7llblhR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C01D107B2
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 21:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.158.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713561524; cv=none; b=kFzR9NEo+YL8UDqVTlmkxwucV10qWziaj6O+h6XxO22n9SP/bo03WUdT09aSPfdsISoExer4ybyBgV4+HJ/ndgKldADJmTUl3DUGNjgknJbqogcSVXm9LHu6IS+0tlWSOaM9hC30y2m0T1InWYLQz+Xb1fRqITLfDQxeoOrGjsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713561524; c=relaxed/simple;
	bh=4Wu2Xae5AP8z+GtpLebM538pTaOFTPOo9VEpDqPypwg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Q3xRPleweVjMBTGHfrvIuS2mym6Opf1uopJeI6ureldmIV38797FzlcibwcJTQ79tS4bpXZIiqti4LciHTdBb+q7LJegnrbJk+wIs/lVcLAr7Up4wmSVVe03lxwHnzM5SafinO51dMwLtW+p+BBBFWFNODrYvLVGIXaCOdEEGHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=i7llblhR; arc=none smtp.client-ip=148.163.158.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0360072.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43JKvqv6007575;
	Fri, 19 Apr 2024 21:18:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=cDuX4rq0k17MalftvTZqruesIQAGh8/BQ2PbXirloMY=;
 b=i7llblhRk6xGpow7dnRVJ4nJ3b4ruZuKOS2zAxyo3PTYNaOn1Nf2HsODjnOzlzOVd/Vc
 fzVlpQTdlIPMQiDLoL7l2ZAxrHZ48lEiU3EL+h7x9tl1v0MmAnGmnzHOQZ7IzMrZisVk
 9khhA6xgwTczgINl5ZRgmEjSFlM1M2EMMXAT0WVIGDqtNB3hGr9EBp8xZzQOqWtgeN/m
 85PTIixOpLUTJrlZ1TAe+jA5GPICh6K6dI2aLZ+ZNCRBxxlOmE3Di9ptbdYovWBeymsd
 1A4FycakHdNnJ1PVTyvFH2VcFyrJjfQ7KEllGUIez2l5tdG/xv87rj6y5+/FYx1iwbJW dQ== 
Received: from ppma21.wdc07v.mail.ibm.com (5b.69.3da9.ip4.static.sl-reverse.com [169.61.105.91])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xm03w81bd-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 21:18:23 +0000
Received: from pps.filterd (ppma21.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma21.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43JIPd27010585;
	Fri, 19 Apr 2024 21:11:47 GMT
Received: from smtprelay07.dal12v.mail.ibm.com ([172.16.1.9])
	by ppma21.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xkbmm62p0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 19 Apr 2024 21:11:47 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay07.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43JLBiCd33292660
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 19 Apr 2024 21:11:46 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 36B4058068;
	Fri, 19 Apr 2024 21:11:44 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E8AD358066;
	Fri, 19 Apr 2024 21:11:43 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.157.174])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 19 Apr 2024 21:11:43 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
        linux-fsi@lists.ozlabs.org, robh@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, jk@ozlabs.org, alistair@popple.id.au,
        eajames@linux.ibm.com, lakshmiy@us.ibm.com
Subject: [PATCH v3 2/3] fsi: sbefifo: Prevent async FFDC collection for Odyssey SBEFIFOs
Date: Fri, 19 Apr 2024 16:11:42 -0500
Message-Id: <20240419211143.1039868-3-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240419211143.1039868-1-eajames@linux.ibm.com>
References: <20240419211143.1039868-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: imjIGBnKx1m-27AWn80QuCdKcmb4OnQZ
X-Proofpoint-ORIG-GUID: imjIGBnKx1m-27AWn80QuCdKcmb4OnQZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-19_15,2024-04-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 malwarescore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 mlxscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404190165

A new type of SBE, found on the Odyssey chip, will return any async FFDC in
the next transaction, so collecting the FFDC is unnecessary and results in
unexpected behavior. This difference in behavior between the Odyssey SBE
and the POWER9/10 SBEs wasn't apparent when support for the Odyssey was
added. To fix the unexpected behavior, turn off the async collection fot
Odyssey SBEFIFOs.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
Changes since v2:
 - Update commit message

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


