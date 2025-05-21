Return-Path: <devicetree+bounces-179111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0028ABEDFF
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 10:33:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B76E1BC060F
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 08:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C5D2237180;
	Wed, 21 May 2025 08:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VT7WU8JW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742CC236A73
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747816351; cv=none; b=NOQxOWHMAxnxgcpUhwI7T9a+oV7VYhnj7GhNjvlWu6YkFykxO+obp3uxTzgOZZW2TsfvfzvUwlbneCR/+/eHTi+8Qh6c20RLRHiLgBH8U1jg/r1Deegq7zX7zlFWKgO5PBTYOawt2M7gmWBhvEagZSY7IkTFKOqAqF3FVM0/EVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747816351; c=relaxed/simple;
	bh=Oe0c/HT/ThhA+Ev7ojrKYh6uc2pxBdtFufKW0Dpogs0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TBwNo/ahfJtLKrNeMRNoobHTdfDBsCGlXA+xrcBFIivlS2KDl8lWpsB0r4fw6d0w0McKftieSgTbZ6J3eJXNwbmUpcsM2QqxaLiWU8Vch+RLwr/wQM7J4vsbhOAilvHyi/o1iQb9bfin0JKBqpwziJ1KM35qpXnojFAKp50OUUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VT7WU8JW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L6AqqS032599
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:32:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S76KZTjew8gM/3p7mMZdUV3VYx0eCPcV5iivyT9LkdE=; b=VT7WU8JWJ5GCrNh4
	au/VrzCFqb/T82FC0WZtLwfoDa+wN+tKSAK3t1CH2okmBY1S3zS/KUkrNGBug2Io
	1xiu0TK9Aob9U+IdKxFQmT6dpbHAITDLAn+H4kxfeoQABcHJyanTFNFJsemGnCOA
	hhVlWX2VlwMtzlHxmhk0frdNLjVzgMKljTTgTe6SpkVmDEZ0q2QQxH5dCmjfKxYO
	ofmHNIez5tD98t/yIjp4CRPbBgJjDKR0BkIduUx552Two5JVK7cFsGO0xIeTD0qG
	DwYLDtDUfYKBiyMMUpHs60vuAxJ5BkjBsHJXUiviCJvJGTQeABEaqjE+kmqmJ51L
	yA3OZw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf0j82q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:32:28 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b26e0fee459so4207136a12.1
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 01:32:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747816347; x=1748421147;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S76KZTjew8gM/3p7mMZdUV3VYx0eCPcV5iivyT9LkdE=;
        b=HY87qH4EG1GIeY6Efc2Lhq91Qe1a+cNtw/2JpzJWGH/rmPnOdJJSm3JvylX4w+LH7P
         vvsbAZ7N8QuPaPQ5ilj68Tq2OK8syS1GRb5uRvKrjYRBnLsjQO7qKorGcuypXqSKq0VU
         a9lPpErAkZYz8KNNOL8kX9YtP96uK3wU4yaSkReqG4LB901Z9wVoX4yFi6fJZDn/N/uV
         RoQq3EatsbGCWiE69pib7LEFyo4xTsHBfkTgomXwT7LrrgOIHu/urfaEr9pAkcH+dvjo
         tmjHLZ4xCL8NbYU001H2tXqNluGL9k6/1gn1A+P+a0crgJTdErJaPJ9vJklPiazDPmCF
         zOdg==
X-Forwarded-Encrypted: i=1; AJvYcCVKZ/3Is5aSoB/AuY9dpaC769ZokXaKCyTX6UCwq+yoQf4dZpyovJx3DZ5p/tebVld62j0rY91k+1cB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+p1Gku89atYEbwNZjdOI3QDqQpNVGaPHwtCS7FZrojRK1VEX7
	P+grhZFzKRRASMdfGiEn7yt7mUl/ZhWzYp5MPu6H2D3LbI0TNoYS/FwrXDBh7pqWyRal2C/pm+Y
	xa/oz87/Vs5Z+kWqVYD+8WarCZTeyb03d85nwEy6TAp3ZIyc4zkOd4xqK36IkxEEU
X-Gm-Gg: ASbGnctehvCcXCHHrd0+wHPS1b16pEkFEcCu5wKfBQ4eMObvcjDw/8hRi/XEys76o4Y
	uhXZCF8fE2Z1loibQ0KXCBaAQv5/UGVqyfU7LQ+2cA1kFZ6DBoivBxhZHhXI9Ul6yzc2p5aw65L
	vtiuTPV2oJh5Ypc73QakyV9Fm3DU5qBZyl656+qozYC6kkNaoogtWB6bm+Pys4ACqEpkK5iX33g
	+ybQNaeDTqnIhpC/SwarDgxJCTD/RiUzLeyr2deJVmQzOfsLlbt+WT7FUwqFH/bgwl7npc+7q0r
	vspBf93ErkrocozXx6RvgaC1NQ==
