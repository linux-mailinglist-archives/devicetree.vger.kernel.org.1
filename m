Return-Path: <devicetree+bounces-274596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFFZI6i8smmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:16:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E467D2725FC
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:16:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CD79300EA90
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:13:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 067223C0628;
	Thu, 12 Mar 2026 13:13:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8431435A3A5
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773321212; cv=none; b=bfH9aC9U6xHENmmtHWWPR2vcIeAdrcKuqmEHjLDRJkYPYzsz14cZCYf0joeELcEjtCrG7aRVC8b4HrQzaXm/qILjeRJjJyy49KLkACUCFFZ+N3eyi/CpVr8ZtXSPEOJ0uvxIPtQeLhV6Cm5zeaqHyFMdTwzBg7vhMKZ4T65HJto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773321212; c=relaxed/simple;
	bh=9Xf09/CQRKakxUM97o3pjEHQxlgCJx2m/hZtTEYbHSM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sp94D+9uRm2goWPzUxW2uJbNW0b1upPl+4BNOQZPD4KkiYlb+usBshqXARR56FuuDUgwjseg0rN5bNI/c+LlkXlryuaOmZbiDzCtF2Pic4gXRYQIj/1YMJZi77F8LS0uB+YvGcMq1HQVKnM9C7fGmJP+5X5S6gj1hgt8y2kBn0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-662b5bf4b10so1613246a12.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:13:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773321209; x=1773926009;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=udEH6r8HyARkgcp8nLO9sBcamtg2WZj/AdfmCmcqat4=;
        b=nG4U9tb+U9RK58mo9IhWaureR3mAKps+jpkWmeqNruVW7gkBwHYxxxL5dhjC83QXtI
         T304qndbTXW6ORocQkWiDMoKh85aNQetVuwwmUFJMMEOdhfWZl/LbESEr3tbq8Z/l1AY
         660Xkpfd8BqHYpqNK1qkKDhVg/Tifzq1qb+ceugOl1xtGSHngoE/Fb+C+y/lWN+KBF4k
         kq3Er5THKOHjsRgXvFHd3cjnWxCfHlHZ8ajaA9caek7E2wlWdgSnVniA9Spk9SoyHMZU
         6gcnBT4dNTBGMzifiRq6iVOrlQIr92iq0Cho4wUnsyw9c2UmnqwE+jZ3qBb0wBYgj4e7
         sr6A==
X-Forwarded-Encrypted: i=1; AJvYcCXC9zrh5YxJRCPqcsfZYhKxFKNK/0vxNrJv/JlXRuz8YluiB/PHI/bHc/F0vPHiepNGrwlGhLTKya73@vger.kernel.org
X-Gm-Message-State: AOJu0YzKoxO2IH/tPyq81d9Q3qzfR3v4fFw8I+WN6Hl7Qoj0rl2eCJ1z
	GJ5QW3qJv76bp5qMY1lSh0zjJLwt6OfyaTbJ4poC3IaJT5MyFy1Tui7ybCsZbea91fc=
X-Gm-Gg: ATEYQzyUMNUX8T6P3d+0SeQUrqLrsU06P76BUNZxGA3L3Ngxgkw73Z3BOp2ZeicZvRo
	pz0gd/41KEko7hHpFn1p0dRua2N71Z3rWrcY2rOCVISJVJp0Ti5y5k6PaGIIt7ub9IPHwe9RMgB
	o6171P7ixEOwgswoUbPHZ/XrReftVKJ9qqKCEcushqmqpwwv9vvMki5POUnUt64W6XDtvptMKvQ
	y20QvKPr1kaMhJAJ/bB7eoj5bIEoDpnD8sCfP21buPfVRueSmkZX+7xA/5ZsR796i6+6UvSzmVY
	4rZn9vIvTFaPmPGW/4DhekRBZd5XXQ2YzVq0flB+1AYmgaE+9EWy1jbnMo9vtWtEsBw21f3bbX3
	2g3LaDHUhXAAA3JLdD2DkWcpMYpCnkEAICL2ELGYIB0hHQfS+zHCJHTfzEjmVwzj8aGMJl1+fCi
	cKQqYNN/LQGE8opOK6+8AD5dgPSJ1dDRtzEkSQovmAvVnDRSGocN8pbR616Mcd
