Return-Path: <devicetree+bounces-232560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6C5C19025
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:25:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6190518936B8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3EC3164D3;
	Wed, 29 Oct 2025 08:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ey8pheSq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FVgNfA3c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE24E31280F
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761725725; cv=none; b=ouNjZ8yRuN2A144HVcdV/JF8cLT2MZ3FK5M78mGQ9BYTSOsP3mqsApXRuOsvqtxuU6lDcp635OaQiVCECoypElCzV78kZlurjzZqpLn8+NQZQJuHltnDJMlXjX6391cX5y8WXeomU3vydBnb/j6oY8d8+lXw7Ke+dnjanJs0nrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761725725; c=relaxed/simple;
	bh=K2LoXFp5LEsul4Dhs9SgA/B6uZWNPqsF0H0RJ9W3v0k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jf0NhIFxhCUT5mrrQsnl+giHkPwpPcA/y+g6c748sHbXHknU/mxI+aTHV5/yWEX9DLA9U37vVkDgxtUJWJ0GWRWfPhLQPMiWK49YSdA6CGUlduNG0qdFm28QSlxKtBLHNQcHjPm3bbJXXvTIliggQMs6neQJBfBl+BwrSOaS3Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ey8pheSq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FVgNfA3c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uwdm3676847
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:15:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PdjZgcVhb+CKLTqPGYpWJTYAfCGN0Bjw2rKq/3wysL4=; b=Ey8pheSqW3hcRqTq
	5dPoZ7fPzXDerjpe2mqVCKyksBvqB8y5GFC7kXO8JtrNdg1cwXqLu/lTCHmXFbxe
	04uKAOLDcqGwwQg78bHNVfGKxanlA5Km06wOYPpT2oCW6BY1Wj+AkvYDD3Y4cb/v
	p4ELU2Si4Owkh6kK8i3IveaFn6dzquah5j+uA1C9KzA2Lpwih8kRN/m9FBvP2mj7
	2px/mwh4JbAVuaozppJ2bS5zA2sDEaes5xVpNEKb52/bCNusE4TrrnJEr8GySLZm
	qjfqQqkDKMY+od2D3c7yglm/o6Rdkx1/HxXVim1JBO23nNSEsXNMIZQKzGU/xlV6
	wV5YRw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1hqq3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 08:15:22 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b6ce25bea3eso4912738a12.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 01:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761725722; x=1762330522; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PdjZgcVhb+CKLTqPGYpWJTYAfCGN0Bjw2rKq/3wysL4=;
        b=FVgNfA3cILa82NSmiTv8KKnBZSpXfoDaSpSDKlNaTZlCm+dIdXoRNcbjHrFAgEIeeV
         SC2G/VeY8x67cLcWneZOIX6Bip7utnIpIDlqerqb+M0OhY5fCvLZrEj0CTfC+lSx4/ye
         QtXiPdMwcped7Bux6krT4RIpJijPRmnuZWkOHAYggh5zwKQ11ZBeJJX+SMS8cCecAG1C
         IlpF0IPHi9rJF2UlMzRVF/7sRbn1rkkP4ozswDVr5H2nsZa6JyKK3UocwXAFe6XFt0e9
         VOtA5a6gBUTZY31WTiDmkXWI7GaEzqusOsuzWvmhhoMIurmwIRZB3upoGXlbBGWd5IEN
         lmkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761725722; x=1762330522;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PdjZgcVhb+CKLTqPGYpWJTYAfCGN0Bjw2rKq/3wysL4=;
        b=tZyCbngPbEa1S/SYdSSqi8JnCZjD74EXa9l/McC4U72Mn2hUivdEU5Mu+s8FueCDxg
         UmAJHAep6iFRAIduM/0lArHmbVA7rs0kEJLqJcqp4WHdkAZFG7qT4gqYx9MwEea/53wf
         E1ijKb8oOWtwpQcNycH5O1Sw5nQ93XTrWKg5prmT3OgEOyvcVInxR/OLmY6Gb17uhSqA
         efX/BRUrXD3aMR2olJc/IJxsrYgGrW3KC1KTCOIlhK1UKf3PCWU7GY7QaAV2rhQwZkeU
         V4wgkJ6aWiRDA5iaEG1gpV5iruJHqKOKWLzaoKpiXVGIpuqkr6eiuGXB1JswzDCqhJ51
         FIfw==
