Return-Path: <devicetree+bounces-182860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B50ACE396
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 19:27:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9775174D1A
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 17:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D30271BC3F;
	Wed,  4 Jun 2025 17:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uZzz5DLP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203B01F12F8
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 17:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749058012; cv=none; b=TrO80eq4M2a4jKROKfhfGUHq/UiTGifTPGGZW5wGxG9IuVGXt9sUENLflzrelh7SHu0absIQlJZZweZejdgCzmMlMF3s1V+LOOxsC4hmH/lht//F4NsGhdkX8VYVxh4CTrHrBTS3pT2KnHTl466VTN5EE9URikFpa/hjYO3+8Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749058012; c=relaxed/simple;
	bh=zfBX5Hd5AHFJx+b+JeKpO3p+lc17VsrFhnNhvgeTwMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r4bXwFyqrSZm4XTfduiO55rnGFn5adey3y9TBDJj6o5BOoSgVNNZYUgEkup3vsB4j8Wb5ccOe+6OhYRGEhHd610u2QKBctCeJHQIiD5WDj+14T2LpBOEtDU0/MosJ2HUS5cw82zhBYz2B8+KZsDRLYEjRXVMvIijX/MY7UPHvq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uZzz5DLP; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b2f11866376so28213a12.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 10:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749058010; x=1749662810; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tjOqoffUv6nOmVjkm22wWdvmrQyYX67LoFIA7eUIS4c=;
        b=uZzz5DLPyX4RtUQ3Kpa8TeH20F3wJmRz6h76ajTJW4JeebutC9ThATN1VT30JpcdW3
         mWHjgth/0oUKeVrYkcf+leNOjci0D/A30sa81Efb6QiNTy3Kk5YZ++cOIZl6XQ1h++MN
         TIngVqJELxypCZ3LO2zlojScz21FaaxCB4QI6iosD01qBlNHGKToGY6t0PQXwvFyvcOx
         PA0GynNXlNQKMmSxgkYZ15Zgk68zEwO1Rvkm70VVegKLASPdMdzr4MlOQ5qCybhW0UE2
         w4L2JteYZTWnrmyhF4NyXIDq0u3rEIadKV6NTkWgcndDnY/gZxkbC4+T9dx8CZGbM8of
         rkEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749058010; x=1749662810;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tjOqoffUv6nOmVjkm22wWdvmrQyYX67LoFIA7eUIS4c=;
        b=MFYCRsurHUaim1fGUl73FBeAEXv/aXSjGPgsiyiu1VgDmtukS/7lST2KqWNa1O3hUB
         mkjV+Dwra6e01pP4RTvAW+MUgE6GMJzh4Z4oQVndRxSUvGMoui90/6tfB/3BmVAoyVSq
         pQRaJlQCPFpYfNgkG+/dNo35cb8GPOVZNcz2AODmMOg9vb+ClPb86fQRb4y7Ds2ebgfI
         DhELZrm+DxFOBmX8TAPknrbIOYz1Ntar4vTgkveMP53SAyjVu6EDjig6WsOHmhWGT2VL
         gmk5kBypX4nFnGUmEvZxSS9YL7Aw+AYWLncpLOF3wcJi3Wb2jbOU8lQx1BDxiQR9OVRs
         zeqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWepg71uf4KR+dsuu2PCoynsJ82ZdRaepXjaMAEYbCd4Hx/kzNhTadXpABruiFbtmJjRNK6nN3+uJPj@vger.kernel.org
X-Gm-Message-State: AOJu0YyrwJWi+me9AV9DlgRD4DApPF7mpJEVOyz0mQNT0y4tQ1cWuYXv
	zuHBpFL11dnY+7QTBKtcUQ/Rolv6dq43RbB6rWxyKx0lnkjQm07SOFCExohfKn8aeA==
X-Gm-Gg: ASbGncvVreR441I7UsdOnBOlLnSAJk08La/hivPCXgZl5nd/YGGhvTjxLWLV1TLL7mw
	yTmyirobhZBP5FGZdyV0K2GQk76/O2rJd7/BBWvfxCpdj24+gCv7ED4E+3pVGaL7HyDiZklN36A
	svuqNoqJV1vBkXV1OIXXab+dqvMl7Ekn1PHkeaa4lE9sxGJVW6aQN67B1Bd+BTvm2d46gg/J0Bp
	luzE6xiSGmILG+d1ZeXR3/yTb/x6eM7rhAAowEMffrmDEOZtn98zJ8h1rA9XodgA9jWuvyF0iFc
	K490UGl97G0V8XF0mDiR2+S6DLf9Ur/0TzNP4ECx3uFfo/B+XwnRZST/WfeCfw==
X-Google-Smtp-Source: AGHT+IE7pUgMHsiK6fiB03xw5h0r4hqVnNjoiuF0h4s03T9Q5QTp4kFOwhIfaUC9GczffqkQkUVkZA==
X-Received: by 2002:a17:90b:4a41:b0:311:ea13:2e62 with SMTP id 98e67ed59e1d1-3130cd5dd59mr5987202a91.24.1749058010346;
        Wed, 04 Jun 2025 10:26:50 -0700 (PDT)
Received: from thinkpad ([120.60.60.253])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e322315sm9178577a91.43.2025.06.04.10.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 10:26:49 -0700 (PDT)
Date: Wed, 4 Jun 2025 22:56:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Bjorn Helgaas <bhelgaas@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: renesas: r8a779g0: Describe root port
 on R-Car V4H
Message-ID: <mu2zj3ph5px34iyclaeirhry4nknevwqkqhqyyecugio2gpkst@fsaxfqtnc6nn>
References: <20250530225504.55042-1-marek.vasut+renesas@mailbox.org>
 <20250530225504.55042-2-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250530225504.55042-2-marek.vasut+renesas@mailbox.org>

On Sat, May 31, 2025 at 12:53:20AM +0200, Marek Vasut wrote:
> Add node which describes the root port into PCIe controller DT node.
> This can be used together with pwrctrl driver to control clock and
> power supply to a PCIe slot. For example usage, refer to V4H Sparrow
> Hawk board.
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Magnus Damm <magnus.damm@gmail.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-pci@vger.kernel.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
> V2: New patch
> ---
>  arch/arm64/boot/dts/renesas/r8a779g0.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> index 6dbf05a559357..8d9ca30c299c9 100644
> --- a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> @@ -798,6 +798,16 @@ pciec0: pcie@e65d0000 {
>  					<0 0 0 4 &gic GIC_SPI 449 IRQ_TYPE_LEVEL_HIGH>;
>  			snps,enable-cdm-check;
>  			status = "disabled";
> +
> +			/* PCIe bridge, Root Port */
> +			pciec0_rp: pci@0,0 {
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				compatible = "pciclass,0604";
> +				device_type = "pci";
> +				ranges;
> +			};
>  		};
>  
>  		pciec1: pcie@e65d8000 {
> @@ -835,6 +845,16 @@ pciec1: pcie@e65d8000 {
>  					<0 0 0 4 &gic GIC_SPI 456 IRQ_TYPE_LEVEL_HIGH>;
>  			snps,enable-cdm-check;
>  			status = "disabled";
> +
> +			/* PCIe bridge, Root Port */
> +			pciec1_rp: pci@0,0 {
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				compatible = "pciclass,0604";
> +				device_type = "pci";
> +				ranges;
> +			};
>  		};
>  
>  		pciec0_ep: pcie-ep@e65d0000 {
> -- 
> 2.47.2
> 

-- 
மணிவண்ணன் சதாசிவம்

