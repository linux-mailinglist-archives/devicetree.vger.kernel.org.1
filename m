Return-Path: <devicetree+bounces-238278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5E2C59930
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:55:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1BC163425BA
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 18:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38CFB31281C;
	Thu, 13 Nov 2025 18:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WGtumTY5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C9B3112BC
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 18:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763060052; cv=none; b=Esd/C8t0Xef4DA3HYXtABEQcLvJHUBERlWDPxU1VQt/xKp85P5FDcIzJOgq1FJk8f0JNfn9SKNmoQA9IuW/i6Nit1nX9yJMaZL0FOKb7OwemzOf1PJNJL3kPlViqPuY5U18VCFyLkNnIHwk+owQsvpMcOw0+FStLP/CcfSHVO5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763060052; c=relaxed/simple;
	bh=ImyLRSldVokJNTwxQD8uL+Aad8g9eoYs7zgGRDjZ8Ww=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lRQLphcTBHvgIOI7d1n/akmfP6zuHOdYWs1ZeCakc6W8K84mjeb+Jx2HY/ZGDsnQvYWIEAlm15oQRRpDjyKKQn1+0TQByPeYbgtQTIQc7RcvcMzumJRCCZ4VT/X/gmW5NZdGnSUSaX+gWH+sCou+i/++5mUjCpaRUAobUCq79VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WGtumTY5; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b3d4d9ca6so1065039f8f.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763060049; x=1763664849; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0za6nc+aCXQm8KF/y6TMG9+/t9XbwHnz+7+385lRJ0w=;
        b=WGtumTY5f+hp9Jl3OH7Dr9fDE3PVEL2vqCA5IFMUthmdMZ2vAzPHHqsd1JZjizwKFA
         rLWbMfuOOm/+XU84wemFDsiDbDGvXzgi8dzao4F1xQEcGo+yKLdXWOmQ7Z1dF3+WT6Sg
         v/Sz1xfR+nbHFtcSzfhr5vI0WG7pjkt0LMp/GR6DSj029wleELq6OasX49G0XN4cfhza
         OgCQFCS0CTgT1kW3PouAC40a84om8KE6fqtXEUNZPXZuru02BsByFPiyi/Xh2fNpzhGe
         JksTmgfTe2ahBOfOqYcP/ZNK8MRMivML32XeqKUaIq+W3sEspz6IXNWyg7g/yE3w7Tl5
         9K0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763060049; x=1763664849;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0za6nc+aCXQm8KF/y6TMG9+/t9XbwHnz+7+385lRJ0w=;
        b=AovvMpKPpGC4YwDoj2xbctRsZ2OkRh0ypsmg2nFSjf5HrgstoV2nteSZxbNKnu9rBW
         ZkRzc4vuRuRRe3K0UwRVvmyYtosWQMGULNFxJA+qw2aWnq07RiseARkNSrqeENn1zDHs
         HY0J5AtaOrcjM7jWLvAAmKz14Xp5KgZ7tKpYFpg25mch3ycaG76b9s2fMLNopGXy+qW2
         ubxa4+0TOEXKap9iGYTU1e+o88M6+vHGN42QGo8Q8QJHxqe4eSar7x1fFrLVKG2iPXpx
         20O6tLhXXxmYyOTUgB9yM23z6PoNOL/X0MG+uSyeIiNPXLsto6eS0UfHJEQ/8nERAIfm
         +S7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUVscwBdeXIwONPFal3YrLXMwL5GzPrT3XDrrqoW+paEaIC3prfRlCuY6J1ISL9Q/mOWA1Xua6hT1yS@vger.kernel.org
X-Gm-Message-State: AOJu0YyYp0k3NUDKlBzbZ5DSeUQqtiD/qGqZvq8UX7ZkBRQoOAPCV7C7
	r7j7jnNM00xX5VpRkjB6AVdAhtjkrOH1nBVsgJ06lZLSVyuqUILKsG0rKDIy2DVEj9pEG1bGv4W
	0x1shlKIsULxtRWNqTBL4qMZGLyfeZso=
