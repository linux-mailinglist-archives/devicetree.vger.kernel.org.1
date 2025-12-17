Return-Path: <devicetree+bounces-247599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CFDCC8E2B
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 098A53089421
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E7F3563C5;
	Wed, 17 Dec 2025 16:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WfcKZJaM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Zvl7RtjL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F18354AE4
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989335; cv=none; b=ChUM5OuHnCub6fJ2n2J4FvekIXX+2M4mYIYq/pJ64YjAEzCVpjhgS3m3alRn9kK0F6oTCB1lK3oBWfSmnhjQBL43fx4PCKhxZId5PDaxGNstKv0gu24/7aU+/7PoVf5vGPC7o8WVoYbAhCdSHH2rR589sTM14DbvaiVat968ZXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989335; c=relaxed/simple;
	bh=FAxVohbaSqYOeL1tiCXnhoUqP1k3h7eieaHb5VvFGf8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MCmBg6gAwjXSs+7BkMIMQFT2JBYbeWfpy2EuuNOKNNE0aUC9tduGIrgTPUcx1/17o619+3H58vkLvBrotVG6GF8IDjU8YC4YzokvqLA+WL6lKqLpT039aXPFdi7O80yp2m3A+AAtmV8gspCwZ55Bx3S4lAX4t+FjB5ZDvhuL5tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WfcKZJaM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Zvl7RtjL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL8mC2043020
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YGBJ3wXs+b7+nyeDhGQJtyljMMb0eEpcnD47PuoXhNo=; b=WfcKZJaMQ8TMSyLt
	M02v1gRmrQlh2rlcquwUuQx2GbxvGHvhh4GwLijVAgC068SglFyFwBdk4jc7bErF
	ovXMhFinklzbxn7UJZfEN+vCeI82ggU74o8p9ssI16+AgPS2Bn5/Nu+Jy4FtTHAn
	Dwdg48trRdS61iTaamkzHbj+0B7a4gxb1V74jt1Ko/FUK8JuwOMHsaBTi7BAirQu
	NmRh+YE6iVn9TGHaX2IJHdySekdUnffUovnjZA1VhJ9GA46bjyPSxPH0NX6kfxWJ
	m1DFibirFFLG9peCtzMK4aR1/JAVGwG/0RsxfebrC+uZY5yxlZJd5HvrxK6I3mpn
	rm6/GQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fj1u846-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:32 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0f47c0e60so80617755ad.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765989332; x=1766594132; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YGBJ3wXs+b7+nyeDhGQJtyljMMb0eEpcnD47PuoXhNo=;
        b=Zvl7RtjLYzleqKRgy2e0eymMKkv3yzcKUrOdhBVhtzXpj+kC0pDBUFNwE6R6Z7E4wb
         JUrkP8SW5YT3WDol5jDcmaOyWnpkzC7aT/zXuFM8WLoral9f3oMpO8e7RxD0hua8hvf8
         sGu9u/lCiNSHGQkRVn4+jaEKDqz6C9Odh9ht9x8ZMeCCYr+QkBD/YhSG2uUuju1m0l3I
         WL9ZaZY1HQaHx8iAoPm7GRJZY2FC0MJ95SVLxxlgLQXehqlX5NeNAkGgqbTclab6Ssmr
         lkx7PrjWUawSSrw6VbVe0FVCeSDY6+kjs+QMMbA98SjFCc+y6KFyMByw8bV2r1QjQbDe
         kaMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765989332; x=1766594132;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YGBJ3wXs+b7+nyeDhGQJtyljMMb0eEpcnD47PuoXhNo=;
        b=V0uUWAk68uwUMlAIkUqtAs2a4W2fkqvGxFXymDn2besGR7lkziBsBOpvp3cUHdSw7S
         hodEjdXUH56MaSfIHBBcUnyHMXAwm8Mjc8x6stpQYPAH45MvE/BjJZWk2Hh5FZkNKX7j
         mM00FPw9tBayq5Exsna2294MdyXI+Ilm0DwWZ2sbCPU7UXov7AMSpwsFTdNtiS50nW1L
         qjgsxmk8U4G/8sgH6dmf7ixwlmqzrVhvLkCFMgwBcBhs5mtrEinPuOM7gKdooGh3Zx3h
         eAZfgF26HqcvNgSmgIg/fXiz0fGutwFhxfUorBcPbUr92/y1AnzTDtw1owngiLwGeAnr
         HJTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaDj0kKJdlFlwCgasv34dymx0B4oho71/yLkB52Xuk9s+oB+2c2pupol8QE/tUQIrE7lhaderOm476@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2sTPyXaCOpOyIP8gFftr9cdjTYsuYlBXg3o8R3xfJIfQa3NrK
	nXkD4cpXmvA88LXRNviiQbF1D/fFyEoLc3JUSQYG2A/MA0J2uJyDV/WYs5WicjoGOpN1F0qOqBb
	KLytVrI6D9ayprJEQ005Oj/SOYX3aevlip23roxEkomzFBgx5Iw/4ULLKyTCTKcpf
