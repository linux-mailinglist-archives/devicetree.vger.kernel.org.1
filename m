Return-Path: <devicetree+bounces-116161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E6E9B1F6C
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 18:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4850A1F212B8
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 17:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD2D516A956;
	Sun, 27 Oct 2024 17:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MnHCYM6j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7C215573A
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 17:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730051012; cv=none; b=cT6L+Ig0RP6o/jMwNGieBSlHd3Zvwa4uv5lVbT3av/2GaqRh2a4HNwD/iNGnizFt721lCD0Z24RK4JFW7rJOisZOmZsYwtOQOMP/1/M/giDK3VSB7HFC+Y0s3JjTQpRtwB0q0m2kv/DSmEIVxHyIwe6rsJuGPOldKJ14LR/ev+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730051012; c=relaxed/simple;
	bh=nLDRRiCww/tgs6c6d6xGl+2nyrGC8jboXboFHuZ1Yec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XPl4sKJBXWe3Zeuw0Wx3utfeiGIbCCLnw3f/mNY+ynBoEqAegTddo/t83uTZv9luXcLO9g1cqh6/6wFA5V36f8SEyTsDtm6lsU24PJZAathUfsUoXR4/ripcfKOzYt+2riEQcBLQMpe+KnETkta+Sj2ZeBmq/eSGRqcQRpysV+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MnHCYM6j; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb5be4381dso33121311fa.2
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 10:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730051008; x=1730655808; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1EV25V1A/zt91ysXdMYLLmJQWA2sKhFgTRz50NDhmfU=;
        b=MnHCYM6jXt9ixRgOMskXTmq3O0lo6GiseNBmn+qpFGNvbGYd+3PIvowaKJZGuBtPY4
         4YNXOSiL0BW4A7Vsdn630Aacm/yhkZB5uESfKI8hhDXqgaMwaqL76dJ8jexPc6ceZnHy
         39x0jognj+WlZkly8qrTDJR2x5ZAokJCHoLn2GnaHXPqgsNh66Z3Ge5dGM+oOxBk+Yod
         1JzfKEle/KyVaxQHGh6evsRtAmndrE4sbvV7cHdPhS+tIGJ7PgtF+UHHmDXkou/6OwYT
         PSQ3YdcbjrAmKMKVELGUtZWwRfVV2p/cjKk+ovY+li4vc4R3x5uaFrjvN6s9AuDM7q87
         TIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730051008; x=1730655808;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1EV25V1A/zt91ysXdMYLLmJQWA2sKhFgTRz50NDhmfU=;
        b=W9im1+aCAj9gOlTeFvSOwOjzAVwpV9afy5ZBiHse8NSgDxtBlNBIE1elN+puK2gsKm
         4k8YonsVFaDh2I2/emoH9AuxEICUyN1rrUF3qW05jBxXdseLgIfnhfqDflaKJdW0gYrC
         SVRZZOz+PsoSaJ6Cca5FJC9aBy7JqEyEiCVHyb7woSoIemcZoh3fnMwGhND5mAFpY4Hd
         V1nEGuYsePkarDG2M4oMgFqrBTjEZ7dqtGnyB4qNMPwe3Iq41Tnvm2uPXVF+qKcSo9Dh
         KYB1RUTJHYM1Ig578q/K8xW4ODutW2li8UHsQPPPAweT90qAokATf/cgNm7jWEQVcalX
         Gt2g==
X-Forwarded-Encrypted: i=1; AJvYcCUH/oQIsGaSbnbFJJIX6cReYtqqqTEGllaj7EPHavgRk2QAc0XTt6izu7ImilMgwBbn46sC5/qlI0a7@vger.kernel.org
X-Gm-Message-State: AOJu0YwoGgCPLawlaGrOf5y0BNN19ATxYTu76bh2B2FGY+avt6/f7GXm
	pSlg0enUWGcFq6fp1Gv2ZchK/zxBuRqXYZ3gMDuI8JJPJRxMuirJL/PsY6SW8PY=
X-Google-Smtp-Source: AGHT+IHI+RVm+5DRo3QJRn+uEc8Suxba+80gTEn6nNPtT+IWPE1zZ4KtUXQY/LaETXvJy9wttJsQbg==
X-Received: by 2002:a2e:bea2:0:b0:2f7:7cf7:474d with SMTP id 38308e7fff4ca-2fcbdffd6f0mr19393681fa.27.1730051008133;
        Sun, 27 Oct 2024 10:43:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fcb4519df4sm9126161fa.29.2024.10.27.10.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 10:43:26 -0700 (PDT)