X-Gm-Gg: ASbGncuiapCFyZta+jaG+04xIp30jmiM1yx7kUe55P0jDciZmnr9pW1ZDkw+MFaK2mx
	17kcX5fp/YCqBE9Q80zULjLgqUc5kBfQlr9RpOa2PSLog7CnxpfP1jrb3s02Kppoc7AFu+mWvtO
	hGM4ul3qZOBimiWU2Z1KS/WG/6d8YcQpVYNNTwz76sAchlQKlI4l8eelaR657l7SNShib9GalQn
	4y58rL4jjmKMwdmEgA63Od7H0JzcxTi+dJ+JTgpzud82UCh9b1RXcL/WzOZWw==
X-Google-Smtp-Source: AGHT+IGTSBrTIDYDjncilT4tzbDR8Dtp04aGMzl96p2G9sbZioO58z/jxSqd5HKBnz20COtjN+8hMikzMSLxwBPwrho=
X-Received: by 2002:a05:6000:26c3:b0:42b:5448:7ae8 with SMTP id
 ffacd0b85a97d-42b59372315mr442629f8f.29.1763060048361; Thu, 13 Nov 2025
 10:54:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112201937.1336854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251112201937.1336854-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <de098757-2088-4b34-8a9a-407f9487991c@lunn.ch>
In-Reply-To: <de098757-2088-4b34-8a9a-407f9487991c@lunn.ch>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 13 Nov 2025 18:53:41 +0000
X-Gm-Features: AWmQ_bmzRimk8gYF_4YjJuq9mGlvR6GBPwMMkQlI3Mtuob5q5ystweObvaU2JrE
Message-ID: <CA+V-a8vgJcJ+EsxSwQzQbprjqhxy-QS84=wE6co+D50wOOOweA@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: pcs: renesas,rzn1-miic:
 Add renesas,miic-phylink-active-low property
To: Andrew Lunn <andrew@lunn.ch>
Cc: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-renesas-soc@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

On Wed, Nov 12, 2025 at 8:58=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Wed, Nov 12, 2025 at 08:19:36PM +0000, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Add the boolean DT property `renesas,miic-phylink-active-low` to the RZ=
N1
> > MIIC binding schema. This property allows configuring the active level
> > of the PHY-link signals used by the Switch, EtherCAT, and SERCOS III
> > interfaces.
> >
> > The signal polarity is controlled by fields in the MIIC_PHYLINK registe=
r:
> >   - SWLNK[3:0]: configures the Switch interface link signal level
> >       0 - Active High
> >       1 - Active Low
> >   - CATLNK[6:4]: configures the EtherCAT interface link signal level
> >       0 - Active Low
> >       1 - Active High
> >   - S3LNK[9:8]: configures the SERCOS III interface link signal level
> >       0 - Active Low
> >       1 - Active High
> >
> > When the `renesas,miic-phylink-active-low` property is present, the
> > PHY-link signal is configured as active-low. When omitted, the signal
> > defaults to active-high.
>
> Sorry, but i asked in a previous version, what is phy-link? You still
> don't explain what this signal is. phylib/phylink tells you about the
> link state, if there is a link partner, what link speed has been
> negotiated, duplex, pause etc. What does this signal indicate?
>

                                   +----> Ethernet Switch -------->
GMAC (Synopsys IP)
                                    |
                                    |
MII Converter ----------+
                                    |
                                   +----> EtherCAT Slave Controller
                                   |
                                   |
                                   +----> SERCOS Controller

Each of these IPs has its own link status pin as an input to the SoC:

SWITCH_MII_LINK: Switch PHY link status input
S3_MII_LINKP: SERCOS III link status from PHY
CAT_MII_LINK: EtherCAT link status from PHY

The above architecture is for the RZ/N1 SoC. For RZ/T2H SoC we dont
have a SERCOS Controller. So in the case of RZ/T2H EVK the
SWITCH_MII_LINK status pin is connected to the LED1 of VSC8541 PHY.

The PHYLNK register [0] (section 10.2.5 page 763) allows control of
the active level of the link.
0: High active (Default)
1: Active Low

For example the SWITCH requires link-up to be reported to the switch
via the SWITCH_MII_LINK input pin.

[0] https://www.renesas.com/en/document/mah/rzn1d-group-rzn1s-group-rzn1l-g=
roup-users-manual-r-engine-and-ethernet-peripherals?r=3D1054561

Cheers,
Prabhakar

