Return-Path: <devicetree+bounces-71847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5666D8D837B
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 15:07:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0098E1F226EA
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 13:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F54312C7FD;
	Mon,  3 Jun 2024 13:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="uzd9w5Gz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE55312BE81
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 13:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717419971; cv=none; b=LA2d3UjRVyrKrY+DnYNDYkV6Af6oXsewKXJxKNDRQ6YKHISERhatxnzcHgFcb0XAdr3ehWELutZYE7tXeozKEsKo3x35Aa5EsYNywf9JnvMK2LnCqmB3TgM5bUZK54WYDqyJTrVexqbVTmGFYBhXn57Nn2riQD/0dT3wQmNp100=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717419971; c=relaxed/simple;
	bh=rIoHNncUzQwmdZtbaoaG/UgZWuOCuFlhG+xp+917xaI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CtPnzrIoFkXBng0Y0E7qRcwPb2Xoecqq7xtxNIHy5gLv7uHW58yDlNaGXiSaHUlcBgGHRCpedQNmiL0mqG7OiprJOpEI2URov29Euv17QGOpxOGel36BJxZx1n8cPMfIEFjrCJjv1rg7lBoit6ZnC4RGF826TOIBXaEZTo6eha0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=uzd9w5Gz; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-42139c66027so10309625e9.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 06:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1717419965; x=1718024765; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hjkNyBUo0lMKNRCC9ZF0oTBBAWPG4p5sfhg0+41OQlg=;
        b=uzd9w5GzcCo9x7oBXlPbCIMr2X5DS1WLJ9orhnu+8qCVuYzCPoOxTnZ8AuQV1VGHX6
         HQybZZyajhwayf6G/Xzzm036y08PFq2xZZAmSW75nqlSelTfsd1Xw8BDax2PX0+uwF6v
         +ndztjY95OrVGaDoKrXOq9VqPFlfm+Css+f7PoTT9x+citsNet+CcNPnyuLYd/V6zG6b
         TdC9x0hLuQtJnUfXV+lC48C//2um4I5VZa044NEI+RJ0P2ny/tjsMqM2JME+3A+WLmeS
         FsK6Yv512jBgPP47ykiBCWMrFB48JZBK0e53/siIcsUGxgBa7CYmzQ4KH6tR79p7o7+g
         TuIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717419965; x=1718024765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hjkNyBUo0lMKNRCC9ZF0oTBBAWPG4p5sfhg0+41OQlg=;
        b=ZZPiGQNSYi0kTigsNdZozCOTA9zZcOFjEu6QVBRJPHqrUsA033y3ZUwW6qoRlX7cL/
         kzoHk1tnK/ZiArJJas/+wx0cXsi8PbMd55f1uTF2alV+SAR4syTeEGwRdFfElMV2R9by
         AgsWMdKTbZAoW5XvG+x3AsqWdNPGZft9ecuvZiIae5d6ABZvSa675ovYRSqf7d5lKfd2
         iAK7dHdiGmvcrq5Jtu6FCBVOLA1sEv9rJVbDPRxATkDeD9BC7o3NJoITGrbArn9XXZAl
         28Nj8Ttj3jKwiyixGBcEigN50lSaSYmdyCOpFrBkI12VQ4cy1EJwqMpI+Wwu2EOzwo6P
         2fyg==
X-Forwarded-Encrypted: i=1; AJvYcCUylw1wyQfF2847SIOU9NwpV+6GgiEY3iRJhg6URNE3W0HXxV8CpnaEhlV5XTDWPz44+ejpyjeVupSJPRfmzTIHQVyHpG0AHYgiJg==
X-Gm-Message-State: AOJu0Yzi7SlUnLBxbYiMbjytwMFgaszFe50kFkr3KsAnincUwR+9adld
	np79IVLLS1t4aAvnpg477+y7BzRtGwewivK1+Q+tcTt3154RaJBAjttJ8xuWxIw=
X-Google-Smtp-Source: AGHT+IEQJOos/XIWtiWrTPyvQqQY9591yTBgKqFTk+XSuFS27GoJ5zoJKMusOevjHBl95PDJRs3byw==
X-Received: by 2002:a05:600c:3c8b:b0:41f:eba9:ced4 with SMTP id 5b1f17b1804b1-4212e049fb9mr74468595e9.16.1717419965035;
        Mon, 03 Jun 2024 06:06:05 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42141cb1b2csm5097095e9.33.2024.06.03.06.06.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 06:06:04 -0700 (PDT)
