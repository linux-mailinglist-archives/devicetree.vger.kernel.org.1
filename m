Return-Path: <devicetree+bounces-237705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A653DC52FAA
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:22:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 24A5035613F
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8F04351FDF;
	Wed, 12 Nov 2025 15:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xOQzuV7X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2609342CB4
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762959780; cv=none; b=kz2+9+6UWlHgylfbDMoAXhr5pgbQ+qJYZygu0T1F3xuDyZA6zd+tLPYD0/JaP2mBpxWRYvgqCcusoPB5XccNFDVME3WAXiMIAsvfk/d6v4NbqM9LUzZabqFzIoD86Hqk0z/0SD4kc+LfeAu0wADfzbA09inYs90Sl6ru/SNSLQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762959780; c=relaxed/simple;
	bh=9wI3XI3vhU2/1t7DVfjRwTFblg1SWjTrVbr5Qsqq9gE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D3EEEncofQIhr+Ml3zV/SDYilvd/Yke/vpWcLm3c/Ka1/cr3uSPNQemAjrBHdYjkTbA72jIBPoZGhHSMVYS0FMlAm7qkcLWWqBs0U4CjoR/bZ5hn7JhzQH4ECfX7xmnQ3o0+iJRq9FuTvQzLU6vdcenLxhTZZKIgYcaE2vCfBPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xOQzuV7X; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-429c844066fso119906f8f.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:02:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762959776; x=1763564576; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l7GbuBQ988JH0ZhSiVFagMg/s2WGUhsawfzvur8N2Co=;
        b=xOQzuV7XmO6FeyuHeCW5WP7NGRr38Uq2rTVBRDuCSkX/aVSnoxj6u9YPLI8OLObc5/
         QefGJJSXynyyoDyYNzKVVEsB7X4NxA+4Ay/l+zBFVQuhJa6FuFW4ENvOUwCvpvp3q3y4
         nBr5zQxGyK3Xew90ZULie0kPWQlTBuxWU9xBwgoMOHcGdyV00LUTa/RppbLYm5WHqEJf
         uWMZN+LIHMmk/NvMDEpGizWewFYovqXT5rGGITTY+obUu1l9Sz1Y1A/NsDu/yel10y1N
         F2rbx6xAunrqWsvoI5ywpRKqlNshkEvmmbe7nbDLGICbJC4sfOLMseMO2nS//SIZyB4c
         DVhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762959776; x=1763564576;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l7GbuBQ988JH0ZhSiVFagMg/s2WGUhsawfzvur8N2Co=;
        b=Lclfk/cDDqFPQD1OV+hE2GN1tXPm/VjlEVwagVcPrGr2T/BQ9wLsaxWA7GW+aq0sX6
         xKLlvTRiGdzPa9vLhkrENcfVQjiT/JnjwArnBOERFr98l2nVamiKEtlXcidmui47R7VJ
         tPi0AHLsDsOqHMerWFtIlJj7ZY7LZv0KaPLnz+CQ6uVDhcj3yrB1rg53/WneUcwYz7Gm
         kz1EgbdIb7zyjOb4xXh44aDXkjJ1ruePEbqw8aVCTkRQEeX0vSaXjNLvigh8j/KvqTez
         r8LsgaqZaxigSYVyiefrrUNhtHZcTzPFQcRs6TgIMoSPMZSNdfR/AMPrR7j9hekHl5zp
         lZzA==
X-Forwarded-Encrypted: i=1; AJvYcCVNgwsWBTF/GHaVdF7M8usCy0pIeoDYnyElkHkyHEGtQsO+jJiHwcHvKhiDXhsnIlde5ToXZTs1v4LK@vger.kernel.org
X-Gm-Message-State: AOJu0YwkVm91hVDwiDRUCGFh/d0cJHI5CxPOuHtGQTeqbPV1d37cB5Za
	kX7+bdxTt4qw1MW6TeiWybzeRu5WG4VEzJrakfbZXeF1WSqVr5OOi0mDcliq4C3kPRM4v+lstpC
	q4niP
X-Gm-Gg: ASbGnctTmH1t7oDS73FEGGXrmOkSLrE6NFaHt7PGeDHgmwbTrxJbilJyZjldpo2Yadj
	hwc3PurhwhwvcGfJfwgFRmBZKGxTY8J6g6wy9YXV0KOk+aVJvdmUS+gLN0FEeEqNyMgtg9Ewu70
	CI2DxxSeFl4WMAA8W2S8Cx523BEaDnhlSwLtj2zy3ub1LlI6+VnRaEpZPn0YfmzY0kY9T25I4VR
	pwaZ8oRdhl7o/PrFjFEjnsKCL+ByLBbrhhRUh+LbkDU1+UrJRRhJFo35djFoZVQwwAbpzr9lIxT
	4G8w4GzbxuxmellvLe2swnVsk1Pau+kRAYlvQwRGrtQ2UR4J+ovVmPvFcB1capGsY/KDHyGkjn2
	o80TMF430dZKH63bM0OOqqQUoTS5sOkj4S0Nxst3gdTdDZ/e3KNKp/uroCwc4PiEaqk0Roydsps
	aOQKl/Gl4whG/2zTVT2x2wfinzUOw=
