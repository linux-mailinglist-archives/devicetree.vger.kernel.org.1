Return-Path: <devicetree+bounces-275873-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JcoHz5Zt2nwQAEAu9opvQ
	(envelope-from <devicetree+bounces-275873-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 103F329351D
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:13:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CB6E301FFA7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 01:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BBC023F417;
	Mon, 16 Mar 2026 01:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yw0pgsoH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC43123C516
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 01:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773623576; cv=none; b=pX8n3BmeR+LM/5bP12+5kXtJ4vOiiQGlTwkq9zFrAMidnO4/7MPIkyTZz+xm89E9vjNbVQklL/KldHAl1ET9I3cjyHkG3TVO/tXeQno6XecdE2liNfxiC3/TqN+Y7cP+YtIJ4u1pbmkdaDV268Nf8lOQx0jU85oBIhXQWZ9Sv2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773623576; c=relaxed/simple;
	bh=89pCG9foB/aUmIOQftGcQVpa85kxE85oYki4tXopqsk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=advGdrqRAfT9hP11NRC6CSY64DEwYJp/TFAWHJqioC5b6brGJ+Lir647arQS/8JACHg9bqKpgekgu459j8guXwDcfZIF8RzLwQ3xUAPCfKCl10mmInkzcogjpIy9cbMalxJsxk4cB15eoPDEuEaHVXOx7YwhxDHNq0p2FGLDONQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yw0pgsoH; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so45426185e9.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 18:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773623573; x=1774228373; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KvhMcTkFeg87VPIJT1Cy/Iqmh/F0pkytp6qTG1E/Oh4=;
        b=Yw0pgsoHCP5JEPyStciVDHBwaioHO+vJlOQ1dJMAbNH35gas1gpJyQU76R3op4FPAr
         dyNZVGWWDrtpLb6z/DRJNV7DzV/AT1SoN2f5JhkYbFsGuaRq2n+/7gjVtr2f3ep5eu9t
         9gCv1U+eKfSOuEbqqF6fvV51UzVC9ljipeq9qljNeG+3CtOMdjBeCwbQ0r2i/SbPoMJ1
         T4w39X7MOAFo4l+EL/cltFdXdFm/xzKPuFojI92qol9KwcovhnjP+I1WbpqsHiq4BKq4
         Wy+7NXWr0PeCBBSYvVEeXYw8WfT+FdfhzSo+Z/1yDjl0o9MgSZSG6b4TQkphSz0tYlKq
         BYng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773623573; x=1774228373;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KvhMcTkFeg87VPIJT1Cy/Iqmh/F0pkytp6qTG1E/Oh4=;
        b=ok/d4cmPBmgTr7ZaWeLChc7T0u2Ea5IueyoepM3leRTDfwTQ6KQTLdieym7Spjlqm/
         Z1ERKV2EC1BrJ3hmpTKQR2rqvJzq3AXDuls5Cps7WHN/v3qBaoUxtIJwKSZ92IGVAs8W
         BjpZNO4SY+4GdfNcDhEQsLGg04H95RGDtKSXlXstj/XVf4rlcS95AjEY8bCWLgOniuGb
         MTGvPS9pBaWBgcpRTd0M39YRwjeL8XusjGy0DNZHakd9v56Fkmxi2lOrl9XxgzDROzym
         iONZEgSM09duVwz6gNCzIvsQ+yaMHVrbH/crHgsNNXXBPFrNVnFGsfJybpQaTJzmZsb/
         N2Cw==
X-Forwarded-Encrypted: i=1; AJvYcCUuasLbsqUPdzPZF7YKFe4z4r1bpKFlu5xNYbDq7yBpGrVSfjL4ZjTA+8wgmAZP1xgkpPhvBE82hn9g@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4ljca6NJq+bqO/x/8+mj9OQg7jEgm4S5/T1tmRlr40F0Z0Fm7
	b6GNN2WW7DFc2SvBXduFciJfHG18FqTe6SdIIXRzmBnBIBe+3Vgr9ZoBhyvc+e0CF9s=
X-Gm-Gg: ATEYQzzIJckJgYmPCGFTqxo5i1FW4X3SqGBhGnPvno3otNuJbXE6yFs7xmz/ftYd9uF
	Q2hu0ZesSoy5v7Dvit6WrTvkymwxXOdjI7zldgIsFvRv0bxVRytqd+wBr6aNZ3lfcR/iDirMI1b
	BxxKSrPX7h0yjRbHtCqQ+7ujAT+knNswDlX+xQsoZVy2Xe18cc2tgp691VcKf4BB8nM7ikabzx5
	n4iKd3AZx3usW8zaq9B8fsTAfEuG9Fj0Kt8oc8dx9rQMY9nngNzQR3pPsVMUOx8UbWp1G2R/eIy
	fSDUcG6HCSAan8MUXq6noJWQLzH/LetRPXJta6aXBexdyVp3joMLWqjvhmk3ar/J4W4UBBrtzZv
	66H8DaBbmIuP0zzoO7zSQgIpgYJ0Nq2UKGrPeVhHqjnybCfAeCkUm7+4nGEeJEW5sFAwFAS4s6K
	45hMcxFjTWJZIU97tz/dmAL1OYJw7z12sw+MI=
X-Received: by 2002:a05:600c:c8d:b0:485:39d4:2dd9 with SMTP id 5b1f17b1804b1-48556711e98mr181894855e9.33.1773623573090;
        Sun, 15 Mar 2026 18:12:53 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.190.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aba60esm560918225e9.5.2026.03.15.18.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 18:12:51 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 16 Mar 2026 01:12:44 +0000
Subject: [PATCH v2 02/11] arm64: dts: qcom: x1e80100: Add CCI definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-x1e-camss-csi2-phy-dtsi-v2-2-859f3fa55790@linaro.org>
References: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
In-Reply-To: <20260316-x1e-camss-csi2-phy-dtsi-v2-0-859f3fa55790@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5073;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=89pCG9foB/aUmIOQftGcQVpa85kxE85oYki4tXopqsk=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpt1kZacTF1LuRO6Z6KnPeg91x2OYB39LuJnGRJ
 M7dAE5ebguJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCabdZGQAKCRAicTuzoY3I
 OrttD/oCHB2RG1P3vynPmokNxiXWOghFaN3WbNt+slQm2gMnZ9SzdccxYuKYEdzOh86dslRvuEn
 QH1/VuTYYjunLMV2lqFujrTs6BazBANQOkQLSjezCzDYEdGoGQRUMdb+/EBrflvIcMNOnmQECcg
 CTfFWytYw1tApr6ohpGl7eJP5f+Om34LsWlGJ7Yi9nC+3RtuvOcfKTP5lx2J1YN81gRq6ga8bkC
 TrBKhjc6IXBuzUtJlPSYcxKtgiMIHbtD+QVQxTb7d7+QtF4eIfs8u22VUXduG5vDXaknbEUIkFE
 92ertnqyKvAFqXHdguRJIjoB+GGPtHaupINwUCdotT31J8BGt109JqctRiDqWPKDXdE3cfD4gde
 NT2W1bszLcPuAdPM4C4lzgCdyiE3TJhp6qV1uiuUsWd5HdjFPe/0o1qEUUlYcUq2MlI7ZIVywyo
 t1YGw+UOVJ4hQfLX/P6jtL+8/f5wHh5Z4O4vLWiNQvKVTYH0g9EbTKbxtoV+UdTXjPu6N57p6TJ
 TuZeSSNxxySqdXVGbXkACDfVTTFxFDEOqf6rMxEYHIIyqWhHcPoquieq8UO8B4VQhKGThRN077U
 09FkZgSqOt3e7oCBm6YZLSpHLJ1L6ihqmaKtBmku+GbQJa7oZLESZyqCk7PBXuH92xw2Fzn7PpV
 WdnUW1VTImBzi2w==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275873-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,ac15000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ade0000:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 103F329351D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add in two CCI buses.

One bus has two CCI bus master pinouts:
cci_i2c_sda0 = gpio101
cci_i2c_scl0 = gpio102

cci_i2c_sda1 = gpio103
cci_i2c_scl1 = gpio104

The second bus has two CCI bus master pinouts:
cci_i2c_sda2 = gpio105
cci_i2c_scl2 = gpio106

aon_cci_i2c_sda3 = gpio235
aon_cci_i2c_scl3 = gpio236

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 150 ++++++++++++++++++++++++++++++++++++
 1 file changed, 150 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index 029ec012d0a94..38f9da6ad9ca5 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -5465,6 +5465,84 @@ videocc: clock-controller@aaf0000 {
 			#power-domain-cells = <1>;
 		};
 
+		cci0: cci@ac15000 {
+			compatible = "qcom,x1e80100-cci", "qcom,msm8996-cci";
+			reg = <0 0x0ac15000 0 0x1000>;
+
+			interrupts = <GIC_SPI 460 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_0_CLK>;
+			clock-names = "camnoc_axi",
+				      "cpas_ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci0_default>;
+			pinctrl-1 = <&cci0_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci0_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci0_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
+		cci1: cci@ac16000 {
+			compatible = "qcom,x1e80100-cci", "qcom,msm8996-cci";
+			reg = <0 0x0ac16000 0 0x1000>;
+
+			interrupts = <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>;
+
+			clocks = <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+				 <&camcc CAM_CC_CPAS_AHB_CLK>,
+				 <&camcc CAM_CC_CCI_1_CLK>;
+			clock-names = "camnoc_axi",
+				      "cpas_ahb",
+				      "cci";
+
+			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+			pinctrl-0 = <&cci1_default>;
+			pinctrl-1 = <&cci1_sleep>;
+			pinctrl-names = "default", "sleep";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+
+			cci1_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci1_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <1000000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		camcc: clock-controller@ade0000 {
 			compatible = "qcom,x1e80100-camcc";
 			reg = <0 0x0ade0000 0 0x20000>;
@@ -6115,6 +6193,78 @@ tlmm: pinctrl@f100000 {
 			gpio-ranges = <&tlmm 0 0 239>;
 			wakeup-parent = <&pdc>;
 
+			cci0_default: cci0-default-state {
+				cci0_i2c0_default: cci0-i2c0-default-pins {
+					/* cci_i2c_sda0, cci_i2c_scl0 */
+					pins = "gpio101", "gpio102";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				cci0_i2c1_default: cci0-i2c1-default-pins {
+					/* cci_i2c_sda1, cci_i2c_scl1 */
+					pins = "gpio103", "gpio104";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci0_sleep: cci0-sleep-state {
+				cci0_i2c0_sleep: cci0-i2c0-sleep-pins {
+					/* cci_i2c_sda0, cci_i2c_scl0 */
+					pins = "gpio101", "gpio102";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				cci0_i2c1_sleep: cci0-i2c1-sleep-pins {
+					/* cci_i2c_sda1, cci_i2c_scl1 */
+					pins = "gpio103", "gpio104";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
+			cci1_default: cci1-default-state {
+				cci1_i2c0_default: cci1-i2c0-default-pins {
+					/* cci_i2c_sda2, cci_i2c_scl2 */
+					pins = "gpio105", "gpio106";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				cci1_i2c1_default: cci1-i2c1-default-pins {
+					/* aon_cci_i2c_sda3, aon_cci_i2c_scl3 */
+					pins = "gpio235", "gpio236";
+					function = "aon_cci";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
+
+			cci1_sleep: cci1-sleep-state {
+				cci1_i2c0_sleep: cci1-i2c0-sleep-pins {
+					/* cci_i2c_sda2, cci_i2c_scl2 */
+					pins = "gpio105", "gpio106";
+					function = "cci_i2c";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+
+				cci1_i2c1_sleep: cci1-i2c1-sleep-pins {
+					/* aon_cci_i2c_sda3, aon_cci_i2c_scl3 */
+					pins = "gpio235", "gpio236";
+					function = "aon_cci";
+					drive-strength = <2>;
+					bias-pull-down;
+				};
+			};
+
 			edp0_hpd_default: edp0-hpd-default-state {
 				pins = "gpio119";
 				function = "edp0_hot";

-- 
2.52.0


