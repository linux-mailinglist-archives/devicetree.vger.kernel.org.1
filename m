Return-Path: <devicetree+bounces-73223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C95F08FE43D
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 12:26:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6DC9B229A3
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:26:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76F8A194C61;
	Thu,  6 Jun 2024 10:26:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C973158848
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 10:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717669581; cv=none; b=Vc4FCIZxs0bRbTzROLCxZCRWyOMHeY1Tzo9IfmxBDaLJGdcS4CCGAcfNJ/toLM/bbgMmB/3mc0gySHWaBoVjwwH7y1sTcNvNDBJIrtncH+pfvPqtQW6fqyRknG+sueiH+FNQXO8JV4YIjdW7LwAfKwd4mY6Ek1So7sG0j4WS458=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717669581; c=relaxed/simple;
	bh=uDdSWwYBy5JU37O/gYesEmJUvgLXFflV6WII5qKE310=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n1/pGA1EYucMlcEfevxFA6SB3lcVGBmlaAY3T554AkoH14BFew0RQlx+gQVL/6Oxj/TcciKKYWN7IAfqxlAo1owJxdJPetw/Ghi1V+orW3QZSXw0EhDCQFwvovw1SQ90XoCY53fketswl2hRE6uVwSxXYErsCv+csvLf1Hwqx0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E86A42F4;
	Thu,  6 Jun 2024 03:26:42 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDC073F64C;
	Thu,  6 Jun 2024 03:26:16 -0700 (PDT)
Date: Thu, 6 Jun 2024 11:26:14 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 mripard@kernel.org, ryan@testtoast.com, samuel@sholland.org,
 jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: sunxi: Add Anbernic RG35XXSP
Message-ID: <20240606112614.5380b2d1@donnerap.manchester.arm.com>
In-Reply-To: <20240605185339.266833-2-macroalpha82@gmail.com>
References: <20240605185339.266833-1-macroalpha82@gmail.com>
	<20240605185339.266833-2-macroalpha82@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  5 Jun 2024 13:53:38 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

Hi,

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the Anbernic RG35XXSP variant device and consolidate the Anbernic
> H700 devices.
> 
> The Anbernic RG35XXSP is almost identical to the RG35XX-Plus, but in a
> clamshell form-factor.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/arm/sunxi.yaml        | 24 +++++++------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> index c2a158b75e49..1ae77e5edf9a 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -51,25 +51,19 @@ properties:
>            - const: allwinner,parrot
>            - const: allwinner,sun8i-a33
>  
> -      - description: Anbernic RG-Nano
> -        items:
> -          - const: anbernic,rg-nano
> -          - const: allwinner,sun8i-v3s
> -
> -      - description: Anbernic RG35XX (2024)
> -        items:
> -          - const: anbernic,rg35xx-2024
> -          - const: allwinner,sun50i-h700
> -
> -      - description: Anbernic RG35XX Plus
> +      - description: Anbernic H700 Handheld Gaming Console

So that's certainly an interesting optimisation, but so far we were using
one entry per device, it seems.
I am not entirely sure what the purpose of this file is, exactly: just to
document the compatible names, to reserve them and avoid clashes in the
future? Or also to put some official names to each device? That seems to
somewhat overlap with the root node's model property in the respective
device .dts, though.

It would be good to clarify this, and establish how to group those devices.
I mean technically we could for instance put *all* H6 devices into one
entry, using the same scheme as below.
Not sure that's desired, though.

Cheers,
Andre

>          items:
> -          - const: anbernic,rg35xx-plus
> +          - enum:
> +              - anbernic,rg35xx-2024
> +              - anbernic,rg35xx-h
> +              - anbernic,rg35xx-plus
> +              - anbernic,rg35xx-sp
>            - const: allwinner,sun50i-h700
>  
> -      - description: Anbernic RG35XX H
> +      - description: Anbernic RG-Nano
>          items:
> -          - const: anbernic,rg35xx-h
> -          - const: allwinner,sun50i-h700
> +          - const: anbernic,rg-nano
> +          - const: allwinner,sun8i-v3s
>  
>        - description: Amarula A64 Relic
>          items:


