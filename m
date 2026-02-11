Return-Path: <devicetree+bounces-264601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPQEC/MWjGnegQAAu9opvQ
	(envelope-from <devicetree+bounces-264601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:43:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99230121663
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:43:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0C9D0308369A
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2FD434D90E;
	Wed, 11 Feb 2026 05:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nvKB0djT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XKeFPB5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B4434321C
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770788518; cv=none; b=WqDeKA4eirpRMSZxFTHJm9ypvW8wCCxgPedVGBFwfK9hF+qIG1DA5po1UnszC6VkKuNXRvx+D+XEIwpW4bSycmXR5j7HiwCK3c4dfdxO5DRi7UItNqGGb2X/DTLl7nykeB8cPu8SpQEWUZF2CJ+diTpkopjlENXbvrYy79Ts4Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770788518; c=relaxed/simple;
	bh=g1haGOpzNTfZvxTfyS5r1B8gJFPHElbpXRDKtM7KpV0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=s10mdiTQ651SA5ucAaeUT1o52P/HX07HLCfHHXNWryc0M/MCjCMKxtnCJNdDfAKMtwRyliiaZRP/yTabMzVM4yhBnfDPNxwzD1YdFUcUQGcsmi+CZQXOO6gTGoK5Y/mVa8D7cnJBwiYGkYzSCzi/C2T6BKpy8IdOkK4hEIhY+Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nvKB0djT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XKeFPB5i; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61ANo2JD3320512
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:41:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ph+uPWKuRkv
	Wsmnv4xYT3GHGVLy8gBuWsg0hQehtf58=; b=nvKB0djTtOt/LCEITHCE8njj8nf
	kXQmEqXfyOqlvyGvgCdxK+B3OpLTDieNULoVoBQ9rbfFb6yjXkIkS9ACMYOxw9Yx
	9dGY1guuoM7XRYvHXgaw5HCce6akWMqP98ltNyEGkQeP38kDZYKOxwjBhkV8OHe5
	Qt8Sl5LxoMm+ymLMjZgg4t8YcB/+gVu2oVeU9zG8N2WQZQITNul/O3wfSFlTKDlu
	9/j08UvxwOELwOC/RbzM+2yXSRe6GF1DhfJNJc/C7yE1ARTZwweFCfSjV3SZ3zsY
	ukaBUsl2xQY9IT8/PT5S7HrBnd4t+Kjj7dRI+oqsuWuJk88r9chI8uA/4Ng==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8epsgud5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:41:56 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aaf2ce5d81so37012495ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 21:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770788515; x=1771393315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ph+uPWKuRkvWsmnv4xYT3GHGVLy8gBuWsg0hQehtf58=;
        b=XKeFPB5ive6W32s5BjIdieD5mjHyqGOP82FfPXg4EBtdpJWoeERVzAK7sczfnPmgZ0
         9WBUKaa/ofJ/GdG3ad4lWa+LoAtIVOvsW6NiK7xzlbv27B3stMBJMMOx70qhmNLOpDTC
         0jTewyzl/sRgCtm1V65G0dlPh8liJA64K4sTJPh6JCIl/HjIp+0v1cyuD5gFBXq/JP5q
         bXTyiAYEsSVG4qXiGghRywbUodGmDd+B/z3D9J64P+5UAT6qJFUei/5KghznoLyNuxx5
         FWdV2+dFyqC821Y/f0ZwfL+9T9vAHxzHxRK3TaYgpwvYdHoghH3jSu9vO+gU3h3A+mwY
         Hy6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770788515; x=1771393315;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ph+uPWKuRkvWsmnv4xYT3GHGVLy8gBuWsg0hQehtf58=;
        b=jzNQWqqOZK4tVWud5qJgq+INgoYmIjRYCs3azRPo2LQQUynBDdz2xAUZDrgp6odAil
         kZkZ23Gen0qk+w/9TdZXp++RNstDMnbyzV3tKgP+RBspYtStnBR39yGlgFn4nsmZ4IpP
         lcagjQJxKItqqbTZfVvW7Rske0HiQh+X+RvTbVsB/Umz0RuX/YCaPiWRcArYbmApaHPe
         qY6mUDnGyNZBb7ZnLAC/PObUF8yvWUhkJQxz+zGKqiV8sa1lIra8abRqbwn8JJR21QBy
         dD2xT5ZeYJmUN6pRpxJjbg2ejTZLNGar8ymwe23fUxTdQaR9KNClvWxXiEoLPw3SDbB1
         3AmA==
X-Forwarded-Encrypted: i=1; AJvYcCW9JKx8+6ve166kUBBnfGctj4Xfgy4JY/QfGotigZmHtzrhgTrXJRsFiz6PX7fBVnCr8/pmQ846yrIn@vger.kernel.org
X-Gm-Message-State: AOJu0YxacwFIvgGP66eIsKArIJTbh3QCA1WRL0w22zezq9P30wxrIzp3
	XZlPJlTA/3Jh3z/8VLr30rybwbO9Lj/b9z+U2AR3dga9jmWjPOcHeFQ7o801RHVQdWdMqeGH2Ga
	VlglWvyGs9VP1iNVRAVyjQjbCbWjG7dspSHdJ/ZqkCA0M4+zMn25USKyCGqDBqSFz
X-Gm-Gg: AZuq6aKcWTx1HLXse4BabDnYoe8cR8ME3phYcFuDLSPOz1vHZB6VJHF35Ef88UPoM5I
	h/eGdKG4rdxLebwtPxbm9D7V+39CyWS/c5UMvPKYmPAGvt8s/kZdDnFVlTx5ghL12IXmQo+CGOP
	kBnU2PHtYRfSC83JZoEjRoWE/9SGAexfCw3riP56U0FoH3UuyJExGpW3+Zd3GrKH4A7nDsqqcwm
	dcU8njHcwjWOBfS5vRwV7iIdwAY0TsrLz8mphGJObHQ65oiWkliOia6jvQguaw78Fz2iXhdWvpg
	2JyfljLHtJoapYXejRahwYAR2aHno5kcqYtqFQtkMMTjl00clwzDknMuRBu3B88tcGprdLuk5G8
	wnGvLOc9GdXDuqBOdhrnh3XC2WeI11odfAh0PIrzvpnRvMTgZYqSKZVTM
X-Received: by 2002:a17:903:2c03:b0:2aa:d618:96b5 with SMTP id d9443c01a7336-2ab275b3f42mr16451055ad.11.1770788515163;
        Tue, 10 Feb 2026 21:41:55 -0800 (PST)
X-Received: by 2002:a17:903:2c03:b0:2aa:d618:96b5 with SMTP id d9443c01a7336-2ab275b3f42mr16450705ad.11.1770788514678;
        Tue, 10 Feb 2026 21:41:54 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2986f0adsm9932875ad.26.2026.02.10.21.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 21:41:54 -0800 (PST)
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
Subject: [PATCH v8 2/3] of: factor arguments passed to of_map_id() into a struct
Date: Wed, 11 Feb 2026 11:10:32 +0530
Message-Id: <20260211054033.2796660-3-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211054033.2796660-1-vijayanand.jitta@oss.qualcomm.com>
References: <20260211054033.2796660-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA0NCBTYWx0ZWRfX9aCqPSS4+Tch
 2unyjL5y6IesH/x20sw2AX5ki9lhbFzPm+GDPS8d/QYiUekfCbt0vzejTCWIT+fDRKHiyuIa+ra
 La4prp7zqWxWvHCKvwF3nkUmQn5Hyxph2Etmtm5BcPQiR9Q8DBCJzSpJoZxN1zcXeHikYsYYOSM
 riLcuAFx9+7h4cQnJiy0d/mV9rFam5tiyuxgbN4/e4fs0WpgdDlpAhEM2w370sK0xpWXk01mguY
 TGrDB0GE8ihwrLYXDYig1Zl7rU2vJTcsecYQHlcyzqmCQi0UVIUpOUfpJx13InbtgT2FwW3anxZ
 0mDkHNOiREqAiJ7FLO9FC0F7l7GgQN8xphEmLjBfTlB9TeKRY5SxHYzI3xLGqLoEcIXw1hdu1Db
 CMmAZBT86ZamjPRXNJAHPsJ94oBJn2XTZsnbM6hdcNUv1GH1uEFmnw8fxqN9BCvRBuhehHypBoK
 cIyL29IjO4uutFIorMw==
X-Proofpoint-ORIG-GUID: Q4958kAuQ7MdKpB07gqdyaolHL0K_OSX
X-Proofpoint-GUID: Q4958kAuQ7MdKpB07gqdyaolHL0K_OSX
X-Authority-Analysis: v=2.4 cv=I/Vohdgg c=1 sm=1 tr=0 ts=698c16a4 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=I3pr03k2-ahTGQre_g8A:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110044
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264601-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 99230121663
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


