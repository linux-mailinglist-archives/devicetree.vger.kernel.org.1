Return-Path: <devicetree+bounces-87795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F4C93B09C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 13:43:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18EDD1F24B98
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 11:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4695158DD1;
	Wed, 24 Jul 2024 11:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ECRFxFJP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9AC158A02;
	Wed, 24 Jul 2024 11:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721821386; cv=none; b=JXtXvunii6738E7gnv4K3nmG2Eu+jRJ+uAKAEz/oGSZVHH+ANwa9/ZfiABMOJsSe3cF3LuUN1cFSFT7e9vn+NabNlanLqGQQVT6ubC6zqOw6rqVtcqQAVWMi7YZQ2+jCtN0kNNE3IUL2nCMYJYTNCwJ6zwDFKrrEos/sRhrVGsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721821386; c=relaxed/simple;
	bh=ZxopIKS3sBk2jWSFXuic2a7X8fseXf1Yuqvgbh7exjs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=K1cZVOfXQiT+P6PpCsX1Vlyr7msshF0kEPnL/CLz25QTPrOjqWQ8yillvA8kiqcPC5qAbObRTdo2q7ft3ng4lB0xEytCFdvORYb/VHGexQfIdZw9Q/H0BWJWECboMdbNrZAmT6vmyD7UE/2ZNUSBDEEbMxYaV8aFlOKW51iarlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=ECRFxFJP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 46O8w0nI009979;
	Wed, 24 Jul 2024 11:42:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=9BXgwMvbsy0
	D2SRRouqVMufV5YdKZXIVt26mEaAtdFU=; b=ECRFxFJPKcHprgu5tBYxj44m0Ye
	3y/QBh87EGzZxruGRk5xFX9k7E7JPrjZlQ2DAvISthDcE+SY3h3I/WnaiUs/MCUN
	VCqOPWuRyXO2FclnKJoGoPGrauicO3Qixrzfpmdp+UZwmvcn1Hleo/mRl4kmSTUo
	oIjFOTI8WzADHGIzgmfL4rSU4caY8shd6Sx0G/9cgomMoCYlyIl6vADAwurYnguF
	ab5Uxjn/yuTd0mTaso0GYbjr+QeppNAselhvc92ozJzD7PkznmoMWbF3E3PWWz+l
	SUHT6qkUWT7KFI4a1vcRa04Ekxmu0n7IGwj9KbyrEb+JBkYTIEPs+o4NwAg==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 40g2kn26m7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jul 2024 11:42:32 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTP id 46OBgSrl024836;
	Wed, 24 Jul 2024 11:42:28 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 40g6am4psg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jul 2024 11:42:28 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 46OBgShR024802;
	Wed, 24 Jul 2024 11:42:28 GMT
Received: from hu-devc-blr-u22-a.qualcomm.com (hu-mdalam-blr.qualcomm.com [10.131.36.157])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 46OBgSQw024796
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Jul 2024 11:42:28 +0000
Received: by hu-devc-blr-u22-a.qualcomm.com (Postfix, from userid 466583)
	id AD297411E8; Wed, 24 Jul 2024 17:12:27 +0530 (+0530)
From: Md Sadre Alam <quic_mdalam@quicinc.com>
To: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        manivannan.sadhasivam@linaro.org, esben@geanix.com,
        linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mtd@lists.infradead.org
Cc: quic_mdalam@quicinc.com, quic_varada@quicinc.com,
        quic_srichara@quicinc.com
Subject: [PATCH v7 2/8] mtd: rawnand: qcom: cleanup qcom_nandc driver
Date: Wed, 24 Jul 2024 17:12:19 +0530
Message-Id: <20240724114225.2176448-3-quic_mdalam@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240724114225.2176448-1-quic_mdalam@quicinc.com>
References: <20240724114225.2176448-1-quic_mdalam@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: BgSCZPKSug5YFHQxgKrncCmK2TzYDZCe
X-Proofpoint-GUID: BgSCZPKSug5YFHQxgKrncCmK2TzYDZCe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-24_09,2024-07-23_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 spamscore=0 mlxscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 adultscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2407240086

cleanup qcom_nandc driver as below

- Remove register value indirection api

- Remove set_reg() api

- Convert read_loc_first & read_loc_last macro to function

- Renamed multiple variables

Signed-off-by: Md Sadre Alam <quic_mdalam@quicinc.com>
---
Change in [v7]

* No change

Change in [v6]

* No change

Change in [v5]

* Cleand up raw nand driver.

* Removed register value indirection

* Removed set_reg() api.

Change in [v4]

* This patch was not included in [v4]

Change in [v3]

* This patch was not included in [v3]

Change in [v2]

* This patch was not included in [v2]

Change in [v1]

* This patch was not included in [v1]

 drivers/mtd/nand/raw/qcom_nandc.c | 451 +++++++++++++-----------------
 1 file changed, 198 insertions(+), 253 deletions(-)

diff --git a/drivers/mtd/nand/raw/qcom_nandc.c b/drivers/mtd/nand/raw/qcom_nandc.c
index b8cff9240b28..6c886a72f5e4 100644
--- a/drivers/mtd/nand/raw/qcom_nandc.c
+++ b/drivers/mtd/nand/raw/qcom_nandc.c
@@ -189,17 +189,6 @@
 #define	ECC_BCH_4BIT	BIT(2)
 #define	ECC_BCH_8BIT	BIT(3)
 