X-Received: by 2002:a05:6402:2686:b0:65f:9ce4:e046 with SMTP id 4fb4d7f45d1cf-663192c4ed7mr3512281a12.3.1773321208616;
        Thu, 12 Mar 2026 06:13:28 -0700 (PDT)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com. [209.85.208.52])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66350b85f3bsm520205a12.25.2026.03.12.06.13.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 06:13:28 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6634d819492so1881336a12.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:13:28 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVHfYld8qRbbNg983CQRI4GLZKkN9+FCV2fhksdhwTfpxMlQi/f+7SCpC0E/fsrwKn0YvFGvfKVE0WB@vger.kernel.org
X-Received: by 2002:a17:907:7b93:b0:b91:2f65:e938 with SMTP id
 a640c23a62f3a-b972e603b8amr390837366b.60.1773321208196; Thu, 12 Mar 2026
 06:13:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203121723.312336-1-biju.das.jz@bp.renesas.com>
 <CAL_JsqJK3brXxSeD-U42PBCeHoxUhWJYho3ZWj__t5C1LL-n-Q@mail.gmail.com> <TY3PR01MB11346B87DF83086FCFE19B15D8698A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346B87DF83086FCFE19B15D8698A@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Mar 2026 14:13:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW7GeCF-xTNpRRNEBfzbqUA8ZNqFxctT8zufdRHkvSiAQ@mail.gmail.com>
X-Gm-Features: AaiRm51xpIeuv2QHPm735sslWhSiZm3fYb3vmdcw6ZXZmPeZ7Qqh0uUgQF8JQ5U
Message-ID: <CAMuHMdW7GeCF-xTNpRRNEBfzbqUA8ZNqFxctT8zufdRHkvSiAQ@mail.gmail.com>
Subject: Re: [PATCH net-next] dt-bindings: net: micrel: Fix dtbs compatible
 too long warnings
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh@kernel.org>, "biju.das.au" <biju.das.au@gmail.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stefan Eichenberger <eichest@gmail.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,lunn.ch,davemloft.net,google.com,redhat.com,vger.kernel.org,bp.renesas.com];
	DMARC_NA(0.00)[linux-m68k.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274596-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,linux-m68k.org:email]
X-Rspamd-Queue-Id: E467D2725FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Biju,

