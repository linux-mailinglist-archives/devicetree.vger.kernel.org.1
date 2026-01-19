Return-Path: <devicetree+bounces-256922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F11C5D3ACA3
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B0483022ABB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0695A20296E;
	Mon, 19 Jan 2026 14:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="G1nCLrxK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3508E35E55A
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768833744; cv=none; b=qlpmvyMb/RjKe/Cnw5qitMpFlONaazLMND1EvAfQqjDundztMKwbX0JSQw04ARVmbJYwrHxdvZpCKsejHPSJU15yM0yzvgCijVM6d9ZQtclUQrm3YpNAqNQ5gCVAU9sglMLi0djSomOQdeH9talKiKMPgjsnG/7OPJVzx7T58Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768833744; c=relaxed/simple;
	bh=afV6H9ksp+j0F3QSTrjV2ykIVls2yG3qd1BHRd1y/fU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NWBLAy2hkwY19Z6pWSbXSv24WaDYc4TBOsMRGOjgdBwNYiL/7/C4izDuly5EO2xDOHUk3E0awVcxUnkNR15zT3/XCmY8J71+iTHCVNO6dKT6YHpE9US0zZJ1Gh8x/irW5AcSTXiWX7mta7WIk2+YQYETu7BckDjeoJNqxHhPUFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=G1nCLrxK; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-43246af170aso2527748f8f.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768833742; x=1769438542; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TvnwX7iYJXUTTPGbmFJMfKYn4PnTqwC1sbs2t7QZU9Q=;
        b=G1nCLrxK4Wl9Vz0FfJuhPXBV5wT1Gt4At8oOacLO5c8a5kV/xK0Y6wZTRJmtJBaj4V
         SOx/hrf0LNoRqnPu4sSt7mJ9MVndxs9EnnSI85qEob5ECJ+ylBfP37IUYzADyzFpKGNa
         BZ1HyAx3AAmVvbxoW1l3HHePvcm8gck60N8CmrjW+EjgmfZUZUs6s1Gdz7Y03SQLXgLc
         OkWklQuXjbkHv09lAHpJHcuD8j2BT8AoASgDAWAXYw6Mwto94NOfCZvQLkqGi93NpdLX
         B4/bSspE2+INEMOV7hzk5q6Lficd6yytmHPYit0mszSR/8RNN6yuJuawZispr/72H/CB
         AnQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768833742; x=1769438542;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TvnwX7iYJXUTTPGbmFJMfKYn4PnTqwC1sbs2t7QZU9Q=;
        b=JW8ADFWYlDCUKPXwYnADR8PKxh1rmyzPNIZXN3kTsbsoxE/TcLefEw9hEBwqPbhs6E
         2Ja2fJS6MQ5/zIC2CRW87NV8xeKsdUw1o8LP7eMS2cZGCxtr2FEiyibad+kWYSP5uRmU
         dVJh/ToYKFTArpFUFDr/N6pNaUCSoS5rRj7kMJ/JAPz8JbMwa+W3jTyM2TNdiSs8PJbC
         YgRHvvY4eC4OWVBREhIYxQhKSb1i2kbcWVsRtYsEiD3jhPeJ+nRzGmmk/X3nL1EbnqXy
         9HcB+5dBv5qfRTDQUdRBDyPe+JzBVuyupxh31MoS0Ls+Ug6JjuESCMOzEiJyOJCPijmb
         i5Xw==
X-Forwarded-Encrypted: i=1; AJvYcCWdkUndlNR1KnqxLg9HV6Tpa+I9776rWMVb0JPjBBXp7xVgAnG+C3920SJ3J5VCDXgRryOFidlMocG8@vger.kernel.org
X-Gm-Message-State: AOJu0YwH363qlY4BrbNPitMDDzx5iHGdB6b8njX/zTP4+SNIsa2sB56M
	roECkkpxUzcj311Y5kMNHBosYyz0gmwlAvuZeB8tiYmCQatcHCWGMJwp8TzNjZkpQss=
