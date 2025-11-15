Return-Path: <devicetree+bounces-239015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B08BDC60892
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 17:34:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 715244E1F08
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 16:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 993B72FDC20;
	Sat, 15 Nov 2025 16:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b="MEEWFs0R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06C6645
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 16:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763224453; cv=none; b=NF1fKKhrbithei6UJLxb/8uqQTcPjE6spt9u3LKPo3X0DjrYAEooFrShEynbBZRJ5ZFJanbCMXYVCZNo14gA99nEiDFN7M1mYfTjN6SX3I7Za3zTmQAbKL5pQTU+WCDx40NISH67PPND+5sJ6LPzQyu9oRiN7/m+lIxSTffjIpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763224453; c=relaxed/simple;
	bh=LWg/HA9nD1GVScuk8vJ+8EIMbwSRlSPmFBHPoFqjsPc=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eSnFlD/WWAAoduOYM1YbxakFk0E/+ll600AwmWFjeRhTK+izGQTeu+1Gu4Uz/nPEB5DxJ0E/DH8/Mi7/vQ0+qsaAOgbSKk0gy5Z2BUQ/voE6ccIOKo0jiyHL20Ah9nKjDWDVZwN/AeJSX5s+zfgSwjF6n5tXZOdqngTGtX3biEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (4096-bit key) header.d=canonical.com header.i=@canonical.com header.b=MEEWFs0R; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6A8A43F2AB
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 16:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1763224116;
	bh=zSRKqRGpeB1Tv9JOYJHcuja/xurT3x7lGHvQj0bUM5w=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=MEEWFs0RmlM611iOlJUj4MW5PEU+yjjrubrdWXe6ismzEebSkQpxZ2syOlXo4HFqQ
	 BXxL/USeM8SjqIFsp0qxq/Eq2bgoc0fVM9opq2WAa+3t/FUoMX5K3qe/Obww6WxY2U
	 C7PA7MjYu699/fMMaadCm162DCbrWvWslUEB2RUM4tvQYIfSLSJsjzO3TRePtnOxex
	 aiRWm4dQ+FjfRo+63v7ZRmmFVYIvlQL/0CBUa2WHo0mUTUVk9/3O8dFzTeMCxkou16
	 uqfaGFg16SUbZIob8SuPWnBZMavOU7ZQA51wOerPE5WlKXHvQ8VLDvTZXaiPsCxAQk
	 Tk61CvmSH7c4IcSULDxwWayLviNchHUsdKZCHYFjtieEvPQHtBw/AhYDHCHH9V5V18
	 5qIfiGUEVRr6XLP/wczaPdOcWS7s+1dpy6J1MDmzLxgUR5tmDfjRQ3ixmEM377mr3V
	 X5f1/ZnbBzCVajw1CzcVItsit4rErvmjWFjKXHPdNwv+epFrCanrQ9oqugufc9Tpgo
	 WMd2sRXqdKyhncFviG3l7sGnLqOnGjYSE6qoFR1SWcs6X9jrT1nJ/3r9zyNzCTbur/
	 cCuuPz7RIwtLgwEPPVzXdBbilqeH52kU8va96NpDdSmG5S06uj07C+QLCFDglcZvxc
	 9x7bc/Yzr75bhlnrQjs6Te1M=
Received: by mail-ej1-f72.google.com with SMTP id a640c23a62f3a-b73586b1195so224968366b.3
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 08:28:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763224114; x=1763828914;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zSRKqRGpeB1Tv9JOYJHcuja/xurT3x7lGHvQj0bUM5w=;
        b=eHLRrQVDeJ+fTY2te93wSNHago+H2FxyMD2dEc65wGiGhfizTqLdRIDWkkrwo00eoh
         tsJTRrObMdvEuw8WqzLwdfp4I5UGmf5E37dPavd31l3bGKAQv/uU3nUI+yBpzCnamYRc
         PqwffGxUNgwqHsDyNclIcbotECiLzKvBjWgemtaNU+PABJpR7e3N1C+OJi/C0DVRSiqM
         jQ5zxLduLxwfG2F+K/dGz0By1B7VEBwPk8p3FaijxLpwGh38K+XyifnlnTvIX0uht9uR
         S02NZjniUNsgxj+VCaATliWriwEKVniRBjD3j/+pvHOe6VOg3xuJP3ZyHOJM8AKKVvLF
         764w==
