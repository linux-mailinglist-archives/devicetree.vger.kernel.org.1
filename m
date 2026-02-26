Return-Path: <devicetree+bounces-268897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJssEWFioGk0jAQAu9opvQ
	(envelope-from <devicetree+bounces-268897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:10:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 663831A8472
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D66CD30BC5EB
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:52:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC8B73E9F60;
	Thu, 26 Feb 2026 14:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RIqKQbzY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBED3E95A7
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117474; cv=none; b=oo2ANYR4GeQfubVUvaGL51gomcmP6amLFFn759NF2l1zvoZzTXE+zXbzQ4n9iOq4dcfIKQsxUi+WmzDyfy+JAjoh6jRbaaMCoteoX/0fKh1FZM3NabjyPeAtLPtpypO0Ci7oakEoNsznO2bNdDFKgrLvoffHzu5mYycGEE3OkTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117474; c=relaxed/simple;
	bh=yLDu5cUjFhdo3AGB18pqGPkWdyiwCXvV+O3RIhuuAB0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pYdHJuA8PjtvgWfR9EVZ03snYjKs5ni8wf/Ru3I0++MLXIW1PZZP/c9JNbAvyVqY7bdH6A6prF90PYZr790KNkigTOjLUAZEMaFnoDva/otpPt5H8eBgEjakmAoEcfrOZGiYZrrF/Z4R+XyDRwuDyaxO1VnWdUb8rsZqJ65Bsfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RIqKQbzY; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48379a42f76so7892485e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:51:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772117471; x=1772722271; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VvIHme2tr+I1I9sXyZ4yONNWMUoW8jtQIkjCl+HmFNI=;
        b=RIqKQbzYzAw6aB1U9FKCMmqOIpBIt/tTCLFclbY+VNnY+26VqTSiTc6NOnWsyVVvhZ
         +Rw6Mjm4hUVsKYz1PARvEYVAwBfN8lhZJiL6jU8Yj+ZLg9Ffp37aWITPzgYkvroS45Ml
         p+wT3Nrhp/Nz+5vqL/vrmsp3hwfS3PMq0aQf9MJbDvw8URDIdDtHIk6QTwu4rnD8V/lH
         pXn1YDPUN+rMR1NIxexlyJq5eBDIlTUuk+/mW2bBlv/fNhOC7ey6r68ocVkKu8EJjPp4
         QEC6PJXE6Tiqwum0ZNFq4H33XWKCIgAglfnxSlbiOvXv/+7eI0EsxZbgJ8Y6VqqW13qj
         FisQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117471; x=1772722271;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VvIHme2tr+I1I9sXyZ4yONNWMUoW8jtQIkjCl+HmFNI=;
        b=glCWaT3n6FNddBOsv7MRQRHxKdYLKNguynl603Puk9iaYNFt1Ssb245qT6tnBSJ2aS
         yRJipqkZqQuuyv2Wc64mH6W6AHCe02+TLSmnkXI6QgALqgSVjVo5pnFmxwEpcQzJGMmb
         LACPTSrJXpQ0Iq642OjGXDCJS/zJRM3RHwAzNqoiyTScwDas4MOWJxikkw7yfZm2zyvU
         Fu7mu1YS1RUPFTRrbYfYETvIEIc+FfvRLw0HsHnl1Ll23wxTW8Mh8Yy6U5o8cx1ZiD2a
         i4V09LLWhRke+6MpGgRHNxhT8t0AVpKcIxIMXIZgqGjXSgg/NUx0ep5gkAWD5XqSn4MH
         uy4w==
X-Forwarded-Encrypted: i=1; AJvYcCVXuMhFi9p+9K3JubRnPRph1+NMw53Ou7Yfw6urcLmPubuyVoUiC3FvP5SOAfJJdh6MGKRNt4W+HPDr@vger.kernel.org
X-Gm-Message-State: AOJu0YyOS7QVvaqyJfYJw8eFsrpYtV016INPrWghrl8AhOR+P1+18ltf
	w6owkLSPNs3HcBhKpDNMfIv3hzGPHUZtTAfBHhtOvkncskljxMMIEpyNKRppIuwnR/c=
X-Gm-Gg: ATEYQzyaO+usSiTjL58/FJF52OZubI+fbwZCjv8xxfX9+ffFFCSyJPi5atLRThx72NS
	VxkmzpK/VPVC0v6WFf76LrKD4jgO5alHqk+VbA23KiHPIA8qKYOxeQP4qsDsCoWhBj+YM9xHxXr
	sP+TutWsXHXAEc2xpV9yL0T5EXAMEVXFoPcbW0V0ZEzL4SconVhyYDUm9cSVXY19iphyGpmJH2d
	s424lZDQiMN/6LS88hPKWKhNMo11RPRfCn28SYlKNt+oGJiA5U63tnTdHZpqw+iDcwF829lsNW5
	f9tR+xbzollQ5KjX1JHVX8mCakjP0IYS6YCr3Qm879lU79D5BLlvUbX9qXY/AkPXQ1/1oswUCdK
	xlNfznSIxCDYasduYrwXSroLXToi8VzAncgJfWNFBbz8e4svBMc6husuO8iuWtswKVKK0/ws+JV
	lcwaAj8MWRTP9wzdelJ0Vt9b+k79PhyDbQRsNXsIuOfPKd7W/SY4KFthjBfQp48gj4YreBx7HAt
	hY=
X-Received: by 2002:a05:600c:5491:b0:46e:4a13:e6c6 with SMTP id 5b1f17b1804b1-483c219ebacmr76912195e9.19.1772117471221;
        Thu, 26 Feb 2026 06:51:11 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf5fbsm36621675e9.18.2026.02.26.06.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:51:10 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 26 Feb 2026 14:51:07 +0000
Subject: [PATCH 02/11] arm64: dts: qcom: x1e80100: Add CCI definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-x1e-camss-csi2-phy-dtsi-v1-2-f3f7ddfbf849@linaro.org>
References: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
In-Reply-To: <20260226-x1e-camss-csi2-phy-dtsi-v1-0-f3f7ddfbf849@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5036;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=yLDu5cUjFhdo3AGB18pqGPkWdyiwCXvV+O3RIhuuAB0=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpoF3c8S8ecNcxODgltMqkQmkWD78oaaooRGxIl
 OFMkcghj9GJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaaBd3AAKCRAicTuzoY3I
 OtM2EACpBVvu8zac4hxKrejAvPcMknUsnks33PZuMRPvL8kdkeYDPxpQ7yIGUHRzbDbxmGzMBsy
 tvziyKEJ/feSgSTT1fTxG4PHkX51lXcSHThOvOwJWYU7UZt0DxgXH7i5OrgYk+yAJUddmmXzSTz
 TsdR1bwpIZTjDIDCwXzEQbatTO6wsa2nccTt6KFwREkJ77XmI/zQdgt44QTkNYXumWkhGJfW9+h
 WQwnLfO4GaXcCV7E5/cTHBPUtmcH/sLc1MEGDr5XXksnXbZWtu8tjr1ZbsaUspMkE5qlWQ5c9yE
 CLcNxUEoPdOHz+aM89M69nC8wMbhjnrQEt7JuzWxvszrMBbwTA7TDnX8r5i3s/3jzBtwTYPuuUE
 joJjoHnwHTvpJKr6TUBn/2cfqAm8p4e2JS6G7CcwjGhY+f+gc3k9QPCPTBd5rQxZZjI1WD12JYt
 LtCLRPlzvyWftDGWVQFdTiMpXk/M0s0e4+2TDepXFzSTrAwOQOG82B85I19CpcR2FLvguj77jLS
 vHYlsqCI51SxkpYWxkFYg65frM4fIpAl96N4+BljxtEJaBewt051/j/vhXKsTkCGTmNcmf+ZPiu
 RtWxG9XFn9Nj6gXqkzhGeqSPMxl7D8MR5p3E+8VaGGCT4Bxky/MR2lKZ7yqOtRz8vD0cz6iUNhQ
 OZTujjBYBxsCZAw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268897-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,linaro.org:mid,linaro.org:dkim,linaro.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 663831A8472
X-Rspamd-Action: no action

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
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 149 ++++++++++++++++++++++++++++++++++++
 1 file changed, 149 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index f96411f481305..38f9da6ad9ca5 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -5465,6 +5465,83 @@ videocc: clock-controller@aaf0000 {
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
 
 		camcc: clock-controller@ade0000 {
 			compatible = "qcom,x1e80100-camcc";
@@ -6116,6 +6193,78 @@ tlmm: pinctrl@f100000 {
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