X-Received: by 2002:a17:902:f683:b0:231:fc4b:c04 with SMTP id d9443c01a7336-231fc4b11c7mr244351215ad.17.1747816347432;
        Wed, 21 May 2025 01:32:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGV1xWBfIK43T9/ji+GRLO5chwpRsJB/lkdE0H3gO8bQb2Z1FBbt6swDS+oSfMEBAxBhaMgSg==
X-Received: by 2002:a17:902:f683:b0:231:fc4b:c04 with SMTP id d9443c01a7336-231fc4b11c7mr244350865ad.17.1747816347039;
        Wed, 21 May 2025 01:32:27 -0700 (PDT)
Received: from [10.213.103.17] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-233abb99a06sm13194265ad.254.2025.05.21.01.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 01:32:26 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Wed, 21 May 2025 14:02:10 +0530
Subject: [PATCH v2 1/3] soc: qcom: qcom_stats: Add support to read DDR
 statistic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250521-ddr_stats_-v2-1-2c54ea4fc071@oss.qualcomm.com>
References: <20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com>
In-Reply-To: <20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747816340; l=5258;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=Oe0c/HT/ThhA+Ev7ojrKYh6uc2pxBdtFufKW0Dpogs0=;
 b=ujNdqZfGze7UgJfqIFYhkIv01bVnGXPPcSyMndyG2IS1LFj+NNu0nOitbNxhGDeB+0mLItUPn
 3nWs3e1dwxXCo2C2K9N5i9yfpmwGsZGq43aIHti0GF6sCNCSBDehYv4
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-GUID: gfn9WKD7kUMBHPQDvF9hwsayJieq32Aq
X-Authority-Analysis: v=2.4 cv=J/Sq7BnS c=1 sm=1 tr=0 ts=682d8f9c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=4QwxTSDsR6DxlQvKCcYA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: gfn9WKD7kUMBHPQDvF9hwsayJieq32Aq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDA4MyBTYWx0ZWRfX41kCM68Oh8F5
 bpJuX8e6nvxI43ZyVXDN6zYsE+5W8z4X1Tg4AwR7vRjM5bJFCVWN/BXnxZVljFl9a8F7LIoJTFh
 CnvOADUyZqjpZxkWkeN7GkFCTdlMDoeckHeMlUbOybYzts1xevAk7ThRWtj8u1CRQQ929p8BEAY
 MyGJNpdk68gJ263TQfsUelBw6VsHghO8FXXOLec3dblPbFmImAB0/lwP3LEf++aLoNoB11xiGps
 kc1eXCk4jeKBTHlN4V0HWk+fCo80e+445vMsJ42bxSbkLntAQwIYU4dPZM79YeUzi/jijP2hARO
 ll9JfurHeTBgniC43KtllA/831f6WfY+Q33Mb7jrfuuxWZ6yp9MO2TROznn8K8fH+qNltEJYUTE
 /0SvAyypOWOESRlAGSKUvspoSGrEnmHaDh1HPIbQdhFNDUpzZCvTsCBWqZ2CoStn99vG+yUU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_02,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 mlxlogscore=999 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210083

DDR statistic provide different DDR LPM and DDR frequency statistic.
Add support to read from MSGRAM and display via debugfs.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 drivers/soc/qcom/qcom_stats.c | 99 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

diff --git a/drivers/soc/qcom/qcom_stats.c b/drivers/soc/qcom/qcom_stats.c
index 5de99cf59b9fbe32c0580e371c3cc362dfabb895..6ee73268db1d4f69deaf4ff1ee8cc8e245b76f07 100644
--- a/drivers/soc/qcom/qcom_stats.c
+++ b/drivers/soc/qcom/qcom_stats.c
@@ -1,8 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (c) 2011-2021, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2022-2025, Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
+#include <linux/bitfield.h>
 #include <linux/debugfs.h>
 #include <linux/device.h>
 #include <linux/io.h>
@@ -24,6 +26,17 @@
 #define ACCUMULATED_OFFSET	0x18
 #define CLIENT_VOTES_OFFSET	0x20
 
