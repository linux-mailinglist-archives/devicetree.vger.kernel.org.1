Return-Path: <devicetree+bounces-70846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1858D4BC0
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 14:34:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7EDE81F22777
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 12:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 780EC13211C;
	Thu, 30 May 2024 12:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="zDqAP0zA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9677318309F
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 12:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717072480; cv=none; b=PPrxGSm6fQb8WuNF6fKly8vqjaYXIlFNHpEKIPTUdEdXh6LoZUBeDm6pPRxxUYWHR4KxE+FhZg/LVwO5rGFt52b4Yne1O6bBPUURbfTAVfHkVomwO3mlO+Gytp/tJGk9PL92wdZ7J+6+gUJepZZg5//4gURT6SVN5Auvt4Uohzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717072480; c=relaxed/simple;
	bh=3EAc270GOisvCj8dYgrA44nXJyeUIV05uLrntE2kQXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GLhF/ug4ADQVrnjT0kzKUb0/UgVugj2NAmGFX0y3KsFK80s22tlZIdeCqwtumW44vKmIv427TUDVeTXvdn52yBQXJIBAXv3yk/CZgQ2PPWq4oR+rHACyqdYZlYAa6C/wqx+zwJJKpKg9OqHYINXoCFXOL8V+4ZC/BdxIytIJxfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=zDqAP0zA; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4212a3e82b6so732965e9.0
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 05:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1717072475; x=1717677275; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ktVNsM22917dZAynxsv5GXb4hlZ/XE1ZLs9sHcQUXDo=;
        b=zDqAP0zAcTzr6CTAoofdRqWVDFu3Jrcdl1wqlEt8NZEfh+xXlFGIyVBItseXkL3Ob/
         NuOVZPE+rUqmpi57rFToKFSchcgtiwtAEQZYDQn6EUfTUBz1ABrNk4hp2kuGYgBr3XRn
         CkHcaz+OwsQvSCWfVEJpG3MvqGoAmYbe7Zg3P242OXWpKq1mEUftg5ru2UMOztoWcKNM
         IZSE5FFbBRPgQ0BiFdC+/S+k2TUfbGkX0uKOOJ6I1ykB2JeJ+TMXYhDimPanjd0U4HQG
         UFj+imvidgFm90MPHrt1WJo/N2ng6mnwDPQxr56qrbLwGri2m8QOKZQk3m0C2H6/1897
         R/ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717072475; x=1717677275;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ktVNsM22917dZAynxsv5GXb4hlZ/XE1ZLs9sHcQUXDo=;
        b=hRLtjcHnLQEWwoLMXdWZHSSJpkLqtixO5O02Zwurm0zTeJxT9qpN1AVSTx+FSQZAZ5
         xE67kGrtiXrf4yDdBvJPOhJtky73DT6I0McENs4uFreTxwEUJM2/6Q1lYzCp/jL0fAQl
         PLbn3nbNRnV/PLpxsnHzw7BShbEUmHU2tOVjpK4c0dTSy0AdXpGtzDgUI2SpAB4V5z98
         2KaCujpzfFSDel3iKEtBM7zamwMHy+nBV5AWoarA6FgwffPIRhHfVatyLqI4xhBIGc7B
         keGVzUemzhO0sY/pfhU1KKEjCPoPIjrldOWwQTZkOOlXRgtbQLG7bbUc6lY6tiFUHUiT
         Dq/w==
X-Forwarded-Encrypted: i=1; AJvYcCWq1NlsOCNCE6DigjJAnDWLDp+oCmtBjMxe4lMsn4cFQIErETpq2mDXVxi5+KBBI3GfyeVUGr3RGBZJYskPiu8n+jBu4fJgteEy1A==
X-Gm-Message-State: AOJu0Yy72CBBKihkSXUVhkceit0K0eUygDbIWS25ZbhOX/pmT1DnOfIl
	c35wiEo7P/P6zi/9Vu8Cvow2VG/tdqFsqAiVMiAGKJKyrNf1ZOGsy9O/4xL+Bok=
X-Google-Smtp-Source: AGHT+IFYxtCK25sfSOiuY5nuDusYxlyyhmUuFZU6a1ke3427hoJXy7AAxN1yJwe6rPBG0CFk+gnyeg==
X-Received: by 2002:a05:600c:3509:b0:418:f5a:580b with SMTP id 5b1f17b1804b1-4212811f675mr15479765e9.18.1717072474712;
        Thu, 30 May 2024 05:34:34 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-421270697b6sm24134475e9.24.2024.05.30.05.34.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 05:34:34 -0700 (PDT)
Message-ID: <40903165-c965-4c6c-a3bf-104b1088730b@freebox.fr>
Date: Thu, 30 May 2024 14:34:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: msm8998: add HDMI GPIOs
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>, MSM <linux-arm-msm@vger.kernel.org>,
 DT <devicetree@vger.kernel.org>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>
References: <8cc61db5-2920-4dd1-8132-5af434fb05b1@freebox.fr>
 <o6wwzb4qblelfpfsrmqhoovjnyvymf42p2ilv4bzn4le3nklbv@kj3qklez7izy>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <o6wwzb4qblelfpfsrmqhoovjnyvymf42p2ilv4bzn4le3nklbv@kj3qklez7izy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/05/2024 02:45, Dmitry Baryshkov wrote:

> While I don't see anything wrong with this patch, maybe it's better to
> include it into the patchset that adds all HDMI nodes to the msm8998.dtsi.

