Return-Path: <devicetree+bounces-250792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D3FCEBDEC
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA395302E07C
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:47:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 511E731D750;
	Wed, 31 Dec 2025 11:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PuVP9Oe9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aUsE5U2r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C9331A558
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767181640; cv=none; b=L49HdWP0lvV2AYCVRqpIu8qn/1D+dL+qsmoPHUEbHEpHam938WCNULltDP0h11MqZd6gYU0ALkAtbie6Pw5gkVAMpbKMFpV+ZAg3R2hwNLzfUg8MMK8YcixFj83ZZaF1HLtMt0+FwJ4gQQcv8r2w7V1H4Xar5205bp196mVzsbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767181640; c=relaxed/simple;
	bh=4voe3YPTzr7o5NUyZmk5stFXxPZFN/b9GYdzr6k2uIw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VCBhW2uic7/iRU6e3ZPVthXGB1Qh3dpbHzWiTnCINcBXpQWNvN73ASdU6TUWGbQ2nbinRx9nYhh++VIhF7mG4BRzq0o1ny5RzFVf55XE1sfaRFsf6mijJtctZpJuCEfum2XApFN8u7K7gCE3p+pONbibphDfQHEerULmchD65ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PuVP9Oe9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aUsE5U2r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUMfULd734201
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:47:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=6otJj073qoL
	8N5HQasQT64tA/eYb0f1bGXAj9s5tpa4=; b=PuVP9Oe931HF9BfrSk6BJ9SnqSv
	t9lmjjMq3AdQXxY6oqZokJfHmUBN8Jp2C7qvdy5eDU3ePsmwL1Ejo2hcBDXBZC2w
	RKII8T3CIPOiURuU1NZ0FtjpROMUdppPR/aEczq2XosfNRpSmwptmbTDiuCQd+2Y
	d/XutvrGgw/gALSlI94spFbVltnohUrZECt8uTQnY3Cq58axXH0LlOTQhT/tDSWt
	7Pn7jmdokeyQGiViw5ODxZPaC5IWOQms/NvzWPhBbq5FONZPsE+INGwi3ra9DMNU
	Qdwx6H44EYpPiOXIj/yP8mxFv20y49k8dSi8YK57O6wNx/qumH89Jpxs4Xg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0sgv88x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:47:16 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0a4b748a0so247017985ad.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767181636; x=1767786436; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6otJj073qoL8N5HQasQT64tA/eYb0f1bGXAj9s5tpa4=;
        b=aUsE5U2rxjlou6SvOiuuqRg0TqystTrcyXeuxQ/LndEGEDs1q+FmNcCFeuds/pChgn
         0yE4wKzcwQYui0MZStt+9Sw2GBrTwBD/dMhEiEiip8Lh+PpY4+2HjEanZEpfu5isA1j3
         h/Mxv/w142BZn2BB0s2ShBg1wAmpbUaNPIRp6eN4ZkW2KqpqSDgOp0ngOkthD44EirC0
         wKVExQ5TSGPtCBBgSoQOXa4p/af7nc+nb9MNfTGVdO3rqAdYoVrjzJWtpC2X9rYVYKVb
         K1Sdfw9mc8MQ6PNs45M6xYEYQ9E+O8yKiLVEwds5ygs4HhCSSzp6O7btaB+zYlbhL/UC
         wosQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767181636; x=1767786436;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6otJj073qoL8N5HQasQT64tA/eYb0f1bGXAj9s5tpa4=;
        b=BDOg0cjs86DJbtcx4Z0cHQeqLqk4RqXuJqfWs+x9RhDIJQITn7FZ753GHmG100c86B
         P+59Ww214W+Tzb27UjnOO/buPNFb9hlYuEJmMuWmVMUhaGjfYrTcgASBLVFM1hCDf4PJ
         yccpnniJuc/5ycQ9lVWHCg/NYxsw4HT5n0czjNDbQ0/73zM/1AB4YNHM/OgPkMsEec33
         UDE/DVdane1/CbOhDbz/qdVVEUt+dpxj4a1L7y4jSrwn81++RBC1ur5hJ0GCXWCfMnJ9
         B2lJBAMkOByQOdQN0KJRlcKe8g7X0douCnih+j55LGhEcx/NZzddQUmNc33N0cngTfBV
         C7gw==
