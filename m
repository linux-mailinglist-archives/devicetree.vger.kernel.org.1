Return-Path: <devicetree+bounces-124182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F439D7D19
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 09:43:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2343CB23F6A
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 08:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C4B18C01D;
	Mon, 25 Nov 2024 08:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jKzvuja/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C4A18BB9C
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 08:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732524227; cv=none; b=iTAF+E191pZEDKVjbTRKgryG5dgZGPjub+8E5m27R37YTJSVExHNBdbAANNxODl054DPn+U9FrHBRB1H6sgZvTEIXPEn4vVbwI1m1a+2w4LnxBGnXrIaA3110+tNf7ucF10VdlYzof4ltsBc0Hx4blLujpMeddHeGHDAmPojOPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732524227; c=relaxed/simple;
	bh=gAVXzRO6flOMUc+jbivLLOShw9D4eUFZeiCNKksrDnw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D9qIFUP99kBWNG7nEsmq7EcIGWk85k2B3rF8vnQ+wHqBgig5yDYfT1TbImzHfKrGJpeMGka3SfPCtojOTxkYUsdiIIZIeWNIkhugFZR7jvvFJmwbGRYik77a0ovgRTUCcSy8zdgn1Sk4G+mVveUywaaacUOMO7LN+IdPh6V//Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jKzvuja/; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7251331e756so298000b3a.3
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 00:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732524225; x=1733129025; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WF1SurkpJR9+d436XSidV3nIHqKYTAhhIXu+fIUsswU=;
        b=jKzvuja/Z4YlCH0uuK+81dhzQrmSQr0ej49IbhoT270N6OwQkSiFQGSLej0HEIoKJP
         SEN8JFh6+8mrJy0Jzvzs7NkFbmnQUn7U+x10/rr7EMA62N3ExHUEHRrwsqdpo7mQ/mnP
         WBz9AB9m7cbJMf59mS8D++rCWpF9DUnN6FshU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732524225; x=1733129025;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WF1SurkpJR9+d436XSidV3nIHqKYTAhhIXu+fIUsswU=;
        b=FBIX+FZ53A11VTBzkBU7V3vuvPoH61zoPqU+4EzYAJUPtUZ/gPwF2+ycqfQa0951/z
         LUnc1YyXnG6nvMT0+ehq9+JhguyTjdo4sFoKPvjFCbMIq73yQIyaVTUFxgSmX2xbM5tz
         4L4qJi2rW+q4S1ZwVwdFstg3oVogfU4b2IvJjCA6ujtGB/AXiYJgC8J9ECArDUgBEM9j
         nRaYnq+IAOVZ522+0pU4hW0ubrZL98aX8Am+lydRQtyizodwEhZq6LYbfXtL3qDP6O1W
         VPuEFWP8VQkC9uRTReZhU7cWUo9p1BQ7Z/09KB73GtA4eSzkP1PYGMA0wHz0jNKQwfDZ
         0S+A==
X-Forwarded-Encrypted: i=1; AJvYcCXdaKcblU9e1j0T66hDbB+eAYZAWf9Wih8ddN/QVqnbT8W68zI6Q2/ORzk6AVPi5652YVbyrwbeH2sy@vger.kernel.org
X-Gm-Message-State: AOJu0YzmfG/ICHOmFgTRmok5VR5oaIlG4hk3q6eZ/AgpeiTNJ2EWn7l7
	Z8RluXSmjBx1HSpzag2MN5l5mGdOWNeUhtBBEVJ+prcxtMB5QmVRg6c8lKoIkw==
X-Gm-Gg: ASbGnctG96Pw/0n2SmZNkJQkjzV9pu6mR2CLmFLho9p5hkjO/WWfNQgWC6cpXnAY9iI
	tyCpUJI72YAbdSu8IobDVhZHEU+wyZKQJqqwB8zQrqw8D26uA9U/0OyhZGNZqFxXn7T37KOIPk3
	XVAAgcpKKusKwXmSQ04RF9bLs/nb9uPFWpiF7jw1uVRjtmJpBP96/gSQUkZEOkAy2LK3yb7s/7m
	DO+gUMWX/110EUGPe2pUcwVmOXPoSnat0ooVOYcxZC2
