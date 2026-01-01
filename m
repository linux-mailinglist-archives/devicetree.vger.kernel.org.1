Return-Path: <devicetree+bounces-250990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E623CED87C
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 23:58:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC03B3005BB7
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 22:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2134025785D;
	Thu,  1 Jan 2026 22:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMPQ5OEa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A442248B4
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 22:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767308323; cv=none; b=biKJx209Q2RCUwbeu46zbDctJKOd8QEBaEpCCzyVVWfZ8jREsJznWb7p62JZyOXTtG7k/FS43sqGcMGiDUatxB+WoAw1cuSubzZKICzkl9w9n+P1r7sMS4e/qcCkxfd/RnVD2sF4SKuYNc9LMU4eF4ytgJCyXRowV6/DU0KeU9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767308323; c=relaxed/simple;
	bh=RbIi5TJDTEC3UxivySA2nm8bc3JBw7+A82+IHl76Oas=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YEfV08/LvnNADkwN1ZZ1eFtUDtP9Wnrd7O9YBartMB9WGKeeRqZPNQBW9uTPHaCCX8EbxXlcKpNe0FCBvUpngkYbPBFz37rwO1mPJZv5kDpdMpip4/UYyUhWMt3L3rTqTdVSLAOls01Qm4ynWzyu0iD6JlWZrCl4IjgLPAeKVQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMPQ5OEa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CB23C19424
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 22:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767308322;
	bh=RbIi5TJDTEC3UxivySA2nm8bc3JBw7+A82+IHl76Oas=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=JMPQ5OEavke4eor11qSqdluzacM9pgxLT/75uNftYomx/dZ/c7GN8vIUISllgSs59
	 Gbw91fqZfVY/D33IIE25lrzp5gUIIZ0XDZSyAVEA6sy7XJ01kj97436zbY+2plwWMF
	 15anUid3WifUXERa4MmqCUhQu41bT2I9oq8/GctFEAkE0424KwPjMW58x6nLBEoZs2
	 8vTsXThfyqnOYPmdAz3c7Pa3yt9zz10p1rFwBn0xDPW/lPZIOjAyc3igQn0MoFEXKp
	 A7O44/U8nJxkIOu5LxhQEhchIzRK6XyAEDLsrHNHp/kTmwDMlmep8oVAQ3jO+mw/Oo
	 1Px1A480U4JuQ==
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-64467071f9fso8824602d50.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 14:58:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWScaRJzQTLdlSmzGxPHLMwCeajnJBloK7pK3+scOowsmxMEALHxfhje3fG19ynGfb+qVoRe+PTKQyt@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7AkbdViPtoPkp0yz5WgoBotzcCV7MqI6qLuy0+8RcPlWHpm46
	tgkaQSMBsWNIXJnopXdzfw7tthqv2TtqaSc/BeSjNYBY1PwQYO3w68o6R3/sO8+Bevoq3j52/Od
	zo98OdAZaC9RJLTJG6PDzgQKNaFw8PkY=
X-Google-Smtp-Source: AGHT+IGS2wpABqiEH3qZJel2X4/tAnT/x9k7y/82/oTjRgpeFKRhQhUMOFnfELr3u2G5kJutP+OFyH7GjaSju3gf+4M=
X-Received: by 2002:a05:690e:2453:b0:641:f5bc:68de with SMTP id
 956f58d0204a3-6466a8d7899mr25549975d50.75.1767308321878; Thu, 01 Jan 2026
 14:58:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223-kx-pinctrl-aib-io-pwr-domain-v1-0-5f1090a487c7@linux.spacemit.com>
 <20251223-kx-pinctrl-aib-io-pwr-domain-v1-2-5f1090a487c7@linux.spacemit.com>
 <20251223093228-GYA1986709@gentoo.org> <4D38DBB2D5EA96CC+aUpkCTp00KxEuU_Z@kernel.org>
In-Reply-To: <4D38DBB2D5EA96CC+aUpkCTp00KxEuU_Z@kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Thu, 1 Jan 2026 23:58:31 +0100
X-Gmail-Original-Message-ID: <CAD++jLmQ6Qk=fDt1do6XcpF0bkpD-=JmmEy+iL6pFy54wSfC6A@mail.gmail.com>
X-Gm-Features: AQt7F2qqol7CqtttbEg-5xwoZiRTRjr4aiAeaJta_tiuinN5LIdgHV3kBp5fC5w
Message-ID: <CAD++jLmQ6Qk=fDt1do6XcpF0bkpD-=JmmEy+iL6pFy54wSfC6A@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: spacemit: support I/O power domain configuration
To: Troy Mitchell <troy.mitchell@linux.spacemit.com>
Cc: Yixun Lan <dlan@gentoo.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Troy,

thanks for your patch!

On Tue, Dec 23, 2025 at 10:43=E2=80=AFAM Troy Mitchell
<troy.mitchell@linux.spacemit.com> wrote:

> > > +   pctrl->io_pd_reg =3D devm_platform_ioremap_resource(pdev, 1);
> > > +   if (IS_ERR(pctrl->io_pd_reg))
> > > +           return PTR_ERR(pctrl->io_pd_reg);
> > > +
> > > +   pctrl->regmap_apbc =3D
> > > +           syscon_regmap_lookup_by_phandle_args(np, "spacemit,apbc",=
 1,
> > > +                                                &pctrl->regmap_apbc_=
offset);
> > Can you simply use syscon_regmap_lookup_by_phandle(), then define
> > #define APBC_ASFAR            0x50
> > #define APBC_ASSAR            0x54

> I think it just a minor issue. I will keep it.
> But if anyone else thinks the same way as Yixun, please let me know.

It's not minor because it adds stuff to the DT binding we don't need
and this avoids it.

Please go with Yixun's suggestion.

Yours,
Linus Walleij

