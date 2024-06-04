Return-Path: <devicetree+bounces-72288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB498FB469
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 15:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1AE411C2210B
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:51:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F2B29CF0;
	Tue,  4 Jun 2024 13:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="2IEtuynJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712E917C72
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 13:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717509057; cv=none; b=Rba1tCJXUngmqICmQcoI+LQWYRiwdmtkd2yhWTJ5zcEHSOqSuvxTVxw7r9CqmXvOcNa0fD39lTVrqq6/MJxrdNacowMCoXwAuHypQ5NmDLVlibguj+ZSMEaSuKfAcBOdzUouxQa9yxU9r4JuKtqkY2SqG+xODb3aGQABqXE7Tzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717509057; c=relaxed/simple;
	bh=lgQ9TISB+gx9SFm7r4RKRfj7kA6xLYET6ecz7rril+8=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=tptfYrTKgSlQcypM2/JCZIWv0Gb4SUR6UUVJCRuz/gGv6n3RWDR8J0qTVtMcf+SNneRhkX9EwIKJITUQcBOU7ReGCTx4pRhgbjMOuMXppdJvNEjeNm3u6cN/40izc8L6npIFMcwvjgaxYAjg9ZNZnnBPKgwTYRapDt5bB9UW/XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=2IEtuynJ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42122ac2f38so32667975e9.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 06:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1717509054; x=1718113854; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=96Dvl82Hjo8efzNzsjm1jSvKrMhIPC8VaRY2If0PCPw=;
        b=2IEtuynJhki0EdTuS5fyPooil0RWHl+T+2Zu+ASvB1iOQZ/7geV6tjj7m4WYLXNKxH
         Bt2I/gCHeP2g1r3R56sQfyIzmgMisgFbz1xGxsX6wtcj3upLYFYbvUmW/QIxDqzV5jr3
         fTISkrEJf2HdnkDVL3JiY+psP/+AkIiD0FX37VhBx4gTtCRsUsOMZacwfVeE7vYzd+Zh
         54heT0G9PQDooELy3e/0s4lFPjyaQ5LnB7J84bwRvnCD152Wb7ITTCX/hz/nvONhEBbW
         MgrYPIHJmCnv+8y44NTTWNboCniYdIEuWRBxY36L72wucBNJRjW5UYOxlHITp960QmiU
         2GTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717509054; x=1718113854;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=96Dvl82Hjo8efzNzsjm1jSvKrMhIPC8VaRY2If0PCPw=;
        b=UeRzGX/uFBWRRn1ceecaGrPh5pPwUXFTHlPWc+hMtk9bPGjS5A9QFk3/8PvwojWJGw
         cD/jm5ejnL5NncVybnO7tXUKKh7zEj8ok17QpmyVA58gcGOnGkv8gw7jgug3k44LFNWi
         ogLkSVySJbZ/x/AFPBVSIIs2XNpUEuyIA6fv0vt4mLCyq7v4+adfWI+p35rR5pqMXj8I
         /HLqLWiKlQU/owKMrR9THBcSnBGA+n2su2c70Ypc2VsawklAJM44bKZX0JdAxUl6zKS5
         y586Ofs49nnyOgHBzgqcMCOwDwUc+87vML79WwDxoTd2iHR2Kynn02BJTimr580GUDBF
         wbcw==
X-Forwarded-Encrypted: i=1; AJvYcCWUKYG6aag2SfgywfDwcWt2Ved/Jwmzpx6hTRhoQ/hPpHxZ9y5zAyuh99WhF2+xrPk4GYgiBhRAHG2hbL0RpEOoo7086kgnDl2FjQ==
X-Gm-Message-State: AOJu0YyJOkVQLX9Dr40lXopNBdKa0M4EUnlPf7iYrhvQ0Cj/jTqZ/LFH
	J8qf6Zd2sguXagqqDq3ZYDyQ3lyJ0+9bELVm11EO2nq3rAVjNuAJyBKWzIGi9xg=
X-Google-Smtp-Source: AGHT+IHiQS1qEab8CDh9QhUYvRIc9qMluklpij7Hsvm1tty61lkjVQR1crQTp7gzhBw6FTV42IpGwA==
X-Received: by 2002:a05:600c:5487:b0:421:556f:5fb8 with SMTP id 5b1f17b1804b1-421556f6215mr2242405e9.0.1717509053947;
        Tue, 04 Jun 2024 06:50:53 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42133227f8asm139569755e9.19.2024.06.04.06.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jun 2024 06:50:53 -0700 (PDT)
Message-ID: <648b2798-9302-4c6e-9ef2-e4318066d28f@freebox.fr>
Date: Tue, 4 Jun 2024 15:49:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
From: Marc Gonzalez <mgonzalez@freebox.fr>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 MSM <linux-arm-msm@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <a2cb1290-9e01-4136-9592-ce439b1096b6@freebox.fr>
Content-Language: en-US
In-Reply-To: <a2cb1290-9e01-4136-9592-ce439b1096b6@freebox.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

From: Arnaud Vrac <avrac@freebox.fr>

Port device nodes from vendor code.

Signed-off-by: Arnaud Vrac <avrac@freebox.fr>
Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 100 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 99 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index ba5e873f0f35f..f65a76da61ea8 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2785,7 +2785,7 @@ mmcc: clock-controller@c8c0000 {
 				 <&mdss_dsi0_phy 0>,
 				 <&mdss_dsi1_phy 1>,
 				 <&mdss_dsi1_phy 0>,
-				 <0>,
+				 <&hdmi_phy 0>,
 				 <0>,
 				 <0>,
 				 <&gcc GCC_MMSS_GPLL0_DIV_CLK>;
@@ -2890,6 +2890,14 @@ dpu_intf2_out: endpoint {
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
 
@@ -3045,6 +3053,96 @@ mdss_dsi1_phy: phy@c996400 {
 
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
+				interrupts = <8>;
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
+				#sound-dai-cells = <1>;
+
+				pinctrl-names = "default", "sleep";
+				pinctrl-0 = <&hdmi_hpd_default
+					     &hdmi_ddc_default
+					     &hdmi_cec_default>;
+				pinctrl-1 = <&hdmi_hpd_sleep
+					     &hdmi_ddc_default
+					     &hdmi_cec_default>;
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
+				clocks = <&mmcc MDSS_AHB_CLK>,
+					 <&gcc GCC_HDMI_CLKREF_CLK>,
+					 <&rpmcc RPM_SMD_XO_CLK_SRC>;
+				clock-names = "iface",
+					      "ref",
+					      "xo";
+
+				status = "disabled";
+			};
 		};
 
 		venus: video-codec@cc00000 {
-- 
2.34.1


