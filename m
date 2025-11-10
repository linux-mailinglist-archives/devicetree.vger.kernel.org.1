Return-Path: <devicetree+bounces-236716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 093C8C469BB
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5D0864E3960
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:32:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 088EA30DD35;
	Mon, 10 Nov 2025 12:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bEbv6jB5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B25130E858
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 12:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762777932; cv=none; b=fV7pynfkoBXxth9gH6DhheuirEkNjuNcsZqs/avdf1giERFlOMOop06EDcFe7uxnxjoefOluf0LnQmcMzMYPVic4Y2pv3th+psqFe+r9w8o5QcBSzv+fQEC5fLBBlMipAbI5vJ0bTgULchXBdqGoMF8VOYt3XvPpdhA4jdkJYek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762777932; c=relaxed/simple;
	bh=xbn6RDPlAz1JBYaCMfNzcorMgqIxLXlfE2DgvYo/pIc=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=dnr9/udVxvwufloMWKTBd4UO4sLo8v6aB0C0difAQBLAWDjdbtSyjOw4g1/bxsO5zYn67o2ILzpWKhhk3LDIHB5dB2ROJcMGG+rERcEGwKA14OgQvWDki9nEhZLE35VaNkwOwZsxFo8f4eMi/dn7HQXwCU8YrAnBeX1wVH/fKVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bEbv6jB5; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477632d45c9so19578115e9.2
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 04:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762777926; x=1763382726; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xbn6RDPlAz1JBYaCMfNzcorMgqIxLXlfE2DgvYo/pIc=;
        b=bEbv6jB5OfPLMDJaO4TwA3DEv525aPXe4vHlZsC3Fnz4CBv+nrEha6tiuzCu7FvoTW
         U4kwm0SiFUi2YKtt3+hQ5+UJd5PddicKITkipZM4fmp2gmNcJzSpqv/L8HoiEe88Y4ta
         k7+Zi7vMJZiiGkH8WzvF6h7y7CxitWjtTAw/R92IckmpNTGrcixZuq0YIjYffl0LvEGW
         Wzkf+JMvtpPeBmWSeqWK1QYqSjsgEwmqIWAwy/NxvBaVr3HFuoYirZ0hZY+KiFHRbj/8
         37EQQeUBuhl5VFwLRyRzwSmJKG0L0XcPqvcMjNh3PLjd5iqJyb9UmYlEb5yoZ7Pxmt0I
         NN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762777926; x=1763382726;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xbn6RDPlAz1JBYaCMfNzcorMgqIxLXlfE2DgvYo/pIc=;
        b=HUtHr88l8m3t7rpn5/K2w9p60BBB7nx7mbXCz8bQm63KZyGqh2MA6KF4StDnZ3dEdl
         AiBjKqmH2/7QbfbIcXtecBoqgA2KCGb3Fo/6KVDg/GGjMPJ5AhR7EzhqQ6h1Pc6jsCD8
         KrjF3dkzq4vJqUw/0oKa5AWocRKrFdckAiJOK99QxVdGJneBeUbnlei+JlX+agwijxZm
         /AP7eS+4vaFEsp4ZMtJF/Ex+pwaFCAqDDxNV/2+MhPZS3EdO8cigUHBhIIDZ2mIPiGw4
         MTGDuxI7ivTPzwUU5zMMiYV3NmHokIuOrdH41VB+YPwVbBp0MYXSiJ1H3c4t96s191wf
         fa2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXiAi0YrVet87VGC435/xxbEofzE6C3YG9plSEvMvSpVK/52gSiQHkhm6l7WTAYdldi3HHgaGMF1auW@vger.kernel.org
X-Gm-Message-State: AOJu0YwKxZUMh5JwoA1D1NjiCt0lyAS1nQSbfYQxoJf3zRtrK92KAFCG
	TO4mGQskaVJAOps0PpyCRtyv5kWdb2g7FBBk/i27m76hKyhQ9/Tc7p+69EjYj8Y3
