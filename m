Return-Path: <devicetree+bounces-255544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EECF0D2405C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 740B1307E99A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BB1536D4F8;
	Thu, 15 Jan 2026 10:51:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8842336CE06
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768474296; cv=none; b=nIQTomUzCKGkZWAwJ9w6Bn9elfG3TwrDW/FIWDaGBurBeCJQc55wkpqdoE2XtrmuYu0tY7wQM+ae6uGv/jrctF1idIwLyUJ8Z3mV7yzVvq5MHywNqCrFVo+e6EzF8RnpyfqJVNIFFJNE4+HkpgKKuXV11x4QSgI/t8V05QtmWxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768474296; c=relaxed/simple;
	bh=P1FD/wr7+afVlqV25iSV2nfWgm/XY0tGUT3/RQg7DuU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qby2X7Qvad0UgTer0d+3QBcEzHJP0jZsz0EeDskmtsfOTzZXKG8vJDg+KUKR6dunK3kxmZykIIiBNvbs1JydLZgCEuj8dWt/7bntBw1Sbg2h6iIauQnOoizo7ph+DUp63ntDImItRUhFAcKFyQguvfELhVL6PDwFOWBYM6VGGLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-56378a18ba4so266980e0c.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:51:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768474294; x=1769079094;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ki7PmTjePRuEfFjGffE5fBihup/8aCNWyf/0N1CI9Sw=;
        b=BZ+bLSqmvz65dD1qV5wlyF4OBlglWnzH14pIJIfgyBNpdGBI1xAkzdo7pKoiPqxnd5
         72xUwCl8zDVG3A3XLRbDv+GmXijO/hW0mbH2zZqdtzENU/FMU1oY4Htgiy0KMm4fnpAs
         vc+vbExTXVmxYstMZVms3t1JZQCviFdZ5MO9pd10b12eKbxX9Zw3vD//Ow5O+E6s0TvE
         EO9L8B9p8NGjzLTvLQUaYj0mvq7l2a21BCl8wKBLVA9wlqjjMbIO5x6UB86t/p4d+RP3
         fWzL64LhrHOSHif0yx8LCBrePZABuPDy4Mzfosl9rKBsWKoKKwXC51zTZdJU7sXATbTf
         csdg==
X-Forwarded-Encrypted: i=1; AJvYcCVQOV/xUhsbr7OTfD2axLTVQ9rd/VSwzD3e2r4yKBxnUhzgdFev17bUg2Xx/LOcqVIa/pld2au9MKXt@vger.kernel.org
X-Gm-Message-State: AOJu0YwIj68npQYDHI5IoYjuJkUEcGkzrKny/rd+m0bgsPPr3zot09cv
	x24QovJxgfXZYABw3mtPo5uC6jAqb+zR4ysV8gJkdwBjN5CVmj0n7Wa2UYE2aCVeOx8=
X-Gm-Gg: AY/fxX6zRGfIlXaliC2Dy/y8kj0k0JD1QYwa0t9UUKMYxi30Jis1aQ91dIIgUbbn22l
	mnBdLd+0fGBEP206E0sfuOMMbmU2RwOy+Y/khbgE8rVcr0+/He3FX72QwiHNM4HsTCuBag2pi1g
	nspRm9Bn7ErmeSKIvEENSHH6SWlXgGl2dqHoAS9fcjVNb1eS8DH43gWe4mOEDeYpdHbSfjRxLT2
	10MPurz1T7n7XshtpOKuaLdUhY9fdjMPzWDeCBD1czsOUwMgTiu0QRdjHkFmN2vxQebm3TFLz26
	DfUpZWyJO6iRpZZbmycIHkAiNtsSQBmp4nBsh/uc208yV3I53iVga1ctnefAzjl80yLGZHueZVc
	0ZR8EnyWEPU0MF6gxmWClnEprnq3G8ZWSIuy/rRWxjJJsXrgw0XrwD9Dui/zart3UZK2qO7ettv
	btGKp3NhqQ99FTLe7sG3ZkeXAExtFEq0Zm/ENXBgPLdCbXTkwcDNYi