Date: Sun, 27 Oct 2024 19:43:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sar2130p: add support for SAR2130P
Message-ID: <hdygoayqsndkqdwereuvt5gfpgmhxrh2anaj7zsdm7ktuf6fus@vfhl7ubbbgsg>
References: <20241027-sar2130p-dt-v1-0-739d36d31c33@linaro.org>
 <20241027-sar2130p-dt-v1-1-739d36d31c33@linaro.org>
 <9cfa6159-d271-45c8-93dc-8da4072441af@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9cfa6159-d271-45c8-93dc-8da4072441af@quicinc.com>

On Sun, Oct 27, 2024 at 12:26:33PM +0530, Krishna Kurapati wrote:
> 
> 
> On 10/27/2024 6:54 AM, Dmitry Baryshkov wrote:
> > Add DT file for the Qualcomm SAR2130P platform.
> > 
> > Co-developed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   arch/arm64/boot/dts/qcom/sar2130p.dtsi | 3091 ++++++++++++++++++++++++++++++++
> >   1 file changed, 3091 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..a8edbb9e6591265644476623aec36be9147ed7a0
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
> 
> [...]
> 
> > +
> > +		usb_1: usb@a6f8800 {
> > +			compatible = "qcom,sar2130p-dwc3", "qcom,dwc3";
> > +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> > +			#address-cells = <2>;
> > +			#size-cells = <2>;
> > +			ranges;
> > +
> > +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> > +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> > +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> > +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> > +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> > +				 <&tcsr TCSR_USB3_CLKREF_EN>;
> > +			clock-names = "cfg_noc",
> > +				      "core",
> > +				      "iface",
> > +				      "sleep",
> > +				      "mock_utmi",
> > +				      "xo";
> > +
> > +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> > +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
> > +			assigned-clock-rates = <19200000>, <200000000>;
> > +
> > +			interrupts-extended = <&intc GIC_SPI 350 IRQ_TYPE_LEVEL_HIGH>,
> > +					      //<&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> > +					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
> > +					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
> > +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "pwr_event",
> > +					  //"hs_phy_irq",
> > +					  "dp_hs_phy_irq",
> > +					  "dm_hs_phy_irq",
> > +					  "ss_phy_irq";
> > +
> 
> I checked the hw specifics and hs_phy_irq is 349.

Thanks a lot!

> > +			power-domains = <&gcc USB30_PRIM_GDSC>;
> > +			required-opps = <&rpmhpd_opp_nom>;
> > +
> > +			resets = <&gcc GCC_USB30_PRIM_BCR>;
> > +
> > +			interconnects = <&system_noc MASTER_USB3_0 QCOM_ICC_TAG_ALWAYS
> > +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> > +					 &config_noc SLAVE_USB3_0 QCOM_ICC_TAG_ALWAYS>;
> > +			interconnect-names = "usb-ddr", "apps-usb";
> > +
> > +			status = "disabled";
> > +
> > +			usb_1_dwc3: usb@a600000 {
> > +				compatible = "snps,dwc3";
> > +				reg = <0x0 0x0a600000 0x0 0xcd00>;
> > +				interrupts = <GIC_SPI 347 IRQ_TYPE_LEVEL_HIGH>;
> > +				iommus = <&apps_smmu 0x20 0x0>;
> > +				phys = <&usb_1_hsphy>,
> > +				       <&usb_dp_qmpphy QMP_USB43DP_USB3_PHY>;
> > +				phy-names = "usb2-phy", "usb3-phy";
> > +
> > +				snps,has-lpm-erratum;
> > +				snps,hird-threshold = /bits/ 8 <0x0>;
> > +				snps,is-utmi-l1-suspend;
> > +				snps,dis-u1-entry-quirk;
> > +				snps,dis-u2-entry-quirk;
> > +				snps,dis_u2_susphy_quirk;
> > +				snps,dis_u3_susphy_quirk;
> > +				snps,parkmode-disable-ss-quirk;
> > +
> > +				tx-fifo-resize;
> > +				dma-coherent;
> > +				usb-role-switch;
> > +
> 
> Ideally, neither the QAR2130P or customer designs support ID detection
> today. Not that it can't but no one is doing it. Everyone uses it in
> peripheral mode. Also on QAR2130 (which I assume is same as QXR platform on
> downstream, the role switch is provided by BQ256xx battery charger driver
> (apologies if I used the name of the driver wrong), via extcon. Since
> (AFAIK) this support is not there on upstream today and no one uses host
> mode, you can choose to drop role switch here.

I see your point (indeed, I don't have OTG configured / enabled).
However I'd still prefer to keep the usb-role-switch in the USB node and
the orientation-switch enabled for the USB+DP PHY, as those the SoC
still has those features.

-- 
With best wishes
Dmitry

