Return-Path: <devicetree+bounces-53571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D5188CC25
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 19:41:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D10B02C7DFE
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 18:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B03E128826;
	Tue, 26 Mar 2024 18:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="TuBeRtta"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D631127B7E
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 18:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711478508; cv=none; b=Wt8mebdzE3nPWUbjCOHPyG9NfUcWXHkE7PX/v3mwCgrmNbDj1ci3piV/fA28XrtGF1iUEaRO68v+TLGtBsmcAj0SCh88cn0C7m7ncx4xxF58xqIr4GrLCyM8bNG5lSOYa5KcjdrQAmmuezl18WsASabdMpLc5YT0fcabOc7tFXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711478508; c=relaxed/simple;
	bh=d0WxjMu6CxTRmPGCulqJJLAB7df7mqL8DDsZkqGFzAk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a1RXQBUmnrRiktE1tGHk64pSkBZUcqKkdp1cliVDnbsYR5v462rr0cZ/P4IPTmO9CYZV65PzzD9vD+2dF3wWXSfOyrPto0gr4QcFuCk41Bvk5cAIhFWOIkTOQa1TAhmE1yg7RlLrTwJYzNUq0hGTTfZTHQbnkUK8MduyRiCnhO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=TuBeRtta; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dbed179f0faso77851276.1
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 11:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1711478505; x=1712083305; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xlmajLnS3NycIi1+iFLAZOWHMenoMDhwnXxUEcCC4Ks=;
        b=TuBeRttauOSLpKaEf+umUslcn3BWnqT1yyavKrNChsthOu844sg1YFhuGhfVQ1Qcr9
         EuWPrK8uKVzR7GHtUni2dMDOoFf+1Rbm6p9nbc+yXWq2xR7G+QpTraOHQG/JFV98YQiz
         MjM9NCMq3qODVHmkMjcwuVxU8dDOx4OoeQuB3qQHTIl7bo13YaXlBCuafVjlH0KqgVwE
         knDEpnoSzUhZGSNpLQ3n7s4tErJP6Rnt4cR6ymevsWJB2MjZwtwTuiN6KjWNtJWrayC1
         OTsQ03IVQZseLDlqHZ9yn5UZg9bpYHEs1nDbNrwq6GiE5am1p90NiYYQOKipho7nWXwf
         KaLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711478505; x=1712083305;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xlmajLnS3NycIi1+iFLAZOWHMenoMDhwnXxUEcCC4Ks=;
        b=VccDUbXxJ8jpfLQmR0coluYRufFqV5sXPPVN62szc9eP9fRmyQky0rwqm/pbGBcEVg
         3u8BMsh2ZJ+tazunnAgNZGQNxf5kDD8chAoh00BRnTI3wK40vbrBqXTMU/NKssPOtZWo
         5k+Idour3hOoSG3TNJBUDsRUUKaz1LAf5e42uTLrwVUhpKdXuEL9stmq4H1yO+wIQq4b
         6Ot3UkLkI4fM+NutBqWysuzpJGE8S0+7hiij4Mpwz5lWLz0wxON6rHYioaSzPPqCoGNU
         oydiTeqt93H5NF9CLiBZ2M7Jc5P/nOoBEaF6DNjcIpqlB22eqomIpUFJznQg9r3atwFG
         HtXA==
X-Forwarded-Encrypted: i=1; AJvYcCU+LA7gAWDbCkGR19pkgYEGaUOoLcbFvJNoYxKKT3UZHZde9fmPGONdMDxKYx2gidYNVDZnN5BobBYkUQgrjQ1x7Ejcux2Z0bt3BQ==
X-Gm-Message-State: AOJu0YwrbXO36hrxcKnZjmCEwMs7QL4CjUH7mYOfbC0XS4EJkhY0tNbA
	jIG/k4XQ/jA5hJzyMQnupzfkbgM57WueYzVuNXd+qxLtcjyP41fjASQ5H3424ZU7bzdp17BuYxa
	sThlGUbP3Q3yEaQ1FqeSOGEla71q5UcEDrNV3Bw==
X-Google-Smtp-Source: AGHT+IFDV0eqy79X1XjHPreRQmNO87SJTf4eQ0Hlk8mh7yxUC4SMSLabL8R/t1iQIll30Rc74sRgWvY901mcTvm+pF8=
X-Received: by 2002:a25:df08:0:b0:dcf:bf81:5f28 with SMTP id
 w8-20020a25df08000000b00dcfbf815f28mr1710933ybg.0.1711478505172; Tue, 26 Mar
 2024 11:41:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240326004902.17054-1-laurent.pinchart@ideasonboard.com>
 <20240326004902.17054-2-laurent.pinchart@ideasonboard.com>
 <6cc81b1a-12e6-4d81-b6c4-6297c213d5c9@linaro.org> <45242028-edf7-49fc-80bf-be9eb242b4cd@gmx.net>
In-Reply-To: <45242028-edf7-49fc-80bf-be9eb242b4cd@gmx.net>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Tue, 26 Mar 2024 18:41:30 +0000
Message-ID: <CAPY8ntDnLXTeep1GQxrZvxzi=F7zDoasto0BVRvN9_h5joE96g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: raspberrypi,bcm2835-firmware:
 Add missing properties
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-gpio@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"

On Tue, 26 Mar 2024 at 11:47, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> [add Dave since he's working on DMA for Raspberry Pi 4 and maybe have a
> opinion about this]

No real opinion from me, but I am far from a DT expert, and AFAIK this
bit isn't impacted by the stuff I'm looking at.

Laurent is correct that it's missing from the binding doc when it
looks to be needed. Adding it would therefore be the correct thing to
do.

  Dave

> [drop Emma Anholt old address since she is not involved anymore]
>
> Am 26.03.24 um 08:06 schrieb Krzysztof Kozlowski:
> > On 26/03/2024 01:49, Laurent Pinchart wrote:
> >> The raspberrypi,bcm2835-firmware devices requires a dma-ranges property,
> >> and, as a result, also needs to specify #address-cells and #size-cells.
> >> Those properties have been added to thebcm2835-rpi.dtsi in commits
> >> be08d278eb09 ("ARM: dts: bcm283x: Add cells encoding format to firmware
> >> bus") and 55c7c0621078 ("ARM: dts: bcm283x: Fix vc4's firmware bus DMA
> >> limitations"), but the DT bindings haven't been updated, resulting in
> >> validation errors:
> >>
> >> arch/arm64/boot/dts/broadcom/bcm2711-rpi-4-b.dtb: firmware: '#address-cells', '#size-cells', 'dma-ranges', 'gpio' do not match any of the regexes: 'pinctrl-[0-9]+'
> >>          from schema $id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.yaml#
> >>
> >> Fix this by adding the properties to the bindings.
> >>
> >> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Children do not perform any IO on their own, because everything is
> > handled by parent. It is really odd to see dma-ranges without ranges.
> > Referenced commits might be also wrong.
> >
> > Best regards,
> > Krzysztof
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>

