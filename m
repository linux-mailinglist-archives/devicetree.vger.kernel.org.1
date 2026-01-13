Return-Path: <devicetree+bounces-254704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B6BD1B118
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:34:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 717C33001FCF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E57D736CE17;
	Tue, 13 Jan 2026 19:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="GF0+M2AY"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3424336BCD5;
	Tue, 13 Jan 2026 19:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768332836; cv=none; b=kKnSd3+nFoWA+zKsYOcYXLTOUlXzbAH6JHOmJv7INdYtEk0UHlMZiHBSzrn8ZQRWAMBkHweu7vFsndlOwbYRJEYpO8Y4OQo0sBHKSROcaT3Y8HLyQTrtG8pViAh2HVkNp3kfwrldo5WkyXTz/qMosx/NzJpu8Z9+xVCIc5SeeQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768332836; c=relaxed/simple;
	bh=36p/aVTnQUn3j7rVvig9dIjC7efS4CSyyQebmUMTGdA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B60OxPiHOrCAnhWgkKaaJQWvR99yM4angxJJKZej4BPHASOV9W1rR6KbUbfuJqJ1xDzbeWbrD0+9WGB8S6jS9jA/9LV9s0+wS3dizoFchdDH1i0wAvsArT606xcbYFx9tJ5NAdYuT2T/rg/NaGNiUCi/sQr1hYBwXm6/Wb2C0x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=GF0+M2AY; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=QUe3p68Mm3OsOBcMm6RQixsXLcR6aOMZwt8Wi464jhM=; b=GF0+M2AYoE8pxPe1eEUG/Kxo0j
	4fQhaFccuxjV/Xu4bg2335tzPKnalaLTaM0wA7dYLuywGYAEC/q0+9yOEAlGGp9INbHj+sHopEjiF
	/x1GLMTM/1tO+/lsdRWAjkkN86ATvSkEzIzRgZ93MoJSRc8VKciAj1FaNqI4Fv8jA7+M=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vfk8z-002gHg-Gg; Tue, 13 Jan 2026 20:33:33 +0100
Date: Tue, 13 Jan 2026 20:33:33 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Kyle Hsieh <kylehsieh1995@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
Message-ID: <d9926d5e-7cdd-4c3c-9d9c-86418ceb4933@lunn.ch>
References: <20260113-ventura2_initial_dts-v3-0-2dbfda6a5b47@gmail.com>
 <20260113-ventura2_initial_dts-v3-2-2dbfda6a5b47@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113-ventura2_initial_dts-v3-2-2dbfda6a5b47@gmail.com>

> +&i2c6 {
> +	status = "okay";
> +
> +	// Marvell 88E6393X EEPROM
> +	eeprom@50 {
> +		compatible = "atmel,24c64";
> +		reg = <0x50>;
> +	};

Are you don't multi-master with this EEPROM?

> +	io_expander0: gpio@20 {
> +		compatible = "nxp,pca9555";
> +		reg = <0x20>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		gpio-line-names =
> +		"RST_POE_BMC_N", "POE_DISABLE_BMC_N_R",
> +		"RST_FT4232_1_BMC_N_R", "RST_FT4232_2_BMC_N_R",
> +		"RST_FT4232_3_BMC_N_R", "PRSNT_FANBP_0_PWR_N",
> +		"PRSNT_FANBP_0_SIG_N", "PRSNT_POE_PWR_N",
> +		"PRSNT_POE_SIG_N", "IRQ_POE_BMC_N_R",
> +		"PWRGD_P3V3_ISO_POE_BMC_R", "88E6393X_INT_N_R",

You have the switches interrupt connected to a GPIO expander?  That
seems a bit odd when you say it is running as a dumb, unmanaged
switch.

	Andrew