X-Gm-Gg: ASbGncuyiL9OSmUudER2Ww5BiuVT6cqiylz2cA6pTLxWuaBpVZ7a7DOLlLkP9M3kzr9
	/m+Go29CRrmunabjJmBVvqntcnHfN+tAAvXqGKZVDJpNWr2TwK0Zhyuk4lIlAjNXmvWOXMIt/Fp
	iaWsBdFSu4PuttfgNbrIAPXmyp0syVCJwPaMzWnNjGcfFsAHJOiR+zUY1CorkzIEC+ChrCjafP2
	UUunfzr+173VV1+IHDoOon4/ezDMgXF0rsKXc6Z6hn3Sd//vUVz5Bl3mTwzQiDDO7b1ZFriHvUN
	m5C8IPGMv01VQPutCBat4AhDn5mu7Wy8SZGnQiWoI5kh1s76BbzUTC4nzm1LalKJhavvdMp7nKK
	TjZDuqTPcBnlFUOXszw7qoPvoeg8rRHyxOk/cyOQNeg4EnVVb+P8aIqNoQGmnm4xvrrdRzgOU7O
	EEE/HQ9dsr
X-Google-Smtp-Source: AGHT+IGdjmBcJW+8X35ii7y+/PGwV34Q4JqH9e5PMe/Gj88DnW3qWYR3wQhKPBIE+gTXCpLrK7KBEA==
X-Received: by 2002:a05:600c:1c1c:b0:475:dac3:699f with SMTP id 5b1f17b1804b1-4777322f0c4mr73804405e9.9.1762777925514;
        Mon, 10 Nov 2025 04:32:05 -0800 (PST)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4776bd084d4sm249891675e9.14.2025.11.10.04.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 04:32:05 -0800 (PST)
Message-ID: <3ead5d7aa5e6be2b6df3bb91b35fec37e23353f3.camel@gmail.com>
Subject: Re: [PATCH 2/2] gpio: adg1712: add driver support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>, Antoniu Miclaus
	 <antoniu.miclaus@analog.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 10 Nov 2025 12:32:42 +0000
In-Reply-To: <CACRpkdYdtcnxyP4xVsqVK+geurEOEURqZO5eLC96YMqh1sE5Sw@mail.gmail.com>
References: <20251031160710.13343-1-antoniu.miclaus@analog.com>
	 <20251031160710.13343-3-antoniu.miclaus@analog.com>
	 <CACRpkdYdtcnxyP4xVsqVK+geurEOEURqZO5eLC96YMqh1sE5Sw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2025-11-10 at 11:30 +0100, Linus Walleij wrote:
> Hi Antoniu,
>=20
> thanks for your patch!
>=20
> On Fri, Oct 31, 2025 at 5:08=E2=80=AFPM Antoniu Miclaus
> <antoniu.miclaus@analog.com> wrote:
>=20
> > Add driver support for the ADG1712, which contains four independent
> > single-pole/single-throw (SPST) switches and operates with a
> > low-voltage single supply range from +1.08V to +5.5V or a low-voltage
> > dual supply range from =C2=B11.08V to =C2=B12.75V.
> >=20
> > Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
>=20
> So tying into the binding discussion:
>=20
> GPIO means "general purpose input/output".
>=20
> I am really confused as whether this is:
>=20
> - General purpose - seems to be for the purpose of switching
> =C2=A0 currents and nothing else.
>=20
> - Input/Output - It's switching something else and not inputting
> =C2=A0 or outputting anything and this makes the driver look strange.
>=20
>=20

Not the first time a part like this pops up [1]. At the time, the final
conclusion was to go with gpiolib. Naturally you can think otherwise now :)

Also, it looks like that series did not went anywhere (I'll probably ping t=
he author internally)


[1]:=C2=A0https://lore.kernel.org/linux-gpio/20250213-for_upstream-v2-2-ec4=
eff3b3cd5@analog.com/

- Nuno S=C3=A1


