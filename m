Return-Path: <devicetree+bounces-223010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4610DBB051E
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 14:23:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE88C162462
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 12:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46AA32BEC45;
	Wed,  1 Oct 2025 12:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="isSYGNQl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492122C11C4
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 12:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759321428; cv=none; b=oimROOA+r65MpYCwmO/PRbnhGqAB+XoPFwCGyjxbeMZbKvzFw1DxQgWFv3TzwlJu7alj7afcoW1XBIuKdZxdvT+TeI91gkmdo3ZSKhye5yTIrZSjlSax+9mv9F3Hqpr5/Elag8hXPLTB0Ltdes8c4zS84EoJ/gcgsdFKMS83AN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759321428; c=relaxed/simple;
	bh=gBGrabJtd45mAFEOoJqVzc2XuZnoyBrQ0XCWSCj9+dc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zop1/cOiNu1Otbokzg6/Ai2nixa4pkD99ITIjb0j3Esd2w98X3NYLOczRAZryMrar5Z/STg6KHxAYvN6x3Ainck0TeZCXvarlLtNgEORVryogwsMxamViwE4D9RQu69jEJ31fPwusLH6OhQWUXFMo+F5gvj3sZS5jVEn+44fbOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=isSYGNQl; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46e317bc647so46390045e9.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 05:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759321424; x=1759926224; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gBGrabJtd45mAFEOoJqVzc2XuZnoyBrQ0XCWSCj9+dc=;
        b=isSYGNQllL7IbiPcorn0mVirT4kJeukTbpaaJ9fnzt6HIm0+7ywRlogG3nF+XlKc+y
         3weL1QqULtgmoADyF99KKCa6Bf79Imxl7eGsVvcWFO0bArkTFBgGMLKP1OcGwnsh+FVd
         uY8AW6HF3YATWpttVC2yjqjHgPGdCCFZtNx4OD0oSrmlBsNUR1YIT0fq56xZQY7oRKwM
         nOOga0KifkU1DbZhCV12VxzU7V8vMRldILLv+0BW/IzyWE/TlH20ltfPAaNG05z5YVFp
         v4ABUPSurOXT9RmAu0QU3cdJsWlsKAMdC1+Y8mP2JdOb6ir1bpjbefFfR18CVah6DiBu
         cO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759321424; x=1759926224;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gBGrabJtd45mAFEOoJqVzc2XuZnoyBrQ0XCWSCj9+dc=;
        b=Ah7hcGkFZctEqZhiPmh6cZh4pxfJO5AZQGxCZsyqkxS8wBKSavgdda1NzCJ9Ye/9qg
         yPku/JzjGmPiROMTsNdRRBeiUDgvW9WT7xlqL8Fu3X1jH0wEJUOlqnFfSXfYAE6yNRwF
         Y7WoQ2qFeuNILZg5G3ip9LY0znpfawKITBCh+AcO7h8Sq/HanpkwbbIys9lHx9tD62cz
         A4Q2aPTTz5YFEra75Lmi8HgCyUqZ8KB8qNiologe6q7VpDKfiZpuSY3GcovFQbaS9jIS
         LxEWFcwrYMqkNUIX1U6KGCx1Kyc/Vt5D0ICwUNQ0GKkeVUus4R+5CiTRkQJgLrWPSfPg
         C8aQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUw6dkBsIfztDwGEeNA0TkALzRxTrMQmf/8D/XR2LkPwLggVnTpy0rjPa/ZYqJfDMkZWCJVw9Lhzgu@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl5QLDWarCbvs0ag704LoDLjz+f/59ypZ+pKv8ubsQEAry6sMP
	xRseFuACxVrAOkNQN03qM2hZn9hXnlz0y/IcHsy52gz8FrA+8nQZsQgzkqiFKmhUVss9JcsO2ii
	aQJ8yeB5x+xEdrFfgKHNv9mLjr9UxQnM=
X-Gm-Gg: ASbGncuSVOR3pvpFUMNAEg5n90JpK0WzpbLdgONvbIOahQyCfbKcIECRnBBantsispZ
	ftpSx1y8cFrBvj06g9hUlGKJKYFAAxDBlfYvIwxUrR2VIk3M9l1N6hNfFvV9G+yKnx7DI8SJczd
	gijDmubLoomGMI38IdwPBqM+9yrEjnESKSu8Grx3iy07nY2c9NugLIw3dYZlJXci8sAz2V0v3eN
	9UM6efe4+cvTBVFErJsWXZ+F7z39181
X-Google-Smtp-Source: AGHT+IG6w9L1LgThnpefnQm9I8OUIomLSyIMrWw3z8rhw6qFvyxmd8vXZTGsJ+SjoSiCjhbCQK0VPlSPMN9tMkkTwbU=
X-Received: by 2002:a05:600c:820c:b0:45b:9afe:ad48 with SMTP id
 5b1f17b1804b1-46e6127a4bemr35253245e9.16.1759321424233; Wed, 01 Oct 2025
 05:23:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903161718.180488-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250903161718.180488-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <db2fc907-218c-4688-aebf-4a929f21b074@ideasonboard.com> <CA+V-a8vghwkHKWoqU8NQ3O9ZdHxB+cEvMv7Z9LQOMsZcx9vjPA@mail.gmail.com>
 <f1e671a3-77af-4ae2-aa6e-bde93aaa54b7@ideasonboard.com>
