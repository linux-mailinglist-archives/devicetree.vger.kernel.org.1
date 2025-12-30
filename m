Return-Path: <devicetree+bounces-250619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FDBCEA753
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2FA43012DCE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:23:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06D9A24BBFD;
	Tue, 30 Dec 2025 18:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC25xIQa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37C51A23A4;
	Tue, 30 Dec 2025 18:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767118995; cv=none; b=n5gzmH9M9tEoKytCmO/1miILrn/4TrKXnYu8cI+HiawK8GzJ42TyPYetLCUtdhKDcujwqiqlUGbl0LFQ1S194VGWc/nX+f539L1Gm5pcuLzO1eNYo2/2gv64B7aNALpKLzml5pdVvdBQny5EgsBTC7ZwftrQl6QNgTqngtsWeqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767118995; c=relaxed/simple;
	bh=nyXZLufW4YKka3UMN2jMyA/LNOCsvOKVWgmNqovh6Iw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cgf8291Ralwn1vJQM0C1zD91fViYd21sE6L72RYfVxbML9IVFZbzOJyg12VKsudBofp9O+qrv9meZtQMeNGA8CW8Jos5DgaJxrc27MT0IJMOXd5fPYl9buEoSbFvqu3UfzGOSC4tsHENYSTZsb0cfXN18wwvdmH0fHmdZTlFEj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC25xIQa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AE51C4CEFB;
	Tue, 30 Dec 2025 18:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767118995;
	bh=nyXZLufW4YKka3UMN2jMyA/LNOCsvOKVWgmNqovh6Iw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eC25xIQaYl1HUAmjjNKk205a0PqlUD3x2sAMRmWJ5G0P2A4+EvqSQj4vD10CnPGfb
	 wWz3khCAGiPlRmIeQXEUe85jHcWpYz+aVTt/jnB3X1b1eaqiJKCCaoEhzfIKMD65lA
	 MYkj1TDwuS6Y7Nbk5QSak0XS1BctyGF0B8w7R1sgiB+YwHlCDjOhHHwLBry47obCDn
	 ujpk1nea2yz5mn1qVETiV6cZyPiJLFy/+QOYmzSxcsyF/kmTct1CJgSN4J7/1gtFXx
	 feUkXq9pxHSuWCOMT5NytfYqJ+J8IY15vZL3hm1t4MXs64uml2xtj5I8nztKpInKjD
	 FoIToQVK/n4kA==
Date: Tue, 30 Dec 2025 12:23:14 -0600
From: Rob Herring <robh@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: nand-micronix: convert to DT schema
Message-ID: <20251230182314.GA898179-robh@kernel.org>
References: <20251230-macronix-v1-1-ff2aaab43644@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230-macronix-v1-1-ff2aaab43644@gmail.com>

On Tue, Dec 30, 2025 at 07:20:21AM +0000, Akhila YS wrote:
> Convert Macronix NAND Randomizer OTP Enable Property binding to YAML format.

I appreciate the conversion, but please focus on bindings which are 
actually used. We have no in tree users of this property.

There's daily builds which list undocumented (by schemas) compatibles:

https://gitlab.com/robherring/linux-dt/-/jobs?kind=BUILD

This repo has scripts to fetch and parse the logs from the above builds:

https://gitlab.com/robherring/ci-jobs

> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
>  .../devicetree/bindings/mtd/nand-macronix.txt      | 27 --------------
>  .../devicetree/bindings/mtd/nand-macronix.yaml     | 41 ++++++++++++++++++++++
>  2 files changed, 41 insertions(+), 27 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-macronix.txt b/Documentation/devicetree/bindings/mtd/nand-macronix.txt
> deleted file mode 100644
> index ffab28a2c4d1..000000000000
> --- a/Documentation/devicetree/bindings/mtd/nand-macronix.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -Macronix NANDs Device Tree Bindings
> ------------------------------------
> -
> -Macronix NANDs support randomizer operation for scrambling user data,
> -which can be enabled with a SET_FEATURE. The penalty when using the
> -randomizer are subpage accesses prohibited and more time period needed
> -for program operation, i.e., tPROG 300us to 340us (randomizer enabled).
> -Enabling the randomizer is a one time persistent and non reversible
> -operation.
> -
> -For more high-reliability concern, if subpage write is not available
> -with hardware ECC and not enabled at UBI level, then enabling the
> -randomizer is recommended by default by adding a new specific property
> -in children nodes.
> -
> -Required NAND chip properties in children mode:
> -- randomizer enable: should be "mxic,enable-randomizer-otp"
> -
> -Example:
> -
> -	nand: nand-controller@unit-address {
> -
> -		nand@0 {
> -			reg = <0>;
> -			mxic,enable-randomizer-otp;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/mtd/nand-macronix.yaml b/Documentation/devicetree/bindings/mtd/nand-macronix.yaml
> new file mode 100644
> index 000000000000..10f1d58adcef
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mtd/nand-macronix.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mtd/nand-macronix.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Macronix NAND Randomizer OTP Enable Property
> +
> +maintainers:
> +  - Miquel Raynal <miquel.raynal@bootlin.com>
> +  - Richard Weinberger <richard@nod.at>
> +
> +description:
> +  Macronix NAND chips support an optional one-time programmable (OTP)
> +  data randomizer that scrambles user data to improve reliability.
> +  Enabling it is irreversible, prohibits subpage accesses, and slightly
> +  increases program time. This property requests the driver to enable
> +  the randomizer if not already set.
> +
> +properties:
> +  mxic,enable-randomizer-otp:
> +    type: boolean
> +    description:
> +      Presence of this property indicates that the data randomizer should
> +      be enabled in OTP mode on the NAND chip.
> +
> +unevaluatedProperties: false

This would not work unless this is the only property in a node. But this 
schema is never applied to anything without a compatible or node name to 
match on. This property needs to be added to nand-chip.yaml instead.

Rob