X-Gm-Message-State: AOJu0Yyps0nDbJTPW5a10fW7EjTiQwzKY1gS8qzS7Eyev6OcaWhVtEov
	GCksX71f9XoWtGZELYD2Te2X6Y3OcdxlMiYnF73kkk1SYua7r+ZQy1gcbI8Qclib/e1yp2cA+p9
	Jcj+6AEGqot6Nc43VScx21kz8iLlaeWlEaNFVwZTIyJNFHa9wBGxaG0uZJds/B0TV1YyNDV7Ew3
	Yo4Kt0JWi5yWC6zfN15NXA4vD3CgiAObJ3NjiNGfq1vWMVqPMsshkHlA==
X-Gm-Gg: ASbGnctJ8y607ensR53AmyoxJIW70AhR75QlnPjcM4Zp/9eBhBrO7rrZBnMD+Z+hlCU
	K/HMXjGJgEtI6MLYmJAj3JRaCM9ijfipTpjnq37s8iVpZmv5/0kJsCQoPn/WDNbNacBwEZQuGpr
	gdaDxbOn38/rQmXsZtTECpNX4leW6x2vxoEIJ4qOHjifaYI0LmnRbjcQ==
X-Received: by 2002:a17:907:26cc:b0:b4a:d60d:fb68 with SMTP id a640c23a62f3a-b736787e579mr742372466b.6.1763224113864;
        Sat, 15 Nov 2025 08:28:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH9nDCQNY6wZNR2oRy4Ui77frqHmUp7XPyVfQ4YwWP5a1VyUOxY0yBE4UbM+Ty6IlJi1smS24M8n7p6v570aBo=
X-Received: by 2002:a17:907:26cc:b0:b4a:d60d:fb68 with SMTP id
 a640c23a62f3a-b736787e579mr742369166b.6.1763224113387; Sat, 15 Nov 2025
 08:28:33 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 15 Nov 2025 08:28:32 -0800
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 15 Nov 2025 08:28:32 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <4a55301a-ef7e-4b47-8151-621cfba36ddd@freeshell.de>
References: <20251107095530.114775-1-hal.feng@starfivetech.com>
 <CAJM55Z_rczBo4D3HsC90QW1=fp3NWgK-tsEo6LHTZNXEBHTDqA@mail.gmail.com>
 <ZQ2PR01MB13076544E2136E7E7C2EEDA1E6CD2@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn>
 <CAJM55Z9KyNK1n4i9FxbLor4HTQKqK8WKA2svjPVvKXihw_E+sg@mail.gmail.com> <4a55301a-ef7e-4b47-8151-621cfba36ddd@freeshell.de>
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
User-Agent: alot/0.0.0
Date: Sat, 15 Nov 2025 08:28:32 -0800
X-Gm-Features: AWmQ_bnZh6g5E5Nmsvq88SYMPJTcp06SuprcwPyoDG2boVWgz7koXN7k-w6PH0I
Message-ID: <CAJM55Z-bRdNmnRZ7wi3PMOkzGYrxQEGk+7F67Pdu4WXwKmTjCQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] Add support for StarFive VisionFive 2 Lite board
To: Albert Ou <aou@eecs.berkeley.edu>, Bjorn Helgaas <bhelgaas@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, E Shattow <e@freeshell.de>, 
	Hal Feng <hal.feng@starfivetech.com>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <pjw@kernel.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Quoting E Shattow (2025-11-13 16:16:12)
