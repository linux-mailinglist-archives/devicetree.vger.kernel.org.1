Return-Path: <devicetree+bounces-264411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yM8kB5Uqi2kvQgAAu9opvQ
	(envelope-from <devicetree+bounces-264411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:54:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3C311B0CB
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:54:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0C239304D931
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C5E328638;
	Tue, 10 Feb 2026 12:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UZgE7trv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fN19E6Um"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7652232860C
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770728049; cv=none; b=acitub2wtdWX6wToA/9YGbnabO3FuNkpBpEp3cFxFD+u41eCjiro3d6vtEdUxrutQFjcq8DybHPnuINXTTi9QE7Az3/67F/SQu0vnwsdSXpLKug6n3eqKMktxfdCl9AdJC4lWYjbpSKy0mNWo+BMMMJba4T0I+mtOF4svxYnCec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770728049; c=relaxed/simple;
	bh=ltXavvr2a2I71wAkSd+5jIVnkYtUdMsdaeA1sLndDSE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=G23CKBycPvB/GVyj9Doc4c+FIi7T+PJUlKTzmNosNUjmQBYY6V0P55hnXMO/JK96mjAmDR6KvULkvkxA34j2qSIdAeBOx63FmbB9GVUCgQVU2PLfyj56VFfTnxMrsIYR3NnpWD5vaxUG8ZWCZWvbmajolqrVg6Oz7H1GjKbe/Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UZgE7trv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fN19E6Um; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61A8veFc1231927
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:54:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UdQdjhfpKfw
	gKPm0+l03FizAMs5/jthW5FxDgd5midk=; b=UZgE7trvIlRsodURc6u3qRSq+z1
	//LNI3YhEJcnfVNpFCD0zObwbbu9Vja3uq2Pm2jou2aLm6Ih0U+ZC3DNExXr9gJ5
	0rLE/4/hmuhjsJxR7ZBMkL23x4XKh1PNDmmDazJeE5hvJPc1B98ulSjEVVMWOSn8
	ZIUlY7KcxvOxsW58ouBGEb+AJExO611GgggwKWHPG9iMboaIC3JyT7z6mcbdROSs
	YkRQN7YmX5UspZT0SikoJiSGr03oUsxvqxYpAEaAdSK4cDp/VEShdkoLnTus6cCU
	GmCTkn6crr8pld7W+HnYaEFw+ITeQIaWFiEi56LC9bMEre1maKRPY6zairw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7uv59ub9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:54:07 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aad5fec175so15925175ad.2
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770728046; x=1771332846; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdQdjhfpKfwgKPm0+l03FizAMs5/jthW5FxDgd5midk=;
        b=fN19E6Umq8SJmJoe0BWoPQOz1AixSVbANmoHgnziAGMKFGpWYMkCS8JNuP2QC3MdDW
         GpPMDkzYj+vZk4EO7plbKRUKn+w8Td04eKMMe4kmCaaQiOs7GypUnDHdVDUFN5vGnCEm
         r8IYQSlkDOs112TTUa/PNl8gC7hJGoX/gwP4bMTslRZGKVvhAT4xuhLkHsuDbtYErGC+
         a1brSqOMoOTQZBtifh2+nhgmdP4suA3DDVtY+ylWl2G5iSN+LRI2rG3+ctgUOPeBt5oV
         uP/f8QL9ag5x6G7X3wS0dYOfECqLfTbxs9MbdVBsHMFK6eudlfaaO7Ln9nkotpnckLYU
         /Wdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770728046; x=1771332846;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UdQdjhfpKfwgKPm0+l03FizAMs5/jthW5FxDgd5midk=;
        b=XGhagxnEvwFP8eE2/jYwlnd5FOqW4IgERHsuakIRdEVwTcXoxj9eX4KaRt0s+Caznv
         Y2GIcArXBHS/2f+Zd4HMTE4NtCEhpdJ3qvUN23QHlahMcD+dvNfUn0P8D/6OBuBtYx1N
         VVGmgXY3pLJhlPvqlQGetR0HionWlEGsrw9juJ9Cvo0dNwrkSBtOeSybShnMKMHsZLl6
         cyu2aQoZPRsnu5wGpYlsaXApdD/xW+f4M8HA6BvHK4L5hc/SRdu5t+YgJtjClm3u28c/
         oXcBv4L0AKtcfRav5dSIxlpsVaas40ff1Ice3xkVy3WqQyo84nmGpQ28rzQ1eyQ8wbuN
         7p8A==
X-Forwarded-Encrypted: i=1; AJvYcCUo7s+x47TvlxcGAuMmYC89ERwLhOT9bG5aPugWz6+lMONe1JuQ4+vgocULKOhQCdNT8FSZZYb9g/8W@vger.kernel.org
X-Gm-Message-State: AOJu0YyUSSwYh1IbKRb1oC3wuEwA7qo6yOn1XqF5UgRcujJ1N6gDrSes
	XiyMFqyToNobxSsaYYG1f80vuiLSMsDp6e118nZTy7N2i+I04T9MZxajvwNcTUwiGUPaDgtTDb1
	DZfiM8pEgoAAFlhdDwpbYe6crCnYQ30aBugbBmNwTTXFl15CwtE72zbkPQ+zjaRJG
X-Gm-Gg: AZuq6aIONlzpMAwkiIpPKnTgWsyxV8+7ppRBeW6RIJWYpua/R9tsDLySFQ1g5DxPEl9
	HTCy8DTo80HuCBX+TQkyB5dYx3KHSJvt27VKvWa0X90mJhGvWSWsU0I1TFHLeoGzQc9ypceNlbf
	un+UocACEnrufc1CQl79B/TJ76bU8/Yyxe7+kM+Ni3pVxXXIKN5oYcFt435l11pXf84xhSBsrRA
	VFCMZBZkuew66XGaPRmoYotdbo6uiAKNOJJcZUJTlsrFHYRAlvAxWQXAv48xCFONJunXlnC0gDx
	oCsDMjqpz/pSHEJQws3Qhn43oBYxEFkzj20GMU81/KXXQUtID1iW4+7B9yAHP4gxnTXWXr/wWHl
	a2WjP/nEbegA5FXCy+6kLSspG+vcDIa4WKOUxxMpdAt8KZOtEt53bIzo=
X-Received: by 2002:a17:903:2286:b0:2aa:e0bd:1c7 with SMTP id d9443c01a7336-2aae0bd03cbmr84857065ad.12.1770728046351;
        Tue, 10 Feb 2026 04:54:06 -0800 (PST)
X-Received: by 2002:a17:903:2286:b0:2aa:e0bd:1c7 with SMTP id d9443c01a7336-2aae0bd03cbmr84856735ad.12.1770728045866;
        Tue, 10 Feb 2026 04:54:05 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951a64990sm185356375ad.13.2026.02.10.04.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:54:05 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 2/2] arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
