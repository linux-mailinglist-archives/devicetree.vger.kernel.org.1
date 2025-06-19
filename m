Return-Path: <devicetree+bounces-187581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E066AE0883
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4B771BC427A
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 14:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8305F21E0AD;
	Thu, 19 Jun 2025 14:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WdFM46zd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCED92192F9
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342823; cv=none; b=nn/VqBkDQT1/g15Mt12pDTMvguz09a2ks7iXTMpxEGPh3cVmoX66cfPcdFoET2WkHtv19l/C9INVBuoPO7/rOr8qHJKXntQuBYV85DQOXkcOBhNYoQ96ZVD6XDH7b2zFzEyxw9C0ZFe0noApaxOGC9qED/8uMdBmI7SxX9mD6N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342823; c=relaxed/simple;
	bh=WZPx7ODDYg/ByFlphyOaKQFhw4U4+yp1fk/ASZyLIfU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LDkJyloe0toikzm+ZEzBqftqAnk1oiifXYTo1QGsGknOMcn/yLXoR6eDC1mk+9Y091x6K8y4Y2iKWV/VpHna3XcSlSyCdaOBbi8vWGL4tdgj2NvWx65s9j7lICEujuc00ezuOsw78BRReZq+T38lFR0KRm9Zl+oKkzcsLjxngQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WdFM46zd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55JBuupt006020
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dfqfdFFd6hO
	LjkI/bPWzqK0d9oMs23nZkoNASRLLL/I=; b=WdFM46zdwxrkoUsDJN4nz21Bjft
	prspGVpPp20Erp9z+3zC6WJdQZtEfKHpicfUE8Qdr0+Lh9RIKDI7c1LW1M+MJxby
	UcjPvSoPjZPnhg0132BAmrlOGBXwSfgn3DCqY9U7cpDuBt4jG9QGXwIxVR0pfJ5c
	Dpig6pYAcUpNXRzzRcFUPnrpcDEe64PxqKyHthB+YPa6oMnMCPfVIPQ2iQM3cSCZ
	taoeVTQcCHBxTX1WHJGE+8igxBkS6t15SHBl/7EJ/uoiY3Y/5QB73mCHaHuCVdb/
	H2ykimBeviu4ZNQYMBGGGa5v3ecRq2BhEgW2rKKmIsXnT22m2yJgLVvyz7w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47c0rvkdx6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a762876813so11313461cf.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:20:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750342820; x=1750947620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dfqfdFFd6hOLjkI/bPWzqK0d9oMs23nZkoNASRLLL/I=;
        b=ttKYSL76LgLBPwFF9GktcQB/Cn9q3JIKMJmEqUxv259yx9oD08ZjeqxhZUV7y7eb20
         WBvNDoS8chfw4HZDDrVnqRrkYd+IOj+JNFc9S8decCp202F6L9O49mUy8TL4xV+IaAk7
         W16JRKaHc+3+j975t+49400/93Hx6ycrduOZgKx+KJjNxxHIU4WhMhFWLAPtU0hW8U/0
         Z6/V6ROAD0+VP+WxJT5EmMf9sKxO06IiFW36IzpboocPZqZZd7+JPHRady8q5WISadM/
         8kMODjSwFy7CWO00zsclhGqyZNLX562HAUrqA9fOsxF4yB+bafd3YrT8V//hVCT3kY9D
         6cDA==
X-Forwarded-Encrypted: i=1; AJvYcCWhaem1u+Q11UlNpc6/+ru9pxulQ83Ld+PyXUt9S03m2BpsmHZYBnARhu3tRBMwY/dsQd6H+FgaaG61@vger.kernel.org
X-Gm-Message-State: AOJu0YwZhTMy1WYy4HCP59tSjuPaviidlxCLaZg94s70xjmP1NQUILsC
	38R9ila9vro3TcqPpJCcSkT+KCoISWRH+PAnBKPqupNSm8IDodxFaBCWARfFUQUICQJjVw7SgBr
	rDXncnPmrtpq8zXaonoZxrpiHgcwikmhe0totV/IqrF5/5eex4a4np4HV31L3rvLdEW7jee8r
X-Gm-Gg: ASbGncs8mWNYM9lsvfiOSVHDSJCKm+Mn/YQH7lOJjk3PEVfT6cAVeAu1PdOaIsfk2uM
	dB4EAMoEmv3hQSfe5hi3+z2L4FbR5QrebWojgu9+/wiSXSSvk/Cg2a0iArSWHCLlkjNgDMl4eHg
	sGntG+bfsaaLR/BEA3nNmarH//g2pgOAmXie22K0+BqcWStxxW7GIOLHwf3TRL/AVu/GdlWQUz1
	EHdQgkuUKvsPbeExMVrfJ60eamQUWqhEBOmtT65AiuBgn1lyIcHUJKQgbYFq2weGAKALnVpP2HR
	Ajwpars9pOk/yYZEw+2q1QtBPcDGIF2Myo65+3hSW74QbnErkVGAKuxD/OB4Mw62tGljC+Gj+gX
	v