+#define DDR_STATS_MAGIC_KEY		0xA1157A75
+#define DDR_STATS_MAX_NUM_MODES		20
+#define DDR_STATS_MAGIC_KEY_ADDR	0x0
+#define DDR_STATS_NUM_MODES_ADDR	0x4
+#define DDR_STATS_ENTRY_START_ADDR	0x8
+
+#define DDR_STATS_CP_IDX(data)		FIELD_GET(GENMASK(4, 0), data)
+#define DDR_STATS_LPM_NAME(data)	FIELD_GET(GENMASK(7, 0), data)
+#define DDR_STATS_TYPE(data)		FIELD_GET(GENMASK(15, 8), data)
+#define DDR_STATS_FREQ(data)		FIELD_GET(GENMASK(31, 16), data)
+
 struct subsystem_data {
 	const char *name;
 	u32 smem_item;
@@ -48,12 +61,19 @@ static const struct subsystem_data subsystems[] = {
 
 struct stats_config {
 	size_t stats_offset;
+	size_t ddr_stats_offset;
 	size_t num_records;
 	bool appended_stats_avail;
 	bool dynamic_offset;
 	bool subsystem_stats_in_smem;
 };
 
+struct ddr_stats_entry {
+	u32 name;
+	u32 count;
+	u64 duration;
+};
+
 struct stats_data {
 	bool appended_stats_avail;
 	void __iomem *base;
@@ -122,8 +142,85 @@ static int qcom_soc_sleep_stats_show(struct seq_file *s, void *unused)
 	return 0;
 }
 
+static void qcom_ddr_stats_print(struct seq_file *s, struct ddr_stats_entry *data)
+{
+	u32 cp_idx;
+
+	/*
+	 * DDR statistic have two different types of details encoded.
+	 * (1) DDR LPM Stats
+	 * (2) DDR Frequency Stats
+	 *
+	 * The name field have details like which type of DDR stat (bits 8:15)
+	 * along with other details as explained below
+	 *
+	 * In case of DDR LPM stat, name field will be encoded as,
+	 * Bits	 -  Meaning
+	 * 0:7	 -  DDR LPM name, can be of 0xd4, 0xd3, 0x11 and 0xd0.
+	 * 8:15	 -  0x0 (indicates its a LPM stat)
+	 * 16:31 -  Unused
+	 *
+	 * In case of DDR FREQ stats, name field will be encoded as,
+	 * Bits  -  Meaning
+	 * 0:4   -  DDR Clock plan index (CP IDX)
+	 * 5:7   -  Unused
+	 * 8:15  -  0x1 (indicates its Freq stat)
+	 * 16:31 -  Frequency value in Mhz
+	 */
+	switch (DDR_STATS_TYPE(data->name)) {
+	case 0:
+		seq_printf(s, "DDR LPM Stat Name:0x%x\tcount:%u\tDuration (ticks):%llu\n",
+			   DDR_STATS_LPM_NAME(data->name), data->count, data->duration);
+		break;
+	case 1:
+		if (!data->count || !DDR_STATS_FREQ(data->name))
+			return;
+
+		cp_idx = DDR_STATS_CP_IDX(data->name);
+		seq_printf(s, "DDR Freq %uMhz:\tCP IDX:%u\tcount:%u\tDuration (ticks):%llu\n",
+			   DDR_STATS_FREQ(data->name), cp_idx, data->count, data->duration);
+		break;
+	}
+}
+
+static int qcom_ddr_stats_show(struct seq_file *s, void *d)
+{
+	struct ddr_stats_entry data[DDR_STATS_MAX_NUM_MODES];
+	void __iomem *reg = (void __iomem *)s->private;
+	u32 entry_count;
+	int i;
+
+	entry_count = readl_relaxed(reg + DDR_STATS_NUM_MODES_ADDR);
+	if (entry_count > DDR_STATS_MAX_NUM_MODES)
+		return -EINVAL;
+
+	reg += DDR_STATS_ENTRY_START_ADDR;
+	memcpy_fromio(data, reg, sizeof(struct ddr_stats_entry) * entry_count);
+
+	for (i = 0; i < entry_count; i++)
+		qcom_ddr_stats_print(s, &data[i]);
+
+	return 0;
+}
+
 DEFINE_SHOW_ATTRIBUTE(qcom_soc_sleep_stats);
 DEFINE_SHOW_ATTRIBUTE(qcom_subsystem_sleep_stats);
+DEFINE_SHOW_ATTRIBUTE(qcom_ddr_stats);
+
+static void qcom_create_ddr_stat_files(struct dentry *root, void __iomem *reg,
+				       const struct stats_config *config)
+{
+	u32 key;
+
+	if (!config->ddr_stats_offset)
+		return;
+
+	key = readl_relaxed(reg + config->ddr_stats_offset + DDR_STATS_MAGIC_KEY_ADDR);
+	if (key == DDR_STATS_MAGIC_KEY)
+		debugfs_create_file("ddr_stats", 0400, root,
+				    (__force void *)reg + config->ddr_stats_offset,
+				    &qcom_ddr_stats_fops);
+}
 
 static void qcom_create_soc_sleep_stat_files(struct dentry *root, void __iomem *reg,
 					     struct stats_data *d,
@@ -212,6 +309,7 @@ static int qcom_stats_probe(struct platform_device *pdev)
 
 	qcom_create_subsystem_stat_files(root, config);
 	qcom_create_soc_sleep_stat_files(root, reg, d, config);
+	qcom_create_ddr_stat_files(root, reg, config);
 
 	platform_set_drvdata(pdev, root);
 
@@ -254,6 +352,7 @@ static const struct stats_config rpmh_data_sdm845 = {
 
 static const struct stats_config rpmh_data = {
 	.stats_offset = 0x48,
+	.ddr_stats_offset = 0xb8,
 	.num_records = 3,
 	.appended_stats_avail = false,
 	.dynamic_offset = false,

-- 
2.34.1