>
>
> On 11/13/25 02:42, Emil Renner Berthing wrote:
> > Quoting Hal Feng (2025-11-13 04:42:05)
> >>> On 12.11.25 21:54, Emil Renner Berthing wrote:
> >>> Quoting Hal Feng (2025-11-07 10:55:22)
> >>>> VisionFive 2 Lite is a mini SBC based on the StarFive JH7110S
> >>>> industrial SoC which can run at -40~85 degrees centigrade and up to
> >>>> 1.25GHz.
> > [...]
> >>> Currently the JH7110 device trees are layed out like this, with a nice separation
> >>> between the SoC description and board descriptions:
> >>>
> >>> jh7110.dtsi               # JH7110 SoC description
> >>> |- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
> >>>    |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 boards
> >>>    |  |- <VF2 boards>     # Final VF2 board descriptions
> >>>    |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
> >>>    |  |- <Mars CM boards> # Final Mars CM board descriptions
> >>>    |- <other boards>      # Other JH7110 board descriptions
> >>>
> >>> With this series it moves to
> >>>
> >>> jh711x.dtsi
> >>> |- jh711x-common.dtsi
> >>>    |- jh7110-common.dtsi
> >>>    |  |- <jh7110 boards>
> >>>    |- jh7110s-common.dtsi
> >>>       |- <jh7110s boards>
> >>>
> >>> ..which I can't even give clear labels like above. In other words when new
> >>> patches are sent in it would not be easy to explain exactly where each change
> >>> should go and why.
> >>> I'm also worried that you'll find that more of the peripherals on the JH7110S
> >>> need special handling and a new jh7110s-... compatible string. Then I guess
> >>> they'll need to jump from jh7110x.dtsi two levels down to jh7110{,s}-
> >>> common.dtsi which then both describe SoC and board properties.
> >>>
> >>> If you're serious about calling this a new SoC then I'd expect something more
> >>> like this:
> >>>
> >>> jh711x.dtsi                  # Peripherals common to both SoCs
> >>> |- jh7110.dtsi               # JH7110 SoC description
> >>> |  |- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
> >>> |     |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 boards
> >>> |     |  |- <VF2 boards>     # Final VF2 board descriptions
> >>> |     |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
> >>> |     |  |- <Mars CM boards> # Final Mars CM board descriptions
> >>> |     |- <other boards>      # Other JH7110 board descriptions
> >>> |- jh7110s.dtsi              # JH7110S SoC description
> >>>    |- jh7110s-common.dtsi    # Peripherals common to all JH7110S boards
> >>>       |- <JH7110S boards>    # Final JH7110S board descriptions
> >>>
> >>> I know this will mean some duplication in jh7110{,s}-common.dtsi, but I
> >>> would prefer that to not having a clear explanation of what each file describes.
> >>>
> >>> Do you think this layout could work for you?
> >>
> >> Yeah, it is clearer for developers and maintainers.
> >>
> >> Considering Conor's suggestion, what about:
> >>
> >> jh7110.dtsi               # JH7110 SoC description
> >> |- jh7110-common.dtsi     # Peripherals common to all JH7110 boards
> >>    |- jh7110-starfive-visionfive-2.dtsi # Peripherals common to VF2 boards
> >>    |  |- <VF2 boards>     # Final VF2 board descriptions
> >>    |- jh7110-milkv-marscm.dtsi # Peripherals common to Mars CM boards
> >>    |  |- <Mars CM boards> # Final Mars CM board descriptions
> >>    |- <other boards>      # Other JH7110 board descriptions
> >> |- <JH7110S boards>
> >>
>
> JH-7110 and JH-7110I reference docs are listed (not any JH-7110S) at:
> https://doc-en.rvspace.org/Doc_Center/datasheet_0.html
>
> Does the JH-7110I use the OPP table for JH-7110 or JH-7110S?
>
> >> Move the opp table from jh7110.dtsi to jh7110-common.dtsi.
> >> Remove jh7110s-common.dtsi, because only one board uses JH7110S now.
> >
> > This patchset adds 2 different boards. Has this changed?
> >
> > Also this would mean that you're not using the starfive,jh7110s compatible or
> > any other starfive,jh7110s-.. compatible strings, so effectively you're not
> > treating it as a new chip, but just a board that needs a different opp table.
> >
> > I see now that the opp table is effectively the only difference between the two
> > chips in this patchset, so if that's closer to reality then what you suggest is
> > fine with me.
> >
> > /Emil
>
> Are we now re-visiting Hal's suggestion then (during code review for
> Milk-V Mars CM and Mars CM Lite) to split out the OPP tables and make
> them per-board, as before introduction of the StarFive VisionFive 2 Lite
> board(s) ?
>
> Can we then do as from where we are now before this series:
>
> - Move "the JH-7110" OPP table into jh7110-common-opp-1500.dtsi
>
> - Each board jh7110-{deepcomputing,milkv,pine64,starfive}*.dts includes
> said OPP dtsi file.
>
> and for this series:
>
> - Drop the adding of a new compatible
>
> - Add "the JH-7110S" OPP table into jh7110-common-opp-1250.dtsi
>
> - Use existing jh7110-* prefix for "JH-7110S" board dtsi and dts,
> include jh7110-common.dtsi as usual, and include jh7110-common-opp-1250.dtsi
>
> The exact filename pattern for the OPP tables I suggest here are
> approximations, however that idea is my suggestion if we're just doing a
> breakout of the tables and not a new compatible.
>
> I am positive on having the 1250MHz OPP tables split out into dtsi
> instead of stuffing them into the VisionFive 2 Lite common dtsi. That's
> all it is?

I think this suggestion makes sense if we're 100% sure the JH7110 and JH7110S
will only ever differ by the opp table. If there is any chance we'll need to add
different compatible string for some peripheral then I think Hal's suggestion
will be easier untangle. We'll even be able to do it without touching all the
board dts files once again.

I'm interested to hear Hal's opinion on this. Hopefully they'll have
more details
on the two version of the JH7110.

/Emil

