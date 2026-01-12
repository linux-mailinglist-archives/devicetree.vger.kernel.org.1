Return-Path: <devicetree+bounces-253894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAB0D1272D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69B49307AB7A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:04:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A624235771A;
	Mon, 12 Jan 2026 12:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mjMe152x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3C71DF248
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768219466; cv=none; b=PhreSYEppYacyw9QutHv+xsE/5CFhb9aIj5dhbCBj04vaQg5KJfzgVSGwcN7rxAmMGeOZVYRoUSS67qMU5S/gfLlAvcOa+b9lS0DnF3LvqHpyvHZkE6DcfoXi9HnQQZTJ4yDqb7jntlo+mwJuf5dAY4dINUXKMXo1Dsaxu+MxlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768219466; c=relaxed/simple;
	bh=owV/mzAQMgSgZqT2YNEQVofDEFHHk/+21LmjhX5q+Rk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tdl3OuL/Fcxk91DZd5v424rky4rtXKstPWA15U65PPUnaUGVAdi8aBSQbpsgyRE8J0fFa7yVhEdz5qSXfFcFeKGIPKJIs92zUhOWmOxg5Pf8Ejfj8IGPfUeVgeBefUW9xPAMMICvjARaf6CYsyVRLbbyrJgsequWvvM9xXxIYKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mjMe152x; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42fbc305914so4477115f8f.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 04:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768219462; x=1768824262; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4qCjJpPI4Nv2Sruqvo8JVCZ2nInrDNeq4vKMW92xMvc=;
        b=mjMe152xj/lPCBJAHZ9j3TmmJeIqUB9yWgDVSCCq8IErpZkM9IDqFS7uBJQqMzrRJQ
         K424xE1wXa6ksNhB8HVwYme4Hhiwk2YuI45VKs9bQjVDigh5rgFkb7P0OV9h98mBsKF5
         GyCeIiwkYj9KeP6UZE5EkGYm600zXjrcug87jT6IKrSr99ky3Ihne17fieVcfqyPMT1h
         SnFa8eOm2RwMZd401qv/Tx5FV/Xop5o2g196KNkVX/Z/jt+bOmPYtKaafG5QPpIcc58O
         0G+jNr60tTKlUXxWRQ0tkcrSw23noR3updlySnTaSH4K77kWQZMvqAil+cHT5yKNpK16
         ArFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768219462; x=1768824262;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4qCjJpPI4Nv2Sruqvo8JVCZ2nInrDNeq4vKMW92xMvc=;
        b=ha8XZ6INjcXHLdm4g9Se5e4Y8xESB39Lrd6+8nr3KlGcRIOcs4cx1Mcs4J+/pzzwgF
         eelWbQUP0bvu00EgpQ22DERNeMKThjUgpnaxckh7RFj2ZKTzkHcDgJOuPzXd5BEGsDjq
         FHkV/2kW2+MNK2798awOIdFdcisV2tm7tNjNLuCNz9MxNwwYh8tXQjKg821JUnwza6A5
         hDk9AlkElQ0+PIo30hd8oG8lBQoWCOCtI0jHoZAamX6k2zJZYaGXvgFHWXGy7cLQ7eCz
         Q19rQSlO9CxbN3g+ynbwA+irvwE9ApNlFPzEipC/6kivxwP3xZS5QLZLPZ0LxVuB5Xo+
         cG9A==
X-Forwarded-Encrypted: i=1; AJvYcCXdcbizNt+21S1/Yv76TATDbKpFgXBVIJ2Dcn7bui2P1zl5SBKohXoBPuorzNp98ebsfHrXlvkk+gIL@vger.kernel.org
X-Gm-Message-State: AOJu0YwL5029nw661PSSl6Z4QA9XJAIK1oAkRgQ8wz+PwMMu6kIMu8s5
	2hb6wyAmhnich7LG6ohWwxx0fbi7FLhDBjBSml4EUSuK5TOKG+IoFCw0Ryzv8sYy6ex9keYTk61
	uFOd+yvVfJMClTAuyiRcBoxhNUBc09ws=
