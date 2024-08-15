Return-Path: <devicetree+bounces-93905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A5E952EF3
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 15:18:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 953721C23E53
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 13:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F0E519E7DB;
	Thu, 15 Aug 2024 13:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z8+1/vgq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692EC15D5D9
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 13:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723727909; cv=none; b=KRZUuCCJdFmNQbZRAiS+lKi6NPnWGmE6w1uHGK1JLS1nbilE7l/9HT6RGAjhtV6IsId7QzVE9+J1/RbWMJ5P00Hq0rG17tpxpvknLbSGeHccqTSuOOFTtajlzzhqDaGnxlbgOHxHS3ZyohurjVM30M3Eg1aJiuDEe4PYJYZZvRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723727909; c=relaxed/simple;
	bh=9QzxkGKPHGI6MZIx5pSqqR5HuH/5Fo/m92L6t1rw1yo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tr4i6JBlH9gN2kOUSuTHfFcgryPfAhTiI+E7/IsHipVzuk+3vtfa02bqmwDUDRO5QTZvojX3sCyBDixN9k42xmV+iFSVPfEcAraFEJIgvVNSWfyTigBfuYhD2w8yItgKAvoHSNOFEpHScgJAydJeVYMvBmE/+b+ackvZfXFkfYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z8+1/vgq; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a8384008482so68874166b.2
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 06:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723727905; x=1724332705; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6Pam5Ci+C4rFF08wOghK1K2f2OhCc/g5cnbX0w9Mc4I=;
        b=Z8+1/vgq+SvqxoGZ3iOc7E5lNxrTdGmflBaEhrDtq8qrocBq9S751xBZ+J/oTqn90d
         zTdGhDVCWNbNHQR7s8AJmwdwH87jJ0WUsdga2Gt0MoCpGkmoNz4jFJP9vAVJus1G6Hi9
         kC71mWhk4l3PS15aFs53Eo23Tb5rKtVCknNlX36BU21e8Gy8Hukl7Co/pB4PQ9Tn2Xma
         wJ0quQgzhfzs1V2urxGxrTcgsGCoYH7OL7YUdA7A5gTMg28b1LN0Fe2jkf/ZpWotjFLA
         q41Ev1Uzhse7tBNa0+tUj2gQNoGYAhEWBETCCoM44M7cGkWcGLzfw/knTmjIiZscG8K4
         UPsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723727905; x=1724332705;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Pam5Ci+C4rFF08wOghK1K2f2OhCc/g5cnbX0w9Mc4I=;
        b=nIKu2M7JkQZypN3OPil+wWAU9KCPjOovqf1Wu9dsxhEZK25P1MWbcCW+1D5ObKD7Y7
         B5uQul1ok1qmsY5eQhPeEjhWk+00ye6fd2OXdSHJJrXKpGcts74DWR0vaM1V7dQhRa2I
         ZReI6CdQhXacuZYT/i/ddUaAoZhQKGvLyjdsQFIK77o4chWjiVDaPIjPyO2pFwZeWsa8
         6kmqpg5HuwxrNYb+qzPyrJXK+7OYiqTsUo83c+JUYMn/MwHLK9hzUh3oifuQUIvg/hDw
         eOl1JIJHtH3DfQ6qishqGMa1yiW+fK1rwH8jmsIu7mmgSj5pgzTfQGUZX6hdUnzvSzhY
         U/tw==
X-Forwarded-Encrypted: i=1; AJvYcCWYpR9D2tr7xJ/GC0dmLYZbWuRnfv2JT8QrdoxYwEk6wNI6ZhVrfuRFGGdltTKQbIPkfyOU3jqFK2LGVxMg5fo6V1O4X9+dFbtOhg==
X-Gm-Message-State: AOJu0Yxd14jSYgq/YHpSDKthB3AkDGxaMNxO0P/Yqw+e667iQ0HFsheW
	C2pnZaX1z6IdQsIBeJeft8/1LThrRWzCMQrP92UfrSaUvZNOMJntm80DMYASDLg=
X-Google-Smtp-Source: AGHT+IHM8+Udq7m54PDM2N1th3MFrrcrJsKXCwIA/ehjKz4VTI2MNH9h0V4lGOkyJ6MlTp8/EauXtw==
X-Received: by 2002:a17:907:7e95:b0:a77:db36:1ccf with SMTP id a640c23a62f3a-a83670913a4mr460177666b.42.1723727904580;
        Thu, 15 Aug 2024 06:18:24 -0700 (PDT)
