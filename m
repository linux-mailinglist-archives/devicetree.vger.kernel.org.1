Return-Path: <devicetree+bounces-46053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F486867D2E
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 18:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1CC51C29F1B
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 17:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75769135404;
	Mon, 26 Feb 2024 16:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b="GMiSKxMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C49E134CE1;
	Mon, 26 Feb 2024 16:53:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.156.1
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708966440; cv=none; b=CRV4QFJHNWjJAwFHAwA9C7PgqVLqIKT9yUOFBEbYh4M5xC0y+jNIhKQD2ieF4Y1ViApc9NgcFdRiorRu84i/Qbe7ZtoUZJKiHV98fMissMuFxP89CI0XR2sX9W9wMPU3QnzeFygVSh48pVnr8Covq72InsiVm13XW82g4z+fRV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708966440; c=relaxed/simple;
	bh=dy7BHjNi3sCnkRYeOejehYWb5ftkNMI+oDiVGphW4jc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bnDfAcxAmlcS/qTv1Smi0wr4p/wHDegOYZqUq7J1nlmIgYYevWl+fUaLX4aAGiyvDcE2aHxd1/JQOgVvImYkh+M2HqI2hybIOWEl0pFxzAQK812NhaCxfs8rjEhn0jyAR6MRffqh5CDFITy4m3xcMwpYDUUGD0hRqPVLBC1Tmxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com; spf=pass smtp.mailfrom=linux.ibm.com; dkim=pass (2048-bit key) header.d=ibm.com header.i=@ibm.com header.b=GMiSKxMk; arc=none smtp.client-ip=148.163.156.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.ibm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.ibm.com
Received: from pps.filterd (m0353727.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 41QG1294018638;
	Mon, 26 Feb 2024 16:53:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=pp1;
 bh=WfBD8Asm+mV0Bam4k6IBKyEciz8onft06t3pHx4oKg8=;
 b=GMiSKxMkLQWVrH+l/ZzT6Y+xSiUXdOcXrf3lkJ/N7D9cQy+NNl0ZECWmZwop8kS09EGL
 t5CvC3/QYoE6eAXE/HFHBwMw2j4/OUHyAQZqDMPVZyMvn/ukqgo0hd4DoioRsOTxtNmN
 jeCdwoyoQLP2DVHvwthQGbFHQNcS2m5IkV4fn6b+mGr5sDQv6C0rN4EmxywI3hu9nKSP
 JeAZJqI+wmvPTh421lrdaHIwpHg5Pkxn1ZD1G0nuEZPXbNAXG3/9dkYXOLaO7ZaFkw79
 /WInfWpHM1GZuv75Xxjb63IZ/gZLgP/rhcsbJ2D+RHTP7P57fMes1iC2/QuBvYtS1Rne ZQ== 
Received: from ppma23.wdc07v.mail.ibm.com (5d.69.3da9.ip4.static.sl-reverse.com [169.61.105.93])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3wgw0k35c8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Feb 2024 16:53:48 +0000
Received: from pps.filterd (ppma23.wdc07v.mail.ibm.com [127.0.0.1])
	by ppma23.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 41QEosxi008189;
	Mon, 26 Feb 2024 16:53:47 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
	by ppma23.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3wfv9m2a1g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Feb 2024 16:53:46 +0000
Received: from smtpav05.wdc07v.mail.ibm.com (smtpav05.wdc07v.mail.ibm.com [10.39.53.232])
	by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 41QGrif935980010
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 26 Feb 2024 16:53:46 GMT
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7A48A58067;
	Mon, 26 Feb 2024 16:53:44 +0000 (GMT)
Received: from smtpav05.wdc07v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C25F558069;
	Mon, 26 Feb 2024 16:53:43 +0000 (GMT)
Received: from slate16.aus.stglabs.ibm.com (unknown [9.61.57.130])
	by smtpav05.wdc07v.mail.ibm.com (Postfix) with ESMTP;
	Mon, 26 Feb 2024 16:53:43 +0000 (GMT)
From: Eddie James <eajames@linux.ibm.com>
To: linux-fsi@lists.ozlabs.org
Cc: linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, andi.shyti@kernel.org,
        eajames@linux.ibm.com, alistair@popple.id.au, joel@jms.id.au,
        jk@ozlabs.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, lakshmiy@us.ibmcom
Subject: [PATCH v2 27/31] i2c: fsi: Change fsi_i2c_write_reg to accept data instead of a pointer
Date: Mon, 26 Feb 2024 10:53:17 -0600
Message-Id: <20240226165321.91976-28-eajames@linux.ibm.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240226165321.91976-1-eajames@linux.ibm.com>
References: <20240226165321.91976-1-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: sSy-N-pEteeeRnPMcnR_-GvDiuFwaAht
X-Proofpoint-ORIG-GUID: sSy-N-pEteeeRnPMcnR_-GvDiuFwaAht
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-26_11,2024-02-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311290000 definitions=main-2402260128

There's no use passing a pointer here.

Signed-off-by: Eddie James <eajames@linux.ibm.com>
---
 drivers/i2c/busses/i2c-fsi.c | 47 +++++++++++++++---------------------
 1 file changed, 20 insertions(+), 27 deletions(-)

diff --git a/drivers/i2c/busses/i2c-fsi.c b/drivers/i2c/busses/i2c-fsi.c
index bc44cad49ef2..f237e76d29e6 100644
--- a/drivers/i2c/busses/i2c-fsi.c
+++ b/drivers/i2c/busses/i2c-fsi.c
@@ -177,9 +177,9 @@ static int fsi_i2c_read_reg(struct fsi_device *fsi, unsigned int reg,
 }
 
 static int fsi_i2c_write_reg(struct fsi_device *fsi, unsigned int reg,
-			     u32 *data)
+			     u32 data)
 {
-	__be32 data_be = cpu_to_be32p(data);
+	__be32 data_be = cpu_to_be32(data);
 
 	return fsi_device_write(fsi, reg, &data_be, sizeof(data_be));
 }
