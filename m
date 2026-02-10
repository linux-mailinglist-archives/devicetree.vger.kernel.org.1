Return-Path: <devicetree+bounces-264462-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ACmMpxUi2kMUAAAu9opvQ
	(envelope-from <devicetree+bounces-264462-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:54:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B27FE11CC8A
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:54:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5C5A4300406C
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:54:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5B4338553D;
	Tue, 10 Feb 2026 15:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ybj4oiZN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JOR1Lcoz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D31036655F
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770738837; cv=none; b=BNQKIjhsgdYi9M282OIk6XzFvaWjnGqNUyB4/QkgiGNoSv6LxsnrZG+PcqsPeiLAhNUE81CY7X2g3HczODmj25V0d1ydTBQpBmQWJvqvmiAlstWLsuvEfGtCC94RUKOqu1jnCGuSBpRirxpcdU6LlYhwicdEScqABEBxSsmk+kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770738837; c=relaxed/simple;
	bh=xE27GKOEZNSjN+Feisa6XAswTITuHEQyfmXjp3fQCp0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KNqU5ZYrbxhWa0eyTvdumyeXZuGv4vMQr+sBDKgBDhZF8bTdVoXnL9e7UyjlE6f5XzkBngKkRTuK1yMJQ8WCi7YzXs+k5uUR68nRd1joCJeUeC85nJbWrymgT5bpPsi4h55VQ3K3CiVDfeorItVdM3IPR9HRn0yCfJ3iX6BujEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ybj4oiZN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JOR1Lcoz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AFOgvH4177333
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:53:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=iHkM4RGWTav
	hWaI9jNKz7pqeCJ9VcReMw352uYGKac8=; b=Ybj4oiZN+AZ3BBmNxKPKKEk69kD
	F/Kv7bE3lBIhnEysYMtkGL8MVx0zjs1wjTrROKXk6Bj/Fq3o3DWqh+X8uGaF2doP
	ErEMknv2NUqoz0XOWZKdq/beb/deF6y0Caa8pe0GrLWQaTq1Sqj8Y7D51IAocqS5
	owfaX+bVHJrMgjTy9Q5Al4IQyVxvXPz70TqT56jrAw/GZKZRyNlCrUl1zYiE2G+/
	BVJ/B7eVvIqvKsbCRxZwkHUiSs1vngU2RF+x7faHEgnjpw+d4ai9aLHnnzCjVp80
	LAKuaEwyhin75c5nsQjdEW1R4ZrotwQuyqTbONxIqhEZbv2fiN1TP347MXw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c879mg36f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 15:53:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aad5fc5b2fso11279705ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 07:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770738835; x=1771343635; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHkM4RGWTavhWaI9jNKz7pqeCJ9VcReMw352uYGKac8=;
        b=JOR1LcozB10BqVQ3NqGQ3pbtvQT9yj0ILlEfqZHpMLCJYOX3pxhJK5LN4MVD1J0iI2
         rUoFG7KxpIJLAM3PRCgTjUXlEH3DvY+5UdlkEt5TDzS9HZ5bBaGQdC/iVZXTJDU9d8pS
         RhuisZ/DlpGElqrLu/EQUmSWC7aanWYJM0qFem7qrpqAt2q3uIO8uACZRwBpMILHVUTU
         Zo05QgA7rPMICDS7VybaqKI2Upd9QtzSAMUoUbcwaOxJWw7l4jkb8KtUZ2JGqKfARPQx
         WotmMgZmS6TpkfKQuD0h0iMpuRhVYDUjYuSJkyS0BFagNB80MUJPECZ2sYhUIq9Oou6Q
         ZUVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770738835; x=1771343635;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iHkM4RGWTavhWaI9jNKz7pqeCJ9VcReMw352uYGKac8=;
        b=Tr2DHAXuEpqS0xTV4OViInCJjrbPGOFG3gM9vsdKVy5OFXJ0GTHQQm5wQ25mTt5bwX
         +niGfUz3MXYOOnIHQNCEvBh5kZstwYnYC5i0YBLMeoUdASiXw38QzVyUOKfHy2SLSTO6
         xEBv3H0rgD8eGum+TQ3vxrwVE0cwOKpfuZr3+RRqVV8PYtqBSDcng3p6Z4zoqiEeziUd
         LK7Uuow26Y+MOvXG6dBvPo4xFeCF2kAnr7w/CzeE2ABYLFLiOU0a857gk4lulgj5cINU
         f5fKvWLzTbYyuJioOskvrbTVu3BcxJpmZnj4L1UnaEN8JTF2BoJCiRVdebDJ/0Gt+5KV
         r7NA==
X-Forwarded-Encrypted: i=1; AJvYcCVVChSzQH4O27DQVw2iuefVGoJjztP00uhvDjkss3Bg9TcVbHkH9AaUyIDitUq7mqgaRqzQJfnpbhT1@vger.kernel.org
X-Gm-Message-State: AOJu0YzffZHx3xT/Z0j8vk9ywT4kYqp/DcZZJ4Kq1lidqTU66iWmEqqJ
	bXzBmtATQkuNaqfiVfk5DJCnfXZoStQkNbSS6TO7lNCL/gnMFm2GR6EZ5Ggx8ud3JUONRA1t0np
	9B4lucQBxdtp1/f1bV04lPlACxs4jz1dn8ClrCWFmc/6ohJYuvNLhEXEtzxc7EOJi
X-Gm-Gg: AZuq6aJQk/Ryvxm1LFSA4u3w5HMPSc14/K58illhGKPooQ3dP6LDE4PdDFY3Cxs218G
	Fs/yRtZxgOxiED4cDtSqrHqTgi4UHf+RoB/4CdqTWIHTxJABSSF5etwsAjj2179G4gK9HnmaedY
	8s5sXwHH7BfJxkbcJnJ5Nc84wus3KABPmAzDm1yapQGwU4BtmDwyswr71BtRmE4xSwB+GasndrR
	DY3rVbqzo/IKTIYYbo8ePkxnwUAryDnR5Ca9jc4vfX6No5FanocyffAwJUv208DGNJ8NuAKwWp1
	uQlMrkm9+3WRD/QPzgq2V40dhhzY3NpV2H1vQAlzrsdDuEsm88P94vMQAQ/EmGY04AOBPsxb7tf
	Y/DxyDzUIjh9I7ldD9V7dSkkK9O7rgwqK1ymhAIyrMqrDVWDeSjK21Ik=
X-Received: by 2002:a17:902:d2c8:b0:2aa:e285:f239 with SMTP id d9443c01a7336-2aae285f5bemr76014735ad.10.1770738835192;
        Tue, 10 Feb 2026 07:53:55 -0800 (PST)
X-Received: by 2002:a17:902:d2c8:b0:2aa:e285:f239 with SMTP id d9443c01a7336-2aae285f5bemr76014395ad.10.1770738834592;
        Tue, 10 Feb 2026 07:53:54 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a952221b4csm149305465ad.89.2026.02.10.07.53.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 07:53:54 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: qcom: monaco-evk: Enable GPIO expander interrupt for Monaco EVK
Date: Tue, 10 Feb 2026 21:23:28 +0530
Message-Id: <20260210155329.3044455-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260210155329.3044455-1-swati.agarwal@oss.qualcomm.com>
References: <20260210155329.3044455-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=UKjQ3Sfy c=1 sm=1 tr=0 ts=698b5494 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=eeKseBlHB-RYfX28oeEA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEzMiBTYWx0ZWRfXz/MuUwEs7pSq
 0ImFnaSAQrpAStD7uL2MKGUR+ylu4ntkiBYu16y+wn0NWT/BTkbxsefjrj1xuDTGYTCvANbEE7a
 vU28Z4rJyLvtLZvibld4YuUoID2oXTDeiI0CH2lfOTgMy69qVomOMzO2oJvBiRJhbhv5OLk+SDa
 fWK813IzNuQMzys1JuoqRi8heg74294VJhFErngkj9KsXIJEeaYIZ3kFclriGHvpzXKeveoZo30
 oj7gCRbe6eN+PhOJbin60dxEgAZvsnwbFbJ7I8yWK7fNYAkcbHOb4VXnHk3WZQmt4Dd5IgtOTzi
 nbLUoTfKfFAm++qXz9YPEg8gZCLPbFvG6bzlaE+1VLtk40VacF39UTFk6mGf0jXfHoZ0vpy/ljb
 jAd8U/KHvUww4Jl4quFV0H4JmmeJOgizh4Nv4U3eJtOGhPszw945aWL+2EJKma+2OKVl47aDdRo
 Yh9J0hbsKtCPefYv08g==
X-Proofpoint-ORIG-GUID: P6G6D3ADGOEvN5woujYPWrpkkJBXQArq
X-Proofpoint-GUID: P6G6D3ADGOEvN5woujYPWrpkkJBXQArq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100132
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264462-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B27FE11CC8A
X-Rspamd-Action: no action

Enable PCA9538 expander as interrupt controller on Monaco EVK and configure
the corresponding TLMM pins via pinctrl to operate as GPIO inputs with
internal pull-ups.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 77 +++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index 565418b86b2a..03af9bbcacc9 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -362,6 +362,11 @@ expander0: gpio@38 {
 		reg = <0x38>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 56 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander0_int>;
+		pinctrl-names = "default";
 	};
 
 	expander1: gpio@39 {
@@ -369,6 +374,11 @@ expander1: gpio@39 {
 		reg = <0x39>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 16 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander1_int>;
+		pinctrl-names = "default";
 	};
 
 	expander2: gpio@3a {
@@ -376,6 +386,11 @@ expander2: gpio@3a {
 		reg = <0x3a>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 95 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander2_int>;
+		pinctrl-names = "default";
 	};
 
 	expander3: gpio@3b {
@@ -383,6 +398,11 @@ expander3: gpio@3b {
 		reg = <0x3b>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 24 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander3_int>;
+		pinctrl-names = "default";
 	};
 
 	expander4: gpio@3c {
@@ -390,6 +410,11 @@ expander4: gpio@3c {
 		reg = <0x3c>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 96 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander4_int>;
+		pinctrl-names = "default";
 	};
 
 	expander5: gpio@3d {
@@ -397,6 +422,11 @@ expander5: gpio@3d {
 		reg = <0x3d>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander5_int>;
+		pinctrl-names = "default";
 	};
 
 	expander6: gpio@3e {
@@ -404,6 +434,11 @@ expander6: gpio@3e {
 		reg = <0x3e>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 52 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander6_int>;
+		pinctrl-names = "default";
 	};
 };
 
@@ -495,6 +530,48 @@ tpm@0 {
 
 &tlmm {
 
+	expander0_int: expander0-int-state {
+		pins = "gpio56";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander1_int: expander1-int-state {
+		pins = "gpio16";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander2_int: expander2-int-state {
+		pins = "gpio95";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander3_int: expander3-int-state {
+		pins = "gpio24";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander4_int: expander4-int-state {
+		pins = "gpio96";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander5_int: expander5-int-state {
+		pins = "gpio3";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander6_int:  expander6-int-state {
+		pins = "gpio52";
+		function = "gpio";
+		bias-pull-up;
+	};
+
 	pcie0_default_state: pcie0-default-state {
 		wake-pins {
 			pins = "gpio0";
-- 
2.34.1