X-Forwarded-Encrypted: i=1; AJvYcCU8ECu3rc6KAKGHxAG9x/izb+JhaPRDpcbU4FXSUKUv9Jhb7pHE15d70B1WK0VrVnyh/1I7FhEqX20i@vger.kernel.org
X-Gm-Message-State: AOJu0YxP8rc1/5tmhvVdw+bFDiqMHbPKhaLvO5T+3C9Bu3b5e1hHCsCZ
	C/liwvyWiQsz0LvuesyRXuCEO+6J9nhcHvOZ3YwXJGMX8YLKcvfgSJDegrCPFOosXfDtB8C+ZDA
	TluaeV+xBq/+5z+vUD+Vrw51B5u90FzcsrFqWdOAi4410/exp1sax0cq/tBhk17tl
X-Gm-Gg: ASbGncsApJFLQUVDV8jnEWVMtJEkaw442OcTNch7YH/sCqFlR/JFWGFlUs+ANituWUJ
	nQzJwejfK+3tHVomxXRD2rlkEznSYjFd/b9n3jqVNZFlOcaBuqcsazgejseRl8jH8Ls6FMZQ/17
	2rR9lGe8ExW5b6P2OJVL6I02KSpejZ4GvQKVO4m4ShraFVwqjMpPop3Asrw+iO7+G6D1jDa+CSo
	+B16UQW7CkOEKP0t8k8ADzxf4jYjXSfWPlhCaR/VgTe/IhKF7fA3gRlADTddUlL9JZj4yEcVkeq
	FTSb1cKc+fSbO683XNbdlBWgHm7JpbRnQyjcFlUGKwEoT2+0Tbl0sQFv4GjeQEKjbbezSXqTT2m
	iZBkkDuZgqC95sI1DrCsvIwNJ8X7FhlV7EykLpgJNrNpXOxKfag==
X-Received: by 2002:a05:6a20:3d1c:b0:340:15c1:61be with SMTP id adf61e73a8af0-34654ee8cb2mr2526714637.32.1761725721690;
        Wed, 29 Oct 2025 01:15:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE64M7wk+Oj9x7dht/3Pt3S0ux+Hf/sJAuE1OfAONy3A7MeAzwrn5DrOGPUQ2PkjXoO2Sx/Gw==
X-Received: by 2002:a05:6a20:3d1c:b0:340:15c1:61be with SMTP id adf61e73a8af0-34654ee8cb2mr2526675637.32.1761725721142;
        Wed, 29 Oct 2025 01:15:21 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b71268bdb2dsm13187901a12.5.2025.10.29.01.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 01:15:20 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 01:15:09 -0700
Subject: [PATCH v2 1/2] dt-bindings: mailbox: qcom: Add IPCC support for
 Kaanapali Platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-knp-ipcc-v2-1-8ba303ab82de@oss.qualcomm.com>
References: <20251029-knp-ipcc-v2-0-8ba303ab82de@oss.qualcomm.com>
In-Reply-To: <20251029-knp-ipcc-v2-0-8ba303ab82de@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761725718; l=2948;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=K2LoXFp5LEsul4Dhs9SgA/B6uZWNPqsF0H0RJ9W3v0k=;
 b=51ZgfhEAcqJjrryURu66ZHCinO3k9oxAoDIDwm3K+2XDq6ZUaS7bBz2Jqm0pVUICfNTeZGtN5
 hCtk+PaGlJlCuzkMTPbqbeetIXLeEWk88ueTrDi4648bvXORP2nZCWb
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=6901cd1a cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-s8QFGE_8KqGwSZzAHAA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: zYwRLWHRKa7mwNVgREfoCPkBUmrvClcB
X-Proofpoint-ORIG-GUID: zYwRLWHRKa7mwNVgREfoCPkBUmrvClcB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA1OSBTYWx0ZWRfXwzUG91O85PDQ
 uZ+pJ41/TIkUuPp+eg7gz3vScDe+kyfu7TWuz8/ghb80oQmMk/lAL26TLsso14r6myQSq87LAVL
 dOSQgXbY2THGAbg/nIiYqi6TvLoYr8bWpvi24y9BbhBZg7EqJjB3THKoG2PhEHFwVoXOPMzIX5W
 x7mt/1UuBMN034vmnMabcLdRKF69vzcDgpeeqvmsk5SdvJRzhNRis5M+0xgyzRoHwKomXa6a5SD
 cw1eh5oAFDtpJbadTlfsrkTFLtWq+PVr9Q3l0S/GISDxcdZ9Jm0p5/bZrsEH5yFVzVu+jLZMvMG
 rJ5ZQESltPpQ5Fh+inosBlrlHAQC0yTSkNpFpRKULHYd4ATuCAQRYJnxzkhHA+UK0nI9vFXwfIS
 xtwdVNlrfVf/t2KWZ/05IBN/BnrGAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290059

