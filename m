Return-Path: <devicetree+bounces-200788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EB7B15FD7
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 13:56:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE0A1177F04
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 11:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 939DC293C42;
	Wed, 30 Jul 2025 11:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="y6DRBdhi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A03620010A
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 11:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753876586; cv=none; b=hfPTyvse20p+mf9DGm9MBC1pO9BuJBWPD9TX7XCjMJ5ximReWVQVPKnU1goUs9e5pK509CaHaWTaLLX/rEPWrSVZW+oxmExILDoP5wjhwUBazXwIZ0EsAnTIbMwGlfzEwg0oqFbYHU8wbU5oInnrj0+cZ8OE7NTXeag56iJOeLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753876586; c=relaxed/simple;
	bh=byeRoUcOyxdRdZ9IKs8qOqGgBnhVX94QXrzHB6478Vk=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=l/CCPHhV8VaIABIvaqCIZuBGpl1oPraLwearo4EKkKTcENCoI7yzKc4NSEZvCaa+zh5xWk3MgDShbF1A+GSrWsyMrhrTA2p4TKd/gB0eZZ4zlRrlf46nr4qdJjKEqIrCuF5GouvK0UC+ngcb4B+GW7gQl0ka8SoT/4Km60aG5E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=y6DRBdhi; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1753876582;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8y4m2oNhStesOsdExay51x41WEAVR6u+DkhtiZRBVUk=;
	b=y6DRBdhiu+qSIxoztA1GbGn7XPYsEK7g2k1hOC00eGsYENYlg6RYiRkQXZZ1dN6HRHmjb8
	r20mMm1Vd8dfXhse/2jZIyNAjyfffkUllQaIIqv6ODYbDg1nljJnCCbbHqn8ay6piFIL1d
	8IGCVGpUcS3662UB/Flj6b1AeDS1NzraYij7U9RHoU5KXTH+3Mu1nrUbFxjDCAfHCi76EL
	OdxzcuE+OAX06M3KGSgKOifnZZ+A58w3QdW1bffsX0M/BmnfFxuUFHaQ/o+Brmx9i4mDy+
	CKXTRVdlG9yLSN+alCp9ioBBvsJI3kbxVmFxjbck1CGqjlKL6jkgfAlzC1irzg==
Date: Wed, 30 Jul 2025 13:56:19 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add vcc-supply to SPI flash on
 rk3399-pinebook-pro
In-Reply-To: <20250730102129.224468-1-pbrobinson@gmail.com>
References: <20250730102129.224468-1-pbrobinson@gmail.com>
Message-ID: <2d4974a72a1a5910f2770528bcb8b997@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Peter,

On 2025-07-30 12:21, Peter Robinson wrote:
> As described in the pinebookpro_v2.1_mainboard_schematic.pdf page 10,
> he SPI Flash's VCC connector is connected to VCC_3V0 power source.
> 
> This fixes the following warning:
> 
>   spi-nor spi1.0: supply vcc not found, using dummy regulator
> 
> Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for
> Pinebook Pro")
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index 05c48cb09df6f..ee0e6c1947acb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -978,6 +978,7 @@ spiflash: flash@0 {
>  		reg = <0>;
>  		m25p,fast-read;
>  		spi-max-frequency = <10000000>;
> +		vcc-supply = <&vcc_3v0>;
>  	};
>  };

Thanks for the patch!  This addition to the Pinebook Pro device dts
file is looking good to me.  I just checked the schematics of both
Pinebook Pro production versions, i.e. v2.1 and v2.1a, to verify
the addition.

I've got a couple of nitpicks, though.  First, using "Pinebook Pro"
instead of "rk3399-pinebook-pro" in the patch summary would be a bit
more readable.  Second, it would be better to mention the existence
of the second production version, i.e. v2.1, in the patch description,
to clarify that the DT addition applies to both versions, with both
schematics mentioned as references. [1][2]

Anyway, please feel free to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

[1] 
https://files.pine64.org/doc/PinebookPro/pinebookpro_v2.1_mainboard_schematic.pdf
[2] 
https://files.pine64.org/doc/PinebookPro/pinebookpro_schematic_v21a_20220419.pdf

