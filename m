Return-Path: <devicetree+bounces-12997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C98687DC3CF
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 02:14:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5E225B20CA8
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 01:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93ADB36D;
	Tue, 31 Oct 2023 01:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NWeRfV+S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CD07F2
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 01:14:09 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B667A2
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 18:14:08 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507a0907896so7374069e87.2
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 18:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698714846; x=1699319646; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cxTuWUKQ01ITaCaBUI74BXoQMSnfewI7Dt7CkZW+b34=;
        b=NWeRfV+Sb15zijA7I3sw9YGb0N0tUF6YrX1iGqw5JHfrNy+2SjuidvTtr4LF8om17Y
         NKOL/8+1e7+b7yIPeO/5+IFhW/mbA6SbzbFQ/zQBELwrWUvqsuue5OrksWdSX7UC0LGb
         LjUE52BaMYUDjwFqn2kvavPfmP/+g39mVJxvl4dwzIBMyCn9O6NWwSimUH16R+0mJNEY
         KUPvgYd/hK2231R9Cl2TFzLiOsyTM2b7MM07zGNviheIGWApOSfqFuOU0ElwPouiavn2
         n47hsUEHQzGP5Pc2eIX/vdxG8HbXxZNAY9X2nWcGuy2vg223768AaHSE515K6NdjO2wz
         i+/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698714846; x=1699319646;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cxTuWUKQ01ITaCaBUI74BXoQMSnfewI7Dt7CkZW+b34=;
        b=NeFbOypc5pFjzq8dJHt8R4w4ompuxLuYMZeMW9g9Xsdiboy3ExrmmTMFSxXEXehVzb
         qG5XTx+TffkTdLW9zwJAE6lzmlvm/QaBaQ39hRJ0o27XQ/q7BCxZ3qKwm/x8eRVYDphj
         68DfdZosu1PMpZuYZ8lE2RQzaYcpjxAvdvn8nRPVUf0TdoZZHX4NEVD8q0iI2li5NJNM
         9ZHfLfwA1KcTQ5wKUW+rATHiOBzSAwMJOjZ1nwuj1nsaJmn1G9wOzy64esLeueNbUH5r
         GpRJWsd/wD8Zc6iTj6MZGF32UFFlOksvEPMMCoKN+UWoC9nYJrMMZWt4CrdP6sZwosfW
         pJJQ==
X-Gm-Message-State: AOJu0YweSc0yScKJVMH6G96Z31mBuglFhgaiZd2eE/lZ4oqZuVKqbERL
	JAwIYAFAz3tTQzkr657c1vc=
X-Google-Smtp-Source: AGHT+IEpZ7/rH9Rysj9ot+65R0xB8zqfoheAqe7hlH1l1fpzbsGiuGiPb1kHOqUNV+JYx58J5CuzxA==
X-Received: by 2002:a19:f007:0:b0:504:7ff8:3430 with SMTP id p7-20020a19f007000000b005047ff83430mr7714253lfc.10.1698714846341;
        Mon, 30 Oct 2023 18:14:06 -0700 (PDT)
Received: from mobilestation ([89.113.151.243])
        by smtp.gmail.com with ESMTPSA id d16-20020ac25450000000b005041b7735dbsm26187lfn.53.2023.10.30.18.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 18:14:05 -0700 (PDT)
Date: Tue, 31 Oct 2023 04:14:02 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Niklas Cassel <nks@flawful.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Damien Le Moal <dlemoal@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Rob Herring <robh@kernel.org>, 
	Niklas Cassel <niklas.cassel@wdc.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/6] arm64: dts: rockchip: drop unused properties
 num-{ib,ob}-windows
Message-ID: <e62ymopao3gwwohzt75ehowqbxatmjtvenljutzzh7yeku3kep@smafdc5l5kq5>
References: <20231027145422.40265-1-nks@flawful.org>
 <20231027145422.40265-4-nks@flawful.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027145422.40265-4-nks@flawful.org>

On Fri, Oct 27, 2023 at 04:54:15PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
> 
> The properties num-ib-windows and num-ob-windows have been deprecated for
> a long time, and since commit 281f1f99cf3a ("PCI: dwc: Detect number of
> iATU windows"), these properties are no longer used by the driver.
> 
> The correct number of inbound and outbound iATUs are now detected at
> runtime. Thus, drop these unused properties.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>

Reviewed-by: Serge Semin <fancer.lancer@gmail.com>

-Serge(y)

> ---
>  arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 2 --
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 4 ----
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 2 --
>  3 files changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
> index b6ad8328c7eb..da4927a35142 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
> @@ -102,8 +102,6 @@ &pcie3x1 {
>  
>  &pcie3x2 {
>  	num-lanes = <1>;
> -	num-ib-windows = <8>;
> -	num-ob-windows = <8>;
>  	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc3v3_pcie>;
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index f1be76a54ceb..4487754065b7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -84,8 +84,6 @@ pcie3x1: pcie@fe270000 {
>  				<0 0 0 3 &pcie3x1_intc 2>,
>  				<0 0 0 4 &pcie3x1_intc 3>;
>  		linux,pci-domain = <1>;
> -		num-ib-windows = <6>;
> -		num-ob-windows = <2>;
>  		max-link-speed = <3>;
>  		msi-map = <0x0 &gic 0x1000 0x1000>;
>  		num-lanes = <1>;
> @@ -137,8 +135,6 @@ pcie3x2: pcie@fe280000 {
>  				<0 0 0 3 &pcie3x2_intc 2>,
>  				<0 0 0 4 &pcie3x2_intc 3>;
>  		linux,pci-domain = <2>;
> -		num-ib-windows = <6>;
> -		num-ob-windows = <2>;
>  		max-link-speed = <3>;
>  		msi-map = <0x0 &gic 0x2000 0x1000>;
>  		num-lanes = <2>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index abee88911982..e2d99613109b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -985,8 +985,6 @@ pcie2x1: pcie@fe260000 {
>  				<0 0 0 3 &pcie_intc 2>,
>  				<0 0 0 4 &pcie_intc 3>;
>  		linux,pci-domain = <0>;
> -		num-ib-windows = <6>;
> -		num-ob-windows = <2>;
>  		max-link-speed = <2>;
>  		msi-map = <0x0 &gic 0x0 0x1000>;
>  		num-lanes = <1>;
> -- 
> 2.41.0
> 