X-Forwarded-Encrypted: i=1; AJvYcCWmtn/PK8dg0bho5G1gRMDAuXMQddeLekNTuHoYzD/42zeWm1NhA80SaXImmHYA2aoqsCrNENMLuYQe@vger.kernel.org
X-Gm-Message-State: AOJu0YyWgs7nelF/MHKmaspj+Mm/wW4UH9sJl1bYfzamFkUJQiHEMR/b
	PML8U9tIzhobrVHndUjnmZo6XNAdVcju22sWWUIhnzl+nxdge/joeaf2bkbHXKvTp5PCBlV2CaJ
	/LrcTp1TWG2IlX1CWy6qFbYIGC5/SQp8X4CVE+3ovOxgxx5F7fPqu01/z6bxhYTbo
X-Gm-Gg: AY/fxX5JlLM5eVUcmXStE7k1xrqBg+DmPTXSg5i1wkn7hbc11+VhkNL42xedFMLuOtB
	IawEfDv+suKFEo1c/7n7kb8CuKgkZA6VsmO+2giwNESYjsYN131VZFs2mOmqjs0BpfvHAZylOdt
	GyI+xty2rP+ak73GURrhWbvmZq6uD/W3REPBbe5MxD8iYGU/4W+VzPIF3F/w7YNc96P0LktzNQx
	p9ExGPah4q8/rsuFTFpRRtUWlvsEpDJN48zgin1vDcOhZ+vKjq2xXeWwnB9znPNJvKte+DbZmcX
	ssgloEP1HVRpWMrFxaI6YNWYvFXEg0fjOUDxl4lA0dxgNnV/HKzkgg2T2/D84at1AZqNfk99qLO
	tIIf2PtHA7rb84wxUNg8m+6vkivgXI70AFmxCNCUmp912
X-Received: by 2002:a17:902:d541:b0:2a1:388c:ca5b with SMTP id d9443c01a7336-2a2f2a3551emr408014665ad.39.1767181635843;
        Wed, 31 Dec 2025 03:47:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFWLn2P3f6vWIc7PUxOvAW918ZaEYh57QDdnmvJLDP3aQa+P5h2mP+8Bl8o6ZERBih4KeJq0g==
X-Received: by 2002:a17:902:d541:b0:2a1:388c:ca5b with SMTP id d9443c01a7336-2a2f2a3551emr408014375ad.39.1767181635351;
        Wed, 31 Dec 2025 03:47:15 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b5236b5sm34815656b3a.29.2025.12.31.03.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 03:47:15 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, saravanak@google.com,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v4 2/3] of: factor arguments passed to of_map_id() into a struct
Date: Wed, 31 Dec 2025 17:12:56 +0530
Message-Id: <20251231114257.2382820-3-vijayanand.jitta@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwMyBTYWx0ZWRfX9s06rGkECy/C
 Ih4sezPLXB5w9xDbIb5enxxL7p2yPFy/UGGaFBN6a3KNgn59SF0/1K4arNjeq8fDLXhw8jyQco7
 deZePyH+1fpI1/YAAeJ7WvipxqffYL1oQUy/PtzpZ/4NgMoaQvGE8hoG04nEKwnovzYWAv/VkCb
 Jn7qL5uf4APB3KZpddTXx+4H7zmcEsi4i9wH/9INoEG0mDIvspk3sxcg2uFwzYkbyCumbLsqjAv
 8F2BgDB1I9CE8IdtjBsUDDME2JlSe3x5UrB/5982VrvbLxSXAlsyonECMmzPTGreWWJuUcvfyha
 kcRw5WHTLl93hfeHdnFmUsVXreOlOYWp8wvxqYBMhwps7huYFlmeqTd8sRiHuwtJOR3qp8BCOXu
 Z3W4uwXzchoUD4uuEwypG1lMcd0i/2PsCandzCWyN8YA/vM8E4ZlnFiqS+PJeHTiEtegw6DfoNi
 GuXaSUnoCOO4qw1rf2g==
X-Proofpoint-GUID: c0XTYfhLEzTZ1qp8NoK5EKjy6GzCS12g
X-Proofpoint-ORIG-GUID: c0XTYfhLEzTZ1qp8NoK5EKjy6GzCS12g
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=69550d45 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=MW3YCBiU85KM78DY1KAA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310103

From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>

Introduce a new struct type where the optional arguments passed to
of_map_id() are Currently embedded as of_phandle_args struct.
Subsequent patches add additional arguments to the struct that the
caller expects to be filled of_map_id().

Suggested-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
---
 drivers/iommu/of_iommu.c              | 12 ++++++---
 drivers/of/base.c                     | 37 +++++++++++++--------------
 drivers/pci/controller/dwc/pci-imx6.c |  6 ++++-
 drivers/pci/controller/pcie-apple.c   |  5 +++-
 drivers/xen/grant-dma-ops.c           | 20 +++++++++------
 include/linux/of.h                    | 24 ++++++++++++-----
 6 files changed, 64 insertions(+), 40 deletions(-)

diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index a511ecf21fcd..646ac5a67475 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -45,15 +45,19 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
 				     struct device *dev,
 				     const u32 *id)
 {
-	struct of_phandle_args iommu_spec = { .args_count = 1 };
+	struct of_map_id_arg arg = {
+		.map_args = {
+			.args_count = 1,
+		},
+	};
 	int err;
 
-	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args);
+	err = of_map_iommu_id(master_np, *id, &arg);
 	if (err)
 		return err;
 
-	err = of_iommu_xlate(dev, &iommu_spec);
-	of_node_put(iommu_spec.np);
+	err = of_iommu_xlate(dev, &arg.map_args);
+	of_node_put(arg.map_args.np);
 	return err;
 }
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7043acd971a0..9f327c6b4f6b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2051,8 +2051,11 @@ int of_find_last_cache_level(unsigned int cpu)
  * @id: device ID to map.
  * @map_name: property name of the map to use.
  * @map_mask_name: optional property name of the mask to use.
- * @target: optional pointer to a target device node.
- * @id_out: optional pointer to receive the translated ID.
+ * @arg: contains the optional params, wrapped in a struct of_phandle_args,
+ *	which includes:
+ *	np: pointer to the target device node
+ *	args_count: number of arguments
+ *	args[]: array to receive the translated ID(s).
  *
  * Given a device ID, look up the appropriate implementation-defined
  * platform ID and/or the target device which receives transactions on that
@@ -2066,21 +2069,21 @@ int of_find_last_cache_level(unsigned int cpu)
  */
 int of_map_id(const struct device_node *np, u32 id,
 	       const char *map_name, const char *map_mask_name,
-	       struct device_node **target, u32 *id_out)
+	       struct of_map_id_arg *arg)
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
+		if (arg->map_args.np)
 			return -ENODEV;
 		/* Otherwise, no map implies no translation */
-		*id_out = id;
+		arg->map_args.args[0] = id;
 		return 0;
 	}
 
