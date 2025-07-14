Return-Path: <devicetree+bounces-196096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A7FB041EA
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 16:38:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF1331A64FE4
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 14:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3F525A33A;
	Mon, 14 Jul 2025 14:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YFAjWZJb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1883A25A2C4
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 14:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752503837; cv=none; b=q+W/vYbg7xMicS8/uTEMTa+KDyeH8hV/Wq+rBz0oP32VklLVllfp+bYNsLfmthNb3nPwtHpT8yjVXQQ0FgQNzAozQRjzCDUKqhLrWc2FsUSE8RYpfWCqgxBrGLZC59egz23knz8Vo6oYLO1AiWpyvSOiBxubFUIyqTFjShvtYwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752503837; c=relaxed/simple;
	bh=TRcpibRTLH9cseWylS1uM49SbJnEmrei1lux8cE11sE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NPyysjFwl3dQ4DMEXvIN/EnsPoiS6PLFU1TwBKBdYydHYs/JWunyR87y84UFkuP3FZhlh/xrf0MG9n4BZzLVuT02buCirsy3RNLP6k7D1bo4zTZedrwiYg0F7BiqRRyyG+fUD+XQPGWiT7TP6KN24D8NxvpmMIo86o5CDwx/fV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YFAjWZJb; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-31c38e75dafso3680171a91.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 07:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752503835; x=1753108635; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lRw/NX+KklOoltNcYQ1FFnx+QWAS9ZeWaLliEu+hd3U=;
        b=YFAjWZJbri7WyStVubAZWla8N4Qz/VXHOrXjyK0c8J0cea6UfqQ8y6wpuWvtZBYnTC
         xVgEiM2vWxUaKWRZPvSGPUu+E201rEd/iyEBqAjvq7fH6nwLU3s028J0exf2/mG3L8f+
         8wS6QxGHV+rxRHDTO4ehhopMaHGEUumEEgIyfnYSz8JBLmzF6ikeVPp6jgpw2I9xWZ5N
         UP5dRTzCKjYQ4QosLPc2cjAHlptuaOQatTtbr4EmN9qSipOheaNOkXTHAdJKD9M/7zL9
         mpaEqnj25guZVZjp2QFzplYmU4EOGXBY8z9lFyW2Oi0t1CxlIiLYwOUOP1YLWL+I5rLa
         jtWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752503835; x=1753108635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lRw/NX+KklOoltNcYQ1FFnx+QWAS9ZeWaLliEu+hd3U=;
        b=oqonJwnNvI+rDPwFutxxmy8zdzPIAxV43pHc0XR7dTqMN5xVwTArR9M+TWUZoEe27E
         HRNYu0Ge2+CscwETEE6O6ug8GXNngSPSMp1RpM4oL6NUlB8pQ6U0UaSy7v51rTTJtEEh
         hOPJ04tNbKe2ScLabliG4MT5kjbuw15NjduncmyKE66xG6lAfWuaXo0Z4lO0iR/4IIH7
         ipc7JtvA07cWXKkOnzvMebF0/fhowad+dLY9O9Rc1SsqGXBeK63/UMEQsKK5HNWwzvIc
         j4O1tBCykuMjCykJlLzEBtUzjkqY1jwvf10C5xchZJsMCRz1AJR4rINxMwCThJfpiV9c
         /QcA==
X-Forwarded-Encrypted: i=1; AJvYcCWAXsbm+cFa1n2GS1FZjRDmwGX4Vk6mEbiKWVrHHO2Mn6tYHTR2vBx1liglzhNRtrNhfa9niqmsbXK1@vger.kernel.org
X-Gm-Message-State: AOJu0Yybdqc/Gm4HZSXhZM7NDtisKtq3hZwZ23VGD/GnjB5gTm/Sf5CT
	RLcS66cfRl7tBABW+SiDuWOnX/WLvv6KANK7FZB+di6w5CyrgTEzZGZNX8qaIr5wlBVKM0yMOPc
	jSSMWNJTCaE+XhsHLi+q9apRK3rK7vHYd/HFWBGAqFSNe67VoNoDr4cI=
X-Gm-Gg: ASbGncsiKadrhuJt9ERCbFb3+QkYlg6X6Z3w9YIEOes9AZZ3gbt6nWDA4mEfEJ6f1IH
	P1nP25t3e0aqyE9p5qQ74f6XxASpE4ktjanO4fiE+UDwhRy7OLZvORU0VqyumlKE5Dd4enL8XFe
	mXOk4gF+bjrtYlh7Q4otxodG0GGoASM/2BZrwdp3dcXU4Y6+0j05Dg4I74HeHpSwY5x6neEc3Gu
	xRFir78QBIdGsov7gg=
X-Google-Smtp-Source: AGHT+IE9vli31u992ZT8kPqLb073rl0Qa9Fp1wDpRWfD+6c5waYC0lIxt4DAIY775EghGpjiJXOpIWCdhZUB6c4WwNM=
X-Received: by 2002:a17:90b:1643:b0:311:9c9a:58d7 with SMTP id
 98e67ed59e1d1-31c4ccdcce7mr20175039a91.19.1752503835123; Mon, 14 Jul 2025
 07:37:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250624181320.2810521-1-raymond.mao@linaro.org> <20250710005821.GA94507-robh@kernel.org>