Message-ID: <395ded49-ae21-4316-870f-a0fd9e3cecd1@freebox.fr>
Date: Mon, 3 Jun 2024 15:06:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: msm8998: add HDMI GPIOs
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>, MSM <linux-arm-msm@vger.kernel.org>,
 DT <devicetree@vger.kernel.org>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>
References: <8cc61db5-2920-4dd1-8132-5af434fb05b1@freebox.fr>
 <o6wwzb4qblelfpfsrmqhoovjnyvymf42p2ilv4bzn4le3nklbv@kj3qklez7izy>
 <40903165-c965-4c6c-a3bf-104b1088730b@freebox.fr>
 <CAA8EJppg9ftnQVrZhEO9Ro2Ji6whCgQLaJrr0yCzV-2hF2HEtQ@mail.gmail.com>
 <8475b07d-8d44-4969-9c15-2926a6397b1c@freebox.fr>
 <CAA8EJprA4R5pkLTocpCWVn-HkUYeFSas7UBrU0rvt55KJ=d56g@mail.gmail.com>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <CAA8EJprA4R5pkLTocpCWVn-HkUYeFSas7UBrU0rvt55KJ=d56g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/05/2024 18:50, Dmitry Baryshkov wrote:

> Ok, you have dropped several clocks, which I think might be required
> for the device to function. For example, msm8996 doesn't have
> MNOC_AHB_CLK, while msm8998 has it. It might be that we should be
> enabling the clock via the interconnect driver instead (or maybe it is
> handled by RPM?).
> 
> Let's hope that we can sort the clocks. I have no other issues remaining.

For quick reference:

msm8996-sde.dtsi (VENDOR)

	sde_hdmi_tx: qcom,hdmi_tx_8996@9a0000 {
		compatible = "qcom,hdmi-tx-8996";

		reg =	<0x009a0000 0x50c>,
			<0x00070000 0x6158>,
			<0x009e0000 0xfff>;
		reg-names = "core_physical",
			"qfprom_physical",
			"hdcp_physical";
		clocks = <&clock_mmss clk_mdss_mdp_vote_clk>,
			 <&clock_mmss clk_mdss_ahb_clk>,
			 <&clock_mmss clk_mdss_hdmi_clk>,
			 <&clock_mmss clk_mdss_hdmi_ahb_clk>,
			 <&clock_mmss clk_mdss_extpclk_clk>;
		clock-names =
			"mdp_core_clk",
			"iface_clk",
			"core_clk",
			"alt_iface_clk",
			"extp_clk";
		interrupt-parent = <&sde_kms>;
		interrupts = <8 0>;
		hpd-gdsc-supply = <&gdsc_mdss>;
		qcom,hdmi-tx-hpd-gpio = <&pm8994_mpps 4 0>;
		pinctrl-names = "default", "sleep";
		pinctrl-0 = <&mdss_hdmi_hpd_active
			     &mdss_hdmi_ddc_active
			     &mdss_hdmi_cec_active>;
		pinctrl-1 = <&mdss_hdmi_hpd_suspend
			     &mdss_hdmi_ddc_suspend
			     &mdss_hdmi_cec_suspend>;

		sde_hdmi_audio: qcom,sde-hdmi-audio-rx {
			compatible = "qcom,msm-hdmi-audio-codec-rx";
		};
	};



msm8996.dtsi (MAINLINE)

			mdss_hdmi: hdmi-tx@9a0000 {
				compatible = "qcom,hdmi-tx-8996";
				reg = <0x009a0000 0x50c>,
				      <0x00070000 0x6158>,
				      <0x009e0000 0xfff>;
				reg-names = "core_physical",
					    "qfprom_physical",
					    "hdcp_physical";

				interrupt-parent = <&mdss>;
				interrupts = <8>;

				clocks = <&mmcc MDSS_MDP_CLK>,
					 <&mmcc MDSS_AHB_CLK>,
					 <&mmcc MDSS_HDMI_CLK>,
					 <&mmcc MDSS_HDMI_AHB_CLK>,
					 <&mmcc MDSS_EXTPCLK_CLK>;
				clock-names =
					"mdp_core",
					"iface",
					"core",
					"alt_iface",
					"extp";

				phys = <&mdss_hdmi_phy>;
				#sound-dai-cells = <1>;

				status = "disabled";

				ports {
					#address-cells = <1>;
					#size-cells = <0>;

					port@0 {
						reg = <0>;
						mdss_hdmi_in: endpoint {
							remote-endpoint = <&mdp5_intf3_out>;
						};
					};
				};
			};



