Return-Path: <devicetree+bounces-72604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB3D8FC614
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:24:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CC211F2333B
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4093418F2F7;
	Wed,  5 Jun 2024 08:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b="Yy91xK4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com [67.231.156.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DF8F18FC9F;
	Wed,  5 Jun 2024 08:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=67.231.156.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717575497; cv=none; b=Nu/LJSDG60CjRsqO95UxoGbZeFKB4e02DZt8aIoFULROA5Oc5E+om5qlKtHhzyZ+a6QpY8Nhz5Z654Z3CoPVC6MbvfBLGj5z9XHz28AHe9PgrXYebayN/aFiAEKjFi7vB1UJHi7TucoPnT5fppRo2jiA1GOGsDbs/rh4/zKIoc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717575497; c=relaxed/simple;
	bh=POgramDM/fdMiLSlzJqrQlzH1AXAXpW6il7HiDqkQ+8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LtEP8xbZPRGL5TnRrs//HN/jiSYarkPG0dg71BucdcUDfa56kkfnVNi2i2TW5dHfcAx+m/R99WrYwVSJJr3/QEBX5tJLCuThIKTuR9+xTYZ/uQMJ1tePdSxRsORWMOIj+xojTciQljI0YWczGs0Gp2SjD4dZ/rV4F6gyAR9ldPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=pass smtp.mailfrom=marvell.com; dkim=pass (2048-bit key) header.d=marvell.com header.i=@marvell.com header.b=Yy91xK4z; arc=none smtp.client-ip=67.231.156.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marvell.com
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 454KgFG5003875;
	Wed, 5 Jun 2024 01:18:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pfpt0220; bh=q
	2B+Afi+BIdptn8QkxOat6ipnSHPsZgJQK7An6WYXMQ=; b=Yy91xK4zouoM1Br1M
	b7EOFn01tCMDIilv/WU6+dG0U+1JgR8WMMlw3yzlqOVXE9FRfSERknttJLG5p8EC
	zIMujwmythZmcLjiNy9y8aW4ZjAGCdA1XcMWzq0YYpKkRJiwrtjQw8p8H7nySPlS
	PxTJx3AFseiuaZyQZyopNyBnkIE8Xmg8VwxFoUycYBkl+CDX9uZvft4E6fKxlkHg
	jORzRtlqOAXXyyy7cE0jK40EtM1eCiSzfPzRpbj2vTh8JAJqKja+Aoi2ccapXr7T
	8VqMvcYKrvYO1i86MOZl+UKwirVZQQY9fj+TJ1/zEOjJjVMy8xQ60zcslAWoaohg
	/ujZg==
Received: from dc5-exch05.marvell.com ([199.233.59.128])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3yj167cf5m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jun 2024 01:17:59 -0700 (PDT)
Received: from DC5-EXCH05.marvell.com (10.69.176.209) by
 DC5-EXCH05.marvell.com (10.69.176.209) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.4; Wed, 5 Jun 2024 01:17:58 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH05.marvell.com
 (10.69.176.209) with Microsoft SMTP Server id 15.2.1544.4 via Frontend
 Transport; Wed, 5 Jun 2024 01:17:58 -0700
Received: from virtx40.. (unknown [10.28.34.196])
	by maili.marvell.com (Postfix) with ESMTP id DCD673F706A;
	Wed,  5 Jun 2024 01:17:54 -0700 (PDT)
From: Linu Cherian <lcherian@marvell.com>
To: <suzuki.poulose@arm.com>, <mike.leach@linaro.org>, <james.clark@arm.com>
CC: <linux-arm-kernel@lists.infradead.org>, <coresight@lists.linaro.org>,
        <linux-kernel@vger.kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <sgoutham@marvell.com>,
        <gcherian@marvell.com>, Linu Cherian <lcherian@marvell.com>
Subject: [PATCH v9 4/7] coresight: tmc: Enable panic sync handling
Date: Wed, 5 Jun 2024 13:47:22 +0530
Message-ID: <20240605081725.622953-5-lcherian@marvell.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240605081725.622953-1-lcherian@marvell.com>
References: <20240605081725.622953-1-lcherian@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: NZPmr-rwHI1GIdlwrpFUjWElyEEYqaFd
X-Proofpoint-GUID: NZPmr-rwHI1GIdlwrpFUjWElyEEYqaFd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-04_11,2024-06-05_01,2024-05-17_01

- Get reserved region from device tree node for metadata
- Define metadata format for TMC
- Add TMC ETR panic sync handler that syncs register snapshot
  to metadata region
