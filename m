Return-Path: <devicetree+bounces-244284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EAACA31B7
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:56:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE74F300E3F2
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33045334374;
	Thu,  4 Dec 2025 09:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X87Q4Ckn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GPNW5ysQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6336F335087
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764842165; cv=none; b=aZkNgValcsaKUYGpoNrkWJ/R6YKgBOIqrLFJvCzqSHrTpzJzZ1qaVQJc3cwbn5fQxYY8kIioj6Ws0QMOJysYyrU53eQEPoCkNWz2b4UV4Ns5S8L0kpylzlMH2z7hVVxu0m7kc/ijyBtcfyh5e7MA67UdmI4X3Linwp6yN9JUxKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764842165; c=relaxed/simple;
	bh=W5lyyNmfp6UKUuUv/Eii8aDsSFV+WQxv8+LLuHk8rYY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=l4CRhhvPhCO8eDSvf8BXyTIxPryieZwYr98CoRJAA7eH4KJivDKeF9EwVZflCYlYNQYy4hE6/i0Fq8jgaPr5fwaAGuEgS5V7au/bTns921qidOMxVBbFVw0zOTLBijvJapLfKHTWnOnrNmoMPNuBdIYuxbil8IypndoPc/ZnRpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X87Q4Ckn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GPNW5ysQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468cVR551467
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:56:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JnENtJ+iZ79
	uchkVcBp6bsOZyLCfXJzqxwSJpI7IA/U=; b=X87Q4Ckn8Y8TbXY0g+Yn+suSIOS
	ZSgoJ7vhPLWX8SOUnfPpibKdKG8PS+bfxcED8TFQDlA2q4JIDhnecLN2JZXMAvef
	Gy3+XDkCegnJXm9l2xtV2B1XnvLkXBbP+xjdKfPMapfj0AeWQC9UP94HU6DBpB0E
	qudQ2wKT/UJEw6ix1xtMiU9FQgRk9TlY/guijrP/Lvv2lNlcS2KnycHhs+WXybTN
	dMYORby++O+TR7toqxexTqNwisX9tHGObHx3ZFFyJ+SitUnGBOKfMDYFJ576NtyF
	kzrS7OPv9vQT8FJRZz7+jxPpRRRfaBjA2aHcVoXFvnagGVrfJCG2iwy1tTA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmmdbmp7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:56:00 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7baaf371585so1190520b3a.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764842160; x=1765446960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JnENtJ+iZ79uchkVcBp6bsOZyLCfXJzqxwSJpI7IA/U=;
        b=GPNW5ysQHKxp3JB50qGMv6sL6IqDdyThW7+/e0/UiT96m0c42NT68rSedCQsds/Y6T
         UGfWPs489tUjFtqEQYqU1/WCU3g8mMekcBQEXehWsmZ/OO2jK05BPK19JR9Ku6Klh7Kp
         /qTVkNAdFD/SmJFJ9xA1anaZ0Nmt0oXxXZtBGonxo4qE+VUY6yV3tPolUoYdcok70/xs
         6scHWE4hDMoJTrjd5m+diWUoiGDmkzUuSDMjOXsy+WHjXK6oxUjL5YddPCAUBrSIeHgz
         44xWoqDymx08YQbJyNFB6tkYpUBZnm8Fd7LcgpZ4wPoHwgpzEDm86hpDQ8mPVbtT6dUM
         AerA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764842160; x=1765446960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JnENtJ+iZ79uchkVcBp6bsOZyLCfXJzqxwSJpI7IA/U=;
        b=d32UOZTu3Ka5nf+JxUZL+nbe44GPy4zBhNCvnXByd4tAVXxFFkdYi9SLdBD70/Mgxe
         Jeo9Q3p1TnP5eeXMgVADyBmCnOaYuwji53L+Rm+6ZubijKEupdfGc3Lo8M/csDPbvDAj
         e8YMZEHMbhlIcM2kHuaAH9mndCuDmIujJ8njuXUP2GyWw2cGlb7QYi7EaoxTrCaR7VZy
         7Axaia9mS400xS5cEtOA9Do0LHPFXECvXKvKWjVyD1LwnjuGRIKvHMKQLQ8fX2uhgXGs
         FYCxwzClANuEic+D59Yo5jo1hK/iMPCuZ4dlrF5+MT2y6IxCiFzyajIOXBBT4kjxO/6r
         AQHw==
