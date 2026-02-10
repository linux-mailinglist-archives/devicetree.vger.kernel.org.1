Return-Path: <devicetree+bounces-264410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IDrHHoqi2kvQgAAu9opvQ
	(envelope-from <devicetree+bounces-264410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:54:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC75311B0A7
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:54:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 54CE93014FCB
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 853D2327206;
	Tue, 10 Feb 2026 12:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AHwddbiZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="izqGlYBk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154442D46DD
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770728045; cv=none; b=X9OdOOmLS/rHX2GYEGONC5aa0XwmdOJECqYvSO0TtJAzN0VYLLdD0fBuutIndL038uiiOYEQDgiTCKQpvMrRQTLvIm8/zoRQ/pemwcvWt/nJIpYBLTT7r8mnuohrW3xffi15w5GY/my104DCIJ7m2vWCZ+Q7q6SWSfv3E+U+0JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770728045; c=relaxed/simple;
	bh=3YJ5lBbI7AU6e8k6jAQqkM4H+bbZMvDHIz2mGafMwCk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Lo71mHpQ2wnIEOURazPemJ91rkuN/p0su6mNc2x9oqCJa/90AggYOZY2PEyJiiM2p6GvVEh/vtN82LdIXZajBvRtINrT3sV0JcXS7IVJfUfc1imD3rsXk4+TpqcZyFzjvfmOhE/p2agSlNL8ynBJoR4JZfnF5AmDzEU0AypBKIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AHwddbiZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=izqGlYBk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AABDFO4102209
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:54:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=N7ls7eGdUGl
	jdE//ela5kpppPXcOcXHgU6NIRQaXmhw=; b=AHwddbiZ0sbG7KN+L0B42nJ72vT
	KHqk5cW6vxf7+LtxWarEXojAEO4oqwMgjoxh5n7711qbZTvhLWFMBHC1mzqz8Uan
	rt0cF/xYBP0UA1I0ti4cxyXlmLg7QgNkZFcecMlbwUW2DKKCsUbGoC5LlbOyMPvR
	ZCRTZdgt/aQXRxkgmVqwbzSQ/sNbq9bHywjC77zXEveHQ2C7h8GTQeGPbVSvQaD6
	YQ1WGlNg/pQvT3mJdeFd/DQGYkM0zLyLZZk43bMt9BAG5CUii0b1FAUsz6Rsk4xn
	lchBrx/NsyfxNAHMFeU66kXTu2L3kYvuRSFpP8haen3WDNzlHVQxCy96WFQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7k61kkjp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:54:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a784b2234dso24039145ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770728041; x=1771332841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N7ls7eGdUGljdE//ela5kpppPXcOcXHgU6NIRQaXmhw=;
        b=izqGlYBk+3t+NMFudpavNjHOBH3FVLD0RL+r87ECrS5ysWgMHpWMQOGROCN4UZ7L3B
         x1osUARZOUp4hl5gu6eS79NbcAf5bdfiZx22sHs+asE1ZkUcButuo1BkJnVwh96AaNB1
         UHw3agmeuI+/4Ws8JdIt8f5mBR+71/XjqrsEQGkPrF+F752gYPYNW2YG5Cvo6+Sir5IH
         o9vwZjr9BLkmkTl5VPBRFKxUJpGjOYrDkPCKaa6IrpOlTt5ip7jtpgVGOc6s2qFNLY68
         z8so/ozISqFdUUHhw3YaTVbx25rAXBw4VzEU3tooV1dfhz1TNyXP4SsnMEVGkRUl6fPh
         8GMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770728041; x=1771332841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N7ls7eGdUGljdE//ela5kpppPXcOcXHgU6NIRQaXmhw=;
        b=SEU42kD7NbHlabZnWY5lZai8LflggY0qtyuHdieDZB2m742Jsdqqtx09CBCJKgtNjj
         pUfyHG9A9y8bT9vU7d4I7U1fUCuYAAMDDBJs874VNMWotGZEay+20+wYY9JtZBTGn+nv
         m4Qr2E41rdU5jicidofGqKMXKfh3ZbYnG+S3AJMUSh4JnftS1Da9/3jrDTSCKUG1CDdW
         XlQnmeJa3PCTrIfClXiUkmjydx2Jw4VO7rph7D5CQEXI0E+T8z6N5bzi2MxBEm+LEJng
         owLVF/2XkG23AFWx4cT/2cTCaVbTdeX6NjcQ9Ougt5KU0MJ113SHhaY2plzhbXbiu3Xc
         gerg==
X-Forwarded-Encrypted: i=1; AJvYcCXfJtlhe83lVzRpauYfEE9K82gpliaLDmVT30D4+VuPA6QyIRWrZENd3rj+S/lP3UHP1w6qv31930L7@vger.kernel.org
X-Gm-Message-State: AOJu0YxPtQfBDRDKUpUcLaf1vlXS2lng0/FH81pc5RvVqOs0QfSk5fbo
	zMcwYA3GibJ3GTt9iCYdMdbvP90RiiKWFNiiiEM56ag6/pvNy/2IVOdJ10zqW3gzL3Havem+EuO
	IrfnJN3QUMSLxEEt53NtoC+Ypdx+VnrT/4vaxy2n0JZxlNsvig8eOAMvwPuKno9cf
X-Gm-Gg: AZuq6aJrqyyLOAKnEbyUCCaYS3eC4P31Kjal7V1ChxkBud7kYe1SyIWAaujOKbXXlZ5
	ul/iJLi+wa5Q7Gq16PDBsm3LqLrZoGJ6KxbdfjW+kw/vYWgc/HCJmn6olaN4e74PXFETQfE2B5e
	qgKyAZomNe8ZzbUxlZI2woaF1xCbV24mjGvvpdOt9ybLu5ol8twCnQjo33iVQNSpSrxKh8pnQD1
	bcUpZdaa6AQlnj5ROPWxGGBtS4i7X6VITfMYF8VvR/2sO65I1fDUxXhJgHGOdo/6GQWDyQlS9lV
	cZ5NgZV3Xqq+q1JPksbCQ3tvJlABGO3ndSFOdrJIlLB7RPmjzwsz9Nh2K6QgRIfw/bC6+K2wQXP
	XxbtwfAIj8hv/eMVE+WT4pV5Cm8iZXTBR+p1lu8/zIuL91kvpW7uujS0=
X-Received: by 2002:a17:903:19c6:b0:2a0:8be7:e3db with SMTP id d9443c01a7336-2a9516a70f9mr162440555ad.15.1770728041175;
        Tue, 10 Feb 2026 04:54:01 -0800 (PST)
X-Received: by 2002:a17:903:19c6:b0:2a0:8be7:e3db with SMTP id d9443c01a7336-2a9516a70f9mr162440285ad.15.1770728040693;
        Tue, 10 Feb 2026 04:54:00 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951a64990sm185356375ad.13.2026.02.10.04.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:54:00 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 1/2] arm64: dts: qcom: lemans-evk: Enable GPIO expander interrupt for Lemans EVK
