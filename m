Return-Path: <devicetree+bounces-64966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB3F8BBD76
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 19:34:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79D9028215F
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2024 17:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58BF15D8EE;
	Sat,  4 May 2024 17:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kbE5RMIh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAD25C613
	for <devicetree@vger.kernel.org>; Sat,  4 May 2024 17:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714844069; cv=none; b=Pf/dCAlLtOv0XPmZipOduY68GfAYW+xpOz7BgAP4i+08cvoDsL8l7MTO+gNRATCp58AR0+w5aR6Mxch0uXtrDz8CIyehicrvNLHPu5mXtNK57KnGLp1w4NqMaNfhO11D2ee8BBV7LlfYjgcs9nHYcjw46p8pYQ2o4HfJhoTHOq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714844069; c=relaxed/simple;
	bh=t8DJCID8xMlgBo9/Zhgdzdd3fTKTsJkNHj1Ld2lCVV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tn944W3m2UmVXuQhIsXNQwcfpUjML/JTCT60ywMs2m1PFsF9bXoRBSkGJvU2UKGTLZhZxltRmxkqgFILtvEl9qUseLNW0PXMlVts8YbitUxUeCQBtztVYyOD7b6Ue8WQj7dhMVpLgk7UoqmVN51AUZgxMUBa07clQ3nTmPl/Aho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kbE5RMIh; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5ad2da2196aso532125eaf.2
        for <devicetree@vger.kernel.org>; Sat, 04 May 2024 10:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714844067; x=1715448867; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lF9hGa2Fe1Mvyb7TMDOS1Nsom143EnG0rlaw7MDvQXo=;
        b=kbE5RMIhRmeJWT/j4BMuVY3zZIoyN5L59BPWK2cesyrb1SyM+soaoz4TVb1Mbb89pE
         5X8/RdiHKQ79LMyCb7dE1yjPb/DMpM3aAhpi9JSSL0ny6RXLYg9GSV3ZZX/m7Vb3A3Jt
         fIYxJy3/6/tKP2gKbL6LpS+3F0EtAdIR2CaUVoJn9t9hfmTUS9xnQALTbkpjCsOHQd6s
         y0fyADqxTDs7ivbmK7RSE8SDKis9CRtc4H1T5chYzENdp/abAmM8eJbx5lwWBy9pZqs5
         Ti07JQeyGqV/NqxVDY+Ep566Kth+Ic4gsDKgswIbm1QzXs1phMIWpx5IBHnW2e7fCZJe
         w6XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714844067; x=1715448867;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lF9hGa2Fe1Mvyb7TMDOS1Nsom143EnG0rlaw7MDvQXo=;
        b=HoRmTn5MZrRCsrLngLdbntvGk5W74hW/gMAwVi6DiYVyAgBNNizolF12YpZiKcAGNP
         prkvHstgYRzJDjcfreHkl0Iuy5PP2ihW4M8wSBqhR6FZ8LgLjWgYGS9KCKXstphEheXp
         4cx2OOZ3mA+xhcc3qvWP4GEpRunnwCtNG2iq/XDkOKxXOdd2rzC94dcmZMH2fMOTlQAQ
         BAHGi75HhMREUzWCUJmiffSsgstvAu8GD3A08DNQj7CywjkPQoHemNCmVRte7xCsDYYb
         7svPjifafpVE1iJHvqxRddW211TcGF68iaH83oRt30wsCW8UnLWRptO3Iy7KaADASi8t
         cl7w==
X-Forwarded-Encrypted: i=1; AJvYcCVY3rTQl6SJzWQaKCGQypAx58MA+NXamvQMif/2lDF1YKfdRDwNTexB2Fb8tppDOhT+oTXq0nTTvUMFdDPd/W2qgnLArrwPSK6zSg==
X-Gm-Message-State: AOJu0Yxf66TPeSt2GqwYsDO2uRT7YgXzvxQY5BKMStLUz5e8KzVcr48k
	eelWvcuTLNWEhAtU27SsssB2fhf95wMTzscQ2idX7B2UKvG+VQWQos7ZA3WLfw==
X-Google-Smtp-Source: AGHT+IGtCliIpa2MVbSI04PDWYwtgRMCuPn2T1Pi/UZAfpS5rQ03K3VFFKpFTdeHLmmbH2XLRGtNrA==
X-Received: by 2002:a05:6358:5290:b0:17b:b559:2ba3 with SMTP id g16-20020a056358529000b0017bb5592ba3mr7033372rwa.11.1714844066742;
        Sat, 04 May 2024 10:34:26 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id j1-20020a634a41000000b006204acd1e0esm1658107pgl.10.2024.05.04.10.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:34:26 -0700 (PDT)
Date: Sat, 4 May 2024 23:04:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 13/14] arm64: dts: rockchip: Add PCIe endpoint mode
 support
Message-ID: <20240504173420.GJ4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-13-a0f5ee2a77b6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-13-a0f5ee2a77b6@kernel.org>

On Tue, Apr 30, 2024 at 02:01:10PM +0200, Niklas Cassel wrote:
> Add a device tree node representing PCIe endpoint mode.
> 
> The controller can either be configured to run in Root Complex or Endpoint
> node.
> 
> If a user wants to run the controller in endpoint mode, the user has to
> disable the pcie3x4 node and enable the pcie3x4_ep node.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi | 35 ++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> index 5519c1430cb7..09a06e8c43b7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> @@ -136,6 +136,41 @@ pcie3x4_intc: legacy-interrupt-controller {
>  		};
>  	};
>  
> +	pcie3x4_ep: pcie-ep@fe150000 {
> +		compatible = "rockchip,rk3588-pcie-ep";
> +		clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
> +			 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
> +			 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>;
> +		clock-names = "aclk_mst", "aclk_slv",
> +			      "aclk_dbi", "pclk",
> +			      "aux", "pipe";
> +		interrupts = <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 271 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH 0>,
> +			     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH 0>;
> +		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
> +				  "dma0", "dma1", "dma2", "dma3";
> +		max-link-speed = <3>;
> +		num-lanes = <4>;
> +		phys = <&pcie30phy>;
> +		phy-names = "pcie-phy";
> +		power-domains = <&power RK3588_PD_PCIE>;
> +		reg = <0xa 0x40000000 0x0 0x00100000>,
> +		      <0xa 0x40100000 0x0 0x00100000>,
> +		      <0x0 0xfe150000 0x0 0x00010000>,
> +		      <0x9 0x00000000 0x0 0x40000000>,
> +		      <0xa 0x40300000 0x0 0x00100000>;
> +		reg-names = "dbi", "dbi2", "apb", "addr_space", "atu";

Isn't it common to define 'reg' property just below 'compatible'?

- Mani


-- 
மணிவண்ணன் சதாசிவம்

