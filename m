Return-Path: <devicetree+bounces-247200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A06CC598B
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 01:26:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DB02F300F5AA
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 00:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E22E1C84BB;
	Wed, 17 Dec 2025 00:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="elYhHcuE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21F21C3BFC
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 00:25:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765931161; cv=none; b=UgswfOda18+j7aYxMTW2z+7X7weXOqwpRQah2kM2ZEsdSCm/bZQRlU8ulB2275XpzpM0vl5hwvHDw4nvwKAWJnD25NbX6BKeG18l72cylCHMbZMnkOd3un5O+We3r3O661NM0S7dDWABy1aO+kuy3P8IIbJkXK54IUrkSy9MSZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765931161; c=relaxed/simple;
	bh=9QZkPyxxxv0XvNVPkvBCDLdyp8ZhJIeiVto9GvIKdqE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dIrsv1aR1I7t8Ho6x7GxJ+YKO+OJrBP/VEsNOENqyfPUbGTnAYW9k1I+TGInImXKAgW0gR1xl5PNrbqdlUV7nnM89PtSsL3P10jS44XceYE/ao4gwRsApRMHIkbBwi4M3ktu4bwIjsctH96rgo+rlfJ8T1raSMwguyAEEr7a94c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=elYhHcuE; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-bf5ac50827dso3307796a12.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 16:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1765931159; x=1766535959; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nStCldhYeJbsakQb9GL71otPBPnGKef27diqrwm9pSQ=;
        b=elYhHcuEis90cotJkLhvVkSvTEGlv24MJuRH51JIvNxByNiIKS1m72XZcLqebgzoNC
         Qmls4KA6phCM2T4hJG9jG3tXGPrUH2JEBXnu8ldbdPkQst+n9Iepg+cQVPn2PPjgav2m
         xvBaS4l40VGc7HIpPUOGWlFSQQjRw/8a8Sm9MaHMTx10PZeaSp4Xm3hrKp2hlIdJ5tKL
         WDmN9CqaR1qwCuOOcxP+a+j1wtSbWjstxgr4eqqrbXfNVx4CO3PvYwwuHbqoaN07q2o3
         q4ee+PK5O7Nu2wcED6bBAr0zY7ZHo2gGIQNo48BZl4VgCS+D2k+Smygte3FJwXAYIJn1
         5UMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765931159; x=1766535959;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nStCldhYeJbsakQb9GL71otPBPnGKef27diqrwm9pSQ=;
        b=Ib6+Ny2vqz4jxNhXmiqW39c0ouX2UvJgL5IY/A0KQBJ8d05DRE3+cFF/DuJgViWvh9
         VqsGo6Cd3L/WwOOSp93tc0ii1/lhdLcu4BmXhditw8vPFVApRpOoezM2nL24aB2TKp6i
         cQS9clBvuvhRG7B+7cMQ18iDLb3MAhbXELX1JopZXfusY0rEDgBDgmd/6SmnxelDBOK0
         xAu1FqKD7LLsIhe+vinyz+BVq44dIEFIT2OUVZ9RF6huz9kO7CCfw5orSBRafnT2AMXa
         LXY+zi3MRuLcGVevCIOidIejX3B6NH0c8E2UP5OY/y1ZZY43B6W8GVRh5A4w2ZIfJhvT
         wj4A==
X-Forwarded-Encrypted: i=1; AJvYcCVLGcyNHhCAHimJzSi1xa8Xolx5JtZFo4E043xyUSbVmhsw073YAH27762TdWM8qSGZXOF+sOvGmjck@vger.kernel.org
X-Gm-Message-State: AOJu0YwjFHUuKVaRadE9VEjrdXaPghs+HpLH+7w5YVuTAs0Du8gYBq0+
	3nFTe2UQd/Q/SKzDhd2Uhp/bRKol9g1PMZJk2/eMrfjw49Mp8+0pYzCXfWlQThj0XJEx4xAz31P
	QWPYzCHt4s0cwiKr+ApyLpfR8mmr8u7lCgQw0YKx83s1tsprth3xHS6fh
X-Gm-Gg: AY/fxX7geD3QJJ+U/t7gx4TWHnZpdiwqAZW+HcwffwPNx6DYf8+A3DZc0K53vc+d9Wh
	ISs4EXgme9oDQRHFbFu2aHmHepqz4t3bkLFsiODkdH0PD/Q5TFOVF/WIL3eRUYojEtU3RyWr1G+
	VD6kKRdgQid2bVpUl1fayAppZhNmNokIjIWtVtVs/W5rHtAL7nDYMreICIjL85kRqCcakyu3CMF
	idjSFCtrWlBBKyNZzOAPI2AVQOzzUyKC2g3TX5rE06AGF65I5zaEb1kKohlnPxLtBlVZQnNn9u9
	1ZgnMUssXbQptJ+5V/FJNuZzk6uzmrZRlrkF