Date: Tue, 10 Feb 2026 18:23:47 +0530
Message-Id: <20260210125348.2800846-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260210125348.2800846-1-swati.agarwal@oss.qualcomm.com>
References: <20260210125348.2800846-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M8lA6iws c=1 sm=1 tr=0 ts=698b2a6a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=0TxLVs8cyrv-jLPu79IA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwOCBTYWx0ZWRfX65ChRksFdyMM
 cnX22yQ5stpbMWoh+WV/VgplPcIM17CgSK4kbBcqzjQTwaCM2ay9p3i6bf1Vu3STmo5quFq9BWQ
 /E0k9aOzWpgdEjFobGdQRimWFTlSCW75L11nUfrQ//USdizqBizZWU/GW2bHC2P0eNVPi9UsbT1
 xLssGDOefK5Qul7+Rlxay3WiGdiUKXC+rZ4CmdXjmYLW3c+1J72bMAMc/rwQWkyAZga6nx14H2h
 0axVXw+ObVc8ZGxo2MyLQ2pk2FBL3wULlx25lfkD8LhKjrwTGhUkXVvBUNJRyB9PW8QZ7OVVYaP
 4/uBPk3Ndg45qd5YgQ9pUmsRzKImt/J/Ex1/kEuAXSoZWCIYCBQABGJTSyRp7QTyDQ3zRVm9NSL
 pWSbI/DhVo3H3vBCuUUVabEI+XT/jQ1yfTAp5Aq80QHtI0nZb5RpyFDryr/EiWIYhL52MB7NJ5d
 croO19ygee6Fj0eBEmw==
X-Proofpoint-GUID: M_-lfuHAoYtMr_4H5_YN1cs9QV8Z6NH6
X-Proofpoint-ORIG-GUID: M_-lfuHAoYtMr_4H5_YN1cs9QV8Z6NH6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100108
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-264410-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.38:email,0.0.0.50:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_PROHIBIT(0.00)[0.0.0.39:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DC75311B0A7
X-Rspamd-Action: no action

Enable PCA9538 expander as interrupt controller on Lemans EVK and configure
the corresponding TLMM pins via pinctrl to operate as GPIO inputs with
internal pull-ups.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 44 +++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index a549f7fe53a1..265bdad10ae4 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -628,6 +628,11 @@ expander0: gpio@38 {
 		reg = <0x38>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 138 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander0_int>;
+		pinctrl-names = "default";
 	};
 
 	expander1: gpio@39 {
@@ -635,6 +640,11 @@ expander1: gpio@39 {
 		reg = <0x39>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 19 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander1_int>;
+		pinctrl-names = "default";
 	};
 
 	expander2: gpio@3a {
@@ -642,6 +652,11 @@ expander2: gpio@3a {
 		reg = <0x3a>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 139 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander2_int>;
+		pinctrl-names = "default";
 	};
 
 	expander3: gpio@3b {
@@ -649,6 +664,11 @@ expander3: gpio@3b {
 		reg = <0x3b>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 39 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander3_int>;
+		pinctrl-names = "default";
 	};
 
 	eeprom@50 {
@@ -894,6 +914,30 @@ ethernet0_mdio: ethernet0-mdio-pins {
 		};
 	};
 
+	expander0_int: expander0-int-state {
+		pins = "gpio138";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander1_int: expander1-int-state {
+		pins = "gpio19";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander2_int: expander2-int-state {
+		pins = "gpio139";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander3_int: expander3-int-state {
+		pins = "gpio39";
+		function = "gpio";
+		bias-pull-up;
+	};
+
 	pcie0_default_state: pcie0-default-state {
 		clkreq-pins {
 			pins = "gpio1";
-- 
2.34.1