On Wed, 4 Feb 2026 at 10:18, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Rob Herring <robh@kernel.org>
> > On Tue, Feb 3, 2026 at 6:17=E2=80=AFAM Biju <biju.das.au@gmail.com> wro=
te:
> > > From: Biju Das <biju.das.jz@bp.renesas.com>
> > > The KSZ9131 PHY is suitable for IEEE 802.3 applications.
> > >
> > > Fix the below dtbs warning "compatible: ['ethernet-phy-id0022.1640',
> > > 'ethernet-phy-ieee802.3-c22'] is too long" on the below dts:
> > >
> > > r8a774b1-beacon-rzg2n-kit.dtb
> > > r8a774a1-beacon-rzg2m-kit.dtb
> > > r8a774e1-beacon-rzg2h-kit.dtb
> > > r9a08g046l48-smarc.dtb
> > > r9a07g043u11-smarc.dtb
> > > r9a07g044c2-smarc.dtb
> > > r9a07g044l2-smarc.dtb
> > > r9a07g044l2-smarc.dtb
> > > r9a07g054l2-smarc.dtb
> > > r9a07g054l2-smarc.dtb
> > > r9a09g047e57-smarc.dtb
> > > r9a09g047e57-smarc.dtb
> > > r9a09g056n48-rzv2n-evk.dtb
> > > r9a09g056n48-rzv2n-evk.dtb
> > > r9a09g057h44-rzv2h-evk.dtb
> > > r9a09g057h44-rzv2h-evk.dtb
> > > r9a07g043u11-smarc-cru-csi-ov5645.dtb
> > > r9a07g043u11-smarc-pmod.dtb
> > > r9a07g043u11-smarc-du-adv7513.dtb
> > > r9a09g047e57-smarc-cru-csi-ov5645.dtb
> > > r9a07g044c2-smarc-cru-csi-ov5645.dtb
> > > r9a09g047e57-smarc-cru-csi-ov5645.dtb
> > > r9a07g044l2-smarc-cru-csi-ov5645.dtb
> > > r9a07g044l2-smarc-cru-csi-ov5645.dtb
> > > r9a07g054l2-smarc-cru-csi-ov5645.dtb
> > > r9a07g054l2-smarc-cru-csi-ov5645.dtb
> > > r9a09g056n48-rzv2n-evk-cn15-emmc.dtb
> > > r9a09g056n48-rzv2n-evk-cn15-emmc.dtb
> > > r9a09g056n48-rzv2n-evk-cn15-sd.dtb
> > > r9a09g057h44-rzv2h-evk-cn15-sd.dtb
> > > r9a09g056n48-rzv2n-evk-cn15-sd.dtb
> > > r9a09g057h44-rzv2h-evk-cn15-emmc.dtb
> > > r9a09g057h44-rzv2h-evk-cn15-sd.dtb
> > > r9a09g057h44-rzv2h-evk-cn15-emmc.dtb
> > >
> > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> > > ---
> > >  .../bindings/net/micrel,gigabit.yaml          | 23 +++++++++++------=
--
> > >  1 file changed, 14 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/net/micrel,gigabit.yam=
l
> > > b/Documentation/devicetree/bindings/net/micrel,gigabit.yaml
> > > index 384b4ea6181e..284c3ba379f3 100644
> > > --- a/Documentation/devicetree/bindings/net/micrel,gigabit.yaml
> > > +++ b/Documentation/devicetree/bindings/net/micrel,gigabit.yaml
> > > @@ -17,15 +17,20 @@ description:
> > >
> > >  properties:
> > >    compatible:
> > > -    enum:
> > > -      - ethernet-phy-id0022.1610  # KSZ9021
> > > -      - ethernet-phy-id0022.1611  # KSZ9021RLRN
> > > -      - ethernet-phy-id0022.1620  # KSZ9031
> > > -      - ethernet-phy-id0022.1631  # KSZ9477
> > > -      - ethernet-phy-id0022.1640  # KSZ9131
> > > -      - ethernet-phy-id0022.1650  # LAN8841
> > > -      - ethernet-phy-id0022.1660  # LAN8814
> > > -      - ethernet-phy-id0022.1670  # LAN8804
> > > +    oneOf:
> > > +      - items:
> > > +          - const: ethernet-phy-id0022.1640
> > > +          - const: ethernet-phy-ieee802.3-c22
> >
> > To avoid the errors, you would need a custom 'select' that excludes the=
 c22 compatible from this
> > schema (IOW, lists all the other compatibles here).
>
> OK.
>
> >
> > However, I think the correct fix is probably dropping the c22 compatibl=
e from your .dts files. I don't
> > that compatible is useful on its own?
>
> I will wait for Geert's input to drop c22 from .dts files.

Makes sense.

So we should probably fix the following, too?
Documentation/devicetree/bindings/net/ethernet-phy.yaml
Documentation/devicetree/bindings/net/mscc-phy-vsc8531.yaml
Documentation/devicetree/bindings/net/renesas,ether.yaml
Documentation/devicetree/bindings/net/renesas,etheravb.yaml
Documentation/devicetree/bindings/net/amlogic,g12a-mdio-mux.yaml

> > Also, it doesn't make sense that ethernet-phy-id0022.1640 is sometimes =
compatible with ethernet-phy-
> > ieee802.3-c22 and sometimes isn't.
>
> OK.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

