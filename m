Return-Path: <devicetree+bounces-41871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A252855C08
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6A671C2917D
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 08:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D885134BA;
	Thu, 15 Feb 2024 08:09:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonic.nl header.i=@protonic.nl header.b="tuT5iIFU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp28.bhosted.nl (smtp28.bhosted.nl [94.124.121.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0683212E67
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 08:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=94.124.121.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707984584; cv=none; b=Q4FHgTRV44UK127aT843by1LWYj2fewCoJ/5BtMGhhw7srO1CpsifHn1w02N3uTvFhIxCAhLuFMzVJWkH8BfkJbu1RjqeZvJopneFBEbm++RZU4pBfZmydPU3kdhSCnaUrc/HfvK1pDhc6YPzwtSo42nK3ke4wyZTMWPQ9n8BlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707984584; c=relaxed/simple;
	bh=hTxiJcANzp1j55PebsztEDY/FtOm8SJWAcAWDgOLDmw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JsLi6XxkrWDaSDE9iTV5fybYXptMLOeV41xH368C1cLYkn70zHqs/nrx8Rp/KG5zaGGRe2RFC3imrt4mWppwBC2YZUd4bVKk7x81HMUF3i7baxdXUSlX6bu1B4cooR+VrOE4zVwfNN7wgNjOcI8qm8zIFInXxvfkjmjgYDm2Ix8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=protonic.nl; spf=pass smtp.mailfrom=protonic.nl; dkim=pass (2048-bit key) header.d=protonic.nl header.i=@protonic.nl header.b=tuT5iIFU; arc=none smtp.client-ip=94.124.121.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=protonic.nl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonic.nl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=s6htFocJ/uHjPXwcWCMAKyfDP/lHBxTx+wjIC56uVsc=;
	b=tuT5iIFU/aOhj50CNg0kFv6AVYcIKd2/q9C7ttxa5Ch7lW2AbymTLku7K0t9wX6ALKsxbmxSIeSMX
	 E+DSG/N1VRPrHfZgNR/tN5k7aLQLCgwiU6RYL5uixP5CFYfKV+wb4nWvltj0r/RkVyt3Ek9bu95Qqe
	 JxmlJu+YaLXi1Ej0K6ZqM9NOlh8fF3sXefwdL+cofG7VJr/7wzLE3eRrsWdpbqnDsMFBCzfB7uh4na
	 VhvhQB2DMZtWUHa5TXjQOyfrdzUaG6KNzjU879d5lORosS1rYrcJEqKJ8cEe95aIWu89FriVOzkTKD
	 tc3d6aZJTimjvzE6GyKMh2jvqL5b0UA==
X-MSG-ID: 91b4084b-cbd9-11ee-ba6d-0050568164d1
Date: Thu, 15 Feb 2024 09:09:40 +0100
From: Robin van der Gracht <robin@protonic.nl>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Andy
 Shevchenko <andy@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Paul Burton <paulburton@kernel.org>
Subject: Re: [PATCH v2 12/15] auxdisplay: ht16k33: Switch to use line
 display character mapping
Message-ID: <20240215090940.568a5f4e@ERD993>
In-Reply-To: <20240212170423.2860895-13-andriy.shevchenko@linux.intel.com>
References: <20240212170423.2860895-1-andriy.shevchenko@linux.intel.com>
	<20240212170423.2860895-13-andriy.shevchenko@linux.intel.com>
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

On Mon, 12 Feb 2024 19:01:45 +0200
Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:

> Since line display library supports necessary bits to map the characters
> (if required), switch this driver to use that.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/auxdisplay/ht16k33.c | 109 +++++++++++------------------------
>  1 file changed, 34 insertions(+), 75 deletions(-)
> 
> diff --git a/drivers/auxdisplay/ht16k33.c b/drivers/auxdisplay/ht16k33.c
> index 75c4a8d31642..b104f08252dd 100644
> --- a/drivers/auxdisplay/ht16k33.c
> +++ b/drivers/auxdisplay/ht16k33.c

Acked-by: Robin van der Gracht <robin@protonic.nl>

