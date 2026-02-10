Return-Path: <devicetree+bounces-264334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NnzJaYEi2kdPQAAu9opvQ
	(envelope-from <devicetree+bounces-264334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:12:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14259119814
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 11:12:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89E6630396B1
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 10:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E94DB34CFD0;
	Tue, 10 Feb 2026 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kx+a5X8B";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AWB4hAAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D20034CFD7
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770718353; cv=none; b=Ke4PPOuP24kYRzmCSnpZ+31OjSdgcyO0y9xuC0uY+HeEZ3djnn32K07wyIwlRBV6e5yxght5aXvZJEKD0tOTCMzmHhn4oUqSn8XHvan5OI7tHgijK+O+Dz7g4MRPTjobLXkTa90TeJPqswm2wp9yt+63PM1lDWrJjzhG/VvLPqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770718353; c=relaxed/simple;
	bh=62wE/dFO70wWM6jtNkIEjSDoZ/uTZDrsSnyLOGNH7AU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=u4f/Hl48gt8/qgKskUEAPquSnSLH6+onRDmIvpbMEYezhm3tWzNXoi0kBVqFY9hRcqka/PFr/y8FeBSUsgDSDx38bFtrMl3/tNOICGhKbpMVjYLfSXlf/ebPqu22Rzqzn7QiOOEiuAimoa4oZ3kN5pwa+DG8vkv22dP+0ro8nBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kx+a5X8B; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AWB4hAAb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A3iONm1940336
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:12:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3ukvPHoLd8R
	ybKSkJJjyIW6Pfs0lLwz5oAOgnyruNtE=; b=kx+a5X8BwEFZgvLN6H9uQbvdzyv
	IV+FCArqgEEvPEIZkwPgXzJH3B9Uq/9QhQ0zk8UXKFznsDMy1qC1DbQhTCjToT5r
	eontm+5cAmgCS0fBNxohxa6azfkrU0XaQ5TpFqfo9W1PJQU7r+/9eM9jChaDmYp0
	zpzPY4Z7Di+j6d3RVX00RF98t94ZL5m4RuYCTZgxPIA5HwhTfWSdFcCfzldbyQZg
	z2q0j21vrmWd8bE7UcpWaIKWYoY4PGHITj1QxyvuVu0xHh+RdrBC9l/lCd81vs6W
	XNFbusqlPUxBP2KfdG9ZS/P6CbkoJCGUoLAaLviNKc7n6Yk04fesACeGByg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7w1js5j0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 10:12:31 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8243c83d108so6423300b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 02:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770718351; x=1771323151; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ukvPHoLd8RybKSkJJjyIW6Pfs0lLwz5oAOgnyruNtE=;
        b=AWB4hAAbfcJCv0Dd4jxpxctTAsU99R2+K2CzNQQMv/CnV+Q+okX3bJ9x3aUF2yoV/8
         Q9TDt4KafrkiSmbXlmOy0VTKfgio3vhLDU1j3/3Uc/yA/2fl1xcjj5CA1WH2nsYUB3vL
         yILYcFiKPp/ETgumxXEkWtDMzcTXs5YxXYoqpFpWvOuiFzFenGqiYCwlWYk07Llg/EjX
         9JR1kb9cLaluW5KG2JWayxkSPgC3Re59twB8J2xkAVT2WBI5DN9xSHq/6T+QRjk8dFPA
         /B6ZZlar2nzjX4rQAn6m8aDUQACskOW2WZTsjj/fbK4xSTa+xu6rodo7nmssFNtlq/2d
         PCSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718351; x=1771323151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3ukvPHoLd8RybKSkJJjyIW6Pfs0lLwz5oAOgnyruNtE=;
        b=h9YcpvZ4lWkt3QKJOKv815NPSZn+aD/SjUSo0lQmeVmNRTiVdhFmNvjU8lOOdHwex6
         uf6Egz0M7DX1gVUgZIn24DDz4upv8sHDeJ7vFTpO7Iq/0qjmX2efi54Sw4KOirdEEPvr
         Atha5NVlWXKyqFSnPOUsdmG0a2sTZiNkTBLeasI0yL4d3y0a3XBWOAWnbfajP6K0Vp1/
         TaEeZx5nngRmErDdNV4eX+/iezymTEBJwB9CqEwyCft7+1RV+TKoKZ24a7V34mKNMSOe
         rKtX1nIXf694b6aJhWCaJ6of9qpXAruhlLkki9Ka7UMit0rxDfMaeEUUxo7vytcgghS/
         xJEw==
X-Forwarded-Encrypted: i=1; AJvYcCUNVY1GE6xIpoDvJjh9ntbwgjeAX7IKubmF+4hDHbsIGd3fF1GMauTpB4BUUfwK9mOTCKJcUVFChaSv@vger.kernel.org
X-Gm-Message-State: AOJu0YyF2Jr/GAlyHxUpgBo1Af86NjF2wGW3KngHCLbAw4vy35+aQjL2
	MrFpIOMK0y1sXjy7AZag6aC0do/QRwsCEGVBKh1iKJlUNqIeBinBVxFacPUkDe+Cf+k28lHPclV
	uBYCpmygvPu0XZ1p1tdTe50skRiv4pUCknkXE5Zs3mqu188w8p6kiWA+vEa3IyLvU
X-Gm-Gg: AZuq6aL4SiuK46KMjAVvtGWIzUs26d4afbjkFx07s0e7kbgPKl29mTvZdTGt6B58A3T
	pZVTbxRe95MiNCKRw2kKG84anEv21wmB6Dr6YTHy0pJEsZvommldfLyE9RPSViy5cByh52wSF4a
	n+kXwW5YQmUKLFly7ILxJha7yqErVvchWx0gDB9BWj9395Hhy6H0J4SraqHT3HNf/u4gnPFzlGY
	EEBbT0y65hpKqgqZwzC3Vx7GZiZb1BnjJkYGL6XeQbDCKa02tPWzdV4ipRBnNSxKLmG+WBB0P0S
	/ZUfWRoBaPYjl/KKaiDBwJ77BntrHBknkNOg/qF3SKr3GfGtyUxDAy0o3/km5Y61JFjEsD35jN2
	8dXKdJxr6xYr7lU10H8f7qdNQxly1viGXpZgQfY7XJ9SxfSffznt+34lp
X-Received: by 2002:a05:6a00:929d:b0:81f:61d2:84a7 with SMTP id d2e1a72fcca58-8244178a552mr14712978b3a.59.1770718351038;
        Tue, 10 Feb 2026 02:12:31 -0800 (PST)
X-Received: by 2002:a05:6a00:929d:b0:81f:61d2:84a7 with SMTP id d2e1a72fcca58-8244178a552mr14712947b3a.59.1770718350523;
        Tue, 10 Feb 2026 02:12:30 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82441884b75sm14380940b3a.39.2026.02.10.02.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:12:30 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Frank Li <Frank.Li@nxp.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [PATCH v7 1/3] of: Add convenience wrappers for of_map_id()
Date: Tue, 10 Feb 2026 15:41:55 +0530
Message-Id: <20260210101157.2145113-2-vijayanand.jitta@oss.qualcomm.com>
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
X-Proofpoint-GUID: 5t2QFHszpDBK8qFg0D_BMqy5OZ257y8V
X-Proofpoint-ORIG-GUID: 5t2QFHszpDBK8qFg0D_BMqy5OZ257y8V
X-Authority-Analysis: v=2.4 cv=YrIChoYX c=1 sm=1 tr=0 ts=698b048f cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=7CQSdrXTAAAA:8
 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=wrOk0Nx1w3hKWqktZycA:9
 a=IoOABgeZipijB_acs4fv:22 a=a-qgeE7W1pNrGK8U0ZQC:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA4NCBTYWx0ZWRfX+wexWf18IKNN
 hnCTkxupxu9eUZdv8nzFQtfbQQOGzQQ7uxZE35l5Dum3MIrYtFutcW8raAGTC0zub7mF9/K6+bw
 mRwlWnnFbgthm50xGkBWs8dt9fOnzkNeawWjng0XugjYevmETqjzWwZ8jEYJDP8H5W0gqHiGzc9
 95qI+NyLsuGmcDa6bQHFSvm1dbE1Fp7kDIK3ASkrRiu3+NiB49rrdKtGHHRlDTf9/bRKd6Eboqy
 i4P9sU31FMDGfsxPWaxUEkg58DVlCyvTw9nOwENJUzLPOuEp6rCehDcWsU6BmB3WawPYKHTOT+/
 GklmM6ivR0xRrGEYox8dd52CvELhPvnZ7ZfdM8glhEYx8zF+ZMX4hFGXHvvNJz7D674RqUpczlm
 LFwqwKCSdBssbdqxPxkf1o0U7EF6a61X3js5FWFgASKs/9fHdZi/CdaosJiSRdc7Xzp3hSZyGQs
 AFD32UzVOlaajtB43fA==
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264334-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,arm.com:email,nxp.com:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 14259119814
X-Rspamd-Action: no action

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
index a832cdb2e697..b30d0dc0a1aa 100644
--- a/drivers/irqchip/irq-gic-its-msi-parent.c
+++ b/drivers/irqchip/irq-gic-its-msi-parent.c
@@ -179,7 +179,7 @@ static int of_pmsi_get_msi_info(struct irq_domain *domain, struct device *dev, u
 
 	struct device_node *msi_ctrl __free(device_node) = NULL;
 
-	return of_map_id(dev->of_node, dev->id, "msi-map", "msi-map-mask", &msi_ctrl, dev_id);
+	return of_map_msi_id(dev->of_node, dev->id, &msi_ctrl, dev_id);
 }
 
 static int its_pmsi_prepare(struct irq_domain *domain, struct device *dev,
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
index a5b8d0b71677..bff8289f804a 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1144,8 +1144,7 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
 	u32 sid = 0;
 
 	target = NULL;
-	err_i = of_map_id(dev->of_node, rid, "iommu-map", "iommu-map-mask",
-			  &target, &sid_i);
+	err_i = of_map_iommu_id(dev->of_node, rid, &target, &sid_i);
 	if (target) {
 		of_node_put(target);
 	} else {
@@ -1158,8 +1157,7 @@ static int imx_pcie_add_lut_by_rid(struct imx_pcie *imx_pcie, u32 rid)
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
index be6ec4916adf..824649867810 100644
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