@@ -2122,18 +2125,15 @@ int of_map_id(const struct device_node *np, u32 id,
 		if (!phandle_node)
 			return -ENODEV;
 
-		if (target) {
-			if (*target)
-				of_node_put(phandle_node);
-			else
-				*target = phandle_node;
+		if (arg->map_args.np)
+			of_node_put(phandle_node);
+		else
+			arg->map_args.np = phandle_node;
 
-			if (*target != phandle_node)
-				continue;
-		}
+		if (arg->map_args.np != phandle_node)
+			continue;
 
-		if (id_out)
-			*id_out = masked_id - id_base + out_base;
+		arg->map_args.args[0] = masked_id - id_base + out_base;
 
 		pr_debug("%pOF: %s, using mask %08x, id-base: %08x, out-base: %08x, length: %08x, id: %08x -> %08x\n",
 			np, map_name, map_mask, id_base, out_base,
@@ -2142,11 +2142,10 @@ int of_map_id(const struct device_node *np, u32 id,
 	}
 
 	pr_info("%pOF: no %s translation for id 0x%x on %pOF\n", np, map_name,
-		id, target && *target ? *target : NULL);
+		id, arg->map_args.np  ? arg->map_args.np : NULL);
 
 	/* Bypasses translation */
-	if (id_out)
-		*id_out = id;
+	arg->map_args.args[0] = id;
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_map_id);
diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index c8da2e88e9c6..8dcdde2efb8a 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1101,12 +1101,16 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 {
 	struct device *dev = imx_pcie->pci->dev;
 	struct device_node *target;
+	struct of_map_id_arg arg = {};
 	u32 sid_i, sid_m;
 	int err_i, err_m;
 	u32 sid = 0;
 
 	target = NULL;
-	err_i = of_map_iommu_id(dev->of_node, rid, &target, &sid_i);
+
+	arg.map_args.np = target;
+	arg.map_args.args[0] = sid_i;
+	err_i = of_map_iommu_id(dev->of_node, rid, &arg);
 	if (target) {
 		of_node_put(target);
 	} else {
diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
index ce21728d6e51..dea4a38cb4bb 100644
--- a/drivers/pci/controller/pcie-apple.c
+++ b/drivers/pci/controller/pcie-apple.c
@@ -782,6 +782,7 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
 {
 	u32 sid, rid = pci_dev_id(pdev);
 	struct apple_pcie_port *port;
+	struct of_map_id_arg arg = {};
 	int idx, err;
 
 	port = apple_pcie_get_port(pdev);
@@ -791,7 +792,9 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
 	dev_dbg(&pdev->dev, "added to bus %s, index %d\n",
 		pci_name(pdev->bus->self), port->idx);
 
-	err = of_map_iommu_id(port->pcie->dev->of_node, rid, NULL, &sid);
+	arg.map_args.np = NULL;
+	arg.map_args.args[0] = sid;
+	err = of_map_iommu_id(port->pcie->dev->of_node, rid, &arg);
 	if (err)
 		return err;
 
diff --git a/drivers/xen/grant-dma-ops.c b/drivers/xen/grant-dma-ops.c
index b661f9c1f4fe..86edb11d8d26 100644
--- a/drivers/xen/grant-dma-ops.c
+++ b/drivers/xen/grant-dma-ops.c
@@ -315,38 +315,42 @@ static int xen_dt_grant_init_backend_domid(struct device *dev,
 					   struct device_node *np,
 					   domid_t *backend_domid)
 {
-	struct of_phandle_args iommu_spec = { .args_count = 1 };
+	struct of_map_id_arg arg = {
+		.map_args = {
+			.args_count = 1,
+		},
+	};
 
 	if (dev_is_pci(dev)) {
 		struct pci_dev *pdev = to_pci_dev(dev);
 		u32 rid = PCI_DEVID(pdev->bus->number, pdev->devfn);
 
-		if (of_map_iommu_id(np, rid, &iommu_spec.np, iommu_spec.args)) {
+		if (of_map_iommu_id(np, rid, &arg)) {
 			dev_dbg(dev, "Cannot translate ID\n");
 			return -ESRCH;
 		}
 	} else {
 		if (of_parse_phandle_with_args(np, "iommus", "#iommu-cells",
-				0, &iommu_spec)) {
+				0, &arg.map_args)) {
 			dev_dbg(dev, "Cannot parse iommus property\n");
 			return -ESRCH;
 		}
 	}
 
-	if (!of_device_is_compatible(iommu_spec.np, "xen,grant-dma") ||
-			iommu_spec.args_count != 1) {
+	if (!of_device_is_compatible(arg.map_args.np, "xen,grant-dma") ||
+			arg.map_args.args_count != 1) {
 		dev_dbg(dev, "Incompatible IOMMU node\n");
-		of_node_put(iommu_spec.np);
+		of_node_put(arg.map_args.np);
 		return -ESRCH;
 	}
 
-	of_node_put(iommu_spec.np);
+	of_node_put(arg.map_args.np);
 
 	/*
 	 * The endpoint ID here means the ID of the domain where the
 	 * corresponding backend is running
 	 */
-	*backend_domid = iommu_spec.args[0];
+	*backend_domid = arg.map_args.args[0];
 
 	return 0;
 }
diff --git a/include/linux/of.h b/include/linux/of.h
index 8cd486d89da2..0b0d545b80a3 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -74,6 +74,10 @@ struct of_phandle_args {
 	uint32_t args[MAX_PHANDLE_ARGS];
 };
 
+struct of_map_id_arg {
+	struct of_phandle_args map_args;
+};
+
 struct of_phandle_iterator {
 	/* Common iterator information */
 	const char *cells_name;
@@ -458,7 +462,7 @@ bool of_console_check(const struct device_node *dn, char *name, int index);
 
 int of_map_id(const struct device_node *np, u32 id,
 	       const char *map_name, const char *map_mask_name,
-	       struct device_node **target, u32 *id_out);
+	       struct of_map_id_arg *arg);
 
 phys_addr_t of_dma_get_max_cpu_address(struct device_node *np);
 
@@ -907,7 +911,7 @@ static inline void of_property_clear_flag(struct property *p, unsigned long flag
 
 static inline int of_map_id(const struct device_node *np, u32 id,
 			     const char *map_name, const char *map_mask_name,
-			     struct device_node **target, u32 *id_out)
+			     struct of_map_id_arg *arg)
 {
 	return -EINVAL;
 }
@@ -1436,17 +1440,23 @@ static inline int of_property_read_s32(const struct device_node *np,
 }
 
 static inline int of_map_iommu_id(const struct device_node *np, u32 id,
-				  struct device_node **target, u32 *id_out)
+				  struct of_map_id_arg *arg)
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
+	struct of_map_id_arg arg = {
+		.map_args = {
+			.np = *target,
+			.args_count = 1,
+			.args = { *id_out },
+		},
+	};
+
+	return of_map_id(np, id, "msi-map", "msi-map-mask", &arg);
 }
 
 #define of_for_each_phandle(it, err, np, ln, cn, cc)			\
-- 
2.34.1