-#define nandc_set_read_loc_first(chip, reg, cw_offset, read_size, is_last_read_loc)	\
-nandc_set_reg(chip, reg,			\
-	      ((cw_offset) << READ_LOCATION_OFFSET) |		\
-	      ((read_size) << READ_LOCATION_SIZE) |			\
-	      ((is_last_read_loc) << READ_LOCATION_LAST))
-
-#define nandc_set_read_loc_last(chip, reg, cw_offset, read_size, is_last_read_loc)	\
-nandc_set_reg(chip, reg,			\
-	      ((cw_offset) << READ_LOCATION_OFFSET) |		\
-	      ((read_size) << READ_LOCATION_SIZE) |			\
-	      ((is_last_read_loc) << READ_LOCATION_LAST))
 /*
  * Returns the actual register address for all NAND_DEV_ registers
  * (i.e. NAND_DEV_CMD0, NAND_DEV_CMD1, NAND_DEV_CMD2 and NAND_DEV_CMD_VLD)
@@ -257,8 +246,6 @@ nandc_set_reg(chip, reg,			\
  * @tx_sgl_start - start index in data sgl for tx.
  * @rx_sgl_pos - current index in data sgl for rx.
  * @rx_sgl_start - start index in data sgl for rx.
- * @wait_second_completion - wait for second DMA desc completion before making
- *			     the NAND transfer completion.
  */
 struct bam_transaction {
 	struct bam_cmd_element *bam_ce;
@@ -275,7 +262,6 @@ struct bam_transaction {
 	u32 tx_sgl_start;
 	u32 rx_sgl_pos;
 	u32 rx_sgl_start;
-	bool wait_second_completion;
 };
 
 /*
@@ -549,17 +535,17 @@ struct qcom_nand_host {
  * among different NAND controllers.
  * @ecc_modes - ecc mode for NAND
  * @dev_cmd_reg_start - NAND_DEV_CMD_* registers starting offset
- * @is_bam - whether NAND controller is using BAM
- * @is_qpic - whether NAND CTRL is part of qpic IP
- * @qpic_v2 - flag to indicate QPIC IP version 2
+ * @supports_bam - whether NAND controller is using BAM
+ * @nandc_part_of_qpic - whether NAND controller is part of qpic IP
+ * @qpic_version2 - flag to indicate QPIC IP version 2
  * @use_codeword_fixup - whether NAND has different layout for boot partitions
  */
 struct qcom_nandc_props {
 	u32 ecc_modes;
 	u32 dev_cmd_reg_start;
-	bool is_bam;
-	bool is_qpic;
-	bool qpic_v2;
+	bool supports_bam;
+	bool nandc_part_of_qpic;
+	bool qpic_version2;
 	bool use_codeword_fixup;
 };
 
@@ -613,19 +599,11 @@ static void clear_bam_transaction(struct qcom_nand_controller *nandc)
 {
 	struct bam_transaction *bam_txn = nandc->bam_txn;
 
-	if (!nandc->props->is_bam)
+	if (!nandc->props->supports_bam)
 		return;
 
-	bam_txn->bam_ce_pos = 0;
-	bam_txn->bam_ce_start = 0;
-	bam_txn->cmd_sgl_pos = 0;
-	bam_txn->cmd_sgl_start = 0;
-	bam_txn->tx_sgl_pos = 0;
-	bam_txn->tx_sgl_start = 0;
-	bam_txn->rx_sgl_pos = 0;
-	bam_txn->rx_sgl_start = 0;
+	memset(&bam_txn->bam_ce_pos, 0, sizeof(u32) * 8);
 	bam_txn->last_data_desc = NULL;
-	bam_txn->wait_second_completion = false;
 
 	sg_init_table(bam_txn->cmd_sgl, nandc->max_cwperpage *
 		      QPIC_PER_CW_CMD_SGL);
@@ -640,17 +618,7 @@ static void qpic_bam_dma_done(void *data)
 {
 	struct bam_transaction *bam_txn = data;
 
-	/*
-	 * In case of data transfer with NAND, 2 callbacks will be generated.
-	 * One for command channel and another one for data channel.
-	 * If current transaction has data descriptors
-	 * (i.e. wait_second_completion is true), then set this to false
-	 * and wait for second DMA descriptor completion.
-	 */
-	if (bam_txn->wait_second_completion)
-		bam_txn->wait_second_completion = false;
-	else
-		complete(&bam_txn->txn_done);
+	complete(&bam_txn->txn_done);
 }
 
 static inline struct qcom_nand_host *to_qcom_nand_host(struct nand_chip *chip)
@@ -676,10 +644,9 @@ static inline void nandc_write(struct qcom_nand_controller *nandc, int offset,
 	iowrite32(val, nandc->base + offset);
 }
 
-static inline void nandc_read_buffer_sync(struct qcom_nand_controller *nandc,
-					  bool is_cpu)
+static inline void nandc_dev_to_mem(struct qcom_nand_controller *nandc, bool is_cpu)
 {
-	if (!nandc->props->is_bam)
+	if (!nandc->props->supports_bam)
 		return;
 
 	if (is_cpu)
@@ -694,77 +661,67 @@ static inline void nandc_read_buffer_sync(struct qcom_nand_controller *nandc,
 					   DMA_FROM_DEVICE);
 }
 
-static __le32 *offset_to_nandc_reg(struct nandc_regs *regs, int offset)
-{
-	switch (offset) {
-	case NAND_FLASH_CMD:
-		return &regs->cmd;
-	case NAND_ADDR0:
-		return &regs->addr0;
-	case NAND_ADDR1:
-		return &regs->addr1;
-	case NAND_FLASH_CHIP_SELECT:
-		return &regs->chip_sel;
-	case NAND_EXEC_CMD:
-		return &regs->exec;
-	case NAND_FLASH_STATUS:
-		return &regs->clrflashstatus;
-	case NAND_DEV0_CFG0:
-		return &regs->cfg0;
-	case NAND_DEV0_CFG1:
-		return &regs->cfg1;
-	case NAND_DEV0_ECC_CFG:
-		return &regs->ecc_bch_cfg;
-	case NAND_READ_STATUS:
-		return &regs->clrreadstatus;
-	case NAND_DEV_CMD1:
-		return &regs->cmd1;
-	case NAND_DEV_CMD1_RESTORE:
-		return &regs->orig_cmd1;
-	case NAND_DEV_CMD_VLD:
-		return &regs->vld;
-	case NAND_DEV_CMD_VLD_RESTORE:
-		return &regs->orig_vld;
-	case NAND_EBI2_ECC_BUF_CFG:
-		return &regs->ecc_buf_cfg;
-	case NAND_READ_LOCATION_0:
-		return &regs->read_location0;
-	case NAND_READ_LOCATION_1:
-		return &regs->read_location1;
-	case NAND_READ_LOCATION_2:
-		return &regs->read_location2;
-	case NAND_READ_LOCATION_3:
-		return &regs->read_location3;
-	case NAND_READ_LOCATION_LAST_CW_0:
-		return &regs->read_location_last0;
-	case NAND_READ_LOCATION_LAST_CW_1:
-		return &regs->read_location_last1;
-	case NAND_READ_LOCATION_LAST_CW_2:
-		return &regs->read_location_last2;
-	case NAND_READ_LOCATION_LAST_CW_3:
-		return &regs->read_location_last3;
-	default:
-		return NULL;
-	}
+/* Helper to check the code word, whether it is last cw or not */
+static bool qcom_nandc_is_last_cw(struct nand_ecc_ctrl *ecc, int cw)
+{
+	return cw == (ecc->steps - 1);
 }
 
-static void nandc_set_reg(struct nand_chip *chip, int offset,
-			  u32 val)
+/**
+ * nandc_set_read_loc_first() - to set read location first register
+ * @reg_base:		location register base
+ * @cw_offset:		code word offset
+ * @read_size:		code word read length
+ * @is_last_read_loc:	is this the last read location
+ *
+ * This function will set location register value
+ */
+static void nandc_set_read_loc_first(struct nand_chip *chip,
+				     int reg_base, int cw_offset,
+				     int read_size, int is_last_read_loc)
+{
+	struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
+	int val = (((cw_offset) << READ_LOCATION_OFFSET) |
+		  ((read_size) << READ_LOCATION_SIZE) |
+		  ((is_last_read_loc) << READ_LOCATION_LAST));
+
+	if (reg_base == NAND_READ_LOCATION_0)
+		nandc->regs->read_location0 = val;
+	else if (reg_base == NAND_READ_LOCATION_1)
+		nandc->regs->read_location1 = val;
+	else if (reg_base == NAND_READ_LOCATION_2)
+		nandc->regs->read_location2 = val;
+	else if (reg_base == NAND_READ_LOCATION_3)
+		nandc->regs->read_location3 = val;
+}
+
+/**
+ * nandc_set_read_loc_last - to set read location last register
+ * @reg_base:		location register base
+ * @cw_offset:		code word offset
+ * @read_size:		code word read length
+ * @is_last_read_loc:	is this the last read location
+ *
+ * This function will set location last register value
+ */
+static void nandc_set_read_loc_last(struct nand_chip *chip,
+				    int reg_base, int cw_offset,
+				    int read_size, int is_last_read_loc)
 {
 	struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
-	struct nandc_regs *regs = nandc->regs;
-	__le32 *reg;
-
-	reg = offset_to_nandc_reg(regs, offset);
 
-	if (reg)
-		*reg = cpu_to_le32(val);
-}
+	int val = (((cw_offset) << READ_LOCATION_OFFSET) |
+		  ((read_size) << READ_LOCATION_SIZE) |
+		  ((is_last_read_loc) << READ_LOCATION_LAST));
 
-/* Helper to check the code word, whether it is last cw or not */
-static bool qcom_nandc_is_last_cw(struct nand_ecc_ctrl *ecc, int cw)
-{
-	return cw == (ecc->steps - 1);
+	if (reg_base == NAND_READ_LOCATION_LAST_CW_0)
+		nandc->regs->read_location_last0 = val;
+	else if (reg_base == NAND_READ_LOCATION_LAST_CW_1)
+		nandc->regs->read_location_last1 = val;
+	else if (reg_base == NAND_READ_LOCATION_LAST_CW_2)
+		nandc->regs->read_location_last2 = val;
+	else if (reg_base == NAND_READ_LOCATION_LAST_CW_3)
+		nandc->regs->read_location_last3 = val;
 }
 
 /* helper to configure location register values */
@@ -775,12 +732,12 @@ static void nandc_set_read_loc(struct nand_chip *chip, int cw, int reg,
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 	int reg_base = NAND_READ_LOCATION_0;
 
-	if (nandc->props->qpic_v2 && qcom_nandc_is_last_cw(ecc, cw))
+	if (nandc->props->qpic_version2 && qcom_nandc_is_last_cw(ecc, cw))
 		reg_base = NAND_READ_LOCATION_LAST_CW_0;
 
 	reg_base += reg * 4;
 
-	if (nandc->props->qpic_v2 && qcom_nandc_is_last_cw(ecc, cw))
+	if (nandc->props->qpic_version2 && qcom_nandc_is_last_cw(ecc, cw))
 		return nandc_set_read_loc_last(chip, reg_base, cw_offset,
 				read_size, is_last_read_loc);
 	else
@@ -792,12 +749,13 @@ static void nandc_set_read_loc(struct nand_chip *chip, int cw, int reg,
 static void set_address(struct qcom_nand_host *host, u16 column, int page)
 {
 	struct nand_chip *chip = &host->chip;
+	struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 
 	if (chip->options & NAND_BUSWIDTH_16)
 		column >>= 1;
 
-	nandc_set_reg(chip, NAND_ADDR0, page << 16 | column);
-	nandc_set_reg(chip, NAND_ADDR1, page >> 16 & 0xff);
+	nandc->regs->addr0 = page << 16 | column;
+	nandc->regs->addr1 = page >> 16 & 0xff;
 }
 
 /*
@@ -837,15 +795,17 @@ static void update_rw_regs(struct qcom_nand_host *host, int num_cw, bool read, i
 		ecc_bch_cfg = 1 << ECC_CFG_ECC_DISABLE;
 	}
 
-	nandc_set_reg(chip, NAND_FLASH_CMD, cmd);
-	nandc_set_reg(chip, NAND_DEV0_CFG0, cfg0);
-	nandc_set_reg(chip, NAND_DEV0_CFG1, cfg1);
-	nandc_set_reg(chip, NAND_DEV0_ECC_CFG, ecc_bch_cfg);
-	if (!nandc->props->qpic_v2)
-		nandc_set_reg(chip, NAND_EBI2_ECC_BUF_CFG, host->ecc_buf_cfg);
-	nandc_set_reg(chip, NAND_FLASH_STATUS, host->clrflashstatus);
-	nandc_set_reg(chip, NAND_READ_STATUS, host->clrreadstatus);
-	nandc_set_reg(chip, NAND_EXEC_CMD, 1);
+	nandc->regs->cmd = cmd;
+	nandc->regs->cfg0 = cfg0;
+	nandc->regs->cfg1 = cfg1;
+	nandc->regs->ecc_bch_cfg = ecc_bch_cfg;
+
+	if (!nandc->props->qpic_version2)
+		nandc->regs->ecc_buf_cfg = host->ecc_buf_cfg;
+
+	nandc->regs->clrflashstatus = host->clrflashstatus;
+	nandc->regs->clrreadstatus = host->clrreadstatus;
+	nandc->regs->exec = 1;
 
 	if (read)
 		nandc_set_read_loc(chip, cw, 0, 0, host->use_ecc ?
@@ -1121,7 +1081,7 @@ static int read_reg_dma(struct qcom_nand_controller *nandc, int first,
 	if (first == NAND_DEV_CMD_VLD || first == NAND_DEV_CMD1)
 		first = dev_cmd_reg_addr(nandc, first);
 
-	if (nandc->props->is_bam)
+	if (nandc->props->supports_bam)
 		return prep_bam_dma_desc_cmd(nandc, true, first, vaddr,
 					     num_regs, flags);
 
@@ -1136,25 +1096,16 @@ static int read_reg_dma(struct qcom_nand_controller *nandc, int first,
  * write_reg_dma:	prepares a descriptor to write a given number of
  *			contiguous registers
  *
+ * @vaddr:		contnigeous memory from where register value will
+ *			be written
  * @first:		offset of the first register in the contiguous block
  * @num_regs:		number of registers to write
  * @flags:		flags to control DMA descriptor preparation
  */
-static int write_reg_dma(struct qcom_nand_controller *nandc, int first,
-			 int num_regs, unsigned int flags)
+static int write_reg_dma(struct qcom_nand_controller *nandc, __le32 *vaddr,
+			 int first, int num_regs, unsigned int flags)
 {
 	bool flow_control = false;
-	struct nandc_regs *regs = nandc->regs;
-	void *vaddr;
-
-	vaddr = offset_to_nandc_reg(regs, first);
-
-	if (first == NAND_ERASED_CW_DETECT_CFG) {
-		if (flags & NAND_ERASED_CW_SET)
-			vaddr = &regs->erased_cw_detect_cfg_set;
-		else
-			vaddr = &regs->erased_cw_detect_cfg_clr;
-	}
 
 	if (first == NAND_EXEC_CMD)
 		flags |= NAND_BAM_NWD;
@@ -1165,7 +1116,7 @@ static int write_reg_dma(struct qcom_nand_controller *nandc, int first,
 	if (first == NAND_DEV_CMD_VLD_RESTORE || first == NAND_DEV_CMD_VLD)
 		first = dev_cmd_reg_addr(nandc, NAND_DEV_CMD_VLD);
 
-	if (nandc->props->is_bam)
+	if (nandc->props->supports_bam)
 		return prep_bam_dma_desc_cmd(nandc, false, first, vaddr,
 					     num_regs, flags);
 
@@ -1188,7 +1139,7 @@ static int write_reg_dma(struct qcom_nand_controller *nandc, int first,
 static int read_data_dma(struct qcom_nand_controller *nandc, int reg_off,
 			 const u8 *vaddr, int size, unsigned int flags)
 {
-	if (nandc->props->is_bam)
+	if (nandc->props->supports_bam)
 		return prep_bam_dma_desc_data(nandc, true, vaddr, size, flags);
 
 	return prep_adm_dma_desc(nandc, true, reg_off, vaddr, size, false);
@@ -1206,7 +1157,7 @@ static int read_data_dma(struct qcom_nand_controller *nandc, int reg_off,
 static int write_data_dma(struct qcom_nand_controller *nandc, int reg_off,
 			  const u8 *vaddr, int size, unsigned int flags)
 {
-	if (nandc->props->is_bam)
+	if (nandc->props->supports_bam)
 		return prep_bam_dma_desc_data(nandc, false, vaddr, size, flags);
 
 	return prep_adm_dma_desc(nandc, false, reg_off, vaddr, size, false);
@@ -1220,13 +1171,14 @@ static void config_nand_page_read(struct nand_chip *chip)
 {
 	struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 
-	write_reg_dma(nandc, NAND_ADDR0, 2, 0);
-	write_reg_dma(nandc, NAND_DEV0_CFG0, 3, 0);
-	if (!nandc->props->qpic_v2)
-		write_reg_dma(nandc, NAND_EBI2_ECC_BUF_CFG, 1, 0);
-	write_reg_dma(nandc, NAND_ERASED_CW_DETECT_CFG, 1, 0);
-	write_reg_dma(nandc, NAND_ERASED_CW_DETECT_CFG, 1,
-		      NAND_ERASED_CW_SET | NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->addr0, NAND_ADDR0, 2, 0);
+	write_reg_dma(nandc, &nandc->regs->cfg0, NAND_DEV0_CFG0, 3, 0);
+	if (!nandc->props->qpic_version2)
+		write_reg_dma(nandc, &nandc->regs->ecc_buf_cfg, NAND_EBI2_ECC_BUF_CFG, 1, 0);
+	write_reg_dma(nandc, &nandc->regs->erased_cw_detect_cfg_clr,
+		      NAND_ERASED_CW_DETECT_CFG, 1, 0);
+	write_reg_dma(nandc, &nandc->regs->erased_cw_detect_cfg_set,
+		      NAND_ERASED_CW_DETECT_CFG, 1, NAND_ERASED_CW_SET | NAND_BAM_NEXT_SGL);
 }
 
 /*
@@ -1239,16 +1191,16 @@ config_nand_cw_read(struct nand_chip *chip, bool use_ecc, int cw)
 	struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 	struct nand_ecc_ctrl *ecc = &chip->ecc;
 
-	int reg = NAND_READ_LOCATION_0;
+	__le32 *reg = &nandc->regs->read_location0;
 
-	if (nandc->props->qpic_v2 && qcom_nandc_is_last_cw(ecc, cw))
-		reg = NAND_READ_LOCATION_LAST_CW_0;
+	if (nandc->props->qpic_version2 && qcom_nandc_is_last_cw(ecc, cw))
+		reg = &nandc->regs->read_location_last0;
 
-	if (nandc->props->is_bam)
-		write_reg_dma(nandc, reg, 4, NAND_BAM_NEXT_SGL);
+	if (nandc->props->supports_bam)
+		write_reg_dma(nandc, reg, NAND_READ_LOCATION_0, 4, NAND_BAM_NEXT_SGL);
 
-	write_reg_dma(nandc, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
-	write_reg_dma(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->cmd, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->exec, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
 
 	if (use_ecc) {
 		read_reg_dma(nandc, NAND_FLASH_STATUS, 2, 0);
@@ -1279,10 +1231,10 @@ static void config_nand_page_write(struct nand_chip *chip)
 {
 	struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 
-	write_reg_dma(nandc, NAND_ADDR0, 2, 0);
-	write_reg_dma(nandc, NAND_DEV0_CFG0, 3, 0);
-	if (!nandc->props->qpic_v2)
-		write_reg_dma(nandc, NAND_EBI2_ECC_BUF_CFG, 1,
+	write_reg_dma(nandc, &nandc->regs->addr0, NAND_ADDR0, 2, 0);
+	write_reg_dma(nandc, &nandc->regs->cfg0, NAND_DEV0_CFG0, 3, 0);
+	if (!nandc->props->qpic_version2)
+		write_reg_dma(nandc, &nandc->regs->ecc_buf_cfg, NAND_EBI2_ECC_BUF_CFG, 1,
 			      NAND_BAM_NEXT_SGL);
 }
 
@@ -1294,13 +1246,13 @@ static void config_nand_cw_write(struct nand_chip *chip)
 {
 	struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 
-	write_reg_dma(nandc, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
-	write_reg_dma(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->cmd, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->exec, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
 
 	read_reg_dma(nandc, NAND_FLASH_STATUS, 1, NAND_BAM_NEXT_SGL);
 
-	write_reg_dma(nandc, NAND_FLASH_STATUS, 1, 0);
-	write_reg_dma(nandc, NAND_READ_STATUS, 1, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->clrflashstatus, NAND_FLASH_STATUS, 1, 0);
+	write_reg_dma(nandc, &nandc->regs->clrreadstatus, NAND_READ_STATUS, 1, NAND_BAM_NEXT_SGL);
 }
 
 /* helpers to submit/free our list of dma descriptors */
@@ -1311,7 +1263,7 @@ static int submit_descs(struct qcom_nand_controller *nandc)
 	struct bam_transaction *bam_txn = nandc->bam_txn;
 	int ret = 0;
 
-	if (nandc->props->is_bam) {
+	if (nandc->props->supports_bam) {
 		if (bam_txn->rx_sgl_pos > bam_txn->rx_sgl_start) {
 			ret = prepare_bam_async_desc(nandc, nandc->rx_chan, 0);
 			if (ret)
@@ -1336,14 +1288,9 @@ static int submit_descs(struct qcom_nand_controller *nandc)
 	list_for_each_entry(desc, &nandc->desc_list, node)
 		cookie = dmaengine_submit(desc->dma_desc);
 
-	if (nandc->props->is_bam) {
+	if (nandc->props->supports_bam) {
 		bam_txn->last_cmd_desc->callback = qpic_bam_dma_done;
 		bam_txn->last_cmd_desc->callback_param = bam_txn;
-		if (bam_txn->last_data_desc) {
-			bam_txn->last_data_desc->callback = qpic_bam_dma_done;
-			bam_txn->last_data_desc->callback_param = bam_txn;
-			bam_txn->wait_second_completion = true;
-		}
 
 		dma_async_issue_pending(nandc->tx_chan);
 		dma_async_issue_pending(nandc->rx_chan);
@@ -1365,7 +1312,7 @@ static int submit_descs(struct qcom_nand_controller *nandc)
 	list_for_each_entry_safe(desc, n, &nandc->desc_list, node) {
 		list_del(&desc->node);
 
-		if (nandc->props->is_bam)
+		if (nandc->props->supports_bam)
 			dma_unmap_sg(nandc->dev, desc->bam_sgl,
 				     desc->sgl_cnt, desc->dir);
 		else
@@ -1382,7 +1329,7 @@ static int submit_descs(struct qcom_nand_controller *nandc)
 static void clear_read_regs(struct qcom_nand_controller *nandc)
 {
 	nandc->reg_read_pos = 0;
-	nandc_read_buffer_sync(nandc, false);
+	nandc_dev_to_mem(nandc, false);
 }
 
 /*
@@ -1446,7 +1393,7 @@ static int check_flash_errors(struct qcom_nand_host *host, int cw_cnt)
 	struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 	int i;
 
-	nandc_read_buffer_sync(nandc, true);
+	nandc_dev_to_mem(nandc, true);
 
 	for (i = 0; i < cw_cnt; i++) {
 		u32 flash = le32_to_cpu(nandc->reg_read_buf[i]);
@@ -1476,7 +1423,7 @@ qcom_nandc_read_cw_raw(struct mtd_info *mtd, struct nand_chip *chip,
 	clear_read_regs(nandc);
 	host->use_ecc = false;
 
-	if (nandc->props->qpic_v2)
+	if (nandc->props->qpic_version2)
 		raw_cw = ecc->steps - 1;
 
 	clear_bam_transaction(nandc);
@@ -1497,7 +1444,7 @@ qcom_nandc_read_cw_raw(struct mtd_info *mtd, struct nand_chip *chip,
 		oob_size2 = host->ecc_bytes_hw + host->spare_bytes;
 	}
 
-	if (nandc->props->is_bam) {
+	if (nandc->props->supports_bam) {
 		nandc_set_read_loc(chip, cw, 0, read_loc, data_size1, 0);
 		read_loc += data_size1;
 
@@ -1621,7 +1568,7 @@ static int parse_read_errors(struct qcom_nand_host *host, u8 *data_buf,
 	u8 *data_buf_start = data_buf, *oob_buf_start = oob_buf;
 
 	buf = (struct read_stats *)nandc->reg_read_buf;
-	nandc_read_buffer_sync(nandc, true);
+	nandc_dev_to_mem(nandc, true);
 
 	for (i = 0; i < ecc->steps; i++, buf++) {
 		u32 flash, buffer, erased_cw;
@@ -1734,7 +1681,7 @@ static int read_page_ecc(struct qcom_nand_host *host, u8 *data_buf,
 			oob_size = host->ecc_bytes_hw + host->spare_bytes;
 		}
 
-		if (nandc->props->is_bam) {
+		if (nandc->props->supports_bam) {
 			if (data_buf && oob_buf) {
 				nandc_set_read_loc(chip, i, 0, 0, data_size, 0);
 				nandc_set_read_loc(chip, i, 1, data_size,
@@ -2455,14 +2402,14 @@ static int qcom_nand_attach_chip(struct nand_chip *chip)
 
 	mtd_set_ooblayout(mtd, &qcom_nand_ooblayout_ops);
 	/* Free the initially allocated BAM transaction for reading the ONFI params */
-	if (nandc->props->is_bam)
+	if (nandc->props->supports_bam)
 		free_bam_transaction(nandc);
 
 	nandc->max_cwperpage = max_t(unsigned int, nandc->max_cwperpage,
 				     cwperpage);
 
 	/* Now allocate the BAM transaction based on updated max_cwperpage */
-	if (nandc->props->is_bam) {
+	if (nandc->props->supports_bam) {
 		nandc->bam_txn = alloc_bam_transaction(nandc);
 		if (!nandc->bam_txn) {
 			dev_err(nandc->dev,
@@ -2522,7 +2469,7 @@ static int qcom_nand_attach_chip(struct nand_chip *chip)
 				| ecc_mode << ECC_MODE
 				| host->ecc_bytes_hw << ECC_PARITY_SIZE_BYTES_BCH;
 
-	if (!nandc->props->qpic_v2)
+	if (!nandc->props->qpic_version2)
 		host->ecc_buf_cfg = 0x203 << NUM_STEPS;
 
 	host->clrflashstatus = FS_READY_BSY_N;
@@ -2556,7 +2503,7 @@ static int qcom_op_cmd_mapping(struct nand_chip *chip, u8 opcode,
 		cmd = OP_FETCH_ID;
 		break;
 	case NAND_CMD_PARAM:
-		if (nandc->props->qpic_v2)
+		if (nandc->props->qpic_version2)
 			cmd = OP_PAGE_READ_ONFI_READ;
 		else
 			cmd = OP_PAGE_READ;
@@ -2663,7 +2610,7 @@ static int qcom_wait_rdy_poll(struct nand_chip *chip, unsigned int time_ms)
 	unsigned long start = jiffies + msecs_to_jiffies(time_ms);
 	u32 flash;
 
-	nandc_read_buffer_sync(nandc, true);
+	nandc_dev_to_mem(nandc, true);
 
 	do {
 		flash = le32_to_cpu(nandc->reg_read_buf[0]);
@@ -2706,11 +2653,11 @@ static int qcom_read_status_exec(struct nand_chip *chip,
 	clear_read_regs(nandc);
 	clear_bam_transaction(nandc);
 
-	nandc_set_reg(chip, NAND_FLASH_CMD, q_op.cmd_reg);
-	nandc_set_reg(chip, NAND_EXEC_CMD, 1);
+	nandc->regs->cmd = q_op.cmd_reg;
+	nandc->regs->exec = 1;
 
-	write_reg_dma(nandc, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
-	write_reg_dma(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->cmd, NAND_FLASH_CMD, 1, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->exec, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
 	read_reg_dma(nandc, NAND_FLASH_STATUS, 1, NAND_BAM_NEXT_SGL);
 
 	ret = submit_descs(nandc);
@@ -2719,7 +2666,7 @@ static int qcom_read_status_exec(struct nand_chip *chip,
 		goto err_out;
 	}
 
-	nandc_read_buffer_sync(nandc, true);
+	nandc_dev_to_mem(nandc, true);
 
 	for (i = 0; i < num_cw; i++) {
 		flash_status = le32_to_cpu(nandc->reg_read_buf[i]);
@@ -2763,16 +2710,14 @@ static int qcom_read_id_type_exec(struct nand_chip *chip, const struct nand_subo
 	clear_read_regs(nandc);
 	clear_bam_transaction(nandc);
 
-	nandc_set_reg(chip, NAND_FLASH_CMD, q_op.cmd_reg);
-	nandc_set_reg(chip, NAND_ADDR0, q_op.addr1_reg);
-	nandc_set_reg(chip, NAND_ADDR1, q_op.addr2_reg);
-	nandc_set_reg(chip, NAND_FLASH_CHIP_SELECT,
-		      nandc->props->is_bam ? 0 : DM_EN);
-
-	nandc_set_reg(chip, NAND_EXEC_CMD, 1);
+	nandc->regs->cmd = q_op.cmd_reg;
+	nandc->regs->addr0 = q_op.addr1_reg;
+	nandc->regs->addr1 = q_op.addr2_reg;
+	nandc->regs->chip_sel = nandc->props->supports_bam ? 0 : DM_EN;
+	nandc->regs->exec = 1;
 
-	write_reg_dma(nandc, NAND_FLASH_CMD, 4, NAND_BAM_NEXT_SGL);
-	write_reg_dma(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->cmd, NAND_FLASH_CMD, 4, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->exec, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
 
 	read_reg_dma(nandc, NAND_READ_ID, 1, NAND_BAM_NEXT_SGL);
 
@@ -2786,7 +2731,7 @@ static int qcom_read_id_type_exec(struct nand_chip *chip, const struct nand_subo
 	op_id = q_op.data_instr_idx;
 	len = nand_subop_get_data_len(subop, op_id);
 
-	nandc_read_buffer_sync(nandc, true);
+	nandc_dev_to_mem(nandc, true);
 	memcpy(instr->ctx.data.buf.in, nandc->reg_read_buf, len);
 
 err_out:
@@ -2809,11 +2754,10 @@ static int qcom_misc_cmd_type_exec(struct nand_chip *chip, const struct nand_sub
 		goto wait_rdy;
 	} else if (q_op.cmd_reg == OP_BLOCK_ERASE) {
 		q_op.cmd_reg |= PAGE_ACC | LAST_PAGE;
-		nandc_set_reg(chip, NAND_ADDR0, q_op.addr1_reg);
-		nandc_set_reg(chip, NAND_ADDR1, q_op.addr2_reg);
-		nandc_set_reg(chip, NAND_DEV0_CFG0,
-			      host->cfg0_raw & ~(7 << CW_PER_PAGE));
-		nandc_set_reg(chip, NAND_DEV0_CFG1, host->cfg1_raw);
+		nandc->regs->addr0 = q_op.addr1_reg;
+		nandc->regs->addr1 = q_op.addr2_reg;
+		nandc->regs->cfg0 = host->cfg0_raw & ~(7 << CW_PER_PAGE);
+		nandc->regs->cfg1 = host->cfg1_raw;
 		instrs = 3;
 	} else if (q_op.cmd_reg != OP_RESET_DEVICE) {
 		return 0;
@@ -2826,14 +2770,14 @@ static int qcom_misc_cmd_type_exec(struct nand_chip *chip, const struct nand_sub
 	clear_read_regs(nandc);
 	clear_bam_transaction(nandc);
 
-	nandc_set_reg(chip, NAND_FLASH_CMD, q_op.cmd_reg);
-	nandc_set_reg(chip, NAND_EXEC_CMD, 1);
+	nandc->regs->cmd = q_op.cmd_reg;
+	nandc->regs->exec = 1;
 
-	write_reg_dma(nandc, NAND_FLASH_CMD, instrs, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->cmd, NAND_FLASH_CMD, instrs, NAND_BAM_NEXT_SGL);
 	if (q_op.cmd_reg == OP_BLOCK_ERASE)
-		write_reg_dma(nandc, NAND_DEV0_CFG0, 2, NAND_BAM_NEXT_SGL);
+		write_reg_dma(nandc, &nandc->regs->cfg0, NAND_DEV0_CFG0, 2, NAND_BAM_NEXT_SGL);
 
-	write_reg_dma(nandc, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
+	write_reg_dma(nandc, &nandc->regs->exec, NAND_EXEC_CMD, 1, NAND_BAM_NEXT_SGL);
 	read_reg_dma(nandc, NAND_FLASH_STATUS, 1, NAND_BAM_NEXT_SGL);
 
 	ret = submit_descs(nandc);
@@ -2872,38 +2816,38 @@ static int qcom_param_page_type_exec(struct nand_chip *chip,  const struct nand_
 	clear_read_regs(nandc);
 	clear_bam_transaction(nandc);
 
-	nandc_set_reg(chip, NAND_FLASH_CMD, q_op.cmd_reg);
-
-	nandc_set_reg(chip, NAND_ADDR0, 0);
-	nandc_set_reg(chip, NAND_ADDR1, 0);
-	nandc_set_reg(chip, NAND_DEV0_CFG0, 0 << CW_PER_PAGE
-					| 512 << UD_SIZE_BYTES
-					| 5 << NUM_ADDR_CYCLES
-					| 0 << SPARE_SIZE_BYTES);
-	nandc_set_reg(chip, NAND_DEV0_CFG1, 7 << NAND_RECOVERY_CYCLES
-					| 0 << CS_ACTIVE_BSY
-					| 17 << BAD_BLOCK_BYTE_NUM
-					| 1 << BAD_BLOCK_IN_SPARE_AREA
-					| 2 << WR_RD_BSY_GAP
-					| 0 << WIDE_FLASH
-					| 1 << DEV0_CFG1_ECC_DISABLE);
-	if (!nandc->props->qpic_v2)
-		nandc_set_reg(chip, NAND_EBI2_ECC_BUF_CFG, 1 << ECC_CFG_ECC_DISABLE);
+	nandc->regs->cmd = q_op.cmd_reg;
+	nandc->regs->addr0 = 0;
+	nandc->regs->addr1 = 0;
+
+	nandc->regs->cfg0 = 0 << CW_PER_PAGE
+			    | 512 << UD_SIZE_BYTES
+			    | 5 << NUM_ADDR_CYCLES
+			    | 0 << SPARE_SIZE_BYTES;
+
+	nandc->regs->cfg1 = 7 << NAND_RECOVERY_CYCLES
+			    | 0 << CS_ACTIVE_BSY
+			    | 17 << BAD_BLOCK_BYTE_NUM
+			    | 1 << BAD_BLOCK_IN_SPARE_AREA
+			    | 2 << WR_RD_BSY_GAP
+			    | 0 << WIDE_FLASH
+			    | 1 << DEV0_CFG1_ECC_DISABLE;
+
+	if (!nandc->props->qpic_version2)
+		nandc->regs->ecc_buf_cfg = 1 << ECC_CFG_ECC_DISABLE;
 
 	/* configure CMD1 and VLD for ONFI param probing in QPIC v1 */
-	if (!nandc->props->qpic_v2) {
-		nandc_set_reg(chip, NAND_DEV_CMD_VLD,
-			      (nandc->vld & ~READ_START_VLD));
-		nandc_set_reg(chip, NAND_DEV_CMD1,
-			      (nandc->cmd1 & ~(0xFF << READ_ADDR))
-			      | NAND_CMD_PARAM << READ_ADDR);
+	if (!nandc->props->qpic_version2) {
+		nandc->regs->vld = (nandc->vld & ~READ_START_VLD);
+		nandc->regs->cmd1 = (nandc->cmd1 & ~(0xFF << READ_ADDR))
+				    | NAND_CMD_PARAM << READ_ADDR;
 	}
 
-	nandc_set_reg(chip, NAND_EXEC_CMD, 1);
+	nandc->regs->exec = 1;
 
-	if (!nandc->props->qpic_v2) {
-		nandc_set_reg(chip, NAND_DEV_CMD1_RESTORE, nandc->cmd1);
-		nandc_set_reg(chip, NAND_DEV_CMD_VLD_RESTORE, nandc->vld);
+	if (!nandc->props->qpic_version2) {
+		nandc->regs->orig_cmd1 = nandc->cmd1;
+		nandc->regs->orig_vld = nandc->vld;
 	}
 
 	instr = q_op.data_instr;
@@ -2912,9 +2856,9 @@ static int qcom_param_page_type_exec(struct nand_chip *chip,  const struct nand_
 
 	nandc_set_read_loc(chip, 0, 0, 0, len, 1);
 
-	if (!nandc->props->qpic_v2) {
-		write_reg_dma(nandc, NAND_DEV_CMD_VLD, 1, 0);
-		write_reg_dma(nandc, NAND_DEV_CMD1, 1, NAND_BAM_NEXT_SGL);
+	if (!nandc->props->qpic_version2) {
+		write_reg_dma(nandc, &nandc->regs->vld, NAND_DEV_CMD_VLD, 1, 0);
+		write_reg_dma(nandc, &nandc->regs->cmd1, NAND_DEV_CMD1, 1, NAND_BAM_NEXT_SGL);
 	}
 
 	nandc->buf_count = len;
@@ -2926,9 +2870,10 @@ static int qcom_param_page_type_exec(struct nand_chip *chip,  const struct nand_
 		      nandc->buf_count, 0);
 
 	/* restore CMD1 and VLD regs */
-	if (!nandc->props->qpic_v2) {
-		write_reg_dma(nandc, NAND_DEV_CMD1_RESTORE, 1, 0);
-		write_reg_dma(nandc, NAND_DEV_CMD_VLD_RESTORE, 1, NAND_BAM_NEXT_SGL);
+	if (!nandc->props->qpic_version2) {
+		write_reg_dma(nandc, &nandc->regs->orig_cmd1, NAND_DEV_CMD1_RESTORE, 1, 0);
+		write_reg_dma(nandc, &nandc->regs->orig_vld, NAND_DEV_CMD_VLD_RESTORE, 1,
+			      NAND_BAM_NEXT_SGL);
 	}
 
 	ret = submit_descs(nandc);
@@ -3017,7 +2962,7 @@ static const struct nand_controller_ops qcom_nandc_ops = {
 
 static void qcom_nandc_unalloc(struct qcom_nand_controller *nandc)
 {
-	if (nandc->props->is_bam) {
+	if (nandc->props->supports_bam) {
 		if (!dma_mapping_error(nandc->dev, nandc->reg_read_dma))
 			dma_unmap_single(nandc->dev, nandc->reg_read_dma,
 					 MAX_REG_RD *
@@ -3070,7 +3015,7 @@ static int qcom_nandc_alloc(struct qcom_nand_controller *nandc)
 	if (!nandc->reg_read_buf)
 		return -ENOMEM;
 
-	if (nandc->props->is_bam) {
+	if (nandc->props->supports_bam) {
 		nandc->reg_read_dma =
 			dma_map_single(nandc->dev, nandc->reg_read_buf,
 				       MAX_REG_RD *
@@ -3151,15 +3096,15 @@ static int qcom_nandc_setup(struct qcom_nand_controller *nandc)
 	u32 nand_ctrl;
 
 	/* kill onenand */
-	if (!nandc->props->is_qpic)
+	if (!nandc->props->nandc_part_of_qpic)
 		nandc_write(nandc, SFLASHC_BURST_CFG, 0);
 
-	if (!nandc->props->qpic_v2)
+	if (!nandc->props->qpic_version2)
 		nandc_write(nandc, dev_cmd_reg_addr(nandc, NAND_DEV_CMD_VLD),
 			    NAND_DEV_CMD_VLD_VAL);
 
 	/* enable ADM or BAM DMA */
-	if (nandc->props->is_bam) {
+	if (nandc->props->supports_bam) {
 		nand_ctrl = nandc_read(nandc, NAND_CTRL);
 
 		/*
@@ -3176,7 +3121,7 @@ static int qcom_nandc_setup(struct qcom_nand_controller *nandc)
 	}
 
 	/* save the original values of these registers */
-	if (!nandc->props->qpic_v2) {
+	if (!nandc->props->qpic_version2) {
 		nandc->cmd1 = nandc_read(nandc, dev_cmd_reg_addr(nandc, NAND_DEV_CMD1));
 		nandc->vld = NAND_DEV_CMD_VLD_VAL;
 	}
@@ -3349,7 +3294,7 @@ static int qcom_nandc_parse_dt(struct platform_device *pdev)
 	struct device_node *np = nandc->dev->of_node;
 	int ret;
 
-	if (!nandc->props->is_bam) {
+	if (!nandc->props->supports_bam) {
 		ret = of_property_read_u32(np, "qcom,cmd-crci",
 					   &nandc->cmd_crci);
 		if (ret) {
@@ -3474,30 +3419,30 @@ static void qcom_nandc_remove(struct platform_device *pdev)
 
 static const struct qcom_nandc_props ipq806x_nandc_props = {
 	.ecc_modes = (ECC_RS_4BIT | ECC_BCH_8BIT),
-	.is_bam = false,
+	.supports_bam = false,
 	.use_codeword_fixup = true,
 	.dev_cmd_reg_start = 0x0,
 };
 
 static const struct qcom_nandc_props ipq4019_nandc_props = {
 	.ecc_modes = (ECC_BCH_4BIT | ECC_BCH_8BIT),
-	.is_bam = true,
-	.is_qpic = true,
+	.supports_bam = true,
+	.nandc_part_of_qpic = true,
 	.dev_cmd_reg_start = 0x0,
 };
 
 static const struct qcom_nandc_props ipq8074_nandc_props = {
 	.ecc_modes = (ECC_BCH_4BIT | ECC_BCH_8BIT),
-	.is_bam = true,
-	.is_qpic = true,
+	.supports_bam = true,
+	.nandc_part_of_qpic = true,
 	.dev_cmd_reg_start = 0x7000,
 };
 
 static const struct qcom_nandc_props sdx55_nandc_props = {
 	.ecc_modes = (ECC_BCH_4BIT | ECC_BCH_8BIT),
-	.is_bam = true,
-	.is_qpic = true,
-	.qpic_v2 = true,
+	.supports_bam = true,
+	.nandc_part_of_qpic = true,
+	.qpic_version2 = true,
 	.dev_cmd_reg_start = 0x7000,
 };
 
-- 
2.34.1


