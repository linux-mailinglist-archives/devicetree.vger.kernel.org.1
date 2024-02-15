Return-Path: <devicetree+bounces-41872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC50855C0A
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:10:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7D1FB2AD3D
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 08:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5072111BD;
	Thu, 15 Feb 2024 08:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonic.nl header.i=@protonic.nl header.b="rMfofK/4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp16.bhosted.nl (smtp16.bhosted.nl [94.124.121.27])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BDD14265
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 08:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=94.124.121.27
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707984602; cv=none; b=FQNxw8pwOFubBk0JKIqZzg+H/U28NUBPUy2THsxRDtj6hCPkhzAHT+oiV/nnp3aF2++5ZkykoonM43G2hMJ4iONzThvfG11FRkR5/C6vkH/Ta9upY08/Be7lqRr7La5wK7IpS9DXP9IY4zO3lSQYb6xtDMKYCwvJ3ibF4OLHUQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707984602; c=relaxed/simple;
	bh=oMloioHiqzolpC8BrGlsCGRh5jYANxyAMFV8ZGoH6u4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OV0zRAVcpAQ8kH1bPbWgCo3vmMP4G10LdRPqf8NlQ0ucuWzdXhHGC3G/n1I2LAGAlWl4vHASuYiCCJFz1a8blWEC/8P1kjje7Ip9j04bIS8/K/tnduh8KXCg0U44LaUcfEg78Klpnrp8auNJKWoD/QQjiHKpOa/BGAR/etINVu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=protonic.nl; spf=pass smtp.mailfrom=protonic.nl; dkim=pass (2048-bit key) header.d=protonic.nl header.i=@protonic.nl header.b=rMfofK/4; arc=none smtp.client-ip=94.124.121.27
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=protonic.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonic.nl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=kiAiXK+yoKzyPMDFH1nthKH5uSY0ZMKoR36YEkDCLGw=;
	b=rMfofK/4B9BFHNnqOMtUksFJFEF0WyNI4weobZi2m5EJ4vgg+feyHk6BJSYI72YAOqLN9k5ogD7X0
	 Wl7b3QD7QLHwAbQWTKgisMPK1bhUnKtZ6frM6Fmamq06cp53tpisrZJCf3BET/MN2aaFbRRCFAjOtY
	 XhYgNJ+5/HmY89VxcOf4JoOpRdm8Ll2lhojgJO3AGtjSdsGham0gQxcpk9z/TKvc967/qbbUI7cmLj
	 NsfPU6zhdfkGh0ASBY0R/mkOyEWfxOqJfSyrB+xerC0LDt1UXGLBvbOq27rrZFbBdkLdnAUeQ+ZXNW
	 CE87IE9q69VJD6lbrKegjR0kRyXuESg==
X-MSG-ID: 9886104d-cbd9-11ee-a384-005056817704
Date: Thu, 15 Feb 2024 09:09:52 +0100
From: Robin van der Gracht <robin@protonic.nl>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Andy
 Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Paul Burton <paulburton@kernel.org>
Subject: Re: [PATCH v2 13/15] auxdisplay: ht16k33: Use buffer from struct
 linedisp
Message-ID: <20240215090952.68c7d3bc@ERD993>
In-Reply-To: <20240212170423.2860895-14-andriy.shevchenko@linux.intel.com>
References: <20240212170423.2860895-1-andriy.shevchenko@linux.intel.com>
	<20240212170423.2860895-14-andriy.shevchenko@linux.intel.com>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Mon, 12 Feb 2024 19:01:46 +0200
Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:

> struct linedips embedds a small buffer for the string that we may reuse.
> Update the driver accordingly.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/auxdisplay/ht16k33.c | 28 +++++++++-------------------
>  1 file changed, 9 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/auxdisplay/ht16k33.c b/drivers/auxdisplay/ht16k33.c
> index b104f08252dd..08cc05b9d216 100644
> --- a/drivers/auxdisplay/ht16k33.c
> +++ b/drivers/auxdisplay/ht16k33.c

Acked-by: Robin van der Gracht <robin@protonic.nl>

