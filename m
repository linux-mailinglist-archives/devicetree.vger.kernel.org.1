Return-Path: <devicetree+bounces-242532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A356C8B50F
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 18:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5A1C435C8F6
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D5F3446A8;
	Wed, 26 Nov 2025 17:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NcAroEv7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1913315D25
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 17:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764178954; cv=none; b=nnLaUZzvBss5WftrXy3XARnl6JSWz7mWel21TguwZbIsOjy7Sq4mylISG0Ju5dpVLyt189xEQ4gvvlxbBlh7jzdVgSwuuhYw42ZzHzjE6oGKqrQpCz/bExRREI/I54Gjw/XcSjqN4NOQM9aACuU1FtntZ5AlI89D7u6q1fcCWUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764178954; c=relaxed/simple;
	bh=H45sT8ifW0O8vWCYPKJuUgHks2mEXGWB8Jd0Vqn88PE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CIwMwy8lRg4y28vnoY5zLwoMr761iwXBLrBt6qwdWbZlovJn4BX6Fdh8qaM57ULHq3wwLK1/OdzLHgCoL++WRhBxNEr9emaoJksY93nV24v6aUynsAwLgRRUB9BxOcEZ60UcA85VsbCQOpe2QOVwwXED/kq+JK4UNbFaV/o3Ljk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NcAroEv7; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4775895d69cso29450385e9.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764178951; x=1764783751; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H45sT8ifW0O8vWCYPKJuUgHks2mEXGWB8Jd0Vqn88PE=;
        b=NcAroEv7WHRM6fVZKueA6AsJXXFNUx4vKjsgGnow64+ziC3ZuhBOfkzR3H88UjZS/k
         SGAS9JaptHKCBPLYfGfCxZaiJLxDBpSvUlxfySydVen66Akew6OZMZfqQjgTVplDQ//c
         u7iFhb4nRh/xGhsSVXRoyGtMipZ3AUSLq/P6knWtkxaRphJhdP3Rj9REzJ/u2FwWQtP5
         VXvq3WqFasmz0xnFkzNv26FDjfsQ/cp3QklWxmELPjCSTxybrQ8ENgfs66zZ3SUMhZe5
         r7x+k7te4VRA6znZaKmSRTi+idImQfwB1SZnwmA4wasfQdkEKQ8nkzuNNtGW2M/7YkbZ
         yD0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764178951; x=1764783751;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=H45sT8ifW0O8vWCYPKJuUgHks2mEXGWB8Jd0Vqn88PE=;
        b=gh4l2jnuKKxluHx/ulv8qdjL8Bhu7NtrbdmVKUFUdMYxQOc3uJfFkoQERZZ8NtpZjs
         9azNHK4ron8c/irB2mwRPsY4lex0q8rhk/RGGFXyja2QfwL+t0i03S0AJcTCwZfo9qAs
         9VmpmT/WAYJl0zPg6K/4q0TdcMuGNqbQda/pjP8osKZc+JoY4BnkCBhy10dODmLKvfwL
         WYo7RohrwhoIv+aCb9RQVs69AZpv7raOiGKivl4/NyjTv1NTFEhnoS+d8EAUSyiOfkh/
         n1ORMHQ4dBkaACB4CXj5tOmunXLbxEnmliGiaFjNsi+5oty4nWTF3eYRYLpkO5mte8Z7
         bEMA==
X-Forwarded-Encrypted: i=1; AJvYcCURQwd90I6RZld0jAcY5povBfkvK84O1VNq0LvM43rAQKR4FP05JMzcYsebQ2ZXKTU7k2vMpoUkuHvh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7TrzN+GPOV30PZWg5Il4k4VLwRhVI63c0+4c7JPbrNg2PfMp/
	ShztoPXw0hv8MwxXXs0RQAPqDJG/s84Y1FsQKA1vgeORXhe478615Q6TYHo3Y+n6W7ZfoDpns72
	ULLmpcgk5qrtHGSjHvAZhwNHwhaLEz0k=
X-Gm-Gg: ASbGnct3WhLne1CxsdHPRK03T2A3G0KHcWMKMKxvbEUYbdmzm+SoguADBspkr64AXlB
	iYs+N5WCSVPYME6ric35g1Di/u3XcCv6/vbwMQk36cdmh4ETwv578u7uyjv5KfIhP/ZA6qnKen/
	/jF3hTgrWQpIRtLa41V6/pdH40ILEhWR7AastYr/sA21kDLSZb/EfyPYzhBZ64KoV21OFOuSVxP
	Yx0MU4OCe2TAVlcHnNBGgZ7ug57T2ehR3Wc58okC3P/A0/O5CGexTw1d8TVG1/26hy5bLbcdGn3
	rT1jTt+4DpwKeNVO9Ckj4fjrkxsD
X-Google-Smtp-Source: AGHT+IEZ28WwikpNMp28f9cZ8FrUOzBbOzH12B9xnya/BVPaxQoXRRptgOSDjsEI4HuhukMbEvl6ukgR6fFwxUmEXSo=
X-Received: by 2002:a05:600c:3152:b0:458:a7fa:211d with SMTP id
 5b1f17b1804b1-47904b24282mr78083805e9.29.1764178951003; Wed, 26 Nov 2025
 09:42:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251121113553.2955854-7-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251121193942.gsogugfoa6nafwzf@skbuf>
In-Reply-To: <20251121193942.gsogugfoa6nafwzf@skbuf>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 26 Nov 2025 17:42:05 +0000
X-Gm-Features: AWmQ_bkZJBm6Wozp4bZ86ADSwgEM8iq01qAWIsEYygFDAD9xEd_cYCJ2C4ftoDY
Message-ID: <CA+V-a8vAXg9GXn1ee0-02N7-ucHuivioTMLKFEiw1fO0nPQAzA@mail.gmail.com>
Subject: Re: [PATCH net-next 06/11] net: dsa: rzn1-a5psw: Add support for
 optional timestamp clock
To: Vladimir Oltean <olteanv@gmail.com>
Cc: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Simon Horman <horms@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Vladimir,

Thank you for the review.

On Fri, Nov 21, 2025 at 7:39=E2=80=AFPM Vladimir Oltean <olteanv@gmail.com>=
 wrote:
>
> On Fri, Nov 21, 2025 at 11:35:32AM +0000, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Add support for an optional "ts" (timestamp) clock to the RZN1 A5PSW
> > driver. Some SoC variants provide a dedicated clock source for
> > timestamping or time synchronization features within the Ethernet
> > switch IP.
> >
> > Request and enable this clock during probe if defined in the device tre=
e.
> > If the clock is not present, the driver continues to operate normally.
> >
> > This change prepares the driver for Renesas RZ/T2H and RZ/N2H SoCs, whe=
re
> > the Ethernet switch includes a timestamp clock input.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
>
> What is the impact to the current driver if you get the clock and
> disable it? I'm trying to understand if it's possible to only enable it
> when using a feature that requires it.
I actually cannot test this by disabling the clock. As the clock for
TS is coming from the core clock which is always ON and we dont have
control for the ON/OFF for it.

Cheers,
Prabhakar