Add the physical client ids and binding for Kaanapali platform. Physical
client IDs instead of virtual client IDs are used for qcom new platforms
in the Inter Process Communication Controller (IPCC) driver as virtual to
physical mapping logic is removed in HW.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 .../devicetree/bindings/mailbox/qcom-ipcc.yaml     |  1 +
 include/dt-bindings/mailbox/qcom,kaanapali-ipcc.h  | 58 ++++++++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
index e5c423130db6..ee3fe093e3ca 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
@@ -24,6 +24,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,kaanapali-ipcc
           - qcom,milos-ipcc
           - qcom,qcs8300-ipcc
           - qcom,qdu1000-ipcc
diff --git a/include/dt-bindings/mailbox/qcom,kaanapali-ipcc.h b/include/dt-bindings/mailbox/qcom,kaanapali-ipcc.h
new file mode 100644
index 000000000000..b6208ad155ad
--- /dev/null
+++ b/include/dt-bindings/mailbox/qcom,kaanapali-ipcc.h
@@ -0,0 +1,58 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef __DT_BINDINGS_MAILBOX_IPCC_KAANAPALI_H
+#define __DT_BINDINGS_MAILBOX_IPCC_KAANAPALI_H
+
+/* Physical client IDs */
+#define IPCC_MPROC_AOP			0
+#define IPCC_MPROC_TZ			1
+#define IPCC_MPROC_MPSS			2
+#define IPCC_MPROC_LPASS		3
+#define IPCC_MPROC_SDC			4
+#define IPCC_MPROC_CDSP			5
+#define IPCC_MPROC_APSS			6
+#define IPCC_MPROC_SOCCP		13
+#define IPCC_MPROC_DCP			14
+#define IPCC_MPROC_SPSS			15
+#define IPCC_MPROC_TME			16
+#define IPCC_MPROC_WPSS			17
+
+#define IPCC_COMPUTE_L0_CDSP		2
+#define IPCC_COMPUTE_L0_APSS		3
+#define IPCC_COMPUTE_L0_GPU		4
+#define IPCC_COMPUTE_L0_CVP		8
+#define IPCC_COMPUTE_L0_CAM		9
+#define IPCC_COMPUTE_L0_CAM1		10
+#define IPCC_COMPUTE_L0_DCP		11
+#define IPCC_COMPUTE_L0_VPU		12
+#define IPCC_COMPUTE_L0_SOCCP		16
+
+#define IPCC_COMPUTE_L1_CDSP		2
+#define IPCC_COMPUTE_L1_APSS		3
+#define IPCC_COMPUTE_L1_GPU		4
+#define IPCC_COMPUTE_L1_CVP		8
+#define IPCC_COMPUTE_L1_CAM		9
+#define IPCC_COMPUTE_L1_CAM1		10
+#define IPCC_COMPUTE_L1_DCP		11
+#define IPCC_COMPUTE_L1_VPU		12
+#define IPCC_COMPUTE_L1_SOCCP		16
+
+#define IPCC_PERIPH_CDSP		2
+#define IPCC_PERIPH_APSS		3
+#define IPCC_PERIPH_PCIE0		4
+#define IPCC_PERIPH_PCIE1		5
+
+#define IPCC_FENCE_CDSP			2
+#define IPCC_FENCE_APSS			3
+#define IPCC_FENCE_GPU			4
+#define IPCC_FENCE_CVP			8
+#define IPCC_FENCE_CAM			8
+#define IPCC_FENCE_CAM1			10
+#define IPCC_FENCE_DCP			11
+#define IPCC_FENCE_VPU			20
+#define IPCC_FENCE_SOCCP		24
+
+#endif

-- 
2.25.1