X-Google-Smtp-Source: AGHT+IE72YZLvmMskEnRrYKXqAR/Z4B1+w1UCRGWDCS1wBfVqFBXKeWBfxxKkJ6DLO7fN/x56A6EPSj52vq8pdguqrA=
X-Received: by 2002:a05:7301:7015:b0:2a7:1232:f3a2 with SMTP id
 5a478bee46e88-2ac2f92967fmr10246834eec.0.1765931158534; Tue, 16 Dec 2025
 16:25:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205-controller-v9-0-9f158b18f979@google.com>
 <20251205-controller-v9-2-9f158b18f979@google.com> <2025120553-suffrage-divisive-5890@gregkh>
 <CA+zupgzL7v5MZDpxKDQQCqAZaqTdHbiG9-xTr+8RnigMFZJ_7Q@mail.gmail.com> <20251216233439.vqigcx2zs6taergz@synopsys.com>
In-Reply-To: <20251216233439.vqigcx2zs6taergz@synopsys.com>
From: Roy Luo <royluo@google.com>
Date: Tue, 16 Dec 2025 16:25:21 -0800
X-Gm-Features: AQt7F2r_jcpuKgHpjELMuIOr3JbsyWh8DSH9IaZ5PBx8OH-Ix2ElNBkBRfsI7ik
Message-ID: <CA+zupgxV0aHEXqmmHbe6cKSQUvYg1iFXjiDfG7wKdF7KKTo6iA@mail.gmail.com>
Subject: Re: [PATCH v9 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 16, 2025 at 3:34=E2=80=AFPM Thinh Nguyen <Thinh.Nguyen@synopsys=
.com> wrote:
>
> On Thu, Dec 04, 2025, Roy Luo wrote:
> > On Thu, Dec 4, 2025 at 10:05=E2=80=AFPM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Fri, Dec 05, 2025 at 02:26:38AM +0000, Roy Luo wrote:
> > > > +config USB_DWC3_GOOGLE
> > > > +     tristate "Google Platform"
> > > > +     depends on ARCH_GOOGLE || COMPILE_TEST
> > >
> > > There is no ARCH_GOOGLE in the tree now, so how is this supposed to
> > > work?  Shouldn't tools that check for "invalid config options" trigge=
r
> > > on this?
> > >
> > > thanks,
> > >
> > > greg k-h
> >
> > Hi Greg,
> >
> > The menuconfig looks like the following and it doesn't complain:
> > | Symbol: ARCH_GOOGLE [=3DARCH_GOOGLE]
> > | Type  : unknown
> > |
> > | Symbol: PHY_GOOGLE_USB [=3Dy]
> > | Type  : tristate
> > | Defined at drivers/phy/Kconfig:104
> > |     Prompt: Google Tensor SoC USB PHY driver
> > |     Depends on: ARCH_GOOGLE || COMPILE_TEST [=3Dy]
> >
> > According to Kconfig documentation [1], the unknown symbol
> > would simply be evaluated as an "n", which is what we want.
> > "Convert the symbol into an expression. Boolean and tristate
> > symbols are simply converted into the respective expression
> > values. All other symbol types result in =E2=80=98n=E2=80=99."
> >
> > In a different Kconfig documentation, an environment variable
> > "KCONFIG_WARN_UNKNOWN_SYMBOLS" is there to detect
> > undefined symbols in the "config input", but I can't find one that
> > catches undefined symbols in the Kconfig tree itself.
> >
> > That is, the tool seems to allow this.
> > However, if this turns out to be a major problem. I think we
> > can either:
> > - Remove ARCH_GOOGLE and leave COMPILE_TEST as
> >   the only dependency. Then add ARCH_GOOGLE back
> >   later once it's in the tree.
> > - Defer the whole patch series until ARCH_GOOGLE is
> >   present (I hope not).
> >
> > [1] https://urldefense.com/v3/__https://docs.kernel.org/kbuild/kconfig-=
language.html*menu-dependencies__;Iw!!A4F2R9G_pg!e-y2_BsSNhXF1v5K6tBJX-Oabg=
KJM9WVdvwyKoB6tg9ooCLVg8WiQ4UrStOF2YZQ_Zs6tC6HVh7wCpqkEfU$
> > [2] https://urldefense.com/v3/__https://www.kernel.org/doc/Documentatio=
n/kbuild/kconfig.rst__;!!A4F2R9G_pg!e-y2_BsSNhXF1v5K6tBJX-OabgKJM9WVdvwyKoB=
6tg9ooCLVg8WiQ4UrStOF2YZQ_Zs6tC6HVh7wHpoUlhY$
> >
>
> Hi Greg, Roy,
>
> Just checking, are we aligned here?
>
> BR,
> Thinh

Thinh,

Thanks for checking in. I'm still waiting on Greg's reply
regarding the Kconfig question.

BTW, I silently dropped your Ack-by tag in v8 due to the
changes in Kconfig and MAINTAINERS files, which I
should've noted in the changelog but I didn't. Sorry for
the inconvenience. Could you please review the current
version again and provide your tag if it looks good?

Regards,
Roy