X-Gm-Gg: AY/fxX4RYr3OxKmM1DYIur58x41r3Gf9SkNeVHtR1xRaQtLRIeE8IIAva3uqovHhogR
	nDvIR9kLhgcGBKl2zLsHx9GSF6VReWeGyVeR5nrZQvUjk9PNlyTMG/moG4wtXS32S6z2ypFl1q3
	+vuef9OG3/4+iP+mRKEAq0rlvH8S+Ta9e++rnDzBywoizVFmzL7z9HAT+DQMS1nWc6NpZ9k5fzW
	CBHSoqUeeDZDN7B0zdG3hf3iaCWqC0s6NoCV8ZgQWoOe8et8uV0cC7wdDOJa70yttQeNofczKs5
	8OGU5Gjdytyz/OemBpM2IW0JLo89t7EA7WuD7K7CVQVIKAw1dK6S5iU=
X-Google-Smtp-Source: AGHT+IFleqUzD9PdoNRtoRImQZ9LCtOvaSoUd+ku2Uay3M7C+gWLGIYYIGe551DYKQUEtcgJaYVpbuo5ppnL49v+1SM=
X-Received: by 2002:a05:6000:1844:b0:42f:bab5:953b with SMTP id
 ffacd0b85a97d-432c37758demr20987353f8f.16.1768219461649; Mon, 12 Jan 2026
 04:04:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260109142250.3313448-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260109142250.3313448-3-prabhakar.mahadev-lad.rj@bp.renesas.com> <aWEUvef4eDlmuOic@shell.armlinux.org.uk>
In-Reply-To: <aWEUvef4eDlmuOic@shell.armlinux.org.uk>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 12 Jan 2026 12:03:55 +0000
X-Gm-Features: AZwV_QioW4DXXcjEyYpawN9Qxe7RxIEI2XGhrh2bEmXD6OAYa4cj6ZYh-0RkOlQ
Message-ID: <CA+V-a8vKJ6Z3Xp-u69oGzXr7ju+5RVdMXQcqErm8m8rU7pvauQ@mail.gmail.com>
Subject: Re: [PATCH net-next v2 2/2] net: pcs: rzn1-miic: Add support for PHY
 link active-level configuration
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Russell,

Thank you for the review.

On Fri, Jan 9, 2026 at 2:46=E2=80=AFPM Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Fri, Jan 09, 2026 at 02:22:50PM +0000, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Add support to configure the PHY link signal active level per converter
> > using the DT property "renesas,miic-phylink-active-low".
> >
> > Introduce the MIIC_PHYLINK register definition and extend the MIIC driv=
er
> > with a new `phylink` structure to store the mask and value for PHY link
> > configuration. Implement `miic_configure_phylink()` to determine the bi=
t
> > position and polarity for each port based on the SoC type, such as RZ/N=
1
> > or RZ/T2H/N2H.
> >
> > The accumulated configuration is stored during DT parsing and applied
> > later in `miic_probe()` after hardware initialization, since the MIIC
> > registers can only be modified safely once the hardware setup is comple=
te.
>
> Please do not re-use "phylink", we have a subsystem in the kernel named
> as such, and, for example, it too defines "struct phylink".
>
> > +/**
> > + * struct phylink - Phylink configuration
> > + * @mask: Mask of phylink bits
> > + * @val: Value of phylink bits
> > + */
> > +struct phylink {
> > +     u32 mask;
> > +     u32 val;
> > +};
> > +
>
> You don't get a warning for this, because, although you have:
>
> #include <linux/phylink.h>
>
> which delares "struct phylink" as:
>
> struct phylink;
>
> The definition of this structure is entirely private to
> drivers/net/phy/phylink.c and is intentionally not exposed.
>
> By redefining "struct phylink" here, it means that anyone using gdb
> is going to run into problems - which version of this struct is the
> right one for any particular pointer.
>
Ack, I will rename the struct to `miic_phy_link_cfg`.

> You describe this feature as "PHY-link" and "PHY link" in your commit
> and cover messages. Please use "phy_link" and "PHY_LINK" as identifies
> for this so that grep can distinguish between your PHY link feature
> and the phylink infrastructure.
>
Ok, I will use "phy_link"/ "PHY_LINK".

Cheers,
Prabhakar