@@ -188,17 +188,16 @@ static int fsi_i2c_dev_init(struct fsi_i2c_master *i2c)
 {
 	u32 mode = I2C_MODE_ENHANCED;
 	u32 extended_status;
-	u32 interrupt = 0;
 	u32 watermark;
 	int rc;
 
 	/* since we use polling, disable interrupts */
-	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_INT_MASK, &interrupt);
+	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_INT_MASK, 0);
 	if (rc)
 		return rc;
 
 	mode |= FIELD_PREP(I2C_MODE_CLKDIV, i2c->clock_div);
-	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_MODE, &mode);
+	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_MODE, mode);
 	if (rc)
 		return rc;
 
@@ -211,13 +210,12 @@ static int fsi_i2c_dev_init(struct fsi_i2c_master *i2c)
 			       i2c->fifo_size - I2C_FIFO_HI_LVL);
 	watermark |= FIELD_PREP(I2C_WATERMARK_LO, I2C_FIFO_LO_LVL);
 
-	return fsi_i2c_write_reg(i2c->fsi, I2C_FSI_WATER_MARK, &watermark);
+	return fsi_i2c_write_reg(i2c->fsi, I2C_FSI_WATER_MARK, watermark);
 }
 
 static int fsi_i2c_set_port(struct fsi_i2c_port *port)
 {
 	struct fsi_device *fsi = port->master->fsi;
-	u32 dummy = 0;
 	u32 mode;
 	int rc;
 
@@ -229,12 +227,12 @@ static int fsi_i2c_set_port(struct fsi_i2c_port *port)
 		return 0;
 
 	mode = (mode & ~I2C_MODE_PORT) | FIELD_PREP(I2C_MODE_PORT, port->port);
-	rc = fsi_i2c_write_reg(fsi, I2C_FSI_MODE, &mode);
+	rc = fsi_i2c_write_reg(fsi, I2C_FSI_MODE, mode);
 	if (rc)
 		return rc;
 
 	/* reset engine when port is changed */
-	return fsi_i2c_write_reg(fsi, I2C_FSI_RESET_ERR, &dummy);
+	return fsi_i2c_write_reg(fsi, I2C_FSI_RESET_ERR, 0);
 }
 
 static int fsi_i2c_start(struct fsi_i2c_port *port, struct i2c_msg *msg,
@@ -253,7 +251,7 @@ static int fsi_i2c_start(struct fsi_i2c_port *port, struct i2c_msg *msg,
 	cmd |= FIELD_PREP(I2C_CMD_ADDR, msg->addr);
 	cmd |= FIELD_PREP(I2C_CMD_LEN, msg->len);
 
-	return fsi_i2c_write_reg(port->master->fsi, I2C_FSI_CMD, &cmd);
+	return fsi_i2c_write_reg(port->master->fsi, I2C_FSI_CMD, cmd);
 }
 
 static int fsi_i2c_get_op_bytes(int op_bytes)
@@ -340,12 +338,11 @@ static int fsi_i2c_get_scl(struct i2c_adapter *adap)
 static void fsi_i2c_set_scl(struct i2c_adapter *adap, int val)
 {
 	struct fsi_i2c_port *port = adap->algo_data;
-	u32 dummy = 0;
 
 	if (val)
-		fsi_i2c_write_reg(port->master->fsi, I2C_FSI_SET_SCL, &dummy);
+		fsi_i2c_write_reg(port->master->fsi, I2C_FSI_SET_SCL, 0);
 	else
-		fsi_i2c_write_reg(port->master->fsi, I2C_FSI_RESET_SCL, &dummy);
+		fsi_i2c_write_reg(port->master->fsi, I2C_FSI_RESET_SCL, 0);
 }
 
 static int fsi_i2c_get_sda(struct i2c_adapter *adap)
@@ -361,12 +358,11 @@ static int fsi_i2c_get_sda(struct i2c_adapter *adap)
 static void fsi_i2c_set_sda(struct i2c_adapter *adap, int val)
 {
 	struct fsi_i2c_port *port = adap->algo_data;
-	u32 dummy = 0;
 
 	if (val)
-		fsi_i2c_write_reg(port->master->fsi, I2C_FSI_SET_SDA, &dummy);
+		fsi_i2c_write_reg(port->master->fsi, I2C_FSI_SET_SDA, 0);
 	else
-		fsi_i2c_write_reg(port->master->fsi, I2C_FSI_RESET_SDA, &dummy);
+		fsi_i2c_write_reg(port->master->fsi, I2C_FSI_RESET_SDA, 0);
 }
 
 static void fsi_i2c_prepare_recovery(struct i2c_adapter *adap)
@@ -380,7 +376,7 @@ static void fsi_i2c_prepare_recovery(struct i2c_adapter *adap)
 		return;
 
 	mode |= I2C_MODE_DIAG;
-	fsi_i2c_write_reg(port->master->fsi, I2C_FSI_MODE, &mode);
+	fsi_i2c_write_reg(port->master->fsi, I2C_FSI_MODE, mode);
 }
 
 static void fsi_i2c_unprepare_recovery(struct i2c_adapter *adap)