X-Google-Smtp-Source: AGHT+IF4vqpVhka8/jFdEYgRGP+JAXApvr6mWEmwiz38pK4RlMObIbzFbJ1c92mmewKPgGRpo/JYjw==
X-Received: by 2002:a05:600c:1f95:b0:46f:da97:91cc with SMTP id 5b1f17b1804b1-477870b6229mr17052135e9.6.1762959776126;
        Wed, 12 Nov 2025 07:02:56 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477889be9a1sm15134355e9.6.2025.11.12.07.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 07:02:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 12 Nov 2025 16:02:39 +0100
Subject: [PATCH v2 2/4] arm64: dts: qcom: sm8750-mtp: Enable display
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-sm8750-display-dts-v2-2-d1567c583821@linaro.org>
References: <20251112-sm8750-display-dts-v2-0-d1567c583821@linaro.org>
In-Reply-To: <20251112-sm8750-display-dts-v2-0-d1567c583821@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>, 
 Abhinav Kumar <abhinavk@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2169;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=9wI3XI3vhU2/1t7DVfjRwTFblg1SWjTrVbr5Qsqq9gE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpFKGX8hk+ml9OdnfHvyxw3a/Bo+Vncy5kjOznV
 Pn1h1F0yRaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaRShlwAKCRDBN2bmhouD
 16e1D/43pXkQ9jlQQMaJ84xSuA3DVggOqUQg9O9sQp4lEeQF7ThhnpFrbU4jhd/+68VpEtHPfk7
 vrnoYEk/6UXQYG6Nz76PTUzoZ7meD36MIhT7F4SJ0e7ufw0+/SZkczrfUrXpfITn5GM8mDKEYX8
 /i6duT5z674K/bIv/oRQrcL5uibE8g1nwl6i5TmL3hUqWsKFucuOdmbZaUVMCVqto8qOet0sWTg
 EdAUjRPq8wkXPOnudjo8ZstqOc+qvhrGCQmnVa0bAckxwbNlLv33c59sL9FcicO5RWP6XfU2Byw
 m5YSkkcvZ0J6AIXktjWVUUxlDmLSu4BU9V4Q9NBW2NN3H0Y4h3VC42IkEQP/gCZ3+TLdD8O0rbB
 bOTTzjLyx4Vr26cBKxkGMMbQBJysYDgw8ygsOK60H5kGY7LQjSCavxejpSwF18TWOX9W+Eczt8x
 80gJczFuN6CgaY4VwDnnSI/Xjxvy9MVStca7B0+pkPCfJheqhqGZmz+ce3pilH3j4Pcz1eh6u1z
 FImDE3dhdcCc4ZIDrOKpEDnUXEuCuTphV2wxSa13Wf3Y8bcMwzor0cjCa9zoQzbA91c1ZGcEfDE
 z/Foj2ezIAijH+EvifUlHDJnVCGutcdVIqYreQp7uM3adFtWghHnZWKpRbFrwOAoE2ASFKyxvEI
 gkp52+m1WSsomTA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Enable display on MTP8750 board with Novatek NT37801 panel.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 70 +++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index c8cb521b4c26..68644eccdbff 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -933,6 +933,48 @@ &lpass_vamacro {
 	qcom,dmic-sample-rate = <4800000>;
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l3g_1p2>;
+
+	status = "okay";
+
+	panel@0 {
+		compatible = "novatek,nt37801";
+		reg = <0>;
+
+		reset-gpios = <&tlmm 98 GPIO_ACTIVE_LOW>;
+
+		vddio-supply = <&vreg_l12b_1p8>;
+		vci-supply = <&vreg_l13b_3p0>;
+		vdd-supply = <&vreg_l11b_1p0>;
+
+		pinctrl-0 = <&disp0_reset_n_active>, <&mdp_vsync_active>;
+		pinctrl-1 = <&disp0_reset_n_suspend>, <&mdp_vsync_suspend>;
+		pinctrl-names = "default", "sleep";
+
+		port {
+			panel0_in: endpoint {
+				remote-endpoint = <&mdss_dsi0_out>;
+			};
+		};
+	};
+};
+
+&mdss_dsi0_out {
+	remote-endpoint = <&panel0_in>;
+	data-lanes = <0 1 2 3>;
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l3i_0p88>;
+
+	status = "okay";
+};
+
 &pm8550_flash {
 	status = "okay";
 
@@ -1194,6 +1236,34 @@ sw-ctrl-pins {
 		};
 	};
 
+	disp0_reset_n_active: disp0-reset-n-active-state {
+		pins = "gpio98";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-disable;
+	};
+
+	disp0_reset_n_suspend: disp0-reset-n-suspend-state {
+		pins = "gpio98";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	mdp_vsync_active: mdp-vsync-active-state {
+		pins = "gpio86";
+		function = "mdp_vsync";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
+	mdp_vsync_suspend: mdp-vsync-suspend-state {
+		pins = "gpio86";
+		function = "mdp_vsync";
+		drive-strength = <2>;
+		bias-pull-down;
+	};
+
 	wcd_default: wcd-reset-n-active-state {
 		pins = "gpio101";
 		function = "gpio";

-- 
2.48.1


