Return-Path: <devicetree+bounces-100339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A9096D432
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 11:49:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA5E6B279BF
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 09:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327C8198A3E;
	Thu,  5 Sep 2024 09:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hitbfVy8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662D514A08E
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 09:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725529769; cv=none; b=lqjG5t4Tc+HIjzLDeM8VI321BaML94UJLHLGRM2sCUQ7cuZnPzXP6r+a8xSPjOf+ufF2tKxkGiNKUE2lLEd91td8v3SR5HovZnPGzewZrM1GmeX8D97bVHBOBILDC0ZaTVCQ7PwdRqPzP4Par4QeMB5Daf0XUCj/Ym3ltyX3j88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725529769; c=relaxed/simple;
	bh=nH8Atn3L+aPW8XuxA02/FDlH3BF6dLRVbi4LLnqDeFc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UNvMC7RNAWcKdv7r6331LWK8YEDWx7ijOAgcOvdPH2GEwX3LbZI97qsHyX+Q0UfIhGgcW91aVlaFeANDs0jLr6OJCUk+Q9FS3VEaFdlzSBFEoHfZ9GymJQk32lpfNBQRjA6mvP/Ajb/jfx5gviGLgOZl+KZk5YOgnwkJOSlWByo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hitbfVy8; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-374c326c638so367754f8f.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 02:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725529765; x=1726134565; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ajsi2J0ggLeyG252quBxawrZ5p8Nah60ezK6XPT3tHQ=;
        b=hitbfVy8oUXqFGq8GNyZj2lhha2aUl6SA6C+cCspCIPUzEOe+zNXXw1NkUu3LeVnYN
         8mWfTwmQm98dVS0cHAwQBbx4yXR7rK/JaVbdAB/+BH6/gGe98SAGSMXcqqSBH9GI43uc
         fI+Mi3BkQIx8SJMTRkSGRJhh///og+ob5xf4XszgwZD0GleC/RsrVVbASfhSHGVhtPt2
         NMxhnPB6+MERi1UhybSSOmm1jFoRoAafOgKRJuybY7J5WGAf54LTTDRwZ054dOW0Q25s
         jmD/vJvzYuULKCxwG+u5bOaTbBviFKdfqkhCZQEUiT7pQK6e27kZ5TR4j2e/MSDFKNPh
         vnCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725529765; x=1726134565;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ajsi2J0ggLeyG252quBxawrZ5p8Nah60ezK6XPT3tHQ=;
        b=jlXHEK+Ilu7kFSFAEhpG7LNexQfKmrWYYG2RUmP8Rvs+VoIt1XhiimZ6Q6s/EXYAro
         RhyEicBfwfA32xH8ZBtxZRhCyJubOxhVkUVSwLENtvF/+dJ88cUUzxbi6bKn4ADW0sH/
         9WRbHVWWu1fqexDVVmlh6qobrxE1MSTUlsitJqz8aT3MGz1UVg58cKm4RjNFJXSI9yLj
         SToslbQh17f054JxjGSv/cRlQ2KsX75YVHMY91c/fgRqb9wEuq6TVWX9mGOYQoePBmxi
         42Pk3Gsg0ixsYrEwYEZcbFv+kTKhlPIU2uDdKwnVFlp0JX0PP5WaXFRhhrUaT1cfdCrr
         THRg==
X-Forwarded-Encrypted: i=1; AJvYcCVinaxIaEWtKHp4ABeLUlkEgLxX+kuCujt2SEE7wnc9jgZsnZhWLOj9eSo4OijeZrIGrnOzpHkUCrVD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2INS4o0y3kXgRJnGs/gBy3g/btU3N0Jy97+kwoQsSdY/a2z+K
	tQJ7Gig2xcllDI/30Eoa2YKZuD61jZTDMGu3HamDBMqrTJbAIPzVrixgC2wWzBIYDQdIT/BpAvQ
	z
X-Google-Smtp-Source: AGHT+IHDFmIV1wFMjjwEtr/Qx3K4SulTMcfQCQfKJ/zC+fCZq/1r6s2lg+nXTHZKCRKIlMAyyclWcw==
X-Received: by 2002:adf:f98a:0:b0:36b:bb84:33e2 with SMTP id ffacd0b85a97d-374bf184398mr11819525f8f.37.1725529764578;
        Thu, 05 Sep 2024 02:49:24 -0700 (PDT)
