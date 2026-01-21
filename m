Return-Path: <devicetree+bounces-257737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KL5KUdqcGkVXwAAu9opvQ
	(envelope-from <devicetree+bounces-257737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:55:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 230E151C21
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 06:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 987374F3823
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 05:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCF7842B736;
	Wed, 21 Jan 2026 05:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nyE8Ft1u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BJF5bL7y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EEB4279F9
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768974875; cv=none; b=nVyfwrZpvxJv86f5MnMmmFQR8UQaFbDA4i0emuNlQAelzPSwOkYfNIZvzr+PLxhN7hBienUtMcmDZYj76ls/osPPF+bdts+moyq4n+qtM8HGvPhUQrWx4EvRbK1gihSOloHk33B45zVn9hiEyhCbFJNuzz2yC6XeDT9Uy16U6S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768974875; c=relaxed/simple;
	bh=ZXUiTl4+2nF18kNLH5IJnoSTF9D9+5pWu6v1dqL2crI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XdoIMsXHsCWo03Uis8f+X5KtB6QYf8yQr5tG2+GQz3L0N25GX1ZSMfYpJ8hlkrSRh37F6eW62wu37Bp2naZfmFBCEmz2tfx8tcrapPFhSeMqY8M1//vXhV0p0Qu1zvEx43HcN3N0ZB8wg4yHBak6Z+VCq8XxrhCpRI0C17S8Yjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nyE8Ft1u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BJF5bL7y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L2EnTT668881
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:54:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=uMbzqoMsnSD
	IM7szmbD2+8L3whOzIkWXJhIlQStUWFE=; b=nyE8Ft1uSqLFegiuBP881seA9mF
	Mr5nWOJ4u7pNaGvP9bXlkhgyBHQC+oMR1NM0UX3a7xH5MAGp+2hjYZvbfr3cpmmf
	EZ28VlfZiQMdF6pIyjmZo7CyQ6VXGWH22LB3+BmE7vYcocH835upHDfJmi+XBhz1
	kL7vihwlhe8YGDtY/coobYgPF61jx2eKyRl0J85ir1ehVToIV+kOwbcUwTLcr5iM
	evr/KZwBnYsGC0T4Xttrkmy7QVDYuKvMGYsrFBn5gkImNsG2Ok5WweL9W6TCdtbU
	x9LBonSGavI9QQ00krjqfHAjqNj58sk7jn5/G6N8C2IU27Hf1NUjtWttR9A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bte04tdx5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 05:54:31 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81c43a20b32so5157037b3a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 21:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768974871; x=1769579671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uMbzqoMsnSDIM7szmbD2+8L3whOzIkWXJhIlQStUWFE=;
        b=BJF5bL7y6tS6W+oX1Rmeu45hJs30q+1dpqYRikAF2GvScLU9wWcn+MDYJUrd+94CMa
         L5++pV+fgKUrYbisyEEAgV9Wuv0b3PrzNASvJvWg/LQlY6mtUBmGIjNJrMRqn3juMOjw
         CgCUT3XJl1w8gG/K8eBGeAZeAzNOdzSAAXdRZkyWFlzDv7/HgVri8h2iqSiiY1YJguGT
         zkfrwzshn+leMCGYv7vFREEcZ8OZKVD3/K9tcpmQ3F/d+QBcA8dJwtIvmHsxTJUcxatO
         Y7xGHldG2MQUdRK4kIfGjTHuMu80T4JVUtyIpcBTLgQxG5vbVg+GtJ3MoPPcki+6f3dQ
         vYFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768974871; x=1769579671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uMbzqoMsnSDIM7szmbD2+8L3whOzIkWXJhIlQStUWFE=;
        b=a5lDRYEYm8YGIAnEhagggKGxIFKk8j/2ysJBpaAbDmXjJuXDq241a/S+REvu35gA6y
         tIOYRwOOcr4vFtnPX/Du+Zs2fPrNLCZXu+hAb1A83fhmN9Yub3E832paeHOhrWh6sriv
         vql+idJ60GZrK0evDF1eITQ2KLCKsPtKzU6Au7v5pJa45riLs5GpSzcb0thPp4UXeUsu
         Onwhnx5s960+pUdhQCCPwiL7hAIMLw/8Mt1xWprcFUkWp4KFQUivJiNVLBDQaAIhX6WE
         ktL+ju/FqjjI/Xn23c3ME9ECBb3I/lVs7qiNPwZ5JLl8qNZpL7XWVeeRTxkKgGWvHSoJ
         WcPA==
X-Forwarded-Encrypted: i=1; AJvYcCWkw436T3XiwB340kVHRUN+gp1EyiMao991Xgrm268gVSCT0d3HpfJiX+QfrHZQU3Vw/elgoy3VTZTh@vger.kernel.org
X-Gm-Message-State: AOJu0YzTm5J3aCXeHtlvOVUnZOXI0K9lvq6RfqRLBAeiWBuTxshpXMy0
	KfRxayMe19FiI8paweL35Zur8DpkfwLqZppQuIyxtl/IPoXNx6jJT/r1NMvJwfGWoHyd4HQl2+W
	npCKbBOrUVK6Vlia+yXD4G8CCJx4TLwlWK3LT4oBe2a3S4HIzcQEH/ZYc965/cdvF
X-Gm-Gg: AZuq6aLYAyjJ8le4EHRLyCjZ0KxsckIR6CzOivtHI40OHFnudjwNDzN6SR0DGPzovwO
	c5Hj+MkxLSJ3xMglA+OhUnDdsyTCNQ+n5xVp3fwGyqye69sWK3MR4wsTFoSoenXerPv19I95SdM
	gJ8TNVrWMqOIHuUPVlbvoJ4w+Wi6tw12467/bQyFenzsRcNjATYqnEKMGs9soZS1eDKdQ3+JuVd
	U5sIWMwZYq9bzef2NrVA/7sEbdAXvzel15Y6nQB+rTjI0VwqSL5cs/4Gy8uiAypDTvZ4Ww/2W4P
	irieEYhxMtsFTai9/PnGmWTXf3n/jKusSXs1S9oXolu6KUrf9KUDnwAjmraOATV0FeFSJhLvVi4
	fKYZ75E8OBS1cIWP2Zoum1TqUxOiCaLh+aehp5TylDr45
X-Received: by 2002:a05:6a00:1805:b0:81f:5acb:55e5 with SMTP id d2e1a72fcca58-81fa1771fdbmr12076108b3a.2.1768974870725;
        Tue, 20 Jan 2026 21:54:30 -0800 (PST)
X-Received: by 2002:a05:6a00:1805:b0:81f:5acb:55e5 with SMTP id d2e1a72fcca58-81fa1771fdbmr12076083b3a.2.1768974870203;
        Tue, 20 Jan 2026 21:54:30 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa1278061sm13831927b3a.44.2026.01.20.21.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 21:54:29 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Frank Li <Frank.Li@nxp.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v6 1/3] of: Add convenience wrappers for of_map_id()
