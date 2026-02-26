Return-Path: <devicetree+bounces-268646-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uESBHV76n2n3fAQAu9opvQ
	(envelope-from <devicetree+bounces-268646-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:46:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F02671A2054
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C59323034266
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2426C3921F8;
	Thu, 26 Feb 2026 07:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eq6buWZA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K4KmcUWB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62A72DCC1C
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091971; cv=none; b=iOAbXlHlgArqJHE0cCgVXKpk32qNh37YspWil0VGrjOCHexj0n7OX4SBTK9rcJb1/38RfKCvWWB+id8RQQGCvkj5j33go2ufW+8TJC5R1DmHNFCAg/AuTntye21qEsrxwFGpA5iU2qciibHkaHGs2zG6VP/8GM1QFP3Yx4fQj8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091971; c=relaxed/simple;
	bh=g1haGOpzNTfZvxTfyS5r1B8gJFPHElbpXRDKtM7KpV0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ke1Xo8TlV349KupIUrln0xT24hJFIlrvGcr3jldL4U7z4ip3UQPHfyQd7KN+0qXMPxYxcoN6Ypk5hF7sOmH/gIyOmlsaZg6XcTnshQXX9T3IH3f9yfStapS5i2lpGkF6L0EMsI52pVFFK1JI5KpMF8IU0/6t4vhD998tb+zZav0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eq6buWZA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K4KmcUWB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4VAh43434564
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:46:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ph+uPWKuRkv
	Wsmnv4xYT3GHGVLy8gBuWsg0hQehtf58=; b=eq6buWZAOK5sMi44cufphFRHVJg
	+IbtbJXz2xqaMWFOEdB3MY7S/DO7SWNOrfAu0BNwy4GkvDGzFokxrU5WhgzhUJXA
	7xczJuwic0+DN1/40gNIqcDNO6xJoSmu+Gh5zI1ElFyrqW1tQc4vH7ViDWTNIs0u
	t3shixEsrTNERW2S1Ne/Rx7wXtO8qeDZOGvjkSf3wU+0HTvbg3A3wzk8GOvtJ7TC
	VN9lTm6MQ6Wb+HOhxaHppNNImzhl0nbcsKG28WgG4NlapM8g6ZA8x9PbPeec5smq
	efHJVBdKt+i6j6anNmYFJPJKo1YmJvzbMN7lUcU0CgQQjqrbLLlyJR1e0bQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjc0g922s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:46:08 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso483307a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772091968; x=1772696768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ph+uPWKuRkvWsmnv4xYT3GHGVLy8gBuWsg0hQehtf58=;
        b=K4KmcUWBM2rSL/Rab/hOLKhjljbI+ewxAj7EJm0lDe1sE48PxxcwxJeeYzTA0vawLJ
         5MP0iK9+IHMEtJciTDhKH/Kadp8/dyLblO5v49ESnxeg65HEnSP9G4lsbMqc89i/nfA3
         JJgQQYDJ+OLjRc1REYCLPIjeDHBiwhNJTg3ZpTRZ6exdTxjB1oVCEO/tfHHvTf+ADDCv
         yFUIjtXEsGXVz3GN1Nq5d7l7qFcKRCDWW5C3JvxY78RnFlAIK19GHfd5/uow8DHjgu/2
         dRHl/PHyiqhT8fhkYGuJVCAGGkHSBsf0oAS7ZpFnDix7wOXFiZ4+vzl8vDeWdnDOBeX+
         syUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772091968; x=1772696768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ph+uPWKuRkvWsmnv4xYT3GHGVLy8gBuWsg0hQehtf58=;
        b=kax3mQ0kp3oP35tGcHBbaE56Zs4xPR1tw9RjJGC8XgX1sJ7yXxAdzCfFO/0BPDK8K/
         EdbIrrFlM5SsQzN8jXyn5McWzoGcvSC2lYBnvwSJVKYbU3ic50c79cIyA4ak7axgjwvo
         wOZqW4rE8jV2wWc6ZUD5y9tK4jKpa02FA+RAaDv913qbEy28BgQz4wy757bj9ERoQ3ZY
         TSnaNCPr1Y6Wys001Z+imJR2/5Bw+1ILC2Zszzu5tsRIgw+GYSadHeFqgxtNAG2d1//X
         bLxEQOfs+hvZFVgdxVBY9GDYyyp1lh7H6JtrdjhwyyKUl1AxjU8FNUyijFKLhzd0GKLx
         FWSA==
X-Forwarded-Encrypted: i=1; AJvYcCViDIaiZBGNW0HHGEi002+cYsPwj22FwjkOK2BPa34A/xdxPvoAmsufdmURa9w8xPb0Rr5COB7UUGMS@vger.kernel.org
X-Gm-Message-State: AOJu0YzuWgS+5Eu3o3nQrScPhXF4kq5SXsDbqDWyW3wdJITWjRgsuYmo
	6VXzf+aosPyyJnsFyN8s810bxt4LNGbcwqwtSgcNWYaLXL1dSU/wyq5siLAwftCPT29AJxPpQtu
	PKSIrrgXdWCqBEMF+x+j4Nsrn1FmfSIyTPQFHLp8oNtwgso+8IUqdzVjpy/patLS3
X-Gm-Gg: ATEYQzx5oxYlSre/bgUAQK3B+mBwI6qZsfGX6NGVIdJ3ilYfHPV4r4BjGZs2ZWPWp4H
	lqXZNKqR1YU9gdFfiwORSQmEZvmYSOF3Y15yDjZ2A8QnOUI+Med6LmFJMMHDz4c9JybMOjsQ7EW
	5eViSHz6Z5ziyeg0folz663LUOS0S/xjxFNLy6IbwxocKpR0QiTpXoI1WwDDKSodcwxV4q6Y0Sv
	b6OB59tPDUzy1GL/Ksi55N6kh0F2uSsSEoOcJtYLnk/bClhXUTdLMNZfQXOF4yrfogRVXTHg2P+
	C3X63vVHBM6G81+ZEAjqT/nEz0laeqrtbhA7lh38wtI6wkys8eW1RteHwltzWPlEOMr9rGhm09X
	9iJlUmVuYzobrrGDy/OOqBKP3IpTNN53AClTiBoIp4fXrSNa/Jl9/eBww
X-Received: by 2002:a05:6a21:1bc1:b0:394:5d0d:9217 with SMTP id adf61e73a8af0-395ad1abf1emr3116103637.44.1772091968274;
        Wed, 25 Feb 2026 23:46:08 -0800 (PST)
X-Received: by 2002:a05:6a21:1bc1:b0:394:5d0d:9217 with SMTP id adf61e73a8af0-395ad1abf1emr3116082637.44.1772091967800;
        Wed, 25 Feb 2026 23:46:07 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359034bbfd4sm4891168a91.10.2026.02.25.23.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 23:46:07 -0800 (PST)
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
Subject: [RESEND,v8 2/3] of: factor arguments passed to of_map_id() into a struct
Date: Thu, 26 Feb 2026 13:12:44 +0530
Message-Id: <20260226074245.3098486-3-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com>
References: <20260226074245.3098486-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=XI49iAhE c=1 sm=1 tr=0 ts=699ffa40 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=I3pr03k2-ahTGQre_g8A:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA2OCBTYWx0ZWRfXzsERrp69aoMa
 H50GfEjA+wljoApEp7LD3+r2nn334RF73H9EhKc5RQHGvjukyeRg+A3vpOPiHupLqT91w6zX3oa
 4U/blLLtRA7M9NtefVqUf3MBd1fZWxtxGAjN4xMxIG+Tw/9Zns5/E8TbvyN75gIFhbpd7fABXgP
 yQAZJu1by1UHBLUYhOXLISCPxwiUxSXE76l3MD2v3TVPyJiW+7C5ijGLygdjGFavoeR+/L69yOb
 Y81BeamhsyuFO9sie/Vdfh+zgGTGm5ASoCUDDI/zh+CufjEDJRPjH3R8Vtb6hhdaLa/jOISKyEu
 ydmHiy+PnBea6+Jvn0uFOFyWnKXB36THZQwg7pGl5YvVPTrnoV1OQP9B4UiX92LkCnJ1KDRH0+D
 /x9sAFK6bBuuhbsv+WDH8w2vFQm+Hsgi4FPEZhmI7DOfYq4FGjYwikz3oPQD7gviHA+ETO6BIsc
 +G/YHvKZAVVF+NUxPyg==
X-Proofpoint-ORIG-GUID: YnItDfMcXEWObiw2hGb1oPOmJrrJvWHO
X-Proofpoint-GUID: YnItDfMcXEWObiw2hGb1oPOmJrrJvWHO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268646-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F02671A2054
X-Rspamd-Action: no action

From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>

Change of_map_id() to take a pointer to struct of_phandle_args
instead of passing target device node and translated IDs separately.
Update all callers accordingly.

Subsequent patch will make use of the args_count field in
struct of_phandle_args.

Suggested-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
---
 drivers/iommu/of_iommu.c              |  2 +-
 drivers/of/base.c                     | 37 +++++++++++++--------------
 drivers/pci/controller/dwc/pci-imx6.c |  8 +++++-
 drivers/pci/controller/pcie-apple.c   |  4 ++-
 drivers/xen/grant-dma-ops.c           |  2 +-
 include/linux/of.h                    | 21 ++++++++++-----
 6 files changed, 44 insertions(+), 30 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index a511ecf21fcd..d255d0f58e8c 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -48,7 +48,7 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
 	struct of_phandle_args iommu_spec = { .args_count = 1 };
 	int err;
 
-	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args);
+	err = of_map_iommu_id(master_np, *id, &iommu_spec);
 	if (err)
 		return err;
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 57420806c1a2..6c3628255908 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2102,8 +2102,11 @@ int of_find_last_cache_level(unsigned int cpu)
  * @id: device ID to map.
  * @map_name: property name of the map to use.
  * @map_mask_name: optional property name of the mask to use.
