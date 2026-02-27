Return-Path: <devicetree+bounces-269179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMpSD0B3oWnHtQQAu9opvQ
	(envelope-from <devicetree+bounces-269179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:51:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6129C1B6346
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 07251300F7AA
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 286853DA7EC;
	Fri, 27 Feb 2026 10:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oqWusIOC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dycCb9BB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB77F3C198F
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772189499; cv=none; b=rgDsjnq7+UHqy3tP258v2MLDX0bhiaE654YHe6ZBP+XevPh6NaVYp78J5/z089i8FEDHYGimNy26ytsJtCD/OLqrOYa+HQC/L+aolZQwYbcfkG9j0d2ClGIfgAuprYqJKuQGokXdS4L4dN7c2vxLoQQB6XdJYPO+mgKDD826XyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772189499; c=relaxed/simple;
	bh=L8ABybu6ViLjwkGghEeaCGBxv4ozkKZEegQCa339Ve0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oLoq0dhiVp496LtnGYZci/5fXqNTMWibpxVoAXwggUX6kDOCaYFtxPEsWGu2erToE+YBIt910YpxUAX2uGV5keRo0ZEG7eI24E3h78s5kS8tGmnZFhcGuDkV/lNOMuba0O4Ku6z+fYQuF2fUFMRVjhCjf7MPYkQBZNVGmcin6hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oqWusIOC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dycCb9BB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61R9qdO72438565
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kNj1W6YrgTz
	QO3k9n1aoZP35kClENCGQC8Uac/tfXXw=; b=oqWusIOCOl5WWqhuSNPdEvO6Ms0
	P006FwnRuDnHuFtsy/x85edgQMrBSy8SY4kbjpP2Yj/QYLC6fdgOCXCyowaEywJh
	ICC/mzeJYrZvuj9CIFRwF0uMfsifAMcu3fpDc2ld0+HUiUD1Wu89rHR4aZGkS83X
	W9WTbqnxeL3IjAf6t7mof++sKxOaMTSeUrRVeC2mvmts1DGfveI636A9lkfsI98o
	2LcqqWIv8l+eTr4VQqUpP47gfBevlJ6v29qc3yLg5gFWC1XHspDt+R+/5orUJYWf
	JQGrHOtX8EkJSq+hpCKAxqTDxklBY+AJxSgEURhgyLxF6vetFEqkZ93q7kA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cju4r30wf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 10:51:37 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2aadeb3dee4so109706415ad.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 02:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772189496; x=1772794296; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kNj1W6YrgTzQO3k9n1aoZP35kClENCGQC8Uac/tfXXw=;
        b=dycCb9BByV2U4tUQVmX3d9HvMRtfvDqKTUt+xnAFb0orYUv3dA0Bg+WPrJ5aUgoaxe
         Gv9Y96kazQAPcZnNp1e5ndrZtONuy3jgTtRZcLbVvdsGzKmBYLE69FQCNzP7Wj+0LX5t
         tkPZHMglidrEjaTeZOQd3RY0kNOrpV5hBX65oHlqREWxQwhS8wPpzVFoqsTNWHq97nb4
         xt81gzMo/a+YIaPGvIn+zqVf7rbd/KjV/8JmA3g4/CigpGumGgO93qSnSocfLTds6zt0
         2w/5CVTBjr0RyEbxPwlA5QIv0VwiBX/A2Khv9UShEC4DiA5sWeFEf6d1FpT1qPTeUkH9
         Tdbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772189496; x=1772794296;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kNj1W6YrgTzQO3k9n1aoZP35kClENCGQC8Uac/tfXXw=;
        b=bteIL2p6nzXPHxWc+621jjQ06YbtiDngdVx0VFpIsHz7msCGQm/D3GsSdfBU7FumxJ
         +lPMGWcIHeh+ppWRPchcgzi8itvsleCvtYG9p8GRVBSCy38hchGrNCkqko4fHFh/mlQN
         NRZkmX11Y3bFWzpKQrvaBabdIK3QG58QV3Tze2X95RPYpucQBUs3s7UyWKKm4N74/vfE
         ACJqx6Pcpb9yfOk2SrVRgjrXnwy5rjaubq6jqPxBFHlxQErlD81+RtyhUhlrH2KRLXlm
         7LCO8zN16vAhRiQ5O3EXiF3enMN3rsa1lTrBevENZKRZ9IelnUOWaPnMfcJ8NHzyxwfs
         A/OA==
X-Forwarded-Encrypted: i=1; AJvYcCWAhkfDK/qoa/Wb4IxuvwiZ+ObCFEhMTnR4/gutG+uXnhQcdYhSAjDx0fWPkuI7UqCDYMAu+mavJ5c3@vger.kernel.org
X-Gm-Message-State: AOJu0YwEnFdI31rD/k3iTb3VStuYz82sMdK1gKsxeH4r/5vRc/a/cd0q
	CyazIl4gBLfYnSq67sso1ge2+v7lYtYeEpNSSNimwOY1s5pdh3jGg4rUSoaJpBBKKpyGTmztO94
	YA6qRR9wPdm7oG7UwTeeA1E4DkimmKPKR8d54lIrIiqLvgSeosRGfpP1h7w2qWXzw
X-Gm-Gg: ATEYQzyIkLEBkEmx8i6eGXVqqcHUMXg7G10gbXKkGd3b8XExtaw25jMIPeJr9Hl/38Q
	udreDYtd84+5KyhnJjf5stVwQjSlfk9InXCbLn7mBq0USwlDEqKeWMO88LF6xG269jW2HFD2x9s
	ocNre5DjLFovs/Ejb5mz3EMKTtbOxt27hUTuRxWrAhk2QO80x+SkxI4yDYTdQZLwtlVpOFDQOVj
	PRlDz1q9FVgEOCvHUxiCmcZmwbPo5hq6NFTzJFN/Y0VeWofUbTgVs1uCPPhy2G1GRPkG8KmQj2Y
	G7OxStrcEKQmhbZLhY+RugDz4CKxDoONQwgXaB9xf1KPAZp6l5e1xTOOUk545sabSi6iJLeozdP
	aJfELAE4YMNu5Twy2BrxDwWzYpU/Vy1zhe2w7t18HWLGSoEFTyKOv7Efc
X-Received: by 2002:a17:903:3ba5:b0:2ad:cf11:5048 with SMTP id d9443c01a7336-2ae2e41917emr23463155ad.22.1772189496470;
        Fri, 27 Feb 2026 02:51:36 -0800 (PST)
X-Received: by 2002:a17:903:3ba5:b0:2ad:cf11:5048 with SMTP id d9443c01a7336-2ae2e41917emr23463055ad.22.1772189496019;
        Fri, 27 Feb 2026 02:51:36 -0800 (PST)
Received: from hu-mchunara-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb757a8dsm73721885ad.40.2026.02.27.02.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 02:51:35 -0800 (PST)
From: Monish Chunara <monish.chunara@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mani@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sarthak.garg@oss.qualcomm.com,
        pradeep.pragallapati@oss.qualcomm.com, nitin.rawat@oss.qualcomm.com,
        Monish Chunara <monish.chunara@oss.qualcomm.com>
Subject: [PATCH 3/3] arm64: dts: qcom: monaco-evk: Add SDHCI support for eMMC via overlay
Date: Fri, 27 Feb 2026 16:20:55 +0530
Message-Id: <20260227105055.2364348-4-monish.chunara@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
References: <20260227105055.2364348-1-monish.chunara@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDA5NCBTYWx0ZWRfXxFdv8q9kHpPX
 K9daHfLTIS1/tMc92grOCGk3++e9XFHXrSPTqa+q/sdc6rssLr1mIqaiSBUw8S/4TFPe6iPoyar
 jd0O4GvZrd+OlzC9b1HXkq5D2ci/ZI/ZRa+SudkaGJtxDSmOAhTCwSsFomfiZYSba172uxmcOtj
 kitR9IS6ov1fcyTlzUegYZRYoKosQ+5iXRuW414Zlma92zR2aJSLl+QgvoatPFhTtlPrL+yi2+a
 6L8CX++jhv1cmTd6t7v20JHcyLGaGwsb6jninCQuyYxXEjcgLZen+tWkI/j6ExgBRdi5SQYQQSf
 PfUoKZpwcITEjII8RAY5sx96On4GOLjpbPvFZGhZ5BT5NgP8D7vHxDkRyQQvQcj0jC4edZl/L/D
 xezF/PW6Tnb+dzn+lXTmhaCmGownwP5noH4EmcLc1tRG1e93wGMgj5yyOObmzzXg0znhWwoaE5I
 d4xBohkj6jZi60kOlMQ==
X-Proofpoint-GUID: CYdUwlv3vsg-328GwRhF1mTNRh8LxtpP
X-Authority-Analysis: v=2.4 cv=KZzfcAYD c=1 sm=1 tr=0 ts=69a17739 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=tsrPtohBIDvmYb6t_YsA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: CYdUwlv3vsg-328GwRhF1mTNRh8LxtpP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602270094
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269179-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[monish.chunara@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6129C1B6346
X-Rspamd-Action: no action

Enable the SDHCI controller for eMMC functionality on the Monaco EVK
using a device tree overlay. Configure the corresponding VCC regulator
parameters to support the eMMC interface.

Additionally, disable the UFS controller node. The VCC regulator is
shared between the UFS and eMMC subsystems; leaving UFS enabled while
operating eMMC results in power leakage on the shared rail.

Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |  3 ++
 arch/arm64/boot/dts/qcom/monaco-evk-emmc.dtso | 46 +++++++++++++++++++
 2 files changed, 49 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-evk-emmc.dtso

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index c86242a1631d..1660ed89fecb 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -50,6 +50,9 @@ dtb-$(CONFIG_ARCH_QCOM)	+= monaco-evk.dtb
 monaco-evk-sd-card-dtbs := monaco-evk.dtb monaco-evk-sd-card.dtbo
 dtb-$(CONFIG_ARCH_QCOM) += monaco-evk-sd-card.dtb
 
+monaco-evk-emmc-dtbs := monaco-evk.dtb monaco-evk-emmc.dtbo
+dtb-$(CONFIG_ARCH_QCOM) += monaco-evk-emmc.dtb
+
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8216-samsung-fortuna3g.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-emmc.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-emmc.dtso
new file mode 100644
index 000000000000..1ced916247c1
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/monaco-evk-emmc.dtso
@@ -0,0 +1,46 @@
+// SPDX-License-Identifier: BSD-3-Clause
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+/dts-v1/;
+/plugin/;
+
+/ {
+        vreg_s2s: regulator-vreg-s2s {
+                compatible = "regulator-fixed";
+                regulator-name = "regulator-s2s";
+
+                regulator-min-microvolt = <1800000>;
+                regulator-max-microvolt = <1800000>;
+        };
+};
+
+&sdhc_1 {
+	vmmc-supply = <&vreg_l8a>;
+	vqmmc-supply = <&vreg_s2s>;
+
+	supports-cqe;
+
+	pinctrl-0 = <&sdc1_state_on>;
+	pinctrl-1 = <&sdc1_state_off>;
+
+	pinctrl-names = "default", "sleep";
+
+	non-removable;
+
+	bus-width = <8>;
+	no-sd;
+	no-sdio;
+
+	status = "okay";
+};
+
+&ufs_mem_hc {
+	status = "disabled";
+};
+
+&vreg_l8a {
+	regulator-min-microvolt = <2960000>;
+	regulator-max-microvolt = <2960000>;
+};
-- 
2.34.1