X-Gm-Gg: AZuq6aIhiTDsDiirl06XMk7glsrVX05zhVReY+vD0787OWkk47TYu6zz3Fzhpf1SIx8
	j0217Np1Bn6HoK5xMmYXV+veIl3NehxDsaD5f6A37wRaWM/dnriABGyd1lLspmrfAnLf0nfHTha
	C21hq2XfwpHiv2hvCJ1juiI8PLwjrI0+1vRKUY5P4yc2FmQszdlhE24XS91J8ePpcBcWGJAhne/
	5p2w7uyhJoeJulrguPDFocjNaLG+hoRwVeysvmgmUnHT5CfgLTFB1LhwrTkQdxNTI1uTtZ4s7j4
	OQuOQhPlRTmnHnOtjlBM1J5Mys6YJiuhSrW43gcZHQy7pzH4eczqk1prQ7iM8dCKNE6jfMeuJor
	byslKc2sAGo+W0p4gQsmtqF3vVVD9743hO4lPyOQr71NZZRKVhR/jeMZ+mrr2vmMZPNBo2he1y6
	LrE0QXcAizE+JWvEwwR2KWWk6AcPWeg4cs8CbI/pRClH7d+gfRy6ka3acE1ToNFGi1P9pWLQGno
	3X0BlFi0bIb2SmiHy/maQYEOT/YI8SJf4+EpOjIjSNqYYzhbthlafgptoi1Gx4zJbYfziK9fYVn
	pGptcVg=
X-Received: by 2002:a05:6000:4203:b0:432:d9ef:3bef with SMTP id ffacd0b85a97d-4356953f7d4mr17422902f8f.2.1768833741613;
        Mon, 19 Jan 2026 06:42:21 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435699271dfsm22939388f8f.15.2026.01.19.06.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 06:42:21 -0800 (PST)
Date: Mon, 19 Jan 2026 14:42:19 +0000
From: Daniel Thompson <daniel@riscstar.com>
To: tessolveupstream@gmail.com
Cc: lee@kernel.org, danielt@kernel.org, jingoohan1@gmail.com, deller@gmx.de,
	pavel@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: backlight: gpio-backlight: allow
 multiple GPIOs
Message-ID: <aW5CywUjbr6eCPI_@aspen.lan>
References: <20260105085120.230862-1-tessolveupstream@gmail.com>
 <20260105085120.230862-2-tessolveupstream@gmail.com>
 <aVuKdAyXfWLs-WJI@aspen.lan>
 <c182df66-8503-49cf-8d1d-7da17214b843@gmail.com>
 <aWe7_hFpmO0E2sJe@aspen.lan>
 <95a49665-f379-48a7-a2b5-d288cdfdc0a8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95a49665-f379-48a7-a2b5-d288cdfdc0a8@gmail.com>

On Sun, Jan 18, 2026 at 10:18:32PM +0530, tessolveupstream@gmail.com wrote:
> On 14-01-2026 21:23, Daniel Thompson wrote:
> > On Tue, Jan 13, 2026 at 10:15:53AM +0530, tessolveupstream@gmail.com wrote:
> diff --git a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
> index 1483ce4a3480..82698519daff 100644
> --- a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
> +++ b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
> @@ -16,9 +16,11 @@ properties:
>      const: gpio-backlight
>
>    gpios:
> -    description: The gpio that is used for enabling/disabling the backlight.
> +    description: |
> +      The gpio that is used for enabling/disabling the backlight.
> +      Multiple GPIOs can be specified for panels that require several
> +      enable signals.
>      minItems: 1
> -    maxItems: 2
>
>    default-on:
>      description: enable the backlight at boot.
>
> Does this approach work for you?

I think so... but I'd rather just review a v2 patch than this kind of
meta-patch.


Daniel.

