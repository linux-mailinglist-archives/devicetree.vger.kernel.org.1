Return-Path: <devicetree+bounces-264336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGcXBqcEi2kMPQAAu9opvQ
	(envelope-from <devicetree+bounces-264336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:12:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B698911981C
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 239203016704
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9654834A78C;
	Tue, 10 Feb 2026 10:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kfy+zMf9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KerWZpJf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF0234CFD6
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:12:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770718365; cv=none; b=VHrgJilEazDBxJLrqBPhF2y8px46WeRupu2+IkqqGqvXjmEPMdotawLzWpYghhQqo0KEU56oq5j03UFOF2zzETFwPxOvLrifwJ5D0vHjrJ1BACrn6z+wjArHkyH1oHsg464fR21yjLT24CI9hcF7gHgJRbBgIhuatawbEoma9ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770718365; c=relaxed/simple;
	bh=KhYoy59fUOTm+5d7kVEFeRmtrhESQxj0OSJ/tMHru5s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KOMTkUwn5KvWdqjnu9ma9sr0bnEK/5AEnJeVtLDav1VGDdkHY/eBYSOoXuz+VQoyy40UBI8dCffwKuhCCDb2tvQtXm8DIoCnQBBaLWy6R3CcqM22uBhmZrvQgW/i9uaOcz4E6M+bKQl0UaGrdU73Jz0CH4rN+5qVUpz6hPwML2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kfy+zMf9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KerWZpJf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A3iOBC1940328
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:12:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/bweSHaD2R2
	QwumX9pHEOQfXBYHAiY8r/k8oYTXiWAU=; b=Kfy+zMf90JSITdAk7xhYorU6j0Y
	/0DE5jx3YLaRNT+xRD0jj8ko9FOjhchsMhkrRZKuwr5EEfU73C1aM40HiIvug1M0
	uFKSZPBdDbLDg37ZlvqzfZ0MkcpziLF62u3ljzhqEBVTF0k/9+MwWpFXkGBokI6t
	MgxhBc5myZ69JlGWNaM+aFLNfypOVMlZYOA/zOowLfce9Nj86P1yoFX6jNm32w4l
	enNqMb/4rgyIjOzWQRGznlQHkftwCaqxgHjaUnebuERfgqmBGFIhfi+tz5b+gD6o
	dScdBFfQmrbYvHdCO5ezv/bxPxgoA4PD9QuzpeW4iQWGjC+C1ZF2Sc8cECw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7w1js5jv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:12:43 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81f53036ac9so4698766b3a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770718363; x=1771323163; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/bweSHaD2R2QwumX9pHEOQfXBYHAiY8r/k8oYTXiWAU=;
        b=KerWZpJf84r2h+6AZTmdpRPwOH1X04RhczwVKBPfwFMoHJkm9/9fiR+bPowlhgs6BS
         b7DTraps8uMS6vIOr6Rv0M8T2nv1ar7EZhl3DvAyGSU6Mm3AjiBgUWUVvkDcrYZkfghQ
         2wBxA9ayaRq0vLkFqwXiMsWbkJ6kRth45YrIJ4h5Haw5f4lbCkpEXvRTlbwMOIAxb7ZF
         MJJIrDFQvSQZ86DQRJWNhQAORHLvc5H51hq9RFghdqYFjkNHconTDwFukE7sd3fBDRja
         2rxpfBsD6tHy08rtAzQETZ0b+wPZObfZznRBGDGPurtdD3a2Y6Gh8D3uDq6uTL6eKIGD
         Ib6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718363; x=1771323163;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/bweSHaD2R2QwumX9pHEOQfXBYHAiY8r/k8oYTXiWAU=;
        b=QmyryaUtS5ayWLDmHKPrySb+xfmYVhrZTTAWHfjv20inE55jJNsuUe2Bd/dfvrtqLP
         sWYCqsOKSF2Vipt2nHfQMscoM+TwhwkzPvQCum0ZtDl3rIbthXpaLLPDQ/5CNeNjTiyR
         vkNBoDq+yFgOmF6nD5MhSH5y4ROtvzSh8FL8hOGCp9DWCjXb1DoW1ZEEeowKNtIyHj+A
         9YjJAC182g00dG3RThNIBru0QVI5daV3ay5GSbv5gFioVwN3V8XOTf3PWw2VyRLJpxWl
         c6HrNeXPZ7GKkMRNcTodm3QuZBjNvCuj6FeejoCPOJ/FvjRF6x2DIiJi68XWVO/Dx4Ta
         EbOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBYYCglCXC0B6KRKvErAToXoZW8CUKmZLWkuWTP6pp6oa9FXQa+beeCUKVK1PyOHe6kGVxU0mI1llb@vger.kernel.org
X-Gm-Message-State: AOJu0YwOfgKwrwB+f0WZaBCERkwQWdyLoRgRlvlINbtkpoGJSsIJv36V
	3BZL+jeY5DHomdbtCr5T4ElszQoLzeEQ5tzmgpfXxNSAqKGeLIZXLaPZM8vgGAGrlod7EHMnZJm
	zaaTbQVA1aP41T0+Yt2rvxksei5uf7OUTvUfd4eZUlg1R2nInZfieXNuidclI+64B
X-Gm-Gg: AZuq6aI+buqIWRd3KAntGbSYwml2S16X92tw+zttCEFgFaZfE5HLYNKsCAaTer4rhI5
	P9JpgKQq7EoVDkjho+Kr46QJr8SqPtx2Af6gqOCxqlLZnXLjaof8PHNH407sb75baI/551egL9h
	GzfSIPU/NBT7iXgsmxEbR+6oj+ydNmFM0sfxJw+BSIxqgoDAlleLuAwGkU14BUGlieug3HPVZSK
	GRVEj7J2FPV6JsvkywA/vymQhf4RAmvEcoWSBjKtwnoeQ8ifRsguIDHHAegKeU/VBV6HDv1cliC
	HlnVXwKq9P0K9YEEREd/n9NHFn7f7fRJJ1t9g9VgKF9jzl7pCLTYlJS5fMrzAd2HYwj8cBzlyHv
	ZreyBL3UgWDfZUxHfahr6i5SQ1M4oZIHqYXohDevxQrX88khs+8VIc6IL
X-Received: by 2002:a05:6a00:4fc8:b0:824:1ab7:f02f with SMTP id d2e1a72fcca58-824417b12d6mr12955637b3a.65.1770718362581;
        Tue, 10 Feb 2026 02:12:42 -0800 (PST)
X-Received: by 2002:a05:6a00:4fc8:b0:824:1ab7:f02f with SMTP id d2e1a72fcca58-824417b12d6mr12955608b3a.65.1770718362074;
        Tue, 10 Feb 2026 02:12:42 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82441884b75sm14380940b3a.39.2026.02.10.02.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:12:41 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v7 3/3] of: Respect #{iommu,msi}-cells in maps