Received: from linaro.org ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a838396cdbesm101056866b.200.2024.08.15.06.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 06:18:24 -0700 (PDT)
Date: Thu, 15 Aug 2024 16:18:22 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Marcus Glocker <marcus@nazgul.ch>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: Add UFS node
Message-ID: <Zr4AHoPpAXJM6AC+@linaro.org>
References: <v2iah5yrne4u6uzrnzg36tvtxzqrpiez6io2gyyfrht2x42umw@5ribqndiavxv>
 <ejeph4wspggkmvhl7qmpvw5jlojyvma7epqd67i6vk5p6fncrk@de56nvgi6vzi>
 <Zr3cuxv4EdxMQa9C@linaro.org>
 <kt5mrxse7dirsjgu3ldv4rzasgbmykluul7ie26zlavhlmfz4r@bo4fd4ybt7bx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <kt5mrxse7dirsjgu3ldv4rzasgbmykluul7ie26zlavhlmfz4r@bo4fd4ybt7bx>

On 24-08-15 13:54:01, Marcus Glocker wrote:
> On Thu, Aug 15, 2024 at 01:47:23PM +0300, Abel Vesa wrote:
> 
> > On 24-08-15 12:42:29, Marcus Glocker wrote:
> > > Add the UFS Host Controller node.  This was basically copied from the
> > > arch/arm64/boot/dts/qcom/sc7180.dtsi file.
> > > 
> > > Signed-off-by: Marcus Glocker <marcus@nazgul.ch>
> > > ---
> > >  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 71 ++++++++++++++++++++++++++
> > >  1 file changed, 71 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > > index 7bca5fcd7d52..235e20e4b51f 100644
> > > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > > @@ -2878,6 +2878,77 @@ mmss_noc: interconnect@1780000 {
> > >  			#interconnect-cells = <2>;
> > >  		};
> > >  
> > > +		ufs_mem_hc: ufs@1d84000 {
> > > +			compatible = "qcom,x1e80100-ufshc", "qcom,ufshc",
> > > +				     "jedec,ufs-2.0";
> > > +			reg = <0 0x01d84000 0 0x3000>;
> > > +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> > > +			phys = <&ufs_mem_phy>;
> > > +			phy-names = "ufsphy";
> > > +			lanes-per-direction = <1>;
> > > +			#reset-cells = <1>;
> > > +			resets = <&gcc GCC_UFS_PHY_BCR>;
> > > +			reset-names = "rst";
> > > +
> > > +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> > > +
> > > +			iommus = <&apps_smmu 0xa0 0x0>;
> > > +
> > > +			clock-names = "core_clk",
> > > +				      "bus_aggr_clk",
> > > +				      "iface_clk",
> > > +				      "core_clk_unipro",
> > > +				      "ref_clk",
> > > +				      "tx_lane0_sync_clk",
> > > +				      "rx_lane0_sync_clk";
> > > +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> > > +				 <&rpmhcc RPMH_CXO_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>;
> > > +			freq-table-hz = <50000000 200000000>,
> > > +					<0 0>,
> > > +					<0 0>,
> > > +					<37500000 150000000>,
> > > +					<0 0>,
> > > +					<0 0>,
> > > +					<0 0>;
> > > +
> > > +			interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
> > > +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > > +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> > > +					 &config_noc SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;
> > > +			interconnect-names = "ufs-ddr", "cpu-ufs";
> > > +
> > > +			qcom,ice = <&ice>;
> > > +
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		ufs_mem_phy: phy@1d87000 {
> > > +			compatible = "qcom,x1e80100-qmp-ufs-phy";
> > 
> > Can't find any phy patch that adds this compatible to the driver.
> 
> That might well be, since this is pretty new hardware.  But the goal
> of this submission is only to describe the hardware, not to add
> immediate support to the OS drivers.  Whether the drivers will make use
> of it, is a different story, and up to the people who maintain the
> respective drivers.
> 
> Getting the right DTB in, at least opens the possibility to continue
> development in the driver area to further support this new hardware.
> 
> But I won't touch your drivers, not my goal.

Presumably, you do have the UFS working on your Book4 laptop, right?

If so, I would expect you do have the PHY working as well and therefore
a patch that adds the X Elite compatible, right?

> 
> > > +			reg = <0 0x01d87000 0 0x1000>;
> > > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > > +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
> > > +			clock-names = "ref",
> > > +				      "ref_aux",
> > > +				      "qref";
> > > +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> > > +			resets = <&ufs_mem_hc 0>;
> > > +			reset-names = "ufsphy";
> > > +			#phy-cells = <0>;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		ice: crypto@1d90000 {
> > > +			compatible = "qcom,x1e80100-inline-crypto-engine",
> > > +				     "qcom,inline-crypto-engine";
> > > +			reg = <0 0x01d90000 0 0x8000>;
> > > +			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
> > > +		};
> > > +
> > >  		pcie6a: pci@1bf8000 {
> > >  			device_type = "pci";
> > >  			compatible = "qcom,pcie-x1e80100";
> > > -- 
> > > 2.39.2
> > > 

