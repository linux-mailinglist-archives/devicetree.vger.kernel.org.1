Return-Path: <devicetree+bounces-219073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0451DB8750D
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 01:01:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93BD71C86AA0
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 23:01:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 116C81EDA26;
	Thu, 18 Sep 2025 23:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdHegd7N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04CD1DDC2C
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 23:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758236491; cv=none; b=aMGDLD8ReAAynMBAVRaWjSbpwEPent6g+/dfpspMxrOj5nR4MjCqGRX32NDwc473rnGaJjoIW1eJy9sFw8V9HBv45Ej7h8fRO1To4cWI9PtCnwbUhtHXFhfWnazcGP8Z/x7O/0MO6hakQ69EFN4PFikBZi9w912AixYJTN5oH4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758236491; c=relaxed/simple;
	bh=B0+XCm8kbd8Xs2HVIhSFMmC3dHvcsySFO4FzYVBuKx4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Oy+PEztBFBv0rnSAQoeOx3gqaF+4wF0irar8vGTw1Thj203k5NXpSkV9351SVMXh203eWZ2c9+bd7ct/tgHeh1vEvhGrvJ080HLj4dACE6X6Zrs8+/RCW/1b5TR7N5gTIkziMVDHnCZv/pKgJfttv/cInT0vuXrX+KHaF1IjrXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdHegd7N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 137E9C4CEE7;
	Thu, 18 Sep 2025 23:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758236490;
	bh=B0+XCm8kbd8Xs2HVIhSFMmC3dHvcsySFO4FzYVBuKx4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RdHegd7NYUEdaDKA/IAV3luvVhd1lZNKbzVdFXscTQshx7QyQO7r8qrrCHvB0NtuN
	 BSAqawfIzajqbPc26CDZeizT8YwN9XT6uwkfFi3REKOOO88s2JHeJe/W6tlGXr6PNU
	 C43OY9sm7brrg8ndAMjxL+v6iN81WRgiYOZ1mOr3nUaNCyz/ey8BG0V2Hpot/PdiyR
	 tCnZKJw9CtaasaG+VJ4N/DXSknCv3IakhGEQDzEYtkK5E/xZb0zK6EqBxlzwPraGCr
	 PomhSpXB2am+Xu8wDAjfLh/2Nmh/is3eulj7dfbguqa08rYz0F5sk6A2E3V5GoR9ce
	 lhUfqc/4nR/uw==
Date: Thu, 18 Sep 2025 18:01:29 -0500
From: Rob Herring <robh@kernel.org>
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
	andrew@codeconstruct.com.au, conor+dt@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH v6 5/7] dt-bindings: hwmon: max31790: Document address
 and size cells
Message-ID: <20250918230129.GB3127900-robh@kernel.org>
References: <20250918180402.199373-1-eajames@linux.ibm.com>
 <20250918180402.199373-6-eajames@linux.ibm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918180402.199373-6-eajames@linux.ibm.com>

On Thu, Sep 18, 2025 at 01:04:00PM -0500, Eddie James wrote:
> Since fan properties can include reg, the fan controller should be
> able to specify address-cells and size-cells properties.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
> index b2dc813b1ab44..42e7030360f1c 100644
> --- a/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
> +++ b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
> @@ -35,6 +35,12 @@ properties:
>    resets:
>      maxItems: 1
>  
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +

As I explained, this is wrong if the child nodes don't have an address 
and are named "fan-[0-9]" which they are.

>    "#pwm-cells":
>      const: 1
>  
> -- 
> 2.51.0
> 