Date: Tue, 10 Feb 2026 18:23:48 +0530
Message-Id: <20260210125348.2800846-3-swati.agarwal@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwOCBTYWx0ZWRfXzDGniPSjIS4Z
 /V/LYoKH303B6jyVmT/5QNnCdUVSnurKK1BuQw2ZJoxBwKslqBkY0Zs9oPMhugBYg62cnPj/3GT
 Q4dajvCx/KWQYfNWDzV/N6ih5bQmHlPi7kv4Jo/0hxgzbUgG68iK5obuf23VZ2jI6TsHee7bC08
 3sQ3jxF1Sh2kE5W8c/cR1qFAh9ZyYoBdBUuyZQsVzDrxCDM4NWhGB+ezjX2N/fjxC5ibuNa5kcT
 QubCt+9PbTOybOn8DALDnTmhzCpQN8BlXKbD1tLlfLzDQyy5bLef6SYkmxsRYh3wREhUD7Q0He1
 3eHkGX8P3X76HPPbF8lsVNKtUtOsF1P7nGphdG1II+edgmBJQr+XOVoZjbkHrRIn8fTtz34M1MT
 jQ+GmVfLXPBe57YO07cqehNo5nS/xhhhjWW02G4N3cu1GsaHn+IoFOG7aLVQaNAeUM2jNiaUIjq
 ythD1WcVgywKSf55kOw==
X-Authority-Analysis: v=2.4 cv=P+Q3RyAu c=1 sm=1 tr=0 ts=698b2a6f cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=K8I2XD3YpgONH663DNkA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: m3h1ZflCPt805GepzFjwl8vojk93BD_R
X-Proofpoint-GUID: m3h1ZflCPt805GepzFjwl8vojk93BD_R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100108
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264411-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,a400000:email,1f40000:email];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8D3C311B0CB
X-Rspamd-Action: no action

Enable the tertiary usb controller connected to micro usb port in OTG mode
on Lemans EVK platform.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++++
 2 files changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 265bdad10ae4..6f8b0d067256 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -107,6 +107,25 @@ usb1_ss_in: endpoint {
 		};
 	};
 
+	connector-2 {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+
+		id-gpios = <&pmm8654au_2_gpios 11 GPIO_ACTIVE_HIGH>;
+		vbus-gpios = <&expander3 3 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&vbus_supply_regulator_2>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb2_id>;
+
+		port {
+			usb2_con_hs_ep: endpoint {
+				remote-endpoint = <&usb_2_dwc3_hs>;
+			};
+		};
+	};
+
 	edp0-connector {
 		compatible = "dp-connector";
 		label = "EDP0";
@@ -190,6 +209,15 @@ vbus_supply_regulator_1: regulator-vbus-supply-1 {
 		enable-active-high;
 	};
 
+	vbus_supply_regulator_2: vbus-supply-regulator-2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_supply_2";
+		gpio = <&pmm8654au_1_gpios 9 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
 	vmmc_sdc: regulator-vmmc-sdc {
 		compatible = "regulator-fixed";
 
@@ -809,6 +837,14 @@ usb1_intr: usb1-intr-state {
 		bias-pull-up;
 		power-source = <0>;
 	};
+
+	usb2_id: usb2-id-state {
+		pins = "gpio11";
+		function = "normal";
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
 };
 
 &qup_i2c19_default {
@@ -1174,6 +1210,22 @@ &usb_1_qmpphy {
 	status = "okay";
 };
 
+&usb_2 {
+	status = "okay";
+};
+
+&usb_2_dwc3_hs {
+	remote-endpoint = <&usb2_con_hs_ep>;
+};
+
+&usb_2_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 808827b83553..d0e63336be6b 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
 			snps,dis-u1-entry-quirk;
 			snps,dis-u2-entry-quirk;
 
+			usb-role-switch;
+
 			status = "disabled";
+
+			port {
+				usb_2_dwc3_hs: endpoint {
+				};
+			};
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.34.1