Here is my current diff:
Do I just need to split it up, and it's good to go?
(Doubtful++)

diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
index 83fe4b39b56f4..78607ee3e2e84 100644
--- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
@@ -14,6 +14,7 @@ properties:
   compatible:
     enum:
       - qcom,hdmi-phy-8996
+      - qcom,hdmi-phy-8998
 
   reg:
     maxItems: 6
diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index e5f051f5a92de..182d80c2ab942 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1434,6 +1434,34 @@ blsp2_spi6_default: blsp2-spi6-default-state {
 				drive-strength = <6>;
 				bias-disable;
 			};
+
+			hdmi_cec_default: hdmi-cec-default-state {
+				pins = "gpio31";
+				function = "hdmi_cec";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			hdmi_ddc_default: hdmi-ddc-default-state {
+				pins = "gpio32", "gpio33";
+				function = "hdmi_ddc";
+				drive-strength = <2>;
+				bias-pull-up;
+			};
+
+			hdmi_hpd_default: hdmi-hpd-default-state {
+				pins = "gpio34";
+				function = "hdmi_hot";
+				drive-strength = <16>;
+				bias-pull-down;
+			};
+
+			hdmi_hpd_sleep: hdmi-hpd-sleep-state {
+				pins = "gpio34";
+				function = "hdmi_hot";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
 		};
 
 		remoteproc_mss: remoteproc@4080000 {
@@ -2757,7 +2785,7 @@ mmcc: clock-controller@c8c0000 {
 				 <&mdss_dsi0_phy 0>,
 				 <&mdss_dsi1_phy 1>,
 				 <&mdss_dsi1_phy 0>,
-				 <0>,
+				 <&hdmi_phy 0>,
 				 <0>,
 				 <0>,
 				 <&gcc GCC_MMSS_GPLL0_DIV_CLK>;
@@ -2862,6 +2890,14 @@ dpu_intf2_out: endpoint {
 							remote-endpoint = <&mdss_dsi1_in>;
 						};
 					};
+
+					port@2 {
+						reg = <2>;
+
+						dpu_intf3_out: endpoint {
+							remote-endpoint = <&hdmi_in>;
+						};
+					};
 				};
 			};
 
@@ -3017,6 +3053,103 @@ mdss_dsi1_phy: phy@c996400 {
 
 				status = "disabled";
 			};
+
+			hdmi: hdmi-tx@c9a0000 {
+				compatible = "qcom,hdmi-tx-8998";
+				reg =	<0x0c9a0000 0x50c>,
+					<0x00780000 0x6220>,
+					<0x0c9e0000 0x2c>;
+				reg-names = "core_physical",
+					    "qfprom_physical",
+					    "hdcp_physical";
+
+				interrupt-parent = <&mdss>;
+				interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
+
+				clocks = <&mmcc MDSS_MDP_CLK>,
+					 <&mmcc MNOC_AHB_CLK>,
+					 <&mmcc MDSS_AHB_CLK>,
+					 <&mmcc MDSS_AXI_CLK>,
+					 <&mmcc MISC_AHB_CLK>,
+					 <&mmcc MDSS_HDMI_CLK>,
+					 <&mmcc MDSS_HDMI_DP_AHB_CLK>,
+					 <&mmcc MDSS_EXTPCLK_CLK>;
+				clock-names =
+					"mdp_core",
+					"mnoc",
+					"iface",
+					"bus",
+					"iface_mmss",
+					"core",
+					"alt_iface",
+					"extp";
+
+				phys = <&hdmi_phy>;
+				phy-names = "hdmi_phy";
+
+				pinctrl-names = "default", "sleep";
+				pinctrl-0 = <&hdmi_hpd_default
+					     &hdmi_ddc_default
+					     &hdmi_cec_default>;
+				pinctrl-1 = <&hdmi_hpd_sleep
+					     &hdmi_ddc_default
+					     &hdmi_cec_default>;
+
+				power-domains = <&rpmpd MSM8998_VDDCX>;
+
+				#sound-dai-cells = <1>;
+
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+						hdmi_in: endpoint {
+							remote-endpoint = <&dpu_intf3_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+						hdmi_out: endpoint {
+						};
+					};
+				};
+			};
+
+			hdmi_phy: hdmi-phy@c9a0600 {
+				compatible = "qcom,hdmi-phy-8998";
+				reg = <0x0c9a0600 0x18b>,
+				      <0x0c9a0a00 0x38>,
+				      <0x0c9a0c00 0x38>,
+				      <0x0c9a0e00 0x38>,
+				      <0x0c9a1000 0x38>,
+				      <0x0c9a1200 0x0e8>;
+				reg-names = "hdmi_pll",
+					    "hdmi_tx_l0",
+					    "hdmi_tx_l1",
+					    "hdmi_tx_l2",
+					    "hdmi_tx_l3",
+					    "hdmi_phy";
+
+				#clock-cells = <0>;
+				#phy-cells = <0>;
+
+				clocks =
+					<&mmcc MDSS_AHB_CLK>,
+					<&gcc GCC_HDMI_CLKREF_CLK>,
+					<&xo>;
+				clock-names =
+					"iface",
+					"ref",
+					"xo";
+				power-domains = <&rpmpd MSM8998_VDDMX>;
+
+				status = "disabled";
+			};
 		};
 
 		venus: video-codec@cc00000 {