In-Reply-To: <f1e671a3-77af-4ae2-aa6e-bde93aaa54b7@ideasonboard.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 1 Oct 2025 13:23:17 +0100
X-Gm-Features: AS18NWAI4MLtfZreV3_pLNGPAC-_jcQVSy6mD_NW1R1LCvbGTlMIsTFaxBIK_zI
Message-ID: <CA+V-a8tosiUkhaWGoZ9yTBe1Kyy0DLUGreqReH2NOWmVeS5_pw@mail.gmail.com>
Subject: Re: [PATCH v8 2/6] clk: renesas: rzv2h-cpg: Add support for DSI clocks
To: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Magnus Damm <magnus.damm@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tomi,

On Thu, Sep 11, 2025 at 3:26=E2=80=AFPM Tomi Valkeinen
<tomi.valkeinen+renesas@ideasonboard.com> wrote:
>
> Hi,
>
> On 11/09/2025 11:14, Lad, Prabhakar wrote:
> > Hi Tomi,
> >
> > On Wed, Sep 10, 2025 at 1:30=E2=80=AFPM Tomi Valkeinen
> > <tomi.valkeinen+renesas@ideasonboard.com> wrote:
> >>
> >> Hi,
> >>
> >> On 03/09/2025 19:17, Prabhakar wrote:
> >>> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >>>
> >>> Add support for PLLDSI and PLLDSI divider clocks.
> >>>
> >>> Introduce the `renesas-rzv2h-cpg-pll.h` header to centralize and shar=
e
> >>> PLLDSI related data structures, limits, and algorithms between the
> >>> RZ/V2H(P) CPG and DSI drivers.
> >>>
> >>> The DSI PLL is functionally similar to the CPG's PLLDSI, but has slig=
htly
> >>> different parameter limits and omits the programmable divider present=
 in
> >>> CPG. To ensure precise frequency calculations, especially for milliHz=
-level
> >>> accuracy needed by the DSI driver, the shared algorithm allows both d=
rivers
> >>> to compute PLL parameters consistently using the same logic and input
> >>> clock.
> >>
> >> Can you elaborate a bit more why a new clock APIs are needed for the D=
SI
> >> PLL? This is the first time I have heard a DSI TX (well, any IP) requi=
re
> >> more precision than Hz. Is that really the case? Are there other reaso=
ns?
> >>
> > Im pasting the same reply from Fab
> > (https://lore.kernel.org/all/TYCPR01MB12093A7D99392BC3D6B5E5864C2BC2@TY=
CPR01MB12093.jpnprd01.prod.outlook.com/#t)
> > for the similar concern.
> >
> > The PLL found inside the DSI IP is very similar to the PLLDSI found in
> > the CPG IP block, although the limits for some of the parameters are
>
> Thanks. As discussed on chat, this confused me: There's a PLLDSI on CPG,
> which doesn't provide a DSI clock, but a pixel clock. And then there's a
> PLL in the DSI D-PHY which provides the DSI clock.
>
> A few comments overall some for this driver but also the dsi driver:
>
> This hardcodes the refclk rate to 24 MHz with RZ_V2H_OSC_CLK_IN_MEGA in
> the header file. That doesn't feel right, shouldn't the refclk rate come
> from the clock framework with clk_get_rate()?
>
From the CPG perspective we could get the info with clk_get_rate() but
from the DSI part we can't. So to keep it consistent I will keep this
macro as is.

> While not v2h related, I think it would be good to have a comment in the
> dsi driver about how the g2l hs clock rate is derived directly from the
> pixel clock.
>
> I still don't see why all the code here has to be in a header file.
> Usually headers contain only a few lines of inline code. Is there a
> reason why it's not in a .c file?
>
Ok, I will move the functions to rzv2h-cpg.c and export the symbols
and have the declarations in include/linux/clk/renesas.h.

Geert are you OK with the above?

> And last, we discussed the milliHz a bit on chat, you said you'll come
> back to that. I don't think it's a blocker, but I'm very curious why
> exactly it is needed in the DSI. +/- 12 Hz with, say 3.6GHz clock does
> not sound very much to me, and there should be enough time every line
> during blanking period to empty any fifos and "catch up".
>
> In fact, if the DSI is so picky about the rate, I find the HW design
> odd: in g2l the pixel clock and the DSI clock come from a single source,
> which keeps them neatly in sync. If that is required, why change the
> design here so that the DSI PLL is independent of the pixel clock, yet
> still the DSI PLL must be programmed to be exactly matched to the pixel
> clock.
>
As discussed on irc we have to live with mHz solution as the HW is picky.

Cheers,
Prabhakar