X-Forwarded-Encrypted: i=1; AJvYcCUInvaG9T/GGZliyJR4KEj6BGxGC2wT774nHR3YP+rpl0ulGxge2cWXwjCOT3l9PVu/CH/a0/svPSad@vger.kernel.org
X-Gm-Message-State: AOJu0YzT5TnF1Sp3ieR2zpG4bzOw9AO5b9NKM3MFGdHTxbGIkDhDDqpZ
	rZwQqR7DP/MoMChRtwwZqRnqJ6FsGUlLEl4/geoksNn3ACkoV1BAJTr06UUIusCEP4cfoW05Ngg
	cUgPZ4wbZfC7XXokjJACWYXz/imuOiQTyytpQJ9ZO62Cx2/ptlnezbN6gL44axYiB
X-Gm-Gg: ASbGncst4UFLJEggmBlZU1Vk/WG15CWj1H2FJw1R4OtHZ8vDVyXdQo8HjDudKrQDAQq
	iGFwVSw90MkE9SDiTTzhkagXrnPlTLB/0c/J9r0l6tBt3p4SsHCiCmvorQSA8MNEkHFjx2WQq7k
	0Fw/vfqWN6Xhen3oP/qSC+GIZWCau/fHn1ALkuaXKUefa7FEPbMmQKskv6jqdTYBRiLvd9Z6Uk8
	PVe2YGXLTfYVSMCwlPjxz0S+uD/Z3lR2hY+RpX0K+hVjfqwu7yvDAWcF2C6JxgbsUVhMVWRxlzI
	tWjI5vf91vdS64i+tO5PN6dE/MpBrjkviZPmOP3bsgCGnyWEyv3Huyz0SIEDYh8sGixmwBSi1So
	qHNEoO5lQkyCrGSIp6cHAjCMMwLSZ+oijlv7A90bpnqcN
X-Received: by 2002:a05:6a20:9194:b0:35d:7f01:676e with SMTP id adf61e73a8af0-36403377aacmr3512850637.28.1764842159965;
        Thu, 04 Dec 2025 01:55:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAVOEGXDdRdUDtAq8q+67DZiWaMBd8MEEIViFxr3XA9wPBlJn9bcZYZSOW03hDspNS7NqXIA==
X-Received: by 2002:a05:6a20:9194:b0:35d:7f01:676e with SMTP id adf61e73a8af0-36403377aacmr3512834637.28.1764842159446;
        Thu, 04 Dec 2025 01:55:59 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6817389fdsm1380436a12.1.2025.12.04.01.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 01:55:59 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, charan.kalla@oss.qualcomm.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, vijayanand.jitta@oss.qualcomm.com
Subject: [PATCH v2 3/3] of: Respect #{iommu,msi}-cells in maps
Date: Thu,  4 Dec 2025 15:25:30 +0530
Message-Id: <20251204095530.8627-4-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com>
References: <20251204095530.8627-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: sH8NB17bop0-ZZVMcjtfjjys4dH2s5jg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA4MSBTYWx0ZWRfX7UwXG0Grx7c4
 qnJYjRXicjnznDCtCdgiZ5ePhyTQ9FWa732qTb+T4s0Q8DB67xDnJdAx1U11ldPcguI6eZXM3TJ
 hWRxIxRpPXjX87vUUS6W+PjOeLB8rAImpMhjEJ0H7A0D2fhqIVJFiEEWheSVe6WKsDoSQ9rtKf0
 ABmL/CAFv3Xz6RtFwvA3VKqa4UFvUD1nt56Sgxhhu/zOXF5vIn+xmeaqRB5B0TyAr7VLWNw3GVy
 TRJVHfmVlaQmr7k+E7m8gnKzpw1psTLRa2iv9SSHQGQYbKCvwuYe8Qxs6df0D5ZSpF4qYuDWWuF
 OgIv/Eg63H158/ayPopIKnUBq/RWnv859Z4hcU2uaqHsEMRKhBG7dbNvEAFaOcxfZSWXF8TI/x9
 /GprWgxVTedl/YmwPjiHtL8I7MCY+w==
