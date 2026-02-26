Return-Path: <devicetree+bounces-268645-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEnJB2H6n2n3fAQAu9opvQ
	(envelope-from <devicetree+bounces-268645-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:46:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6821D1A2069
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:46:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4296F301DD1D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17DB138F93A;
	Thu, 26 Feb 2026 07:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IW0q/1uD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jG1EnxYo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5A1311599
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772091966; cv=none; b=tuXsTZ8rB1PpXL7xfLOtE9moLGH2oIIVCOy8s0WnDwvjAwDxheFZSEhDpEv38FIbrExJ7Q0ihJB7mgkKUnZH5ju/w9r0FBrQrlsBM4CL2wdlD/PlhSinychbViTOp+CM281mkmROlZo2SfucdW/umIZPi4IfYMoiS4gjkEz2Kj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772091966; c=relaxed/simple;
	bh=62wE/dFO70wWM6jtNkIEjSDoZ/uTZDrsSnyLOGNH7AU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=phmrDwx2LpKGxVvkPxPEM5NM0Jp19p7VPyeO8OeeKfxwMKSf39TIBtfbkC1LGGLo8/WWYz8+PkRaT0WzM23MxAtrwg7YUBYbPLb79jzHMQKp0IcGc/4FXgY19EGyyPAY/QQj70cmh6GVjv6kngxrP9DArwSh1n4IgU8zYDyeMzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IW0q/1uD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jG1EnxYo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4VJwl3721802
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:46:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3ukvPHoLd8R
	ybKSkJJjyIW6Pfs0lLwz5oAOgnyruNtE=; b=IW0q/1uDqozaEB2pNJp3g6FmrC4
	4o8gO7pSyiLjonm0Ikk04N+r+/y/v74T+/IouunKq0c+ZVsi288jhtbQ4LGID59k
	2Ssi9Am1kB/EUAKtgl5I8wNaMK4a/iNdbzrrOlQq+zFj4MOJi2fl1tbUFMzkfe0g
	WDOGplxR9zq6JIDszGj7ivT9elohQar60gPyGKDkM/xeo0bFbBWmuIqLkFn3R9oY
	kZgG2GiZyPJ0IMCIX6pgq+6UO6grsI49CAZi8FcwzpUTRKzDe0cTDgOFaWUaDxP8
	O2YrvePD6xky8wJcxSiUdRGvSHEtWZGzLwX+cZKNnPRDGTz+pwX/AjFOcKQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chyvf3d14-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:46:03 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-358ffccebf1so500030a91.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772091962; x=1772696762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ukvPHoLd8RybKSkJJjyIW6Pfs0lLwz5oAOgnyruNtE=;
        b=jG1EnxYoS/RrJkQTcVX8UIRLhbNflAISi7mcz5RoZucdyKWAkOJWC+oUaltRo+aLMj
         PfTLuTIxrN1fLYmiS3IDm0Rqwrg8ZliefWbRTAvMW9WkNOygvtnyqbop7CTOuWNGX+zy
         QxXr6TgpY5nlcjaqzx6Kk/2Cojqp+LpXtrIb0hRDWhayKNMC4Gyw6AUMj5pzfH+7Z8Wn
         YlLlGYUCzplfGQ8I9dalUXHrmXs89JEbjDOLjsZrtzF2+EoRLxmW/hDF3fDAejw6PSyS
         1sTM9xzo9F3PQAiRBSobRQz8WgbE1nbr+hN6HIHSJBs6VAIzl9d5YfihD//6Qj7w0cBy
         +zzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772091962; x=1772696762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3ukvPHoLd8RybKSkJJjyIW6Pfs0lLwz5oAOgnyruNtE=;
        b=kQTqMt4c5Yqi/Vednzafu6VM/XNk2GXuwNPzpEASBPoIMu2oNK7BzTEfMFb5nF5j7p
         4Hao6gGC1m5A1uVR6NvOM6clPI09cSX6a/A6r3y7/PNFSigBO1k7ehMXW6qGCNTUG+HV
         X7Seynz3YUld1nmh3rSUPgVBu0CpBntB46ctlYfZTtQ9AFx+RmEpidsViPJNkiHTqoBl
         vc2A+w5dzZDTC/zFwENCCfUAypzbR2NmV/qZqhlLHQpUPgMBOQrCfCBi18qXIATje5mp
         mtBYY0VjHevYVmZ8+0d16Li0Uem7Ye/B432/qF3K+ix9IAG476zKga5wYFpvpWq6bXUy
         kAww==
X-Forwarded-Encrypted: i=1; AJvYcCVGF9Jnk3eTeaSK6mPooQWYvjpUm/azHZmY14uqn16KCZXLRdawGM4D/eUkOg3GHbb0CDfgoIQTHiQt@vger.kernel.org
X-Gm-Message-State: AOJu0YwKyU4sFB4QT7JDE0atKZr8YpJFWYGFUvt13zzr3SysKkPUOlyk
	YmKMhqgYliEdqEt8Mj6tGfAghjFjq6u7EM+K/xrXIERHALO5yulTL6XqTA7/Udx7TTl1EZ2Hq4g
	kiAOF22v9re9IE+HmXhlfs1RvDtQf4MBJXk0joHs9jE4MfhILiuu0bO9iuWnwpBv5
X-Gm-Gg: ATEYQzynirXtRfjX+kIA7xcMa/HJzY+eAfwEzsLEbpznDQhteDanXJUZ7sVLlYmvpwC
	fnHhlfC5BZ8eL8BeWObTQWnyAsr3WkutLrOXoJpJWPsh3WmUqXKDnFJ8b/Nl4U03X9T48G3hJab
	I1C2yuvSU5CCamk7T8Zb+Mm6VC/RgQdQCNIoQTXbN6cjn+456SEdJpkmnT0f9XrpUYdWQRKrLW1
	sEQHVyegA/Vd/3D5NqpaX0n5MzR670xEE6cJ7T68/03hOh2IRDG+iOrDehqvmYyC43UQQy2sqEb
	ztNAnJYwA2kMJEBu2l+kwydiSAonsdNbqLIbq9pW1whEX2UJX4WsU3rYu1unX2QI0GIdZwnlFlG
	2lIJkTtEEpsYVIt3PIVKJFG6Br4CSIrGb+uznuIWd2iwmDZjANZZb6rTq
X-Received: by 2002:a17:90b:2681:b0:359:2099:da20 with SMTP id 98e67ed59e1d1-3593dba14a9mr1911840a91.17.1772091962055;
        Wed, 25 Feb 2026 23:46:02 -0800 (PST)
X-Received: by 2002:a17:90b:2681:b0:359:2099:da20 with SMTP id 98e67ed59e1d1-3593dba14a9mr1911818a91.17.1772091961569;
        Wed, 25 Feb 2026 23:46:01 -0800 (PST)
Received: from hu-vjitta-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359034bbfd4sm4891168a91.10.2026.02.25.23.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 23:46:01 -0800 (PST)
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
To: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        bjorn.andersson@oss.qualcomm.com, bod@kernel.org, conor+dt@kernel.org,
        krzk+dt@kernel.org, prakash.gupta@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com
Cc: iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Frank Li <Frank.Li@nxp.com>,
        Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Subject: [RESEND,v8 1/3] of: Add convenience wrappers for of_map_id()
Date: Thu, 26 Feb 2026 13:12:43 +0530
Message-Id: <20260226074245.3098486-2-vijayanand.jitta@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: MmHZTvIkNSxU68V0Gi6CI61zXKGuTFyO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA2OCBTYWx0ZWRfX6SJiZFQjte6s
 sUPqeIrZGaq/NNx2UWHqyuSTt4TbKi0FFvsC0PPxOVVISPSEU3KdCfek3VhzPypjtyISgaefryF
 1RN5khY1k4+f73eXUhDzo9jDABwZZwWq/XP2rN3W9t9b/7SYqfA6lp8/z1l0XR2eL7LoA0giKRS
 Y3VBfuQD+OsZEY+QRAqqWmoYqVY0wixjcs9l/dHEZfaebR80AYwL1M87bpHVzslI2bJQiKTyMN5
 RdO7j2S53Q23IFO6VE/HjXGu4SbvTplajg9Y/jldu8d7+H9bZZWSR5de3Cc4otypo3Ru6syHI6P
 DBoudTC+zfflXgEcSOMyLHOshAMVvT4Ionu9068wmnfnhaudMFi1tz7LzQwkKHqFxbUmAqiFpHU
 QAaZ58XLC7YddHpGZ+UefafE3o0WIGK+ZoqVxU4muNzidN5YWqEcNkfSVTk+YIJWutj5NRBsztx
 q6miKBEpILrMAarctSQ==
X-Proofpoint-GUID: MmHZTvIkNSxU68V0Gi6CI61zXKGuTFyO
X-Authority-Analysis: v=2.4 cv=dZWNHHXe c=1 sm=1 tr=0 ts=699ffa3b cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=7CQSdrXTAAAA:8
 a=VwQbUJbxAAAA:8 a=8AirrxEcAAAA:8 a=EUspDBNiAAAA:8 a=wrOk0Nx1w3hKWqktZycA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=a-qgeE7W1pNrGK8U0ZQC:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 spamscore=0 impostorscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268645-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,arm.com:email,qualcomm.com:email,qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6821D1A2069
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


