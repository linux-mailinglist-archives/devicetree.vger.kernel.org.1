Return-Path: <devicetree+bounces-61681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC7A8ADB08
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 02:26:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D4381F24B7E
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 00:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8121CA89;
	Tue, 23 Apr 2024 00:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b="P35gbpxi"
X-Original-To: devicetree@vger.kernel.org
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com [91.218.175.189])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAF51C2A1
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 00:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.189
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713831399; cv=none; b=Sb16jtEeLvyXadwe8eWLbN7l41+/9K0tsGnxLQzMkPwgppvPW+ON1Idn9M/mQao7/RMhP41YNxDq7w2MC/diJH1bRZs4eMPBOhOAlgJjRXsnMn7QTfUdvxOh7DAPyzUTGj6jv6tP81Kq87ToOAJNZl1MYTFUy1ZW4G0c5KLWhIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713831399; c=relaxed/simple;
	bh=jckes6tdBgedWt9S82nZ/ZGhD+x9LMtO4OcCYzGqsas=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CoPs52lchxsiEph8wJjQBbaytyuFc0An/Cwfacwo8g850u6ELb62+q0KJg7O2QHh2OapK6Rr/69c5EbXWQucWwLSn5YTwokdKD5Fm6hloyMTpJ72i5YzdUI9p0vVgFuBAzUPHulXNJ3UG1PXa6NkjyrbaW2lJz9kJs2vZcAHVAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jookia.org; spf=none smtp.mailfrom=jookia.org; dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b=P35gbpxi; arc=none smtp.client-ip=91.218.175.189
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jookia.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=jookia.org
Date: Tue, 23 Apr 2024 10:16:03 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1713831396;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3PjLzYXPrvsnRRLgN9SmXMrZBQDUGBp9xggolXW6asY=;
	b=P35gbpxikG4isFEFyxUCsLxoEDh2Fi3JvNd+/v+/Q/CtlSYfvILkHZ5KHxuW0Sm+a8CUGA
	oalgFTHK7mH9UsRYic1HtfjfQWBfrxehiJwyTizL7tCnaeHTiyqxgWik3y/mALHxri0Xes
	goCw6krleG3zqkH62VqbNEe9t7zfe2sCcs8cMHXpCdSwsWHnsB+0GUZdunYSpTSoBc83C+
	G36vw5ExIq5PBzTXsMBM/GgtJWMFI6DEdSope9kwPdkXNTbFw4J5NcmH5vGIhqPVBPquZ8
	+ntpobKzWvc1yWsWEwrOADq40YGRBorzvxnYjWCte4GWsH+QF50qy9LKhIewhg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Chen-Yu Tsai <wens@csie.org>, Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Ryan Walklin <ryan@testtoast.com>,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH v2 1/5] mfd: axp20x: AXP717: Fix missing IRQ status
 registers range
Message-ID: <Zib9w9aLBtr07MqZ@titan>
References: <20240418000736.24338-1-andre.przywara@arm.com>
 <20240418000736.24338-2-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240418000736.24338-2-andre.przywara@arm.com>
X-Migadu-Flow: FLOW_OUT

On Thu, Apr 18, 2024 at 01:07:32AM +0100, Andre Przywara wrote:
> While we list the "IRQ status *and acknowledge*" registers as volatile,
> they are missing from the writable range array, so acknowledging any
> interrupts was met with an -EIO error.
> 
> Add the five registers that hold those bits to the writable array.

Hi,

This change looks good to me. Checked against the datasheet.

John.

Reviewed-by: John Watts <contact@jookia.org>

> 
> Fixes: b5bfc8ab2484 ("mfd: axp20x: Add support for AXP717 PMIC")
> Reported-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  drivers/mfd/axp20x.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
> index 48ce6ea693cea..d8ad4e120d379 100644
> --- a/drivers/mfd/axp20x.c
> +++ b/drivers/mfd/axp20x.c
> @@ -210,6 +210,7 @@ static const struct regmap_access_table axp313a_volatile_table = {
>  
>  static const struct regmap_range axp717_writeable_ranges[] = {
>  	regmap_reg_range(AXP717_IRQ0_EN, AXP717_IRQ4_EN),
> +	regmap_reg_range(AXP717_IRQ0_STATE, AXP717_IRQ4_STATE),
>  	regmap_reg_range(AXP717_DCDC_OUTPUT_CONTROL, AXP717_CPUSLDO_CONTROL),
>  };
>  
> -- 
> 2.35.8
> 

