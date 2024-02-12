Return-Path: <devicetree+bounces-41035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 31352852187
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 23:35:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF761284F14
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 22:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1076E3C493;
	Mon, 12 Feb 2024 22:35:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYLHDMO5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5454EB22
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 22:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707777304; cv=none; b=JzF40t0sNr4wHXGkInMOemewMlFR1+kV/ubKnviUU/YbEhWbvBMZquMcVhdXOMI1tY2k4QfNJKSFOlLXZ9zxOBOqZvNw05pv2tIEHePRfQt+REPEaJROaxAIR1BMsN1JCjcVYXqttFDljaa2mtiMzEbIGa+p1ra5kwatMF5Fjew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707777304; c=relaxed/simple;
	bh=z0OPRVzGohN2owcIK4v1+K57Sp/wDW1m6JjHPFDjmwk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IaRhQXVPOLtySXOfg0rHh08evTJIYRauQKsGLjbdo1dzZVEGBfPFG/yYkEOnGvzCnBmyJzOc7d1Meov+0nI1QJgAePhtPuHCZFwyndSeC6rEwJK4bPymp85irtODz25XoIikqBQINSsPUNYc4cSWemnhlgEK5I6RYuB5rHo8LCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYLHDMO5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4340AC433C7;
	Mon, 12 Feb 2024 22:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707777303;
	bh=z0OPRVzGohN2owcIK4v1+K57Sp/wDW1m6JjHPFDjmwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nYLHDMO5G7VhaFI3vwSOD8fhhq86I2vs2yEW0j2lJ3gYP7NDArmnsBnbRgabvbMtC
	 K6x8QvsE1SGL1LLKGkJG0g9KH2nf0+5wzs6g4DQrWFAX4UPkOihHkmHC/FCwwjBvQa
	 oCL7v8WPy2s1OHIN2daaNTuq4wR6I++8PkaHpbbFdG2K26ApkbUeqX00pXOj53ioVq
	 gR89PpMs42KaCgYq31awfKgJ/NqxC3F72BrjMzVyJqk64ETNUIdSaFJrgvD3MzDdKa
	 9E4xGwf4i+xmQDcvoU0xbwCiVBbu7fOKfDNtQ5aGX1ITuwHtmwOyXP4ysTM1ydjsCR
	 Q0vJaT+gnIUMA==
Date: Mon, 12 Feb 2024 16:35:01 -0600
From: Rob Herring <robh@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH 1/1] arm64: dts: freescale: tqma9352: Update I2C eeprom
 compatible
Message-ID: <20240212223501.GA2674720-robh@kernel.org>
References: <20240110100526.478771-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110100526.478771-1-alexander.stein@ew.tq-group.com>

On Wed, Jan 10, 2024 at 11:05:26AM +0100, Alexander Stein wrote:
> Now that there is a dedicated compatible for the idendification page use
> that instead. This also allows the removal the size and pagesize
> properties.

This commit message fails to answer Why? 

And fails to mention the ABI break.

> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
> index f6e422dc2663e..9d2328c185c90 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93-tqma9352.dtsi
> @@ -122,10 +122,8 @@ eeprom1: eeprom@57 {
>  
>  	/* protectable identification memory (part of M24C64-D @57) */
>  	eeprom@5f {
> -		compatible = "st,24c64", "atmel,24c64";
> +		compatible = "atmel,24c64d-wl";

This compatible is not documented. Please add it to schema.

>  		reg = <0x5f>;
> -		size = <32>;
> -		pagesize = <32>;
>  		vcc-supply = <&reg_v3v3>;
>  	};
>  
> -- 
> 2.34.1
> 

