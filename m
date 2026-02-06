Return-Path: <devicetree+bounces-263313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sL/YL+vGhWmGGQQAu9opvQ
	(envelope-from <devicetree+bounces-263313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:48:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFFAFCCA6
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 11:48:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E129030557FC
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 10:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE35366075;
	Fri,  6 Feb 2026 10:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o7pYLLc2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PWRMfLtd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220DE337B9A
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 10:47:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770374823; cv=none; b=boN6mA90IJvxx8/EEU5OKQbpKwQHIDSvlXK3G/yGkTlybpioZmVoeOGAJNj3otSWfSgD6QHgx+k+jP7X3CZTgOC9KE1v4lEzd030g/vZ2AELd5w/jZtAv8VveMA5/En7hB3kiXw7s2+WD+pUJFv+HX4KeVXoOPKhNRx+JoGY6Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770374823; c=relaxed/simple;
	bh=eLiInZTxq2JkRFf/2zRJXkHHXIrNxU/ynLjvd4SCckw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=H1Xb/IKw9qMlaswuyemuKwxt7DIcYfqviwitVARwgIGY2VdresfjB/3hmVlINJz3rN9PnzIfUwoX8xAlFVF6VjUfvnBulyi4osZey3uAUSBsVGwBnulerdw+uZ9AsWlnduXYV857tshaZhnMo5pjh3hfoveHIpMBfLCgvokr410=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o7pYLLc2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PWRMfLtd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167pZ1s2491659
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 10:47:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=3kyl0xN3VFk
	kAWWqIt2gq8mt/J4+TVEnW9rWYiEDMKE=; b=o7pYLLc2C5R6oJNNuSXZsNdY9g8
	XOmEcendt9KOQbE+s1K0bpUeHK27wUyoB88ya1GDPMNhhap8EfZfGs7bkLbJQp/T
	2/ztfiV+87C+aktYZE+DDToT+AQatZGXGJVQPjH2zSZypTfzIi8hcqLDnjStubQ6
	taDddoG3eipLBSOOE0ngY7QbvqqYdBrP5rnrTe6lZnrjTNfxKz8o0WtdFBiDi3Qm
	sKkIqt0Lsk9cRGhrKQG3QOZBYvgFxJNyAzEiV7Fr2MSc3le4JgyJ60g273EhQcWk
	1ZGLqxz/ZHD877GE9dPOjjjivsV5haGkUntFs9ysFyWdfaoOsMZ3nriAPlA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c9c0jvc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 10:47:01 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34e5a9de94bso1110060a91.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 02:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770374821; x=1770979621; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3kyl0xN3VFkkAWWqIt2gq8mt/J4+TVEnW9rWYiEDMKE=;
        b=PWRMfLtdsQhCYa0B/tucFoNlMgAzI+8JqI7AfeZuXZxY8ICh8bPTc/dtFR3CGDNN5X
         TvA8P+TjJnRuJOvPjameLFDhZX8JdMlzeXGbC+nH+pxwfqELTjsxKd59WvkUEWVCkjJU
         gS/dxNoorN0b3Z2v7SUc91t1XfnDVOU4j4Vi7FiUpuZgiH0EJSKkXl7XccCVrJ7uLxTH
         ZV3XKqXvpRBK4vTpRH9dIwWRa0IchpEwgN+1m06a83rdm2LaeB3bv+yPvqlNVo2nhZiH
         uJT4LIL6dDJvyvq2Lehy6B0cvTqrxWE7MBac5V3h1SwDhKMHG8Kax3BUuPKrGQQ4JO98
         9QNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770374821; x=1770979621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3kyl0xN3VFkkAWWqIt2gq8mt/J4+TVEnW9rWYiEDMKE=;
        b=Pp+FQXJp+lWZmczP9api/EvzgOLGIvf8qQa1DDzbOazi6tpzsIxfz60+zfgfZV+n8r
         3HNk+KB+810w5aCZm0ogIIRXvbSKf6gbKmvXw2AleWBI1kDDWpxez3QNoluqSgzeWZ2y
         G/RWIwyNaOAIDqGCY4OX/nRNun3lIR1ot/vhFh4A5EtDfHCBW7Mg9jKQDjMW7DsTB3Qk
         JVNhjAMqok4QMrUQy2D82tNxN/LhPgBJxmTea1ef4jbIMWnG5dtJTD9u3qvUdPl3B9h1
         YVtliShMONm9iFHvre6mOtilYAK5ubFvtIIkorv7QhmVvxsRuLEpXyvEfRWXg9nKGE3N
         Z4ZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOL6z59tg74lmqMzi1p6OvcaOaPv9MECF/+yxilN2KxbPegXpVau+mhVqc3nV1yeUi3oyw5qWzhzt7@vger.kernel.org
X-Gm-Message-State: AOJu0YyFT1DuUehAqy0iUSsgGfLEZWN4RQjD7vgqidwpT+6Jj6YUbZH5
	4/MSrBDZy570gMr09ZoQ+HAUQOKjRx2OAu89wDhvfv1zJ7pRSpSB9ddZ/wW7NQSe85wtKKZAFQQ
	8AA9d87H/gmbLpPFJYf9aR2OFnFEANhpB73SKxeFvYUS5wINKjQCfL35wnaCZ8gB9
X-Gm-Gg: AZuq6aL0IKnouvcKqZp/ilh1si6Q9FaFUjed1YvT/QWLn0HCAfuLQVw2xOYhJLs9sNQ
	zlhjYRhtLrEKtmsNGCR2tjFxWlsLAC6hFh41DB+jj3VcAADcxwQODJlM9ZDsTweQmx7QIRNHxLF
	w0G2cWZtypca9CGWlP4qVBLZFJfM0juQHaz/VaH2jjYfLgZQ9XF69+LWWRgyrSqkYexFrx3qGdB
	Y1SlpSAv/9y5lLUhbd7vmXLoFOsvCLcRCce4eIi72S4h7ZEFgGdX3FePSKMLLt5zWubk+BF4X3U
	fyfoM8+Nc1GqVtDeD0GKj/BcRghvfN1V3TK0ZGuOQEcMqFUiB03Sggpyqx+p8cA1dxoPlq8Hj3G
	x/Y/8Q9Rb6DQt8BSCm1c19ilI+QIvRBw+SQAq20KD4us=
X-Received: by 2002:a17:90b:28c3:b0:32e:7bbc:bf13 with SMTP id 98e67ed59e1d1-354b3e6f6b8mr1862747a91.34.1770374820986;
        Fri, 06 Feb 2026 02:47:00 -0800 (PST)
X-Received: by 2002:a17:90b:28c3:b0:32e:7bbc:bf13 with SMTP id 98e67ed59e1d1-354b3e6f6b8mr1862732a91.34.1770374820530;
        Fri, 06 Feb 2026 02:47:00 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-354b21fb723sm2081136a91.10.2026.02.06.02.46.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 02:47:00 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH 2/2] arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