X-Received: by 2002:a05:622a:591:b0:4a7:1402:3b1 with SMTP id d75a77b69052e-4a73c47e3a7mr346420121cf.11.1750342819381;
        Thu, 19 Jun 2025 07:20:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdJppoZFl8YSzXvJDqaJK5WG1HWlRETG+EOAiS59sJAnQr7pWnlM2Sj2e4t4GQwlmTMLXwew==
X-Received: by 2002:a05:622a:591:b0:4a7:1402:3b1 with SMTP id d75a77b69052e-4a73c47e3a7mr346419541cf.11.1750342818704;
        Thu, 19 Jun 2025 07:20:18 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a58963561csm7254312f8f.47.2025.06.19.07.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 07:20:18 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        stanimir.k.varbanov@gmail.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 2/7] media: venus: helpers: add IS_VPU() and IS_HFI() macros
Date: Thu, 19 Jun 2025 16:20:07 +0200
Message-Id: <20250619142012.1768981-3-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDExOCBTYWx0ZWRfXyMO9OeOynoca
 6DkJ86Lq4ByjiHFEw26mdQyQJ5R2vmaom0Nu0HqbbSOsGOZFICnYsWQDDjSM3USQOK6Gi5hX1Pp
 Gvno4IxZ8DoFQvEj48ycQthYSWY/mQX7XivUQ8UhrpmZ+ISC8YlWZiO+55snJ20peo2KedTNs4/
 CGC1/evQR/hgYaw/yOuOEgCk6qM9pCaQFTdP50fR+4Bgz0TV+BPLNUu3KlmRjif++UqHf+qkqQj
 cTKdDqqTClZtawaLUMZcJ/caWjMWwjjCnrXt8bEgFUpP8EXMryWwcxPUkaxiOf1xLe3wkPcrU+B
 HKaw/bF5kGMAdyxVWSgrSZfu+Jxa0yEY/6YIQGK1C1ShGdmhH+atBl2dQrHk3nlo8M+QVTSeEyR
 xZN161R33Ou5B66tZMicIKWUyET/Z5Wj+vxXpeAul8ZA5LXCzE44lLX28WDidoy+fT4EeFq3
X-Proofpoint-GUID: ZZwoXWIn1SR2JmdOrzrUi-xutBMpZMFM
X-Authority-Analysis: v=2.4 cv=btJMBFai c=1 sm=1 tr=0 ts=68541ca4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=dpeIgEAchGqUyyyY_AAA:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: ZZwoXWIn1SR2JmdOrzrUi-xutBMpZMFM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 mlxscore=0
 suspectscore=0 clxscore=1015 malwarescore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506190118

Introduce IS_VPU(core, ...) and IS_HFI(core, ...) macros that abstract
over multiple version checks for VPU and HFI.

They reuse existing IS_<TYPE>(core) definitions.

Allowing up to 4 versions is a fair compromise. Any more would justify an
interface.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
---
 drivers/media/platform/qcom/venus/core.h | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.h b/drivers/media/platform/qcom/venus/core.h
index b412e0c5515a..b9de27dc3493 100644
--- a/drivers/media/platform/qcom/venus/core.h
+++ b/drivers/media/platform/qcom/venus/core.h
@@ -528,6 +528,29 @@ struct venus_inst {
 #define IS_IRIS2(core)		((core)->res->vpu_version == VPU_VERSION_IRIS2)
 #define IS_IRIS2_1(core)	((core)->res->vpu_version == VPU_VERSION_IRIS2_1)
 
+#define IS_VPU_MATCH(core, type)	IS_##type(core)
+#define IS_VERSION_MATCH(core, type)	IS_##type(core)
+
+/* Limit this to 4 versions. Use a helper if >4 versions share logic. */
+#define MATCH_1(CMD, core, a) \
+	IS_##CMD##_MATCH(core, a)
+#define MATCH_2(CMD, core, a, b) \
+	(IS_##CMD##_MATCH(core, a) || IS_##CMD##_MATCH(core, b))
+#define MATCH_3(CMD, core, a, b, c) \
+	(IS_##CMD##_MATCH(core, a) || IS_##CMD##_MATCH(core, b) || \
+	IS_##CMD##_MATCH(core, c))
+#define MATCH_4(CMD, core, a, b, c, d) \
+	(IS_##CMD##_MATCH(core, a) || IS_##CMD##_MATCH(core, b) || \
+	IS_##CMD##_MATCH(core, c) || IS_##CMD##_MATCH(core, d))
+
+#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
+#define IS_DISPATCH(CMD, core, ...) \
+	(GET_MACRO(__VA_ARGS__, MATCH_4, MATCH_3, MATCH_2, MATCH_1)( \
+		CMD, core, __VA_ARGS__))
+
+#define IS_VPU(core, ...)	IS_DISPATCH(VPU, core, __VA_ARGS__)
+#define IS_HFI(core, ...)	IS_DISPATCH(VERSION, core, __VA_ARGS__)
+
 #define ctrl_to_inst(ctrl)	\
 	container_of((ctrl)->handler, struct venus_inst, ctrl_handler)
 
-- 
2.34.1