Date: Wed, 21 Jan 2026 11:23:58 +0530
Message-Id: <20260121055400.937856-2-vijayanand.jitta@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com>
References: <20260121055400.937856-1-vijayanand.jitta@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA0NiBTYWx0ZWRfX1kewuoWdRGBk
 M8bEo69pF1WigDhJWvV6CZnQafpgYilC9gjA765ZhFdBqnjn8ie1+sAa1Ivn1r19R2FUe36yH8S
 C0sJtqsIG8TRrH+6AUWAoBnlCJKz2AfjqA9x2N+TaWzfElT+4KBwIRV8PLX8K41eCB7xObsMLHG
 2iDb7kEhatT3yWY7t46y3dPssfQpjKkoCKxt9hp+/DoZlORpOG7S6XDutHigv0B1Rqx/vXRm5MX
 gf1FM2tXgmZESntek573WUIh1z9bpVhpocr2+LC/zt89/t3YTqyT5RJc4GK+fe0UWjZYU8gX55N
 MgXfBIai7g8WRVsVnH++Gus9J4eCBQs0/KRDosoYyyR5+hICpr77BZbf8FeFAQaiwOhV6ZNoMGA
 ayTRwxQY6HunjIqwR3KnEj4IAtLHNSFp8AWzRxvxuYf38cAiBT7AoMIttMOhc5x81E3eAI5Chi9
 L/MP4UcyAsnC+gcPtgg==
