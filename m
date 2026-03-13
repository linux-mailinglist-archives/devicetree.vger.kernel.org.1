Return-Path: <devicetree+bounces-275241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALi9DFQPtGlvfwAAu9opvQ
	(envelope-from <devicetree+bounces-275241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:21:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D639D283A9E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:21:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF2CB303E1CC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60023932EC;
	Fri, 13 Mar 2026 13:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NVLgfB0Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f/h423pr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971303932C8
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408028; cv=none; b=N2rnU0FPgSMAXzTvlRVk9u8FGK7p2/Zks9i14Fs6hcark6OzQnnD+IDGRQNx/rKvnM8U0PmUPmHCpSnBPwjPAR0cKEJRWkp0kdXp+vTLyQ0enetgOq3q89ssFc5Ya5z6CRuaBxtovCtJ2ULUqTe8LQs7RqfRtrz4FHzbXy+A4ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408028; c=relaxed/simple;
	bh=wWAWxa+zvQUMOm9MC7nJeUbKuYl5szXsHWj4/y4OmFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lgOPUGNm/CCRYDXUWs1aCL1xOGzhHjr9WldCF85XVv/mW6PIiFYOi4eKOtarw7FNJBquVhjQRddyd7FIy2J0nIZOdSlunF+kSnogiugd/uPZFLLuKTNLbYEz7fIS/gC4g3k4X/YSUEH8ywaP9c30acDCYZ5go3WL1pbB7kOUxeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NVLgfB0Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f/h423pr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DA839V1749335
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:20:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	78U34vjJm32V0mthUVg9KTTl0e12pM8pLb615+vj5PU=; b=NVLgfB0Ql0Ov2eIR
	TH1I4+IGiCTNTDjm3qtFsJ95ZNLjOassi8nrABjUSaXkvWKoYpv9jxBnfoo/rjaX
	v1CorF80A73hZ648GaHtVPEwPV6t3EG0w3AjZa1uaNCKiKG+Hw3owUQZIBAO2nF8
	PXgXgPS8gnPtCyEzwMnKOyT0iOwZo+30zzWMPq3X8XV8IrTPORyvq0AFSkE3eqKc
	4jhE9m0nswq4jjuuQ5BWQqVZ1PGVbr20KXDM8afTDTkTY0lWT73c0aiKLTEeWXVm
	uO7kfu6fj8onAha6oVCpzWzxLAMiVUCsOO4L6IBt73DsjDPPuVGZI0nex/tDd1Dc
	0dorkQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvgj6gk7e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:20:26 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-829fe177bbbso1121372b3a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773408024; x=1774012824; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=78U34vjJm32V0mthUVg9KTTl0e12pM8pLb615+vj5PU=;
        b=f/h423prek+zuRZSE57mpRPLGjn4zf3aJ5+Y8X/NMD4kQXiUvG5xjqOVB7UuzRg49w
         tbtU0+H8XrFzhsS81kOSCfX4mHPtbvUDW+HJ8DdIf56E4rcGy8TSdAGOXkTIaksrAV/l
         rCbICnze6ajMdmp4l3PrMAPOscC9KwZrIfVR1m5lPyLf4F0i0InEucCR5GVCzsnz2hSk
         G0MDIsLvTP508scn4NzIhfGjTV9NnmkQcj7kAE9jkaPO8r5Azrbxqx4m72BK3Nis/sav
         OPquXlKKRwHgfTiAD3/vwl3gCaIhkQFaOrIFbYgkB6kcjOt7U64otX/vPqwp9+k6iE5K
         UGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773408024; x=1774012824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=78U34vjJm32V0mthUVg9KTTl0e12pM8pLb615+vj5PU=;
        b=Jbozo17FRjhB6jQuGLx7LzbIRUO4/Gr3Tsrb5J+Cx6Bwm3RT0gbdPO4wvZStM5I1+h
         +t6KaIG87Dn7/YkM6xgAsAooFHwm9UMjcQzT1IZmx/Ohqiilhv8fUmIanTOrRAhkWmZH
         e5EcKOKBuKbU1g3c5XMuu21xlSH+iigQcBVp4xp9oCoIHLlrAyRVRulrUZM7s7P/vj4X
         4dS0/YuM3gkVTSQq8AT2+w6LudwdgZe3Wd/C7HYXxT7PN0FRMBQX6Evb5+/dzI3Yu/Jt
         G+g84+SqF55VyVPmb8UR9rIHpYqIEvv4eyH4AtB4JKBt+ptjLTPmdaNUC11qhjbgqWIa
         zW0g==
X-Forwarded-Encrypted: i=1; AJvYcCVwoe0Bo6omSYcjOdYJ5roA5nbFcKItY/NVPjNcl6sRFR61orsmjmYgsAPFE/goEgFxKE8qmowei+RA@vger.kernel.org
X-Gm-Message-State: AOJu0YwQcw78PU1WYfQMiEAtZgZnqQSVnLB2JtRJ9OpAd4Kb0hGziPRw
	TTwKAQWspDPIMVl2vpiczaxUyLmTBXVJSJl1fOGKcL+Mly3kjVBp/4VDhBuxcKYYu4Sn0AtQ1Yd
	hBtiiRsvgoTXbz6xiViUnsOh/BYdh81rZHt9bSXULCTtGekbjP2vFZNW3lPt7dHSW
X-Gm-Gg: ATEYQzyO0y+52gV3WNBs0Pk+hltfJtcMeSuwlzqG7xjF2/6VLRo2rMwMWDURSrBKLpt
	OznrSEQZ2Hvaky1mRfvpyh0gOSDqMHoEMisPrp7XOSS2VTT/SBZ2/8tgyHl908EDtNZVS6vMvZz
	0JC9W1ODY/On+doxwDEwjQYL92rKfLDjC3H+sKMj5DS2mfqOwIs261cG2ghoQ8WtbpQENnZnZlP
	0if5AP6QmjmVdTefXxOxh7n/O3rQDK7nds7vhOflMfFAhJP7QOfH+Kej77OMD8bt2y+zgM5Zg3w
	r5CB5auP83O38WirQPaFi6E7hD6ne4DKofnWiqFA5D30fs6V4sW0pbqRBYQU8mip3yECpeO4LbE
	lQjMbrLAAc5zsHZIRgg/syZtz7OeqMQFVHvwOLB3n2PYI3V9UX22/Y9Hc
X-Received: by 2002:a05:6a00:368b:b0:829:9ea2:3e17 with SMTP id d2e1a72fcca58-82a19703e4fmr2544381b3a.9.1773408024078;
        Fri, 13 Mar 2026 06:20:24 -0700 (PDT)
X-Received: by 2002:a05:6a00:368b:b0:829:9ea2:3e17 with SMTP id d2e1a72fcca58-82a19703e4fmr2544326b3a.9.1773408023414;
        Fri, 13 Mar 2026 06:20:23 -0700 (PDT)
Received: from hu-vgarodia-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0724407csm5775254b3a.8.2026.03.13.06.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:20:23 -0700 (PDT)
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 18:49:37 +0530
Subject: [PATCH v3 3/7] media: iris: add iris vpu bus support and register
 it with iommu_buses
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-kaanapali-iris-v3-3-9c0d1a67af4b@oss.qualcomm.com>
References: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
In-Reply-To: <20260313-kaanapali-iris-v3-0-9c0d1a67af4b@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773407994; l=4125;
 i=vikash.garodia@oss.qualcomm.com; s=20241104; h=from:subject:message-id;
 bh=wWAWxa+zvQUMOm9MC7nJeUbKuYl5szXsHWj4/y4OmFE=;
 b=SqUxLVUKMivw1MUUvqwiRt9NY5AHMtKwGvn4xnwnuMUqvHBHdJ41Zo0Qsq4ulv48Pk/4VS7lp
 DFGja+GF+9aAQ5ru7BE3cxRxbhi56F34zFu5U0ozbzSgbSTFsEJA/l4
X-Developer-Key: i=vikash.garodia@oss.qualcomm.com; a=ed25519;
 pk=LY9Eqp4KiHWxzGNKGHbwRFEJOfRCSzG/rxQNmvZvaKE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwNiBTYWx0ZWRfX5FGCGGOX0shS
 ykhxYvKrhVovF0UGd/+XXqZexjLC907D/oTuEj283FKlAmAV61HYbMVdhzWGB3mxwRdOhVfXTzJ
 s2Zk0wMVFHbHTH5ES7SYCWzveVSCCiEJMWdV+ZbLGoBsV64zdTZmOdsyqKC216167He/RBzcvb6
 VPRS0wCMaKzgD+eYUcw0qv02HyESpwrbB0HNimMpGPPBe7QjL+vNLaGm+q/FBmNRgpVDcxL6GYU
 va12A3VKaTjgTs3eQBXR9R4iNQYoqMNCcRAyRqAM6rqq/NRyidjkcyoVFVyt3gfdgJA+cB0+SzP
 DMN1bkd5IQlN/oEvXei9f429nBvZvFAm6JLAxFGnCNvulUNraOpULo0ZYRjESi38n4h29AxwrSC
 qjHddBEEnI0MqpApqnbaabyDNcWALGl+NoIIMNo6gG0ShL/27X+Y+dqfS19g4FGdSj7YX4v0pIl
 YIH8E/4IyrZZeXVqUfg==
X-Proofpoint-GUID: Oxc_dvn74CgJUpXr5v6RX81p8fjNDsaT
X-Proofpoint-ORIG-GUID: Oxc_dvn74CgJUpXr5v6RX81p8fjNDsaT
X-Authority-Analysis: v=2.4 cv=H+vWAuYi c=1 sm=1 tr=0 ts=69b40f1a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=rA3BtQNSaToOiFj8iVsA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130106
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275241-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D639D283A9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add iris vpu bus support and hooks the new bus into the iommu_buses
list. Iris devices need their own bus so that they can run their own
dma_configure() logic.

Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
---
 drivers/iommu/iommu.c                              |  4 +++
 drivers/media/platform/qcom/iris/Makefile          |  4 +++
 .../platform/qcom/iris/iris_platform_common.h      |  6 ++++
 drivers/media/platform/qcom/iris/iris_vpu_bus.c    | 32 ++++++++++++++++++++++
 include/linux/iris_vpu_bus.h                       | 13 +++++++++
 5 files changed, 59 insertions(+)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 35db5178095404fec87cd0f18e44ea97cf354e78..fd5fb7c10da22ab548d359ca1f44504acc3d646c 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -13,6 +13,7 @@
 #include <linux/bug.h>
 #include <linux/types.h>
 #include <linux/init.h>
+#include <linux/iris_vpu_bus.h>
 #include <linux/export.h>
 #include <linux/slab.h>
 #include <linux/errno.h>
@@ -178,6 +179,9 @@ static const struct bus_type * const iommu_buses[] = {
 #ifdef CONFIG_CDX_BUS
 	&cdx_bus_type,
 #endif
+#if IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS)
+	&iris_vpu_bus_type,
+#endif
 };
 
 /*
diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
index 2abbd3aeb4af07e52bf372a4b2f352463529c92c..6f4052b98491aeddc299669334d4c93e9a3420e4 100644
--- a/drivers/media/platform/qcom/iris/Makefile
+++ b/drivers/media/platform/qcom/iris/Makefile
@@ -31,3 +31,7 @@ qcom-iris-objs += iris_platform_gen1.o
 endif
 
 obj-$(CONFIG_VIDEO_QCOM_IRIS) += qcom-iris.o
+
+ifdef CONFIG_VIDEO_QCOM_IRIS
+obj-y += iris_vpu_bus.o
+endif
diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
index 5a489917580eb10022fdcb52f7321a915e8b239d..2273243d1a80446233dd82dcd77444aa043ad064 100644
--- a/drivers/media/platform/qcom/iris/iris_platform_common.h
+++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
@@ -204,6 +204,12 @@ struct icc_vote_data {
 	u32 fps;
 };
 
+struct iris_context_bank {
+	char *name;
+	u32 f_id;
+	u32 region_mask;
+};
+
 enum platform_pm_domain_type {
 	IRIS_CTRL_POWER_DOMAIN,
 	IRIS_HW_POWER_DOMAIN,
diff --git a/drivers/media/platform/qcom/iris/iris_vpu_bus.c b/drivers/media/platform/qcom/iris/iris_vpu_bus.c
new file mode 100644
index 0000000000000000000000000000000000000000..9e9fdeb6e405aab26ecf5e57ca91fca6b8eda2c5
--- /dev/null
+++ b/drivers/media/platform/qcom/iris/iris_vpu_bus.c
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/device.h>
+#include <linux/of_device.h>
+
+#include "iris_platform_common.h"
+
+static int iris_vpu_bus_dma_configure(struct device *dev)
+{
+	struct iris_context_bank *cb = dev_get_drvdata(dev);
+
+	if (!cb)
+		return -ENODEV;
+
+	return of_dma_configure_id(dev, dev->parent->of_node, true, &cb->f_id);
+}
+
+const struct bus_type iris_vpu_bus_type = {
+	.name = "iris-bus",
+	.dma_configure = iris_vpu_bus_dma_configure,
+};
+EXPORT_SYMBOL_GPL(iris_vpu_bus_type);
+
+static int __init iris_vpu_bus_init(void)
+{
+	return bus_register(&iris_vpu_bus_type);
+}
+
+postcore_initcall(iris_vpu_bus_init);
diff --git a/include/linux/iris_vpu_bus.h b/include/linux/iris_vpu_bus.h
new file mode 100644
index 0000000000000000000000000000000000000000..422898cdf2f62eb7f4583d970a01c8776dd12164
--- /dev/null
+++ b/include/linux/iris_vpu_bus.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0-only
+ *
+ * Copyright (c) Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef __IRIS_VPU_BUS_H__
+#define __IRIS_VPU_BUS_H__
+
+#if IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS)
+extern const struct bus_type iris_vpu_bus_type;
+#endif
+
+#endif /* __IRIS_VPU_BUS_H__ */

-- 
2.34.1