X-Received: by 2002:a05:6122:4591:b0:559:3b8a:70ce with SMTP id 71dfb90a1353d-563a0940f8bmr2143806e0c.7.1768474294336;
        Thu, 15 Jan 2026 02:51:34 -0800 (PST)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com. [209.85.221.180])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5635bd72c7esm20502253e0c.12.2026.01.15.02.51.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 02:51:33 -0800 (PST)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-563641b24b9so264904e0c.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:51:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWvLz3s2hckfZdEkYFL/SKkOdfRas+a3/TdSuKOa+VmoeoflCzL9qg0ioOIaPZuTTQe2Jubin94Ghar@vger.kernel.org
X-Received: by 2002:a05:6102:6887:b0:5db:e851:9389 with SMTP id
 ada2fe7eead31-5f17f3f875bmr2192851137.3.1768474292003; Thu, 15 Jan 2026
 02:51:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <fcfc4fc5123c2351d96ac102aa5081bd99c8a40e.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <20251203-shrew-of-original-tempering-8a8cfc@quoll> <aTA-Hj6DvjN4zeK6@tom-desktop>
 <CAMuHMdW=UkZxhf-pbtp6OBFd_3jPcjUaKFmH4piuc+P=kgxzGA@mail.gmail.com>
 <TY3PR01MB11346DF85F8F7EA9ADDED16EB868CA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <CAMuHMdUhke83ZVXxDQE_Dt1HRwyGeoMq1pYmEP47WOgR_vYNtA@mail.gmail.com>
 <TY3PR01MB113463EE3F22A0E0E6C97DC40868CA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <CAMuHMdVP4M6mS6itgN13QG_w7rxUo6wUbA2cbWU38=vPA0XLhw@mail.gmail.com> <TY3PR01MB11346DB362955A62D2A2E828A868CA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346DB362955A62D2A2E828A868CA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 11:51:20 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXmzxO1A-7OBdcEmkOY3XNZ9hh=13wfcOrh+A8+Au0kGw@mail.gmail.com>
X-Gm-Features: AZwV_QhxPxYEyoRCedfJ4RqRUDbD--3dA-NRn1itW-sJznM5g4jpJVdKBvOoCkI
Message-ID: <CAMuHMdXmzxO1A-7OBdcEmkOY3XNZ9hh=13wfcOrh+A8+Au0kGw@mail.gmail.com>
Subject: Re: [PATCH 10/22] dt-bindings: display: renesas,rzg2l-du: Add support
 for RZ/G3E SoC
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "laurent.pinchart" <laurent.pinchart@ideasonboard.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Tommaso Merciai <tomm.merciai@gmail.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	"magnus.damm" <magnus.damm@gmail.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Thu, 15 Jan 2026 at 11:34, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Thu, 15 Jan 2026 at 11:10, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > > > From: Geert Uytterhoeven <geert@linux-m68k.org> On Thu, 15 Jan 2026
> > > > at 08:48, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > > > > > From: Geert Uytterhoeven <geert@linux-m68k.org> On Wed, 3 Dec
> > > > > > 2025 at 14:42, Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > > > > > On Wed, Dec 03, 2025 at 09:23:53AM +0100, Krzysztof Kozlowski wrote:
> > > > > > > > On Wed, Nov 26, 2025 at 03:07:22PM +0100, Tommaso Merciai wrote:
> > > > > > > > > The RZ/G3E Soc has 2 LCD controller (LCDC), contain a
> > > > > > > > > Frame Compression Processor (FCPVD), a Video Signal
> > > > > > > > > Processor (VSPD), Video Signal Processor (VSPD), and Display Unit (DU).
> > > > > > > > >
> > > > > > > > >  - LCDC0 supports DSI and LVDS (single or dual-channel) outputs.
> > > > > > > > >  - LCDC1 supports DSI, LVDS (single-channel), and RGB outputs.
> > > > > > > > >
> > > > > > > > > Add then two new SoC-specific compatible strings 'renesas,r9a09g047-du0'
> > > > > > > > > and 'renesas,r9a09g047-du1'.
> > > > > > > >
> > > > > > > > LCDC0/1 but compatibles du0/du1...
> > > > > > > >
> > > > > > > > What are the differences between DU0 and DU1? Just different
> > > > > > > > outputs? Is the programming model the same?
> > > > > > >
> > > > > > > The hardware configurations are different: these are two distinct hardware blocks.
> > > > > > >
> > > > > > > Based on the block diagrams shown in Figures 9.4-2 (LCDC1) and
> > > > > > > 9.4-1 (LCDC0), the only difference concerns the output, but
> > > > > > > this variation is internal to the hardware blocks themselves.
> > > > > > > Therefore, LCDC0 and LCDC1 are not identical blocks, and their
> > > > > > > programming models differ as a result.
> > > > > > >
> > > > > > > In summary, although most of the internal functions are the
> > > > > > > same, the two blocks have output signals connected to different components within the SoC.
> > > > > > > This requires different hardware configurations and inevitably
> > > > > > > leads to different programming models for LCDC0 and LCDC1.
> > > > > >
> > > > > > Isn't that merely an SoC integration issue?
> > > > > > Are there any differences in programming LCDC0 or LCDC1 for the
> > > > > > common output types supported by both (single channel LVDS and 4-lane MIPI-DSI)?
> > > > >
> > > > > Dual LVDS case, dot clock from LCDC0 is used in both LCDC's.
> > > >
> > > > For the single dual-channel LVDS output on LCDC0, or for using two
> > > > independent LVDS outputs on both instances? How is this handled?
> > >
> > > Dual-channel LVDS output on LCDC0, we use the data from LCDC0.
> >
> > That's the "dual-link" case below? But that case doesn't use LCDC1 at all, so how can "dot clock from
> > LCDC0 is used in both LCDC's" be true?
>
> That is a typo. Sorry for that.