Date: Tue, 10 Feb 2026 15:41:57 +0530
Message-Id: <20260210101157.2145113-4-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260210101157.2145113-1-vijayanand.jitta@oss.qualcomm.com>
References: <20260210101157.2145113-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ymJ_OHm3sbS4WYP7IG6fv-4zq79J8pL6
X-Proofpoint-ORIG-GUID: ymJ_OHm3sbS4WYP7IG6fv-4zq79J8pL6
X-Authority-Analysis: v=2.4 cv=YrIChoYX c=1 sm=1 tr=0 ts=698b049b cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=7CQSdrXTAAAA:8
 a=EUspDBNiAAAA:8 a=wJGdY9mNwEi-N7fqGJcA:9 a=IoOABgeZipijB_acs4fv:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4NCBTYWx0ZWRfX4ToGJzMRUqRs
 GsMuNIAwlRxkBiV9d/Jk2Dix17uOQ8e6MBsb3IWUQsKlMvh3msN2Xq0iT8eIf/oDnvfnTZ/DQMF
 e8uTq2UriDXQ//TMPlqurpddJ2GWvhIjmVCexTJEioWa2q7rM8Gu6Ao8sEqSPL+kqOKw1h/7FBm
 bKeslvvxoiflmADMZ72HiNODp9KtLXgcn4Vvwk3lx7PyFHFoPQf/+TpDJDjqXsycEoFWn6t14qm
 TyWFZy9yhpQfIXoiuOMcUx5w3JvMzQyNUAZ73q8EbrssGCaCjwdwXjlmnJBQzhoxVx+o9oWAXSa
 z9Icw5620NPJdwGDZd7r/gEx44Lk+vq+gg6FTo1iwjVtx2E9KQX/aBn4qHlvMxgTPJ064SZCKHe
 JF8zq6z15Oh4V4hei1d82DCMxiptCVOQbinBkmuFj/JLWAlTsipOjIYZQixzUwMQmVoifyPlxtn
 7KDmBDMz/1In91ehNoQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264336-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,arm.com:email,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B698911981C
