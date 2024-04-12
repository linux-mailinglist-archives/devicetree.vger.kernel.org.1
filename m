Return-Path: <devicetree+bounces-58790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1518A3118
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 16:44:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE75C1C20CE3
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD295142E87;
	Fri, 12 Apr 2024 14:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="J3x8EI6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DA714199C
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712933061; cv=none; b=Br/3QASW0IqlaQlfG4IpdphwdbJ+3MD3n30D1YUXOEGQ5c7KXou++klptRZYbBzDgtntfd3WmoRLedsGXoVEhGev5xxeF18bk1amTzFxK2nc8w3BnWbWRc7C2Wtm+LTNBqfdRjCaTBBpA5ceZ4iHp8j46t5+85xqH4k8v5qPSHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712933061; c=relaxed/simple;
	bh=a6bhJpM3SYEBSr03mze9/KPf0Jj2eGKdqUtTKIKFs84=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=L6MBepKj34KWCOFAg0/6ghoRgi1M8MY94MlbS7j18RWmTOTGyCjgeVxUSAryDSwhgO99zDqGcibbWV8Qdz1d93ENvhjbNlpeI+ZHoOLufOEfK0EWz9SyG1xcQc9wcr6v+/cudA7v1Q3XITepxXdi6ULHuJWftp92fIjBMfkTy8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=J3x8EI6B; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 43CEgMdK015687;
	Fri, 12 Apr 2024 14:44:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=iSaGL6Gcv6rSjyBrzzgPEcyO37nDobpK/1k9tsI+mws=;
 b=J3x8EI6BbKRaXPaJGKuSpMMs9DFSxaKIu2Rr6Mp7iF6VrofzMc8BVbTFXRuY0qHJGms5
 v8MkfdpR4HX0W8xrBeELUZpBoyrCRNgSWHvCrVC2SnEU3FgAs2wGPHvOzS5aN/kee0fR
 abt1lK7IeSOHVwpYhJLZKjI0jKpcPRpwklh0bjoDfzPAfOvGIln228SvQ6lvPKGA5n6n
 7iOxeZNl0iWzh66ai3sCgq5+8Mdg/VYI8782YsQ/HBhFM/Hbx/Kh7/jhCCp9ZV3W86B+
 /zHrePj+S/yqTcM/L6EgXxx5DwcexH/0EA8rbSoagSWkzzFIoaX+dz79GXH1+A58d8Xb BQ== 
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xf59c08gq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 12 Apr 2024 14:44:06 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 43CBUJWo029966;
	Fri, 12 Apr 2024 14:44:04 GMT
Received: from smtprelay03.dal12v.mail.ibm.com ([172.16.1.5])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xbj7mt94y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 12 Apr 2024 14:44:04 +0000
Received: from smtpav06.wdc07v.mail.ibm.com (smtpav06.wdc07v.mail.ibm.com [10.39.53.233])
	by smtprelay03.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 43CEi1eL6226676
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 12 Apr 2024 14:44:03 GMT
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4B87858055;
	Fri, 12 Apr 2024 14:44:01 +0000 (GMT)
Received: from smtpav06.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9C69158054;
	Fri, 12 Apr 2024 14:44:00 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.38.63])
	by smtpav06.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Fri, 12 Apr 2024 14:44:00 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, andrew@codeconstruct.com.au, devicetree@vger.kernel.org,
        linux-fsi@lists.ozlabs.org, robh@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, jk@ozlabs.org, alistair@popple.id.au,
        eajames@linux.ibm.com, lakshmiy@us.ibm.com
Subject: [PATCH 2/3] fsi: sbefifo: Prevent async FFDC collection for Odyssey SBEFIFOs
Date: Fri, 12 Apr 2024 09:43:57 -0500
Message-Id: <20240412144358.204129-3-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240412144358.204129-1-eajames@linux.ibm.com>
References: <20240412144358.204129-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: m0yWEayuox1jUWq3LVgoDRfxKdnGF4qO
X-Proofpoint-GUID: m0yWEayuox1jUWq3LVgoDRfxKdnGF4qO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-12_11,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 spamscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2404120106

Newer SBEs will return any async FFDC in the next transaction, so
collecting the FFDC is unnecessary and results in unexpected behavior.
Turn off the async collection for newer SBEFIFOs.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 drivers/fsi/fsi-sbefifo.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/fsi/fsi-sbefifo.c b/drivers/fsi/fsi-sbefifo.c
index 0385476bfb03..706b98b49d08 100644
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
+static const struct sbefifo_data ody_sbefifo_data = {
+	.need_async = false,
+};
+
+static const struct of_device_id sbefifo_of_ids[] = {
+	{
+		.compatible = "ibm,p9-sbefifo",
+		.data = &p9_sbefifo_data,
+	},
+	{
+		.compatible = "ibm,ody-sbefifo",
+		.data = &ody_sbefifo_data,
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