- Add TMC ETF panic sync handler that syncs register snapshot
  to metadata region and internal SRAM to reserved trace buffer
  region.

Signed-off-by: Linu Cherian <lcherian@marvell.com>
Reviewed-by: James Clark <james.clark@arm.com>
---
Changelog from v8:
Added Reviewed-by tag.

 .../hwtracing/coresight/coresight-tmc-core.c  | 25 +++++++
 .../hwtracing/coresight/coresight-tmc-etf.c   | 72 +++++++++++++++++++
 .../hwtracing/coresight/coresight-tmc-etr.c   | 70 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   | 45 +++++++++++-
 4 files changed, 211 insertions(+), 1 deletion(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 6beb69d74d0a..daad08bc693d 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -443,6 +443,31 @@ static void tmc_get_reserved_region(struct device *parent)
 
 	drvdata->crash_tbuf.paddr = res.start;
 	drvdata->crash_tbuf.size  = resource_size(&res);
+
+	/* Metadata region */
+	node = tmc_get_region_byname(parent->of_node, "metadata");
+	if (IS_ERR_OR_NULL(node)) {
+		dev_dbg(parent, "No metadata memory-region specified\n");
+		return;
+	}
+
+	rc = of_address_to_resource(node, 0, &res);
+	of_node_put(node);
+	if (rc || res.start == 0 || resource_size(&res) == 0) {
+		dev_err(parent, "Metadata memory is invalid\n");
+		return;
+	}
+
+	drvdata->crash_mdata.vaddr = memremap(res.start,
+					       resource_size(&res),
+					       MEMREMAP_WC);
+	if (IS_ERR_OR_NULL(drvdata->crash_mdata.vaddr)) {
+		dev_err(parent, "Metadata memory mapping failed\n");
+		return;
+	}
+
+	drvdata->crash_mdata.paddr = res.start;
+	drvdata->crash_mdata.size  = resource_size(&res);
 }
 
 /* Detect and initialise the capabilities of a TMC ETR */
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index d4f641cd9de6..f9569585e9f8 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -590,6 +590,73 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
 	return to_read;
 }
 