X-Authority-Analysis: v=2.4 cv=bZ5mkePB c=1 sm=1 tr=0 ts=69706a17 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8
 a=wrOk0Nx1w3hKWqktZycA:9 a=OpyuDcXvxspvyRM73sMx:22 a=a-qgeE7W1pNrGK8U0ZQC:22
 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-GUID: yOavQbYhEmwnAFIPtt7yUbaE5fEYJG3f
X-Proofpoint-ORIG-GUID: yOavQbYhEmwnAFIPtt7yUbaE5fEYJG3f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 spamscore=0 bulkscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210046
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257737-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,arm.com:email,qualcomm.com:email,qualcomm.com:dkim,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 230E151C21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Robin Murphy <robin.murphy@arm.com>

Since we now have quite a few users parsing "iommu-map" and "msi-map"
properties, give them some wrappers to conveniently encapsulate the
appropriate sets of property names. This will also make it easier to
then change of_map_id() to correctly account for specifier cells.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
---
 drivers/cdx/cdx_msi.c                    |  3 +--
 drivers/iommu/of_iommu.c                 |  4 +---
 drivers/irqchip/irq-gic-its-msi-parent.c |  2 +-
 drivers/of/irq.c                         |  3 +--
 drivers/pci/controller/dwc/pci-imx6.c    |  6 ++----
 drivers/pci/controller/pcie-apple.c      |  3 +--
 drivers/xen/grant-dma-ops.c              |  3 +--
 include/linux/of.h                       | 14 ++++++++++++++
 8 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/cdx/cdx_msi.c b/drivers/cdx/cdx_msi.c