X-Proofpoint-ORIG-GUID: sH8NB17bop0-ZZVMcjtfjjys4dH2s5jg
X-Authority-Analysis: v=2.4 cv=Ctays34D c=1 sm=1 tr=0 ts=69315ab1 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8 a=wJGdY9mNwEi-N7fqGJcA:9
 a=IoOABgeZipijB_acs4fv:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1011 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040081

From: Robin Murphy <robin.murphy@arm.com>

So far our parsing of {iommu,msi}-map properites has always blindly
asusmed that the output specifiers will always have exactly 1 cell.
This typically does happen to be the case, but is not actually enforced
(and the PCI msi-map binding even explicitly states support for 0 or 1
cells) - as a result we've now ended up with dodgy DTs out in the field
which depend on this behaviour to map a 1-cell specifier for a 2-cell
provider, despite that being bogus per the bindings themselves.

Since there is some potential use in being able to map at least single
input IDs to multi-cell output specifiers (and properly support 0-cell
outputs as well), add support for properly parsing and using the target
nodes' #cells values, albeit with the unfortunate complication of still
having to work around expectations of the old behaviour too.

Since there are multi-cell output specifiers, the callers of of_map_id()
may need to get the exact cell output value for further processing.
Added support for that part --charan

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
---
 drivers/iommu/of_iommu.c |   3 +-
 drivers/of/base.c        | 107 ++++++++++++++++++++++++++++++---------
 include/linux/of.h       |  17 ++++---
 3 files changed, 94 insertions(+), 33 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index eac62bc441c5..48759cf1d900 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -45,10 +45,11 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
 				     struct device *dev,
 				     const u32 *id)
 {
-	struct of_phandle_args iommu_spec = { .args_count = 1 };
+	struct of_phandle_args iommu_spec = {};
 	struct of_map_id_arg arg = {
 		.target = &iommu_spec.np,
 		.id_out = iommu_spec.args,
+		.map_cells = &iommu_spec.args_count,
 	};
 	int err;
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index b8f78a9e6a09..68a7d6ddba66 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2045,11 +2045,30 @@ int of_find_last_cache_level(unsigned int cpu)
 	return cache_level;
 }
 
+/*
+ * Some DTs have an iommu-map targeting a 2-cell IOMMU node while
+ * specifying only 1 cell. Fortunately they all consist of length == 1
+ * entries with the same target, so check for that pattern.
+ */
+static bool of_check_bad_map(const __be32 *map, int len)
+{
+	__be32 phandle = map[1];
+
+	if (len % 4)
+		return false;
+	for (int i = 0; i < len; i += 4) {
+		if (map[i + 1] != phandle || map[i + 3] != cpu_to_be32(1))
+			return false;
+	}
+	return true;
+}
+
 /**
  * of_map_id - Translate an ID through a downstream mapping.
  * @np: root complex device node.
  * @id: device ID to map.
  * @map_name: property name of the map to use.
+ * @cells_name: property name of target specifier cells.
  * @map_mask_name: optional property name of the mask to use.
  * @arg: contains the optional params, @target which is a pointer
  *	to the target device node and id_out which is a pointer
@@ -2065,18 +2084,19 @@ int of_find_last_cache_level(unsigned int cpu)
  *
  * Return: 0 on success or a standard error code on failure.
  */