+static int tmc_panic_sync_etf(struct coresight_device *csdev)
+{
+	u32 val;
+	struct csdev_access *csa;
+	struct tmc_crash_metadata *mdata;
+	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
+
+	csa = &drvdata->csdev->access;
+
+	/* Make sure we have valid reserved memory */
+	if (!is_tmc_reserved_region_valid(csdev->dev.parent))
+		return 0;
+
+	mdata = (struct tmc_crash_metadata *)drvdata->crash_mdata.vaddr;
+	mdata->valid = false;
+
+	CS_UNLOCK(drvdata->base);
+
+	/* Proceed only if ETF is enabled or configured as sink */
+	val = readl(drvdata->base + TMC_CTL);
+	if (!(val & TMC_CTL_CAPT_EN))
+		goto out;
+
+	val = readl(drvdata->base + TMC_MODE);
+	if (val != TMC_MODE_CIRCULAR_BUFFER)
+		goto out;
+
+	val = readl(drvdata->base + TMC_FFSR);
+	/* Do manual flush and stop only if its not auto-stopped */
+	if (!(val & TMC_FFSR_FT_STOPPED)) {
+		dev_info(&csdev->dev,
+			 "%s: Triggering manual flush\n", __func__);
+		tmc_flush_and_stop(drvdata);
+	} else
+		tmc_wait_for_tmcready(drvdata);
+
+	/* Sync registers from hardware to metadata region */
+	mdata->sts = csdev_access_relaxed_read32(csa, TMC_STS);
+	mdata->trc_paddr = drvdata->crash_tbuf.paddr;
+
+	/* Sync Internal SRAM to reserved trace buffer region */
+	drvdata->buf = drvdata->crash_tbuf.vaddr;
+	tmc_etb_dump_hw(drvdata);
+	/* Store as per RSZ register convention */
+	mdata->size = drvdata->len >> 2;
+
+	/*
+	 * Make sure all previous writes are completed,
+	 * before we mark valid
+	 */
+	dsb(sy);
+	mdata->valid = true;
+	/*
+	 * Below order need to maintained, since crc of metadata
+	 * is dependent on first
+	 */
+	mdata->crc32_tdata = find_crash_tracedata_crc(drvdata, mdata);
+	mdata->crc32_mdata = find_crash_metadata_crc(mdata);
+
+	tmc_disable_hw(drvdata);
+
+	dev_info(&csdev->dev, "%s: success\n", __func__);
+out:
+	CS_UNLOCK(drvdata->base);
+	return 0;
+}
+
 static const struct coresight_ops_sink tmc_etf_sink_ops = {
 	.enable		= tmc_enable_etf_sink,
 	.disable	= tmc_disable_etf_sink,
@@ -603,6 +670,10 @@ static const struct coresight_ops_link tmc_etf_link_ops = {
 	.disable	= tmc_disable_etf_link,
 };
 
+static const struct coresight_ops_panic tmc_etf_sync_ops = {
+	.sync		= tmc_panic_sync_etf,
+};
+
 const struct coresight_ops tmc_etb_cs_ops = {
 	.sink_ops	= &tmc_etf_sink_ops,
 };
@@ -610,6 +681,7 @@ const struct coresight_ops tmc_etb_cs_ops = {
 const struct coresight_ops tmc_etf_cs_ops = {
 	.sink_ops	= &tmc_etf_sink_ops,
 	.link_ops	= &tmc_etf_link_ops,
+	.panic_ops	= &tmc_etf_sync_ops,
 };
 
 int tmc_read_prepare_etb(struct tmc_drvdata *drvdata)
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 041c428dd7cd..be1079e8fd64 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1813,6 +1813,71 @@ static int tmc_disable_etr_sink(struct coresight_device *csdev)
 	return 0;
 }
 
+static int tmc_panic_sync_etr(struct coresight_device *csdev)
+{
+	u32 val;
+	struct csdev_access *csa;
+	struct tmc_crash_metadata *mdata;
+	struct tmc_drvdata *drvdata = dev_get_drvdata(csdev->dev.parent);
+
+	csa = &drvdata->csdev->access;
+
+	if (!drvdata->etr_buf)
+		return 0;
+
+	/* Being in RESRV mode implies valid reserved memory as well */
+	if (drvdata->etr_buf->mode != ETR_MODE_RESRV)
+		return 0;
+
+	mdata = (struct tmc_crash_metadata *)drvdata->crash_mdata.vaddr;
+	mdata->valid = false;
+
+	CS_UNLOCK(drvdata->base);
+
+	/* Proceed only if ETR is enabled */
+	val = readl(drvdata->base + TMC_CTL);
+	if (!(val & TMC_CTL_CAPT_EN))
+		goto out;
+
+	val = readl(drvdata->base + TMC_FFSR);
+	/* Do manual flush and stop only if its not auto-stopped */
+	if (!(val & TMC_FFSR_FT_STOPPED)) {
+		dev_info(&csdev->dev,
+			 "%s: Triggering manual flush\n", __func__);
+		tmc_flush_and_stop(drvdata);
+	} else
+		tmc_wait_for_tmcready(drvdata);
+
+	/* Sync registers from hardware to metadata region */
+	mdata->size = csdev_access_relaxed_read32(csa, TMC_RSZ);
+	mdata->sts = csdev_access_relaxed_read32(csa, TMC_STS);
+	mdata->rrp = tmc_read_rrp(drvdata);
+	mdata->rwp = tmc_read_rwp(drvdata);
+	mdata->dba = tmc_read_dba(drvdata);
+	mdata->trc_paddr = drvdata->crash_tbuf.paddr;
+
+	/*
+	 * Make sure all previous writes are completed,
+	 * before we mark valid
+	 */
+	dsb(sy);
+	mdata->valid = true;
+	/*
+	 * Below order need to maintained, since crc of metadata
+	 * is dependent on first
+	 */
+	mdata->crc32_tdata = find_crash_tracedata_crc(drvdata, mdata);
+	mdata->crc32_mdata = find_crash_metadata_crc(mdata);
+
+	tmc_disable_hw(drvdata);
+
+	dev_info(&csdev->dev, "%s: success\n", __func__);
+out:
+	CS_UNLOCK(drvdata->base);
+
+	return 0;
+}
+
 static const struct coresight_ops_sink tmc_etr_sink_ops = {
 	.enable		= tmc_enable_etr_sink,
 	.disable	= tmc_disable_etr_sink,
@@ -1821,8 +1886,13 @@ static const struct coresight_ops_sink tmc_etr_sink_ops = {
 	.free_buffer	= tmc_free_etr_buffer,
 };
 
+static const struct coresight_ops_panic tmc_etr_sync_ops = {
+	.sync		= tmc_panic_sync_etr,
+};
+
 const struct coresight_ops tmc_etr_cs_ops = {
 	.sink_ops	= &tmc_etr_sink_ops,
+	.panic_ops	= &tmc_etr_sync_ops,
 };
 
 int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index c23dc9917ab9..35beee53584a 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -12,6 +12,7 @@
 #include <linux/miscdevice.h>
 #include <linux/mutex.h>
 #include <linux/refcount.h>
+#include <linux/crc32.h>
 
 #define TMC_RSZ			0x004
 #define TMC_STS			0x00c
@@ -76,6 +77,9 @@
 #define TMC_AXICTL_AXCACHE_OS	(0xf << 2)
 #define TMC_AXICTL_ARCACHE_OS	(0xf << 16)
 
+/* TMC_FFSR - 0x300 */
+#define TMC_FFSR_FT_STOPPED	BIT(1)
+
 /* TMC_FFCR - 0x304 */
 #define TMC_FFCR_FLUSHMAN_BIT	6
 #define TMC_FFCR_EN_FMT		BIT(0)
@@ -131,6 +135,21 @@ enum tmc_mem_intf_width {
 #define CORESIGHT_SOC_600_ETR_CAPS	\
 	(TMC_ETR_SAVE_RESTORE | TMC_ETR_AXI_ARCACHE)
 
+/* TMC metadata region for ETR and ETF configurations */
+struct tmc_crash_metadata {
+	uint32_t crc32_mdata;	/* crc of metadata */
+	uint32_t crc32_tdata;	/* crc of tracedata */
+	uint32_t valid;         /* Indicate if this ETF/ETR was enabled */
+	uint32_t size;          /* Ram Size register */
+	uint32_t sts;           /* Status register */
+	uint32_t reserved32[3];
+	uint64_t rrp;           /* Ram Read pointer register */
+	uint64_t rwp;           /* Ram Write pointer register */
+	uint64_t dba;		/* Data buffer address register */
+	uint64_t trc_paddr;	/* Phys address of trace buffer */
+	uint64_t reserved64[3];
+};
+
 enum etr_mode {
 	ETR_MODE_FLAT,		/* Uses contiguous flat buffer */
 	ETR_MODE_ETR_SG,	/* Uses in-built TMC ETR SG mechanism */
@@ -204,6 +223,8 @@ struct tmc_resrv_buf {
  *		retention (after crash) only when ETR_MODE_RESRV buffer
  *		mode is enabled. Used by ETF for trace data retention
  *		(after crash) by default.
+ * @crash_mdata: Reserved memory for storing tmc crash metadata.
+ *		 Used by ETR/ETF.
  */
 struct tmc_drvdata {
 	struct clk		*pclk;
@@ -230,6 +251,7 @@ struct tmc_drvdata {
 	struct etr_buf		*sysfs_buf;
 	struct etr_buf		*perf_buf;
 	struct tmc_resrv_buf	crash_tbuf;
+	struct tmc_resrv_buf	crash_mdata;
 };
 
 struct etr_buf_operations {
@@ -352,11 +374,32 @@ static inline bool is_tmc_reserved_region_valid(struct device *dev)
 	struct tmc_drvdata *drvdata = dev_get_drvdata(dev);
 
 	if (drvdata->crash_tbuf.paddr &&
-		drvdata->crash_tbuf.size)
+		drvdata->crash_tbuf.size &&
+		drvdata->crash_mdata.paddr &&
+		drvdata->crash_mdata.size)
 		return true;
 	return false;
 }
 
+static inline uint32_t find_crash_metadata_crc(struct tmc_crash_metadata *md)
+{
+	unsigned long crc_size;
+
+	crc_size = sizeof(struct tmc_crash_metadata) -
+		offsetof(struct tmc_crash_metadata, crc32_tdata);
+	return crc32_le(0, (void *)&md->crc32_tdata, crc_size);
+}
+
+static inline uint32_t find_crash_tracedata_crc(struct tmc_drvdata *drvdata,
+						struct tmc_crash_metadata *md)
+{
+	unsigned long crc_size;
+
+	/* Take CRC of configured buffer size to keep it simple */
+	crc_size = md->size << 2;
+	return crc32_le(0, (void *)drvdata->crash_tbuf.vaddr, crc_size);
+}
+
 struct coresight_device *tmc_etr_get_catu_device(struct tmc_drvdata *drvdata);
 
 void tmc_etr_set_catu_ops(const struct etr_buf_operations *catu);
-- 
2.34.1