X-Gm-Gg: AY/fxX644rMWMch8zemmtXseVUmgvV5LeJkA+yZ6DQxK47WqgH5hGExY1pDS8ep2Jgq
	WSpO48rzfvu5YmrBuC5C31JRVkcJTaJBz0Hvb2JgzpfSkjPMAujwLFlUo9bBwMfVeYBpKUHdrCs
	Lz/9Yzvbl6a7lUpX0IZkulPMM8fw7SZG+pGmEPrhLFJ/M4kKEaFVICTYYLb8C4lx4Lw2BG/EQ9O
	c4lTKgvw9I8/qBsGYBioShy0DjjTD5yvN+p2kQrbmFvJbySRdrvGy1YlbNyGP9ONnE7cASmrVOW
	FwvR4WD06QJGqdJiKsX3HhmN/P63l3TGKV1ngSk9DAiLAPA6JtgOR/oe8tmNokxF/CNTzlRVQ5C
	4SvfAM9BXakZR/fyf1wcKk6dMZYBVep71OeGt
X-Received: by 2002:a17:903:198b:b0:2a0:d59e:ff67 with SMTP id d9443c01a7336-2a0d59f0258mr107033185ad.38.1765989332182;
        Wed, 17 Dec 2025 08:35:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEYgRpzdDXsmzuKXAZFeBMmQaeSzJ0GI/Lnsu7gljh0MviilVmNKvIedyUebebrTOwmGMz+pA==
X-Received: by 2002:a17:903:198b:b0:2a0:d59e:ff67 with SMTP id d9443c01a7336-2a0d59f0258mr107032695ad.38.1765989331500;
        Wed, 17 Dec 2025 08:35:31 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b36af7sm204721055ad.18.2025.12.17.08.35.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:35:31 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 22:04:43 +0530
Subject: [PATCH v9 07/14] soc: qcom: mdtloader: Remove qcom_mdt_pas_init()
 from exported symbols
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-kvm_rproc_v9-v9-7-ab7ac03e0ff1@oss.qualcomm.com>
References: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
In-Reply-To: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765989299; l=3524;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=FAxVohbaSqYOeL1tiCXnhoUqP1k3h7eieaHb5VvFGf8=;
 b=6UMU+GKj+lHADAJD13/SwbP2YBESFQ+mYB1+HWQdnaMF9y9VwLRQnPMT0a7AvkVhs9/PZnnpb
 Xc403LqhbcUDVXFsq/YZ/s6sUEsg5LPWzHDAr6Opzky2ob2aWUjCjZ5
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEzMSBTYWx0ZWRfX58XQzUzH+ZZ8
 5ALd9wXEZyMmpA1gkvRdu0daRmHVtI5GwHF7QSEUQ2rpioVwo7Agckb9A0BApTqU5UGHwv9OOr/
 rqz1lbwWiRjLu3QEKJIBNTo3McO+OdE2BPgOlxe/6gqcrbBmdXQrB9eTMw/a51XEXzzzviFkL0j
 U67RAK8WN+7zxzy0EcSS9S7OdxeCn4AeTnsxcvllR+f/Wz3TeZJ3guuMZqmySf6FPhJcqf/Hipw
 gFK7mW00qMsHMRvbNJVLtY7VTyilA8Vh1toTgsNFaL6nDN7frwjF4XyBBoy+KklBhlCT1WgGT6r
 ioNp5GEd0ISqA0rJ6ryvIC/ZuXcsCv3Iljpw1VUanC4FTL3rm/qlt1ACOkQZLdFROGpkIIWQrSD
 4sOS/MtGT+K+S8EKnhAmc7syF1670w==
