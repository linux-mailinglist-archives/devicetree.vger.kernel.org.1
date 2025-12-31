Return-Path: <devicetree+bounces-250793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9718ACEBDF2
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B4DF3024D7C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 408D731ED86;
	Wed, 31 Dec 2025 11:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MM0I91e+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T9WMSaNs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB24031ED91
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767181649; cv=none; b=mQOHjkilLWb8XkbwVkIGOHL/HMGrC4cx7DWE/GKChAQ4GYcMcORvJ+IyUgV3vopsp3eJNmUVHjr9hWEUGFMWbMC28AK7RuaY2INxkhQcPqtq8moQ+0KD2KmLcjYt5utUvkGXu6sEHFU/qaJ0jRERu9sxthwwBDgGZsxrgIFt3tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767181649; c=relaxed/simple;
	bh=VW6mropM/qgJyRpTP+x0lj/EXDo6KYD94OeJSjBlA9w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=A4FdgNxxvmgyB0PGK87t9CzOJoh4AJGrMjz2fERqiqOYqUR4qriccV+1E0yG5thZuNbpwuv34OdUe+/3sh9HTsqPfUk/wwTeOIkfQKSB6wvzbq3YM6eG98rIWL009WLKrRb9fA94uL3knmDbR2gGSkuQ6yl5iuVh3ZtMwzEve0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MM0I91e+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T9WMSaNs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BVAi4VD3367071
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:47:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/fduSmx6bVt
	2bbx1bsoxxix3/liUH4tNQCRD9+FpSBE=; b=MM0I91e+yDwnNrEZLaftb5kmc/w
	oNdcF5HssLLmp5SqynT0Nd7/HcMXKjanIHvOMNPpVJJfJ8MVeUtTQWgwYEKUaIUc
	4SOmkAPBYIyUaN4Ct97HV36iin1ZRBKugCTA3QAN3na46gF9wngHjAEnmFqxhkd+
	ZClwM2j225P/oCOrvqJiTSWKUOkK0SH9H+mVMnBCInVV5LkKU28jzY2QDvUJUog7
	6aUAHygsguQZiurQk2kdvbgyDqH0RO4Mg3qVQvb8Po4Ss/xIHkBnvyiimd7uM68y
	A+kiOHFNsWiMQ4ouceAzf5SJmiZ7EtFoUclz8YKRj16/hHtxexQHoHbR33w==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd2bb02vx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:47:22 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b9c91b814cso24542641b3a.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767181642; x=1767786442; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/fduSmx6bVt2bbx1bsoxxix3/liUH4tNQCRD9+FpSBE=;
        b=T9WMSaNsWX0afTZ96mSSyAeGA06BwSfkMi/JlvoVCD45KzUBNotqSMGgd939q6pedv
         oU8JR5GjXQAgFke6bcO+Xr1RFu2NHyFPcwvR3i1lMEYDJOTsxdinhE35rAeYdJ0GKYZ0
         9686xbzhCBT/WfCdBOr6t3lu0HBwCtKVsB59ysg9lT73tZvtTdZRJ3ob8LPZRkLok3ec
         Tz3lU5MiqK60T3FQzv0BfX9Nu0odTqagX4audx9xqxwY1myOJCzPxs9R6gQ8Rq0vaFn/
         xmWvoym3VUSyeQiv3DlAr24ica5+VQy/poHpP9iy4urQL/YUitAqDytZ1kkPCMNwgAKR
         518A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767181642; x=1767786442;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/fduSmx6bVt2bbx1bsoxxix3/liUH4tNQCRD9+FpSBE=;
        b=QXFZpzgaAEg30kik2qhsLLqwTPLAQedC3qQq1xAHrzY7rkN7JEvjP9Ufx8JwB3byyw
         mjH7VZwYG4zcBnJlUnL+3WJjOooQIs+K0UQ+6sjqikhputaSnT//Ln9Ra4qWbK9MW4Y1
         m/BuPUOjkdByaeipL3VE8NYdwQngf+c/IX8q+Kw9JRMdCfdMlnEo6UQLEzi01+y5wbV9
         Ugxd6Kl0vL5ssNgJly6SuOtGKvWHL6ZRwO4EvRDW3tX3eizl3x8GZs+qwtBnx0GerDHw
         65VmiGxzUmO4PeONFhJoQuhTs8E2mgoAluLX13eVBPAtMadL5l9A9RgfgNInqsOKnT4l
         919A==
X-Forwarded-Encrypted: i=1; AJvYcCVZ8yyx6GZayOeQbHDLCEDz7A/crAKelaHwzGhp6en6l5XaItiGgD744faD0w8KfTPrJng2I+93fd0K@vger.kernel.org
X-Gm-Message-State: AOJu0YzzBVKoeqpbMDUuj1ycHRfi+FID0uEcZhj/63EHpNhGfE9X/zBQ
	pbU9Y5wJ2SSW4c9FrvP5W4m7K1l7gkt4/U+oIi7gIO8RsEkrCFMiV7wlY+g1EFhS9nWLoZ82TpD
	wxXTOfaNr04n0hBNsv4/hS5bmC2vsH9KQxjXKihcWdo5DCXetKKcdGfLPw4bII82a