-int of_map_id(const struct device_node *np, u32 id,
-	       const char *map_name, const char *map_mask_name,
-	       struct of_map_id_arg *arg)
+int of_map_id(const struct device_node *np, u32 id, const char *map_name,
+	      const char *cells_name, const char *map_mask_name,
+	      struct of_map_id_arg *arg)
 {
 	u32 map_mask, masked_id;
-	int map_len;
+	int map_bytes, map_len, offset = 0;
+	bool bad_map = false;
 	const __be32 *map = NULL;
 
 	if (!np || !map_name || !arg || (!arg->target && !arg->id_out))
 		return -EINVAL;
 
-	map = of_get_property(np, map_name, &map_len);
+	map = of_get_property(np, map_name, &map_bytes);
 	if (!map) {
 		if (arg->target)
 			return -ENODEV;
@@ -2085,11 +2105,9 @@ int of_map_id(const struct device_node *np, u32 id,
 		return 0;
 	}
 
-	if (!map_len || map_len % (4 * sizeof(*map))) {
-		pr_err("%pOF: Error: Bad %s length: %d\n", np,
-			map_name, map_len);
-		return -EINVAL;
-	}
+	if (map_bytes % sizeof(*map))
+		goto err_map_len;
+	map_len = map_bytes / sizeof(*map);
 
 	/* The default is to select all bits. */
 	map_mask = 0xffffffff;
@@ -2102,27 +2120,62 @@ int of_map_id(const struct device_node *np, u32 id,
 		of_property_read_u32(np, map_mask_name, &map_mask);
 
 	masked_id = map_mask & id;
-	for ( ; map_len > 0; map_len -= 4 * sizeof(*map), map += 4) {
+	while (offset < map_len) {
 		struct device_node *phandle_node;
-		u32 id_base = be32_to_cpup(map + 0);
-		u32 phandle = be32_to_cpup(map + 1);
-		u32 out_base = be32_to_cpup(map + 2);
-		u32 id_len = be32_to_cpup(map + 3);
+		u32 id_base, phandle, cells, id_len, id_off;
+		const __be32 *out_base;
+
+		if (map_len - offset < 2)
+			goto err_map_len;
 
+		id_base = be32_to_cpup(map + offset);
 		if (id_base & ~map_mask) {
-			pr_err("%pOF: Invalid %s translation - %s-mask (0x%x) ignores id-base (0x%x)\n",
-				np, map_name, map_name,
+			pr_err("%pOF: Invalid %s translation - %s (0x%x) ignores id-base (0x%x)\n",
+				np, map_name, map_mask_name,
 				map_mask, id_base);
 			return -EFAULT;
 		}
 
-		if (masked_id < id_base || masked_id >= id_base + id_len)
-			continue;
-
+		phandle = be32_to_cpup(map + offset + 1);
 		phandle_node = of_find_node_by_phandle(phandle);
 		if (!phandle_node)
 			return -ENODEV;
 
+		if (!bad_map && of_property_read_u32(phandle_node, cells_name, &cells)) {
+			pr_err("%pOF: missing %s property\n", phandle_node, cells_name);
+			return -EINVAL;
+		}
+
+		if (map_len - offset < 3 + cells)
+			goto err_map_len;
+
+		if (offset == 0 && cells == 2) {
+			bad_map = of_check_bad_map(map, map_len);
+			if (bad_map) {
+				pr_warn_once("%pOF: %s mismatches target %s, assuming extra cell of 0\n",
+				np, map_name, cells_name);
+				cells = 1;
+			}
+		}
+
+		out_base = map + offset + 2;
+		offset += 3 + cells;
+
+		id_len = be32_to_cpup(map + offset - 1);
+		if (id_len > 1 && cells > 1) {
+			/*
+			 * With 1 output cell we reasonably assume its value
+			 * has a linear relationship to the input; with more,
+			 * we'd need help from the provider to know what to do.
+			 */
+			pr_err("%pOF: Unsupported %s - cannot handle %d-ID range with %d-cell output specifier\n",
+				np, map_name, id_len, cells);
+			return -EINVAL;
+		}
+		id_off = masked_id - id_base;
+		if (masked_id < id_base || id_off >= id_len)
+			continue;
+
 		if (arg->target) {
 			if (*arg->target)
 				of_node_put(phandle_node);
@@ -2133,12 +2186,14 @@ int of_map_id(const struct device_node *np, u32 id,
 				continue;
 		}
 
-		if (arg->id_out)
-			*arg->id_out = masked_id - id_base + out_base;
+		for (int i = 0; arg->id_out && i < cells; i++)
+			arg->id_out[i] = id_off + be32_to_cpu(out_base[i]);
 
+		if (arg->map_cells)
+			*arg->map_cells = cells;
 		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
-			np, map_name, map_mask, id_base, out_base,
-			id_len, id, masked_id - id_base + out_base);
+			np, map_name, map_mask, id_base, be32_to_cpup(out_base),
+			id_len, id, id_off + be32_to_cpup(out_base));
 		return 0;
 	}
 
@@ -2149,5 +2204,9 @@ int of_map_id(const struct device_node *np, u32 id,
 	if (arg->id_out)
 		*arg->id_out = id;
 	return 0;
+
+err_map_len:
+	pr_err("%pOF: Error: Bad %s length: %d\n", np, map_name, map_bytes);
+	return -EINVAL;
 }
 EXPORT_SYMBOL_GPL(of_map_id);
diff --git a/include/linux/of.h b/include/linux/of.h
index 21bdce2b37ca..1981509c7918 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -29,6 +29,7 @@ struct device_node;
 struct of_map_id_arg {
 	struct device_node **target;
 	u32 *id_out;
+	u32 *map_cells;
 };
 
 struct property {
@@ -462,9 +463,9 @@ const char *of_prop_next_string(const struct property *prop, const char *cur);
 
 bool of_console_check(const struct device_node *dn, char *name, int index);
 
-int of_map_id(const struct device_node *np, u32 id,
-	       const char *map_name, const char *map_mask_name,
-	       struct of_map_id_arg *arg);
+int of_map_id(const struct device_node *np, u32 id, const char *map_name,
+	      const char *cells_name, const char *map_mask_name,
+	      struct of_map_id_arg *arg);
 
 phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);
 
@@ -911,9 +912,9 @@ static inline void of_property_clear_flag(struct property *p, unsigned long flag
 {
 }
 
-static inline int of_map_id(const struct device_node *np, u32 id,
-			     const char *map_name, const char *map_mask_name,
-			     struct of_map_id_arg *arg)
+static inline int of_map_id(const struct device_node *np, u32 id, const char *map_name,
+			    const char *cells_name, const char *map_mask_name,
+			    struct of_map_id_arg *arg);
 {
 	return -EINVAL;
 }
@@ -1444,7 +1445,7 @@ static inline int of_property_read_s32(const struct device_node *np,
 static inline int of_map_iommu_id(const struct device_node *np, u32 id,
 				  struct of_map_id_arg *arg)
 {
-	return of_map_id(np, id, "iommu-map", "iommu-map-mask", arg);
+	return of_map_id(np, id, "iommu-map", "#iommu-cells", "iommu-map-mask", arg);
 }
 
 static inline int of_map_msi_id(const struct device_node *np, u32 id,
@@ -1455,7 +1456,7 @@ static inline int of_map_msi_id(const struct device_node *np, u32 id,
 		.id_out = id_out,
 	};
 
-	return of_map_id(np, id, "msi-map", "msi-map-mask", &arg);
+	return of_map_id(np, id, "msi-map", "#msi-cells", "msi-map-mask", &arg);
 }
 
 #define of_for_each_phandle(it, err, np, ln, cn, cc)			\
-- 
2.34.1