X-Proofpoint-ORIG-GUID: Fud8lqyTywosbGaQ5w4nNYjcHh4aSOT6
X-Proofpoint-GUID: Fud8lqyTywosbGaQ5w4nNYjcHh4aSOT6
X-Authority-Analysis: v=2.4 cv=edgwvrEH c=1 sm=1 tr=0 ts=6942dbd4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Z4Sw7GGoVt5sTUwIiKwA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170131

qcom_mdt_pas_init() was previously used only by the remoteproc driver
(drivers/remoteproc/qcom_q6v5_pas.c). Since that driver has now
transitioned to using PAS context-based qcom_mdt_pas_load() function,
making qcom_mdt_pas_init() obsolete for external use.

Removes qcom_mdt_pas_init() from the list of exported symbols and make
it static to limit its scope to internal use within mdtloader.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/soc/qcom/mdt_loader.c       | 11 +++++------
 include/linux/soc/qcom/mdt_loader.h | 10 ----------
 2 files changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
index 50c6a3c6b2a3..054abc81e76d 100644
--- a/drivers/soc/qcom/mdt_loader.c
+++ b/drivers/soc/qcom/mdt_loader.c
@@ -238,9 +238,9 @@ EXPORT_SYMBOL_GPL(qcom_mdt_read_metadata);
  *
  * Returns 0 on success, negative errno otherwise.
  */
-int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
-		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_context *ctx)
+static int __qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
+			       const char *fw_name, int pas_id, phys_addr_t mem_phys,
+			       struct qcom_scm_pas_context *ctx)
 {
 	const struct elf32_phdr *phdrs;
 	const struct elf32_phdr *phdr;
@@ -302,7 +302,6 @@ int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 out:
 	return ret;
 }
-EXPORT_SYMBOL_GPL(qcom_mdt_pas_init);
 
 static bool qcom_mdt_bins_are_split(const struct firmware *fw)
 {
@@ -469,7 +468,7 @@ int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 {
 	int ret;
 
-	ret = qcom_mdt_pas_init(dev, fw, fw_name, pas_id, mem_phys, NULL);
+	ret = __qcom_mdt_pas_init(dev, fw, fw_name, pas_id, mem_phys, NULL);
 	if (ret)
 		return ret;
 
@@ -500,7 +499,7 @@ int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *f
 {
 	int ret;
 
-	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys, ctx);
+	ret = __qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys, ctx);
 	if (ret)
 		return ret;
 
diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
index 7d57746fbbfa..82372e0db0a1 100644
--- a/include/linux/soc/qcom/mdt_loader.h
+++ b/include/linux/soc/qcom/mdt_loader.h
@@ -15,9 +15,6 @@ struct qcom_scm_pas_context;
 #if IS_ENABLED(CONFIG_QCOM_MDT_LOADER)
 
 ssize_t qcom_mdt_get_size(const struct firmware *fw);
-int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
-		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_context *pas_ctx);
 int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 		  const char *fw_name, int pas_id, void *mem_region,
 		  phys_addr_t mem_phys, size_t mem_size,
@@ -40,13 +37,6 @@ static inline ssize_t qcom_mdt_get_size(const struct firmware *fw)
 	return -ENODEV;
 }
 
-static inline int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
-				    const char *fw_name, int pas_id, phys_addr_t mem_phys,
-				    struct qcom_scm_pas_context *pas_ctx)
-{
-	return -ENODEV;
-}
-
 static inline int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 				const char *fw_name, int pas_id,
 				void *mem_region, phys_addr_t mem_phys,

-- 
2.50.1


