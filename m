Return-Path: <devicetree+bounces-238770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FE1C5DC3C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 16:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id F066A24183
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B47F3331A7A;
	Fri, 14 Nov 2025 14:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izcBSFjc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D272215F42;
	Fri, 14 Nov 2025 14:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132366; cv=none; b=hTqnq19Z0SC6kwXyCvvse8vWUWmntUneDy2ya3Hq5bg+u/9nvFNpQcAxtahPL3RRSnu3esAKWCFiIWiRnorpV+0BDbwWxzMLnl8wmEz2GeXXa/kGoIfk+dSxlZkwbCG4jOa3XLEHvcCGhP3+hVJ/dHwg9vLzS+bLYXUe06v5BWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132366; c=relaxed/simple;
	bh=93PryjTgoVe/axb20tQpg8q0p8T0ctHDp37gLkWl2MY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J/cffQGfTTAMxT1EtvPoty2T7TMWAks4QEWKr3iFdCvEo8H46wXHXrWCAjbekk4pvfnrNs5iGq1K1fJgtF7b4vd9VjojnibhufcY3pQZ+3szByCJlJUmybZ9dDjEKnje7+IGKFwosEMukdY7WOLUbcY/w0OtXnT2YbTBgwyNe3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izcBSFjc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16928C4CEFB;
	Fri, 14 Nov 2025 14:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763132366;
	bh=93PryjTgoVe/axb20tQpg8q0p8T0ctHDp37gLkWl2MY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=izcBSFjchCN77clVG+cuL7ofS211riLJAgI5FtII+ejTAypg70vv1ta0cUNYl34hj
	 XGmckVA304SsU/gvM5ar2CP3C+msJlPGClUXfA0n9wK1TPvcRY2sT7H6pnfmt5zo2j
	 eovHJp7tZDD9+UW2SqotxeQPPETIl3LwMSnSI8tFGxV+VKCNGIFNZ91VSnNUA2Upfu
	 XJjd2Sy7PE6MPHSs4QYlPyhtRuzo/2pQ8RRnxEy2Z9JpFyW+HuuMGlLUznCHuA0Wyo
	 IcrZi7fzkktFshWWk3ir377LEeDJKVH6Fb01v9sHyBcOVvbMMTp1LU0DhDuJ7rtaod
	 YuM59i8Eo/+YA==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vJvGl-000000008Ru-3VVi;
	Fri, 14 Nov 2025 15:59:24 +0100
Date: Fri, 14 Nov 2025 15:59:23 +0100
From: Johan Hovold <johan@kernel.org>
To: alejandroe1@geotab.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 2/2] gnss: ubx: add support for the safeboot gpio
Message-ID: <aRdDyyIA9Z4e8mBz@hovoldconsulting.com>
References: <20250911-ubx-safeboot-v3-0-32fe6b882a3c@geotab.com>
 <20250911-ubx-safeboot-v3-2-32fe6b882a3c@geotab.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-ubx-safeboot-v3-2-32fe6b882a3c@geotab.com>

On Thu, Sep 11, 2025 at 02:58:29PM +0200, Alejandro Enrique via B4 Relay wrote:
> From: Alejandro Enrique <alejandroe1@geotab.com>
> 
> U-Blox 8/M8/M9 chip have a pin to start it in safeboot mode, to be
> used to recover from situations where the flash content has become
> corrupted and needs to be restored. If this pin is asserted at power
> up/reset, the receiver starts in safeboot mode and GNSS operation is
> disabled.
> 
> Deassert the safeboot pin when probing this driver.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Alejandro Enrique <alejandroe1@geotab.com>

Sorry about the late feedback on this. I had to think about how best to
handle this, given that we don't have an interface yet to actually
assert these pins.

I guess we can go ahead and request them at probe as you're doing here
and add an interface for controlling them later if needed (instead of
not claiming them and allowing emergency control through gpiolib).

> @@ -82,6 +83,13 @@ static int ubx_probe(struct serdev_device *serdev)
>  
>  	data = gnss_serial_get_drvdata(gserial);
>  
> +	/* Deassert safeboot */
> +	safeboot = devm_gpiod_get_optional(&serdev->dev, "safeboot", GPIOD_OUT_LOW);
> +	if (IS_ERR(safeboot)) {
> +		ret = PTR_ERR(safeboot);
> +		goto err_free_gserial;
> +	}
> +
>  	data->vcc = devm_regulator_get(&serdev->dev, "vcc");

Note that the driver is not enabling the supply until open() so I moved
the deassert to after the supplies have been requested (but before reset
is deasserted).

Note however that both the RESET_N and SAFEBOOT_N pins should be
declared as open-drain to avoid driving them while the main supply is
off.

I added a comment about this to the commit message about this when
applying and will send a follow-on patch to update the binding example.

>  	if (IS_ERR(data->vcc)) {
>  		ret = PTR_ERR(data->vcc);

Johan