msm8998-sde.dtsi (VENDOR)

	sde_hdmi_tx: qcom,hdmi_tx_8998@c9a0000 {
		cell-index = <0>;
		compatible = "qcom,hdmi-tx-8998";
		reg =	<0xc9a0000 0x50c>,
			<0x780000 0x621c>,
			<0xc9e0000 0x28>;
		reg-names = "core_physical", "qfprom_physical", "hdcp_physical";
		interrupt-parent = <&sde_kms>;
		interrupts = <8 0>;
		interrupt-controller;
		#interrupt-cells = <1>;
		qcom,hdmi-tx-ddc-clk-gpio = <&tlmm 32 0>;
		qcom,hdmi-tx-ddc-data-gpio = <&tlmm 33 0>;
		qcom,hdmi-tx-hpd-gpio = <&tlmm 34 0>;
		qcom,hdmi-tx-hpd5v-gpio = <&tlmm 133 0>;
		pinctrl-names = "default", "sleep";
		pinctrl-0 = <&mdss_hdmi_hpd_active
			&mdss_hdmi_ddc_active
			&mdss_hdmi_5v_active>;
		pinctrl-1 = <&mdss_hdmi_hpd_suspend
			&mdss_hdmi_ddc_suspend
			&mdss_hdmi_5v_suspend>;
		hpd-gdsc-supply = <&gdsc_mdss>;
		qcom,supply-names = "hpd-gdsc";
		qcom,min-voltage-level = <0>;
		qcom,max-voltage-level = <0>;
		qcom,enable-load = <0>;
		qcom,disable-load = <0>;

		clocks = <&clock_mmss clk_mmss_mnoc_ahb_clk>,
			 <&clock_mmss clk_mmss_mdss_ahb_clk>,
			 <&clock_mmss clk_mmss_mdss_hdmi_clk>,
			 <&clock_mmss clk_mmss_mdss_mdp_clk>,
			 <&clock_mmss clk_mmss_mdss_hdmi_dp_ahb_clk>,
			 <&clock_mmss clk_mmss_mdss_extpclk_clk>,
			 <&clock_mmss clk_mmss_mnoc_ahb_clk>,
			 <&clock_mmss clk_mmss_misc_ahb_clk>,
			 <&clock_mmss clk_mmss_mdss_axi_clk>;
		clock-names = "hpd_mnoc_clk", "hpd_iface_clk",
				"hpd_core_clk", "hpd_mdp_core_clk",
				"hpd_alt_iface_clk", "core_extp_clk",
				"mnoc_clk","hpd_misc_ahb_clk",
				"hpd_bus_clk";

		/*qcom,mdss-fb-map = <&mdss_fb2>;*/
		qcom,pluggable;
	};



IIUC the discussion on IRC, the additional clocks are required,
so the binding should be more like this:

+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -19,14 +19,15 @@ properties:
       - qcom,hdmi-tx-8974
       - qcom,hdmi-tx-8994
       - qcom,hdmi-tx-8996
+      - qcom,hdmi-tx-8998
 
   clocks:
     minItems: 1
-    maxItems: 5
+    maxItems: 8
 
   clock-names:
     minItems: 1
-    maxItems: 5
+    maxItems: 8
 
   reg:
     minItems: 1
@@ -151,6 +152,27 @@ allOf:
             - const: extp
         hdmi-mux-supplies: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,hdmi-tx-8998
+    then:
+      properties:
+        clocks:
+          minItems: 8
+        clock-names:
+          items:
+            - const: mdp_core
+            - const: mnoc
+            - const: iface
+            - const: bus
+            - const: iface_mmss
+            - const: core
+            - const: alt_iface
+            - const: extp



So this is good?

                                clocks = <&mmcc MDSS_MDP_CLK>,
                                         <&mmcc MNOC_AHB_CLK>,
                                         <&mmcc MDSS_AHB_CLK>,
                                         <&mmcc MDSS_AXI_CLK>,
                                         <&mmcc MISC_AHB_CLK>,
                                         <&mmcc MDSS_HDMI_CLK>,
                                         <&mmcc MDSS_HDMI_DP_AHB_CLK>,
                                         <&mmcc MDSS_EXTPCLK_CLK>;
                                clock-names =
                                        "mdp_core",
                                        "mnoc",
                                        "iface",
                                        "bus",
                                        "iface_mmss",
                                        "core",
                                        "alt_iface",
                                        "extp";