index 91b95422b263..63b3544ec997 100644
--- a/drivers/cdx/cdx_msi.c
+++ b/drivers/cdx/cdx_msi.c
@@ -128,8 +128,7 @@ static int cdx_msi_prepare(struct irq_domain *msi_domain,
 	int ret;
 
 	/* Retrieve device ID from requestor ID using parent device */
-	ret = of_map_id(parent->of_node, cdx_dev->msi_dev_id, "msi-map", "msi-map-mask",
-			NULL, &dev_id);
+	ret = of_map_msi_id(parent->of_node, cdx_dev->msi_dev_id, NULL, &dev_id);
 	if (ret) {
 		dev_err(dev, "of_map_id failed for MSI: %d\n", ret);
 		return ret;
diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
index 6b989a62def2..a511ecf21fcd 100644
--- a/drivers/iommu/of_iommu.c
+++ b/drivers/iommu/of_iommu.c
@@ -48,9 +48,7 @@ static int of_iommu_configure_dev_id(struct device_node *master_np,
 	struct of_phandle_args iommu_spec = { .args_count = 1 };
 	int err;
 
-	err = of_map_id(master_np, *id, "iommu-map",
-			 "iommu-map-mask", &iommu_spec.np,
-			 iommu_spec.args);
+	err = of_map_iommu_id(master_np, *id, &iommu_spec.np, iommu_spec.args);
 	if (err)
 		return err;
 
diff --git a/drivers/irqchip/irq-gic-its-msi-parent.c b/drivers/irqchip/irq-gic-its-msi-parent.c
index 12f45228c867..d5d8fa65c24d 100644
--- a/drivers/irqchip/irq-gic-its-msi-parent.c
+++ b/drivers/irqchip/irq-gic-its-msi-parent.c
@@ -173,7 +173,7 @@ static int of_pmsi_get_msi_info(struct irq_domain *domain, struct device *dev, u
 
 	struct device_node *msi_ctrl __free(device_node) = NULL;
 
-	return of_map_id(dev->of_node, dev->id, "msi-map", "msi-map-mask", &msi_ctrl, dev_id);
+	return of_map_msi_id(dev->of_node, dev->id, &msi_ctrl, dev_id);
 }
 
 int __weak iort_pmsi_get_dev_id(struct device *dev, u32 *dev_id)
diff --git a/drivers/of/irq.c b/drivers/of/irq.c
index f374d8b212b8..ddd046de70de 100644
--- a/drivers/of/irq.c
+++ b/drivers/of/irq.c
@@ -817,8 +817,7 @@ u32 of_msi_xlate(struct device *dev, struct device_node **msi_np, u32 id_in)
 	 * "msi-map" or an "msi-parent" property.
 	 */
 	for (parent_dev = dev; parent_dev; parent_dev = parent_dev->parent) {
-		if (!of_map_id(parent_dev->of_node, id_in, "msi-map",
-				"msi-map-mask", msi_np, &id_out))
+		if (!of_map_msi_id(parent_dev->of_node, id_in, msi_np, &id_out))
 			break;
 		if (!of_check_msi_parent(parent_dev->of_node, msi_np))
 			break;
diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 1d8677d7de04..c3e5cb3cb846 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1143,8 +1143,7 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 	u32 sid = 0;
 
 	target = NULL;
-	err_i = of_map_id(dev->of_node, rid, "iommu-map", "iommu-map-mask",
-			  &target, &sid_i);
+	err_i = of_map_iommu_id(dev->of_node, rid, &target, &sid_i);
 	if (target) {
 		of_node_put(target);
 	} else {
@@ -1157,8 +1156,7 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 	}
 
 	target = NULL;
-	err_m = of_map_id(dev->of_node, rid, "msi-map", "msi-map-mask",
-			  &target, &sid_m);
+	err_m = of_map_msi_id(dev->of_node, rid, &target, &sid_m);
 
 	/*
 	 *   err_m      target
diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
index 2d92fc79f6dd..a0937b7b3c4d 100644
--- a/drivers/pci/controller/pcie-apple.c
+++ b/drivers/pci/controller/pcie-apple.c
@@ -764,8 +764,7 @@ static int apple_pcie_enable_device(struct pci_host_bridge *bridge, struct pci_d
 	dev_dbg(&pdev->dev, "added to bus %s, index %d\n",
 		pci_name(pdev->bus->self), port->idx);
 
-	err = of_map_id(port->pcie->dev->of_node, rid, "iommu-map",
-			"iommu-map-mask", NULL, &sid);
+	err = of_map_iommu_id(port->pcie->dev->of_node, rid, NULL, &sid);
 	if (err)
 		return err;
 
diff --git a/drivers/xen/grant-dma-ops.c b/drivers/xen/grant-dma-ops.c
index c2603e700178..1b7696b2d762 100644
--- a/drivers/xen/grant-dma-ops.c
+++ b/drivers/xen/grant-dma-ops.c
@@ -325,8 +325,7 @@ static int xen_dt_grant_init_backend_domid(struct device *dev,
 		struct pci_dev *pdev = to_pci_dev(dev);
 		u32 rid = PCI_DEVID(pdev->bus->number, pdev->devfn);
 
-		if (of_map_id(np, rid, "iommu-map", "iommu-map-mask", &iommu_spec.np,
-				iommu_spec.args)) {
+		if (of_map_iommu_id(np, rid, &iommu_spec.np, iommu_spec.args)) {
 			dev_dbg(dev, "Cannot translate ID\n");
 			return -ESRCH;
 		}
diff --git a/include/linux/of.h b/include/linux/of.h
index 9bbdcf25a2b4..309c5681744b 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -1457,6 +1457,20 @@ static inline int of_property_read_s32(const struct device_node *np,
 	return of_property_read_u32(np, propname, (u32*) out_value);
 }
 
+static inline int of_map_iommu_id(const struct device_node *np, u32 id,
+				  struct device_node **target, u32 *id_out)
+{
+	return of_map_id(np, id, "iommu-map", "iommu-map-mask",
+			 target, id_out);
+}
+
+static inline int of_map_msi_id(const struct device_node *np, u32 id,
+				struct device_node **target, u32 *id_out)
+{
+	return of_map_id(np, id, "msi-map", "msi-map-mask",
+			 target, id_out);
+}
+
 #define of_for_each_phandle(it, err, np, ln, cn, cc)			\
 	for (of_phandle_iterator_init((it), (np), (ln), (cn), (cc)),	\
 	     err = of_phandle_iterator_next(it);			\
-- 
2.34.1