X-Rspamd-Action: no action

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
Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
---
 drivers/iommu/of_iommu.c |   2 +-
 drivers/of/base.c        | 117 +++++++++++++++++++++++++++++++--------
 include/linux/of.h       |  16 +++---
 3 files changed, 102 insertions(+), 33 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index d255d0f58e8c..a18bb60f6f3d 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -45,7 +45,7 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
 				     struct device *dev,
 				     const u32 *id)
 {
-	struct of_phandle_args iommu_spec = { .args_count = 1 };
+	struct of_phandle_args iommu_spec = {};
 	int err;
 
 	err = of_map_iommu_id(master_np, *id, &iommu_spec);
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6c3628255908..596bcf993dcb 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2096,11 +2096,38 @@ int of_find_last_cache_level(unsigned int cpu)
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
  * @arg: of_phandle_args structure,
  *	which includes:
@@ -2118,18 +2145,19 @@ int of_find_last_cache_level(unsigned int cpu)
  *
  * Return: 0 on success or a standard error code on failure.
  */
-int of_map_id(const struct device_node *np, u32 id,
-	       const char *map_name, const char *map_mask_name,
-	       struct of_phandle_args *arg)
+int of_map_id(const struct device_node *np, u32 id, const char *map_name,
+	      const char *cells_name, const char *map_mask_name,
+	      struct of_phandle_args *arg)
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
 		if (arg->np)
 			return -ENODEV;
@@ -2138,11 +2166,9 @@ int of_map_id(const struct device_node *np, u32 id,
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
@@ -2155,27 +2181,63 @@ int of_map_id(const struct device_node *np, u32 id,
 		of_property_read_u32(np, map_mask_name, &map_mask);
 
 	masked_id = map_mask & id;
-	for ( ; map_len > 0; map_len -= 4 * sizeof(*map), map += 4) {
+
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
-				map_mask, id_base);
+			pr_err("%pOF: Invalid %s translation - %s (0x%x) ignores id-base (0x%x)\n",
+			       np, map_name, map_mask_name, map_mask, id_base);
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
+					     np, map_name, cells_name);
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
+			       np, map_name, id_len, cells);
+			return -EINVAL;
+		}
+		id_off = masked_id - id_base;
+		if (masked_id < id_base || id_off >= id_len)
+			continue;
+
 		if (arg->np)
 			of_node_put(phandle_node);
 		else
@@ -2184,11 +2246,14 @@ int of_map_id(const struct device_node *np, u32 id,
 		if (arg->np != phandle_node)
 			continue;
 
-		arg->args[0] = masked_id - id_base + out_base;
+		for (int i = 0; i < cells; i++)
+			arg->args[i] = (id_off + be32_to_cpu(out_base[i]));
+
+		arg->args_count = cells;
 
 		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
-			np, map_name, map_mask, id_base, out_base,
-			id_len, id, masked_id - id_base + out_base);
+			 np, map_name, map_mask, id_base, be32_to_cpup(out_base),
+			 id_len, id, id_off + be32_to_cpup(out_base));
 		return 0;
 	}
 
@@ -2198,5 +2263,9 @@ int of_map_id(const struct device_node *np, u32 id,
 	/* Bypasses translation */
 	arg->args[0] = id;
 	return 0;
+
+err_map_len:
+	pr_err("%pOF: Error: Bad %s length: %d\n", np, map_name, map_bytes);
+	return -EINVAL;
 }
 EXPORT_SYMBOL_GPL(of_map_id);
diff --git a/include/linux/of.h b/include/linux/of.h
index 9d72d76f909d..5b5b5dc2d3f3 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -461,9 +461,9 @@ const char *of_prop_next_string(const struct property *prop, const char *cur);
 
 bool of_console_check(const struct device_node *dn, char *name, int index);
 
-int of_map_id(const struct device_node *np, u32 id,
-	       const char *map_name, const char *map_mask_name,
-	       struct of_phandle_args *arg);
+int of_map_id(const struct device_node *np, u32 id, const char *map_name,
+	      const char *cells_name, const char *map_mask_name,
+	      struct of_phandle_args *arg);
 
 phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);
 
@@ -927,9 +927,9 @@ static inline void of_property_clear_flag(struct property *p, unsigned long flag
 {
 }
 
-static inline int of_map_id(const struct device_node *np, u32 id,
-			     const char *map_name, const char *map_mask_name,
-			     struct of_phandle_args *arg)
+static inline int of_map_id(const struct device_node *np, u32 id, const char *map_name,
+			    const char *cells_name, const char *map_mask_name,
+			    struct of_phandle_args *arg)
 {
 	return -EINVAL;
 }
@@ -1460,7 +1460,7 @@ static inline int of_property_read_s32(const struct device_node *np,
 static inline int of_map_iommu_id(const struct device_node *np, u32 id,
 				  struct of_phandle_args *arg)
 {
-	return of_map_id(np, id, "iommu-map", "iommu-map-mask", arg);
+	return of_map_id(np, id, "iommu-map", "#iommu-cells", "iommu-map-mask", arg);
 }
 
 static inline int of_map_msi_id(const struct device_node *np, u32 id,
@@ -1469,7 +1469,7 @@ static inline int of_map_msi_id(const struct device_node *np, u32 id,
 	struct of_phandle_args msi_spec = { .np = *target, .args_count = 1 };
 	int ret;
 
-	ret = of_map_id(np, id, "msi-map", "msi-map-mask", &msi_spec);
+	ret = of_map_id(np, id, "msi-map", "#msi-cells", "msi-map-mask", &msi_spec);
 	if (!ret) {
 		*target = msi_spec.np;
 		*id_out = msi_spec.args[0];
-- 
2.34.1