Received: from blmsp ([2001:4091:a247:83d8:caa7:e645:3612:56b6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749ee4ddc8sm18872157f8f.21.2024.09.05.02.49.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 02:49:23 -0700 (PDT)
Date: Thu, 5 Sep 2024 11:49:22 +0200
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Vibhore Vardhan <vibhore@ti.com>, 
	Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: ti, sci: Add property for
 partial-io-wakeup-sources
Message-ID: <h4kapqs5vpparh5b3tter54fbnxubq6gpnb4yrqjdio66tj37w@l3xzum2bq5sz>
References: <20240729080101.3859701-1-msp@baylibre.com>
 <20240729080101.3859701-2-msp@baylibre.com>
 <f0f60af7-8561-433a-a027-811015fc5e16@kernel.org>
 <ti4ffymrixcpptlrn3o5bytoyc4w5oovdrzgu442ychai2fjet@wtdhrmwrozee>
 <44feed5a-95a7-4baa-b17e-514c0f50dae6@kernel.org>
 <sf2pklbnlkpgnkemv3wevldpj55kk2xqh4fabbmkcbh2tvnbzr@gg3gxgztq6pt>
 <d2eb4faf-c723-453b-a9d8-68693c96fb42@kernel.org>
 <fa11631e-48f9-4e95-95c4-20b77cb0a1be@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <fa11631e-48f9-4e95-95c4-20b77cb0a1be@kernel.org>

On Thu, Sep 05, 2024 at 11:25:48AM GMT, Krzysztof Kozlowski wrote:
> On 05/09/2024 11:15, Krzysztof Kozlowski wrote:
> > On 05/09/2024 11:08, Markus Schneider-Pargmann wrote:
> >> On Tue, Aug 06, 2024 at 10:03:00AM GMT, Krzysztof Kozlowski wrote:
> >>> On 06/08/2024 09:11, Markus Schneider-Pargmann wrote:
> >>>> Hi Krzysztof,
> >>>>
> >>>> On Tue, Aug 06, 2024 at 08:18:01AM GMT, Krzysztof Kozlowski wrote:
> >>>>> On 29/07/2024 10:00, Markus Schneider-Pargmann wrote:
> >>>>>> Partial-IO is a very low power mode in which nearly everything is
> >>>>>> powered off. Only pins of a few hardware units are kept sensitive and
> >>>>>> are capable to wakeup the SoC. The device nodes are marked as
> >>>>>> 'wakeup-source' but so are a lot of other device nodes as well that are
> >>>>>> not able to do a wakeup from Partial-IO. This creates the need to
> >>>>>> describe the device nodes that are capable of wakeup from Partial-IO.
> >>>>>>
> >>>>>> This patch adds a property with a list of these nodes defining which
> >>>>>> devices can be used as wakeup sources in Partial-IO.
> >>>>>>
> >>>>>
> >>>>> <form letter>
> >>>>> This is a friendly reminder during the review process.
> >>>>>
> >>>>> It seems my or other reviewer's previous comments were not fully
> >>>>> addressed. Maybe the feedback got lost between the quotes, maybe you
> >>>>> just forgot to apply it. Please go back to the previous discussion and
> >>>>> either implement all requested changes or keep discussing them.
> >>>>>
> >>>>> Thank you.
> >>>>> </form letter>
> >>>>
> >>>> I tried to address your comment from last version by explaining more
> >>>> thoroughly what the binding is for as it seemed that my previous
> >>>> explanation wasn't really good.
> >>>>
> >>>> You are suggesting to use 'wakeup-source' exclusively. Unfortunately
> >>>> wakeup-source is a boolean property which covers two states. I have at
> >>>> least three states I need to describe:
> >>>>
> >>>>  - wakeup-source for suspend to memory and other low power modes
> >>>>  - wakeup-source for Partial-IO
> >>>>  - no wakeup-source
> >>>
> >>> Maybe we need generic property or maybe custom TI would be fine, but in
> >>> any case - whether device is wakeup and what sort of wakeup it is, is a
> >>> property of the device.
> >>
> >> To continue on this, I currently only know of this Partial-IO mode that
> >> would require a special flag like this. So I think a custom TI property
> >> would work. For example a bool property like
> >>
> >>   ti,partial-io-wakeup-source;
> >>
> >> in the device nodes for which it is relevant? This would be in addition
> >> to the 'wakeup-source' property.
> > 
> > Rather oneOf. I don't think having two properties in a node brings any
> > more information.
> > 
> > I would suggest finding one more user of this and making the
> > wakeup-source an enum - either string or integer with defines in a header.
> 
> I am going through this thread again to write something in DT BoF but
> this is confusing:
> 
> "Partial-IO is a very low power mode"
> "not able to do a wakeup from Partial-IO."
> "wakeup-source for Partial-IO"
> 
> Are you waking up from Partial-IO or are you waking up into Partial-IO?
> 
> And why the devices which are configured as wakeup-source cannot wake up
> from or for Partial-IO?

Sorry if this is confusing. Let me try again.

Partial-IO is a very low power mode. Only a small IO unit is switched on
to be sensitive on a small set of pins for any IO activity. The rest of
the SoC is powered off, including DDR. Any activity on these pins
switches on the power for the remaining SoC. This leads to a fresh boot,
not a resume of any kind. On am62 the pins that are sensitive and
therefore wakeup-source from this Partial-IO mode, are the pins of a few
CAN and UARTs from the MCU and Wkup section of the SoC.

These CAN and UART wakeup-sources are also wakeup-sources for other low
power suspend to ram modes. But wakeup-sources for suspend to ram modes
are typically not a wakeup-source for Partial-IO as they are not powered
in Partial-IO.

I hope this explains it better.

Best
Markus

