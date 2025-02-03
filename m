Return-Path: <devicetree+bounces-142700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09455A2624B
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 19:27:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81B0F1611B5
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 18:27:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85FC920DD5C;
	Mon,  3 Feb 2025 18:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgoesGlM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5919A1C1AAA;
	Mon,  3 Feb 2025 18:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738607230; cv=none; b=RHKmC9sPiYL/3/X5tuVT2Cmr7AvY4WEuxw3UyKawzneaoKUc7Zfs/N0zgszhcNgs5I+2+Dev6rVbO3d0HzwKS8wgHJcti1YirN1M/qc/xj8A7CQ63lCg7EMDX1YE2qPV5lmGEbnj9izPf5rJ2HpcQVRiWzMrQ1xo2EbslFVOJnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738607230; c=relaxed/simple;
	bh=U9fT7WD89sfXHwxYnXo6/SN52jUszCmb683sKFOLaTo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HQ0WfNV3ic0nRktLjYV4kRKjJfg3Twq6xBzO8Xnak1v9OvPKHT0H9v6jgLqgVsFbBpI1WVov6SceHCXWfuKbhYKrtRWN7d7im4SbKytHHnTQIC82p2oMGqfjxPn8TeJWr9qMp4xih6lkaBK6jtRj5hHHiudJ7zgxXOGwMOytkgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgoesGlM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 876D7C4CED2;
	Mon,  3 Feb 2025 18:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738607229;
	bh=U9fT7WD89sfXHwxYnXo6/SN52jUszCmb683sKFOLaTo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NgoesGlMCmPx1BC54ufGwzTD2FALfRfXi6oCuNPuoPlom7+NSd/e08vGzJ80tR8Wy
	 3MIluTD0xy9E55SGaGohE/d/tdrmb33QUvg3aZjGXHMW41Og2ZR7Venbe8IP2ckzgP
	 nf2o1aO9jUCMQhKknv9rnO0jSD7wEVW4FRqULNxONC0k1N/kedTNpqksVvMKcvuSBB
	 1sFxHHRj3W3xZHbK9DtzJv1sqDfyPXqj+W+v9q1QdJ6UZM0uc0Z0IeK992jV/jFnb5
	 hPuUoXrrR3bIyG+Ztkrrhi+xRYGnStuTl6mEHm2M1OuW4uvxFxMRb7MM6xmoizWVNa
	 /lLaGFAXgMvGQ==
Date: Mon, 3 Feb 2025 12:27:08 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andrei Simion <andrei.simion@microchip.com>
Cc: lgirdwood@gmail.com, nicolas.ferre@microchip.com,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev, krzk+dt@kernel.org, broonie@kernel.org,
	alexandre.belloni@bootlin.com, conor+dt@kernel.org
Subject: Re: [PATCH v2] ASoC: dt-bindings: atmel,at91-ssc: Convert to YAML
 format
Message-ID: <173860722807.3351261.2109614863314200591.robh@kernel.org>
References: <20250203091111.21667-1-andrei.simion@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203091111.21667-1-andrei.simion@microchip.com>


On Mon, 03 Feb 2025 11:11:12 +0200, Andrei Simion wrote:
> Convert devicetree binding atmel-ssc.txt to YAML format.
> Update the documentation supported file for MICROCHIP SSC DRIVER.
> 
> Signed-off-by: Andrei Simion <andrei.simion@microchip.com>
> ---
> v1 -> v2:
> - squash MAINTAINERS patch
> - place this yaml in sound directory
> - reword the commit title
> - reword the commit message
> - add #sound-dai-cells const 0
> - add required
> - include ref dai-common.yaml#
> - fix the logic for the required properties for DMA transfer
> - update examples by adding #sound-dai-cells = <0>
> - drop unnecessary description
> - drop compatible for sam9x7-ssc because is not the intent of the patch
> ---
>  .../devicetree/bindings/misc/atmel-ssc.txt    |  50 ---------
>  .../bindings/sound/atmel,at91-ssc.yaml        | 104 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 105 insertions(+), 51 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/misc/atmel-ssc.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/atmel,at91-ssc.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