Date: Fri,  6 Feb 2026 16:16:42 +0530
Message-Id: <20260206104642.1038381-3-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=BbzVE7t2 c=1 sm=1 tr=0 ts=6985c6a6 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=K8I2XD3YpgONH663DNkA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: bbqSx34AyGWHfClb5Q-t6JOxSzdDwol-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA3NCBTYWx0ZWRfX8FrA8cRPkfGs
 e1Ad9aTqvX5Zr0YDXgjoZOn/HwI6lqf1X1eIaLF80/kdr0RLh7ZvLWAWwZ5Cf164+3QFC5s9ziv
 qUYRxEkek0MTCC/PVG5PQ6TrURBiDA/7T/3IabaSL6yq9T6tlPHnlXFvUWtUDFz2J8vBHfTWML5
 0dbf7l1BIev8xeqWRePFD3b4c3+zGMKuOyUWs0u0hdLwF01/lPl2Q61Xrc42dCLwDjXd8AWhcey
 DDa2SrwiNjsQrlZ4JZUgSbwORkqwDtyF2epW/ULBj4aC/OwNBf9U5GZFX3/e3ScMUBqcj9SExyH
 3oMCMBojmgaggmGOyMlv5TtPRyXAzVfBRnOquyrmo5QI3Hcg04X/Cvbtx4V0v8YCFcLoMtEuWwH
 ldrnimSQ9uiHkKbNvv2MGjbXCICQSIuwCJ7QuvTSuzwhodPZiV5Wed5fZ3hP1eYBkivjC0rKTs7
 lCZEcosV19Qc8iekQxw==
X-Proofpoint-ORIG-GUID: bbqSx34AyGWHfClb5Q-t6JOxSzdDwol-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263313-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,a400000:email,qualcomm.com:email,qualcomm.com:dkim,1f40000:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2BFFAFCCA6
X-Rspamd-Action: no action

Enable the tertiary usb controller connected to micro usb port in OTG mode
on Lemans EVK platform.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 53 +++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++++
 2 files changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 473cc2a81670..71d1793dac3c 100644
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
@@ -190,6 +209,16 @@ vbus_supply_regulator_1: regulator-vbus-supply-1 {
 		enable-active-high;
 	};
 
+	vbus_supply_regulator_2: vbus-supply-regulator_2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_supply_2";
+		gpio = <&pmm8654au_1_gpios 9 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		enable-active-high;
+	};
+
 	vmmc_sdc: regulator-vmmc-sdc {
 		compatible = "regulator-fixed";
 
@@ -795,6 +824,14 @@ usb1_intr: usb1-intr-state {
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
@@ -1143,6 +1180,22 @@ &usb_1_qmpphy {
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
index 808827b83553..2710927c9172 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
 			snps,dis-u1-entry-quirk;
 			snps,dis-u2-entry-quirk;
 
+			usb-role-switch;
 			status = "disabled";
+
+			port {
+				usb_2_dwc3_hs: endpoint {
+				};
+			};
+
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.34.1