X-Google-Smtp-Source: AGHT+IGwNB4nRJMnNhTbAeM5SVohmmw2VhsVBxq/0MFDU/T8BxbRsqUD7vI2vwEli6Gsw3VQCvNV0A==
X-Received: by 2002:a17:90a:ec83:b0:2ea:5fa5:fac0 with SMTP id 98e67ed59e1d1-2eb0e332553mr16365914a91.16.1732524224785;
        Mon, 25 Nov 2024 00:43:44 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:66a3:d18f:544f:227a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ead03de64asm9677264a91.41.2024.11.25.00.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 00:43:44 -0800 (PST)
Date: Mon, 25 Nov 2024 16:43:40 +0800
From: "Sung-Chi, Li" <lschyi@chromium.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>,
	Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, chrome-platform@lists.linux.dev,
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: mfd: cros-ec: add properties for
 thermal cooling cells
Message-ID: <Z0Q4vGXbvU3j9H65@google.com>
References: <20241122-extend_power_limit-v1-0-a3ecd87afa76@chromium.org>
 <20241122-extend_power_limit-v1-2-a3ecd87afa76@chromium.org>
 <4f5sahkxxqb5qonh676igaiadkxv2pbhbibu6wtx4yenplfn4o@yvidi4ujavhr>
 <Z0Pl3muZx716QSed@google.com>
 <c2e9a97e-129d-4a82-9e81-b1391b4b6ff9@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c2e9a97e-129d-4a82-9e81-b1391b4b6ff9@kernel.org>

On Mon, Nov 25, 2024 at 08:32:19AM +0100, Krzysztof Kozlowski wrote:
> On 25/11/2024 03:50, Sung-Chi, Li wrote:
> > On Fri, Nov 22, 2024 at 08:49:14AM +0100, Krzysztof Kozlowski wrote:
> >> On Fri, Nov 22, 2024 at 11:47:22AM +0800, Sung-Chi Li wrote:
> >>> The cros_ec supports limiting the input current to act as a passive
> >>> thermal cooling device. Add the property '#cooling-cells' bindings, such
> >>> that thermal framework can recognize cros_ec as a valid thermal cooling
> >>> device.
> >>>
> >>> Signed-off-by: Sung-Chi Li <lschyi@chromium.org>
> >>> ---
> >>>  Documentation/devicetree/bindings/mfd/google,cros-ec.yaml | 3 +++
> >>>  1 file changed, 3 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> >>> index aac8819bd00b..2b6f098057af 100644
> >>> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> >>> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> >>> @@ -96,6 +96,9 @@ properties:
> >>>    '#gpio-cells':
> >>>      const: 2
> >>>  
> >>> +  '#cooling-cells':
> >>> +    const: 2
> >>
> >> This is not a cooling device. BTW, your commit msg is somehow circular.
> >> "Add cooling to make it a cooling device because it will be then cooling
> >> device."
> >>
> >> Power supply already provides necessary framework for managing charging
> >> current and temperatures. If this is to stay, you need to explain why
> >> this is suitable to be considered a thermal zone or system cooling
> >> device (not power supply or input power cooling).
> >>
> >> Best regards,
> >> Krzysztof
> >>
> > 
> > Thank you, I will rephrase the commit message. The reason to not to use the
> > managing charging current and temperatures in the power supply framework is
> > that:
> > 
> > - The EC may not have the thermal sensor value for the charger, and there is no
> >   protocol for getting the thermal sensor value for the charger (there is
> >   command for reading thermal sensor values, but there is no specification for
> >   what sensor index is for the charger, if the charger provides thermal value).
> > - The managing mechanism only take the charger thermal value into account, and
> >   I would like to control the current based on the thermal condition of the
> >   whole device.
> > 
> > I will include these explanation in the following changes.
> 
> 
> This does not explain me why this is supposed to be thermal zone. I
> already said it, but let's repeat: This is not a thermal zone. This
> isn't thermal zone sensor, either.

Hi, I added the explanation in the commit message in v2, in short, I need to use
different thermal sensors, and need finer thermal controls, so I have to use
thermal zone. This is included in the v2 commit message.

> 
> 
> Best regards,
> Krzysztof