- * @target: optional pointer to a target device node.
- * @id_out: optional pointer to receive the translated ID.
+ * @arg: of_phandle_args structure,
+ *	which includes:
+ *	np: pointer to the target device node
+ *	args_count: number of arguments
+ *	args[]: array to receive the translated ID(s).
  *
  * Given a device ID, look up the appropriate implementation-defined
  * platform ID and/or the target device which receives transactions on that
@@ -2117,21 +2120,21 @@ int of_find_last_cache_level(unsigned int cpu)
  */
 int of_map_id(const struct device_node *np, u32 id,
 	       const char *map_name, const char *map_mask_name,
-	       struct device_node **target, u32 *id_out)
+	       struct of_phandle_args *arg)
 {
 	u32 map_mask, masked_id;
 	int map_len;
 	const __be32 *map = NULL;
 
-	if (!np || !map_name || (!target && !id_out))
+	if (!np || !map_name || !arg)
 		return -EINVAL;
 
 	map = of_get_property(np, map_name, &map_len);
 	if (!map) {
-		if (target)
+		if (arg->np)
 			return -ENODEV;
 		/* Otherwise, no map implies no translation */
-		*id_out = id;
+		arg->args[0] = id;
 		return 0;
 	}
 
@@ -2173,18 +2176,15 @@ int of_map_id(const struct device_node *np, u32 id,
 		if (!phandle_node)
 			return -ENODEV;
 
-		if (target) {
-			if (*target)
-				of_node_put(phandle_node);
-			else
-				*target = phandle_node;
+		if (arg->np)
+			of_node_put(phandle_node);
+		else
+			arg->np = phandle_node;
 
-			if (*target != phandle_node)
-				continue;
-		}
+		if (arg->np != phandle_node)
+			continue;
 
-		if (id_out)
-			*id_out = masked_id - id_base + out_base;
+		arg->args[0] = masked_id - id_base + out_base;
 
 		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
 			np, map_name, map_mask, id_base, out_base,
@@ -2193,11 +2193,10 @@ int of_map_id(const struct device_node *np, u32 id,
 	}
 
 	pr_info("%pOF: no %s translation for id 0x%x on %pOF\n", np, map_name,
-		id, target && *target ? *target : NULL);
+		id, arg->np ? arg->np : NULL);
 
 	/* Bypasses translation */
-	if (id_out)
-		*id_out = id;
+	arg->args[0] = id;
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_map_id);
diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index bff8289f804a..74fc603b3f84 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1139,12 +1139,18 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 {
 	struct device *dev = imx_pcie->pci->dev;
 	struct device_node *target;
+	struct of_phandle_args iommu_spec = { .args_count = 1 };
 	u32 sid_i, sid_m;
 	int err_i, err_m;
 	u32 sid = 0;
 
 	target = NULL;
-	err_i = of_map_iommu_id(dev->of_node, rid, &target, &sid_i);
+	err_i = of_map_iommu_id(dev->of_node, rid, &iommu_spec);
+	if (!err_i) {
+		target = iommu_spec.np;
+		sid_i = iommu_spec.args[0];
+	}
+
 	if (target) {
 		of_node_put(target);
 	} else {
diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
index a0937b7b3c4d..e1d4b37d200d 100644
--- a/drivers/pci/controller/pcie-apple.c
+++ b/drivers/pci/controller/pcie-apple.c
@@ -755,6 +755,7 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
 {
 	u32 sid, rid = pci_dev_id(pdev);
 	struct apple_pcie_port *port;
+	struct of_phandle_args iommu_spec = { .args_count = 1 };
 	int idx, err;
 
 	port = apple_pcie_get_port(pdev);
@@ -764,10 +765,11 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
 	dev_dbg(&pdev->dev, "added to bus %s, index %d\n",
 		pci_name(pdev->bus->self), port->idx);
 
-	err = of_map_iommu_id(port->pcie->dev->of_node, rid, NULL, &sid);
+	err = of_map_iommu_id(port->pcie->dev->of_node, rid, &iommu_spec);
 	if (err)
 		return err;
 
+	sid = iommu_spec.args[0];
 	mutex_lock(&port->pcie->lock);
 
 	idx = bitmap_find_free_region(port->sid_map, port->sid_map_sz, 0);
diff --git a/drivers/xen/grant-dma-ops.c b/drivers/xen/grant-dma-ops.c
index 1b7696b2d762..5f1d6540049a 100644
--- a/drivers/xen/grant-dma-ops.c
+++ b/drivers/xen/grant-dma-ops.c
@@ -325,7 +325,7 @@ static int xen_dt_grant_init_backend_domid(struct device *dev,
 		struct pci_dev *pdev = to_pci_dev(dev);
 		u32 rid = PCI_DEVID(pdev->bus->number, pdev->devfn);
 
-		if (of_map_iommu_id(np, rid, &iommu_spec.np, iommu_spec.args)) {
+		if (of_map_iommu_id(np, rid, &iommu_spec)) {
 			dev_dbg(dev, "Cannot translate ID\n");
 			return -ESRCH;
 		}
diff --git a/include/linux/of.h b/include/linux/of.h
index 824649867810..9d72d76f909d 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -463,7 +463,7 @@ bool of_console_check(const struct device_node *dn, char *name, int index);
 
 int of_map_id(const struct device_node *np, u32 id,
 	       const char *map_name, const char *map_mask_name,
-	       struct device_node **target, u32 *id_out);
+	       struct of_phandle_args *arg);
 
 phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);
 
@@ -929,7 +929,7 @@ static inline void of_property_clear_flag(struct property *p, unsigned long flag
 
 static inline int of_map_id(const struct device_node *np, u32 id,
 			     const char *map_name, const char *map_mask_name,
-			     struct device_node **target, u32 *id_out)
+			     struct of_phandle_args *arg)
 {
 	return -EINVAL;
 }
@@ -1458,17 +1458,24 @@ static inline int of_property_read_s32(const struct device_node *np,
 }
 
 static inline int of_map_iommu_id(const struct device_node *np, u32 id,
-				  struct device_node **target, u32 *id_out)
+				  struct of_phandle_args *arg)
 {
-	return of_map_id(np, id, "iommu-map", "iommu-map-mask",
-			 target, id_out);
+	return of_map_id(np, id, "iommu-map", "iommu-map-mask", arg);
 }
 
 static inline int of_map_msi_id(const struct device_node *np, u32 id,
 				struct device_node **target, u32 *id_out)
 {
-	return of_map_id(np, id, "msi-map", "msi-map-mask",
-			 target, id_out);
+	struct of_phandle_args msi_spec = { .np = *target, .args_count = 1 };
+	int ret;
+
+	ret = of_map_id(np, id, "msi-map", "msi-map-mask", &msi_spec);
+	if (!ret) {
+		*target = msi_spec.np;
+		*id_out = msi_spec.args[0];
+	}
+
+	return ret;
 }
 
 #define of_for_each_phandle(it, err, np, ln, cn, cc)			\
-- 
2.34.1


