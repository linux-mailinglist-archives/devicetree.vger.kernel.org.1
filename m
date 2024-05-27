Return-Path: <devicetree+bounces-69531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBFA8D010A
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 15:15:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC4C4284069
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 13:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16BBE15ECC1;
	Mon, 27 May 2024 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SyHO7WSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA0F381C2
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 13:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716815733; cv=none; b=UeiZ8XsHT23gaHXuZuYevNzVDBDYUNxjb5rEBfx7FkmZPrcyCuPuzuDKQ1IH46WoE8dK3HmHAGERILbfALyklwgiIY/8uhmRl+haUMJ/HAqwx62QtkyOqs7s6FGhsrrRiXmEr0CzG/JFzqOZnxPdh5x0uhiTK+04zCxD+ckqSvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716815733; c=relaxed/simple;
	bh=K247tM0uRG0BEBi0QtYli0dAiX2cPA2+pN50KQ+XwJ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ta/dJPMNfdKLcSx0W6w5Sq8K1Iu3OZk7Ry+7vWj5zrJRVBINaAa9/QV3OVyr7YoOLihshf9ddNitW1GCP5zy8TDeg7ZE7qTAc7XfhVx+qlEAQA2g+wIiLMClDacig+HSVwf+pOPl272PVNRxufl1JTOkVg57CMp0W36d/muU5r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SyHO7WSO; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-627eb38eb1bso46332367b3.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 06:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716815730; x=1717420530; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ORWWAV5DFVa1AMsT2HoJ2yL9cgtTVCQWr4c970t4N2A=;
        b=SyHO7WSObKi/9vVbWpFY6Iyi/jPD3vlvvL2Qk6liuyQAxH2aO220Y1WYbahv1/dan6
         09NGErKxptysMMj+46h15XI65RhX+UsWq2UIEL4waYEsdm599mD/XZCbSGMjGtg6RxPz
         h9eI5jS6jDdR6uMZUITLr5j96bji46XXFOwEIB2XweALj095/cSqImxFmxPSi7iiweNX
         fOm+Tyz2NksN5ul5WLE6EgdFGXbbaQok5YCvUnOtaHHO+L+n6w0F175mAFyYpHJt3ZwC
         57APHQ7Sq7sbOEj5Y8mLhpBED+N3a8WPC+OQrDaMW1HfMUMvqxB6E1q/e7F1n77SPB2b
         hlhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716815730; x=1717420530;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ORWWAV5DFVa1AMsT2HoJ2yL9cgtTVCQWr4c970t4N2A=;
        b=sBU6fZ9fw7gC8dOrzdRa+Z/Noya/k48UgFhIvO3HIV2pLBm4VEufnu401olFFDvFZ0
         5Vd9moukcqEHJgRKg5VXf6Pv8efpvXjYhuEWJwQl+vCdKlYtGyoW9JxQ1799sNhY2UDj
         cEgerUuqdwhFo9lT8NGQW2luLtNpUHszCQMJmBFBJdg53lu0hq9EuD7kDm8ZFvSp2gx4
         Y9b5pZ9wzNYh4UYd2FBNK/YCVxP0u/JgS9hLvzVvtHYBs6Efwc5nE8RdK+STuScb+Arn
         xuaTO8lK0sv7QQ2H1Vxwo6YEAsXKsNEOijpM6KIVhVobqTYH+f24HZ2ZwRzIkbu+l3nj
         Nfvg==
X-Forwarded-Encrypted: i=1; AJvYcCXsXz2FS+igiH0YahhuMDGKyxsfsP2uqoVKrGERM63A0oWXhVvrdrEZFLpLHuyP6y+FMCHIeSNP1fF0wZglHmMHCYSjFv11YYRsjQ==
X-Gm-Message-State: AOJu0YyOdSU2u8WID7dOAkYME2xnYV4de53w2sYiQP5JKWAYOVSwxGQM
	8BPEveOb3UQDer1dhtljKlA1B9fV/HNeYb8WyvBJ0uEvKqu07vjkaenpC8nxccMoDN9u1BCCzVe
	C6THLKXaes/GSmaNnkocAelz8Tkl6GbL50DXIdg==
X-Google-Smtp-Source: AGHT+IFLnsaD839+3qfvvjKNYcPNIoZukpexfAQJweynlTmE92arqErfYxJaJwjE2NjnD3ByeP9B2Eef7aVU5QowlBM=
X-Received: by 2002:a25:bc0a:0:b0:df4:ece5:2712 with SMTP id
 3f1490d57ef6-df7721c416bmr9545693276.39.1716815730399; Mon, 27 May 2024
 06:15:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240503162217.1999467-1-sean.anderson@linux.dev>
 <CACRpkdbOAoSDNFhXfz3djUZh1_MQ_T75CC+-LmojRXvyCbUusA@mail.gmail.com> <06a4e5fd-3d26-4923-bcbf-0bdd66d756c4@linux.dev>
In-Reply-To: <06a4e5fd-3d26-4923-bcbf-0bdd66d756c4@linux.dev>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2024 15:15:19 +0200
Message-ID: <CACRpkdbSsgxtKqF6ORXubufTaegjysHU7zH-tJfDfKNd=Kdoeg@mail.gmail.com>
Subject: Re: [PATCH 0/2] pinctrl: zynqmp: Support muxing individual pins
To: Sean Anderson <sean.anderson@linux.dev>
Cc: Michal Simek <michal.simek@amd.com>, linux-gpio@vger.kernel.org, 
	Krishna Potthuri <sai.krishna.potthuri@amd.com>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 6, 2024 at 4:45=E2=80=AFPM Sean Anderson <sean.anderson@linux.d=
ev> wrote:

> > Then we realize that not everyone need all the modem
> > control signals provided. What to do. Well this:
> >
> > uart0_rxtx_grp =3D pin_rx, pin_tx:
> > uart0_modem_grp =3D pin_cts, pin_dts, pin_dcd;
> >
> > mux0:
> >     function =3D "uart0";
> >     groups =3D "uart0_rxtx_grp";
> >
> > Now the CTS, DTS, DCD pins can be reused for something
> > else such as GPIO.
> >
> > I *know* that this breaks ABI: the driver group definitions change
> > and the device tree needs to be changed too.

Actually I didn't think that over, it is possible to add new groups
and retain the old ones.

I.e. retain uart0_grp, but additionally add and use
uart0_rxtx and uart0_modem_grp and use one or the
other approach.

> Well, the pin groups are actually defined in the PMU firmware.

Is that firmware written in such an helpful way that the groups
can be extracted from the firmware then, as with SCMI? Or is it
a matter of duplicating the info from the PMU in the software-defined
groups.

> And
> frankly, I don't see the point of pin "groups" when there are not actual
> pin groups at the hardware level. The pins can all be muxed
> individually, so there's no point in adding artificial groups on top.
> Just mux the pins like the hardware allows and everything is easy. Cuts
> down on the absurd number of strings too.

So are you going to switch all of Xilinx devicetrees over to using exclusiv=
ely
the new method (muxing individual pins)?

I'm fine with one (string identified groups) which I encourage, but I
let individual pin control pass as well on several occasions.

What I don't want to see is a Franken-solution that mixes the two
approaches, even less so on the same system. Someone is going to
have to maintain the resulting mess. And this looks like exactly that.

If you want to mux individual pins instead of groups and functions, by
all means, but please do not mix the two approaches in the same
driver, I'm just trying to save Xilinx from themselves here.

Yours,
Linus Walleij