In-Reply-To: <20250710005821.GA94507-robh@kernel.org>
From: Raymond Mao <raymond.mao@linaro.org>
Date: Mon, 14 Jul 2025 10:37:03 -0400
X-Gm-Features: Ac12FXwMK2ygdSLWZAPAf0rvYVKKrh58aGskfqls54bumEBc4Dr9Mohtz6UOLQI
Message-ID: <CAEfUkUKXskNxdsFG0htpmcgNnVeau7n4wtH2FOweEW7BxC3scA@mail.gmail.com>
Subject: Re: [PATCH] docs: devicetree: overlay-notes: recommend top-level
 compatible in DTSO
To: Rob Herring <robh@kernel.org>
Cc: linux-doc@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree-spec@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Wed, 9 Jul 2025 at 20:58, Rob Herring <robh@kernel.org> wrote:
>
> +devicetree-spec (because linux-doc doesn't really care)
>
> On Tue, Jun 24, 2025 at 11:13:20AM -0700, Raymond Mao wrote:
> > When managing multiple base device trees and overlays in a structured
> > way (e.g. bundled in firmware or tools), it is helpful to identify the
> > intended target base DT for each overlay, which can be done via a
> > top-level compatible string in the overlay.
>
> I think this should be more general and more specific at the same time.
>
> You might not want to match on a top-level board/soc compatible, but
> rather the compatible for a specific node. For example, you may have an
> overlay for a cape, hat, etc. that applies to a connector node and that
> connector node could be on any number of boards or even multiple
> connectors on 1 board. That's all under development, but so far in those
> cases we expect some sort of connector driver to apply the overlays. But
> I think you could have the same issue of identifying which overlay files
> are relevant. I don't think folks working on add-on boards have thought
> that far ahead.
>

The use case from the angle of a specific driver might be a completely
different scenario.
The motivation of this patch is to support handing over DTOs as
transfer entries across different boot stages via transfer list.
Unlike for a specific driver, a DTO within a transfer entry is usually
board-leveled and contains nodes for more than one driver.
The transfer list library in each boot stage does not have knowledge
on a single specific driver and which target base should be applied is
the only interest.
That is the common DTO use case in Firmware Handoff and why we need
the top-level compatible to be introduced.
For details, please see my PR for the Firmware Handoff spec update to
support DTO as transfer entries at:
https://github.com/FirmwareHandoff/firmware_handoff/pull/74

> And since we don't know the target-path up front, it is just left blank
> so far. It would be better if we expressed *something*. Perhaps
> 'target-compatible'? Something like that would work in your case I
> think.
>
> You'd have to be somewhat crazy, but you can bundle a bunch of
> mutually-exclusive or unrelated overlays within a single overlay file. I
> don't know that we want to prevent doing that. Someone might come up
> with some not crazy reason to do that...
>
> >
> > This patch updates the document with a note and example for this
> > practice.
> >
> > Signed-off-by: Raymond Mao <raymond.mao@linaro.org>
> > ---
> >  Documentation/devicetree/overlay-notes.rst | 28 ++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/Documentation/devicetree/overlay-notes.rst b/Documentation/devicetree/overlay-notes.rst
> > index 35e79242af9a..30b142d1b2ee 100644
> > --- a/Documentation/devicetree/overlay-notes.rst
> > +++ b/Documentation/devicetree/overlay-notes.rst
> > @@ -103,6 +103,34 @@ The above bar.dtso example modified to use target path syntax is::
> >      ---- bar.dtso --------------------------------------------------------------
> >
> >
> > +Overlay identification
> > +----------------------
> > +
> > +When managing overlays dynamically or bundling multiple base device trees
> > +and overlays in a single system (e.g., in firmware, initramfs, or user-space
> > +tools), it becomes important to associate each overlay with its intended
> > +target base DT.
> > +
> > +To support this, overlays should include the top-level compatible string
> > +from its base DT.
>
> The base has multiple compatible strings, so which one? Has to match on
> any one or all of them?

Match only with base's top-level compatible, see above for the
explanation of the use case.

Regards,
Raymond

>
> > +This enables higher-level software or firmware to identify which base DT
> > +an overlay is compatible with and apply it accordingly.
> > +
> > +Example usage::
> > +
> > +    ---- bar.dtso - overlay with top-level compatible string -------------------
> > +     /dts-v1/;
> > +     /plugin/;
> > +     compatible = "corp,foo";
> > +
> > +     ...
> > +    ---- bar.dtso --------------------------------------------------------------
> > +
> > +This top-level compatible string is not required by the kernel overlay
> > +mechanism itself, but it is strongly recommended for managing overlays in
> > +scalable systems.
> > +
> > +
> >  Overlay in-kernel API
> >  --------------------------------
> >
> > --
> > 2.25.1
> >