X-Gm-Gg: AY/fxX5AGX4Wm7IjdVkMid80azMybncTYqWuKHPUt4M5U6NbcF0ouT++r/PzkLKtW8s
	k/CAon4zHd2+2AsqjM0QgjEVkFC823dlj0wAjNyA24jZ94hSgZT/OkMiOw5EQ9hoz9WLvYImRVZ
	CRCqQue1JomLepN5mr1TPBY3MbDJi+86ios3ZJ6Hqw8A3njxABqhUugwzWvXIJTiXt+N1qMznEf
	c3gnfobjguIj1wQU6N+D/47btDwZD6lbjtv2Tx85sQ2UFM65Qa3C1AvGaaj47hapWErvOtWzwIW
	xlKRERxoh1MoI6WkCQrDIhutzTd1H8pnWw9MC1xW8IToXSiczsYnqnONVx3p+7PgVwHBAx4vDQg
	gpG52dyxQLs4w6uk0wi+KVDqLfthKwDJSJCMlcVB+WpRP
X-Received: by 2002:a05:6a00:ac08:b0:7e8:450c:618c with SMTP id d2e1a72fcca58-7ff664814e0mr33448686b3a.35.1767181641496;
        Wed, 31 Dec 2025 03:47:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHXhl6AsXpl08sOYSrLAsmcJSqisvl+DLZQ5Y0W4wLV7mx8rFuEi4+2RYdP6ARX1JOcRAY4mg==
X-Received: by 2002:a05:6a00:ac08:b0:7e8:450c:618c with SMTP id d2e1a72fcca58-7ff664814e0mr33448659b3a.35.1767181641023;
        Wed, 31 Dec 2025 03:47:21 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b5236b5sm34815656b3a.29.2025.12.31.03.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 03:47:20 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, saravanak@google.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v4 3/3] of: Respect #{iommu,msi}-cells in maps
Date: Wed, 31 Dec 2025 17:12:57 +0530
Message-Id: <20251231114257.2382820-4-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com>
References: <20251231114257.2382820-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: WgXpDAuPuG5Dmti_PvkwruRLsnnFBLHG
X-Proofpoint-ORIG-GUID: WgXpDAuPuG5Dmti_PvkwruRLsnnFBLHG
X-Authority-Analysis: v=2.4 cv=dMKrWeZb c=1 sm=1 tr=0 ts=69550d4a cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8 a=wJGdY9mNwEi-N7fqGJcA:9
 a=2VI0MkxyNR6bbpdq8BZq:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwMyBTYWx0ZWRfX9DDEis8pDsCd
 iZyX0abIHgFrK8KEfDgKzs5gKTrY3+faQook5whEDeqf/fBGpI6cT6rIpsGdyBAK0nF69MYqF4n
 oZ5qb3XPweBI89C24nIJ7oRVfAN0TDWHILzLLGxQStEUwN+G6lO9ENQkXOEMKTOt9C7RpgPFKdL
 /owoJrfGnJh9NVkGJobGMDh4vljAvBADzIUu3xCn88edCT7Cd+LI2h05GU1DpKLIQ6id+eVoZCJ
 hWII6rVdtuIYqUyvJ5L0VV/ofRPMsWv3jgSWZVLF6sYC/c7UaPIYs2BmbMxrzBKSqQaMaGbnDm9
 rODvAmKX9GRZHjcm1hxjtzZPn1SRWtNI9Q/hrITlRzS4gTQoWyXoGwdZpLinfatu1HUyoEpjXNB
 LiUNjEnKwm4wkD8fD2mip5PMuap4gA+PJqoFuAZJ49mZm3oXIS50DBjU62CbnlWkgX95PahDDOB
 l2NuL3ADsBrbl+L5Kcg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0
 impostorscore=0 adultscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310103

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
 drivers/iommu/of_iommu.c |   4 +-
 drivers/of/base.c        | 114 +++++++++++++++++++++++++++++++--------
 include/linux/of.h       |  16 +++---
 3 files changed, 101 insertions(+), 33 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 646ac5a67475..768eaddf927b 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -46,9 +46,7 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
 				     const u32 *id)
 {
 	struct of_map_id_arg arg = {
-		.map_args = {
-			.args_count = 1,
-		},
+		.map_args = {},
 	};
 	int err;
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 9f327c6b4f6b..f0507ddb6dae 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2045,11 +2045,38 @@ int of_find_last_cache_level(unsigned int cpu)
 	return cache_level;
 }
 
