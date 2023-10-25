Return-Path: <devicetree+bounces-11982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B75657D74D4
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 21:52:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7250B281CFC
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 19:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE84831A9F;
	Wed, 25 Oct 2023 19:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qjys1irg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5165731A9C
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 19:52:40 +0000 (UTC)
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85F6418B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:52:37 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5a7e5dc8573so932617b3.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 12:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698263556; x=1698868356; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BCOn6hM0y8PtKiskD2IDlVlFr7NLthwOD+ghRCdumas=;
        b=qjys1irg3Z3bUzAM6JIyRM7A8FnX2d8eObK8MxT08mwPQ0wdrX38yMAEh8NsbwpnPH
         mTIY59BmalGXg91e5WrVgZ7NWbPPxl1cnG12blDs+Toerx9OmxGM3WgwglKcDxaznAK6
         fyIvSv/WkcXhIMJkRaIEcjE53ZpbdsNUZkE3Ug9YTYHAcbKCOGyAiquN1CMK3du++Hg2
         U17oDbwT6Mbvq3K31h8ZyO7TuvVWR1davU4pn9TaMm5HNUn909R574mzbFuM3+j1N7bG
         6uCnjUajMs6ClouDx3FgewMia0+TUpwqcKzGhZ1nt+bZ0NGirKyRC/eIEhTVl3CsUDvM
         vHYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698263556; x=1698868356;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCOn6hM0y8PtKiskD2IDlVlFr7NLthwOD+ghRCdumas=;
        b=xJn96shLRxo5SMcIrlEorCK/nYFAKLIpiFm/qLcpxuXWUPL51n8yTjlrW67NONCJyF
         mwPDBT53ccRb7/Vji4QjHbGFBpHLrBJVrBVgEpZ9ApcF5Co/BSufJZorEpWEoy9M+8WB
         C4l3LNOgodEOr8hnlFuvBS3+GfnLkO9s2FTAWZKUTcXHoK9Vu6g1CGNeH/ezW4QefD0L
         qZVd8PU8HGAFiy44zNQWuqS7qbcIgIR3BCd/O9vUD8LhPL6zj+DaNqdu8+saR9d7R0d0
         jdFz+gggrMpnP3826CdrfRoKn3LwslAGzasI4edRj6zBbfZU7cRLixjfqyVdY1aH7Vfo
         +dTQ==
X-Gm-Message-State: AOJu0YxtmM5JD/k6wcXMPA9M68qd6fL2uHnLwUVh3cW3uB08VXG+Qtr7
	xM7J+N8Hh2umkWFsZTD4rBKEZ2TVy5qRNaK/HOHnOw==
X-Google-Smtp-Source: AGHT+IHgoOgmmpzUWmo5S60BO1pUByarv7RJfy63n2SDsKKJb7QiCNekweWSxevHVGIvd6M3NvDI1/pPNIhUAhC5STA=
X-Received: by 2002:a5b:b4b:0:b0:da0:5787:ef1b with SMTP id
 b11-20020a5b0b4b000000b00da05787ef1bmr5020395ybr.14.1698263556648; Wed, 25
 Oct 2023 12:52:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231024-marvell-88e6152-wan-led-v7-0-2869347697d1@linaro.org>
 <20231024-marvell-88e6152-wan-led-v7-5-2869347697d1@linaro.org>
 <20231024182842.flxrg3hjm3scnhjo@skbuf> <ZTgVE8TzMEPvVeOr@shell.armlinux.org.uk>
In-Reply-To: <ZTgVE8TzMEPvVeOr@shell.armlinux.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 25 Oct 2023 21:52:24 +0200
Message-ID: <CACRpkdZceWA8dcFcCx8sFFNzTG3Kvq3itz81MxBExNGf=dyGgA@mail.gmail.com>
Subject: Re: [PATCH net-next v7 5/7] ARM64: dts: marvell: Fix some common
 switch mistakes
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Vladimir Oltean <olteanv@gmail.com>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Enrico Mioso <mrkiko.rs@gmail.com>, Robert Marko <robert.marko@sartura.hr>, 
	Chris Packham <chris.packham@alliedtelesis.co.nz>, Andrew Lunn <andrew@lunn.ch>, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	=?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>, 
	Christian Marangi <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 24, 2023 at 9:03=E2=80=AFPM Russell King (Oracle)
<linux@armlinux.org.uk> wrote:

> If we can't fix up all platforms, doesn't that make the YAML
> conversion harder?

It does. I'm scouting some possible routes. I'm leaning toward
introducing extra compatibles to use as markers for special node
name rules.

> You've asked me to test the Clearfog GT-8k change - which is something
> that won't happen for a while as I don't have the hardware to hand at
> my current location, nor remotely.

No hurry. These bindings have been sitting unconverted for some time
and all driving it now is my need for formalization and that can wait.

> What I can do is poke about in the u-boot sources I have for that
> board and see# whether it's doing anything with those node paths. Off
> the top of my# head, given what the board is, I think it's highly
> unlikely though,# but I will check - possibly tomorrow.

Thanks Russell, much appreciated!

Yours,
Linus Walleij