Np.

> > What am I missing?
>
> Dual-link case, LVDS_TOP_CLK_CH0, LVDS_TOP_CLK_DOT_CH0 used to drive both the LVDS channels.
> In this case, the clks LVDS_TOP_CLK_CH1, LVDS_TOP_CLK_DOT_CH1 are not used.

These are clock inputs to the LVDS module, hence do not matter for
programming the LCDC?

> > > We have the following use cases:
> > >
> > > Single-link(ch0 only):
> > >   This mode outputs the image data of LCDC0 to LVDS (ch0). In this mode,
> > >   LVDS (ch1) is not used.
> > >
> > > Single-link(ch1 only):
> > >   This mode outputs the image data of LCDC1 to LVDS (ch1).
> > >   In this mode, LVDS (ch0) is not used.
> > >
> > > Single-link(2ch):
> > >   In this mode, the image data of LCDC0 is output to LVDS (ch0) and the
> > >   image data of LCDC1 is output to LVDS (ch1).
> > >   Since LVDS (ch0) and LVDS (ch1) are not synchronously related, they
> > >   can be output in different image formats and can be operated asynchronously.
> > >
> > > Single-link(Multi)
> > >   In this mode, the image data of LCDC0 is output to both LVDS (ch0) and
> > >   LVDS (ch1). LVDS (ch0) and LVDS (ch1) operate synchronously.
> > >
> > > Dual-link:
> > >   In this mode, the input image data from LCDC0 is separated into Even pixels and
> > >   Odd pixels, and the output is distributed to LVDS ch0 and ch1.
> > >
> > >
> > > > Don't you need a companion property to link them together?
> > >
> > > Yes, We use companion property for Dual channel LVDS(Dual-Link) use case.
> > > >
> > > > Is this similar to dual-channel LVDS on R-Car E3 and RZ/G2E?
> > >
> > > Yes.
> >
> > OK, "companion" is in the renesas,lvds bindings, which are not yet updated for RZ/G3E? Do you need it
> > in "renesas,rzg2l-du", too?
>
> Not required. Without that it works like RZ/G2E.

Hence the two LCDC instances are identical and independent, thus can
use the same compatible value?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