+/*
+ * Some DTs have an iommu-map targeting a 2-cell IOMMU node while
+ * specifying only 1 cell. Fortunately they all consist of value '1'
+ * as the 2nd cell entry with the same target, so check for that pattern.
+ *
+ * Example:
+ *	IOMMU node:
+ *		#iommu-cells = <2>;
+ *
+ *	Device node:
+ *		iommu-map = <0x0000 &smmu 0x0000 0x1>,
+ *			    <0x0100 &smmu 0x0100 0x1>;
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
  * @arg: contains the optional params, wrapped in a struct of_phandle_args,
  *	which includes:
@@ -2067,18 +2094,19 @@ int of_find_last_cache_level(unsigned int cpu)
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
 
 	if (!np || !map_name || !arg)
 		return -EINVAL;
 
-	map = of_get_property(np, map_name, &map_len);
+	map = of_get_property(np, map_name, &map_bytes);
 	if (!map) {
 		if (arg->map_args.np)
 			return -ENODEV;
@@ -2087,11 +2115,9 @@ int of_map_id(const struct device_node *np, u32 id,
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
@@ -2104,27 +2130,64 @@ int of_map_id(const struct device_node *np, u32 id,
 		of_property_read_u32(np, map_mask_name, &map_mask);
 
 	masked_id = map_mask & id;
-	for ( ; map_len > 0; map_len -= 4 * sizeof(*map), map += 4) {
+	while (offset < map_len) {
 		struct device_node *phandle_node;
-		u32 id_base = be32_to_cpup(map + 0);
-		u32 phandle = be32_to_cpup(map + 1);
-		u32 out_base = be32_to_cpup(map + 2);
-		u32 id_len = be32_to_cpup(map + 3);
+		u32 id_base, phandle, id_len, id_off, cells = 0;
+		const __be32 *out_base;
+
+		if (map_len - offset < 2)
+			goto err_map_len;
+
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
 		if (arg->map_args.np)
 			of_node_put(phandle_node);
 		else
@@ -2133,11 +2196,14 @@ int of_map_id(const struct device_node *np, u32 id,
 		if (arg->map_args.np != phandle_node)
 			continue;
 
-		arg->map_args.args[0] = masked_id - id_base + out_base;
+		for (int i = 0; i < cells; i++)
+			arg->map_args.args[i] = (id_off + be32_to_cpu(out_base[i]));
+
+		arg->map_args.args_count = cells;
 
 		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
-			np, map_name, map_mask, id_base, out_base,
-			id_len, id, masked_id - id_base + out_base);
+			np, map_name, map_mask, id_base, be32_to_cpup(out_base),
+			id_len, id, id_off + be32_to_cpup(out_base));
 		return 0;
 	}
 
@@ -2147,5 +2213,9 @@ int of_map_id(const struct device_node *np, u32 id,
 	/* Bypasses translation */
 	arg->map_args.args[0] = id;
 	return 0;
+
+err_map_len:
+	pr_err("%pOF: Error: Bad %s length: %d\n", np, map_name, map_bytes);
+	return -EINVAL;
 }
 EXPORT_SYMBOL_GPL(of_map_id);
diff --git a/include/linux/of.h b/include/linux/of.h
index 0b0d545b80a3..ee07e8642133 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -460,9 +460,9 @@ const char *of_prop_next_string(const struct property *prop, const char *cur);
 
 bool of_console_check(const struct device_node *dn, char *name, int index);
 
-int of_map_id(const struct device_node *np, u32 id,
-	       const char *map_name, const char *map_mask_name,
-	       struct of_map_id_arg *arg);
+int of_map_id(const struct device_node *np, u32 id, const char *map_name,
+	      const char *cells_name, const char *map_mask_name,
+	      struct of_map_id_arg *arg);
 
 phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);
 
@@ -909,9 +909,9 @@ static inline void of_property_clear_flag(struct property *p, unsigned long flag
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
@@ -1442,7 +1442,7 @@ static inline int of_property_read_s32(const struct device_node *np,
 static inline int of_map_iommu_id(const struct device_node *np, u32 id,
 				  struct of_map_id_arg *arg)
 {
-	return of_map_id(np, id, "iommu-map", "iommu-map-mask", arg);
+	return of_map_id(np, id, "iommu-map", "#iommu-cells", "iommu-map-mask", arg);
 }
 
 static inline int of_map_msi_id(const struct device_node *np, u32 id,
@@ -1456,7 +1456,7 @@ static inline int of_map_msi_id(const struct device_node *np, u32 id,
 		},
 	};
 
-	return of_map_id(np, id, "msi-map", "msi-map-mask", &arg);
+	return of_map_id(np, id, "msi-map", "#msi-cells", "msi-map-mask", &arg);
 }
 
 #define of_for_each_phandle(it, err, np, ln, cn, cc)			\
-- 
2.34.1