@@ -394,13 +390,12 @@ static void fsi_i2c_unprepare_recovery(struct i2c_adapter *adap)
 		return;
 
 	mode &= ~I2C_MODE_DIAG;
-	fsi_i2c_write_reg(port->master->fsi, I2C_FSI_MODE, &mode);
+	fsi_i2c_write_reg(port->master->fsi, I2C_FSI_MODE, mode);
 }
 
 static int fsi_i2c_reset_bus(struct fsi_i2c_master *i2c,
 			     struct fsi_i2c_port *port)
 {
-	u32 dummy = 0;
 	u32 stat;
 	int rc;
 
@@ -408,7 +403,7 @@ static int fsi_i2c_reset_bus(struct fsi_i2c_master *i2c,
 	i2c_recover_bus(&port->adapter);
 
 	/* reset errors */
-	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_ERR, &dummy);
+	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_ERR, 0);
 	if (rc)
 		return rc;
 
@@ -423,7 +418,7 @@ static int fsi_i2c_reset_bus(struct fsi_i2c_master *i2c,
 		return 0;
 
 	/* failed to get command complete; reset engine again */
-	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_I2C, &dummy);
+	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_I2C, 0);
 	if (rc)
 		return rc;
 
@@ -433,12 +428,11 @@ static int fsi_i2c_reset_bus(struct fsi_i2c_master *i2c,
 
 static int fsi_i2c_reset_engine(struct fsi_i2c_master *i2c, u16 port)
 {
-	u32 dummy = 0;
 	u32 mode;
 	int rc;
 
 	/* reset engine */
-	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_I2C, &dummy);
+	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_RESET_I2C, 0);
 	if (rc)
 		return rc;
 
@@ -455,14 +449,13 @@ static int fsi_i2c_reset_engine(struct fsi_i2c_master *i2c, u16 port)
 	if (port) {
 		mode &= ~I2C_MODE_PORT;
 		mode |= FIELD_PREP(I2C_MODE_PORT, port);
-		rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_MODE, &mode);
+		rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_MODE, mode);
 		if (rc)
 			return rc;
 	}
 
 	/* reset busy register; hw workaround */
-	dummy = I2C_PORT_BUSY_RESET;
-	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_PORT_BUSY, &dummy);
+	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_PORT_BUSY, I2C_PORT_BUSY_RESET);
 	if (rc)
 		return rc;
 
@@ -497,7 +490,7 @@ static int fsi_i2c_abort(struct fsi_i2c_port *port, u32 status)
 		return 0;
 
 	/* write stop command */
-	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_CMD, &cmd);
+	rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_CMD, cmd);
 	if (rc)
 		return rc;
 
-- 
2.39.3


