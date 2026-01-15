Return-Path: <devicetree+bounces-255452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D6AD23301
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 981733131F32
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:32:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79FA5337B9D;
	Thu, 15 Jan 2026 08:30:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D5633506F
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768465855; cv=none; b=q//RSeALuZdGiDYYc6k+bx4EDxZovixNORpfMVJYcafgW331Ou8OUGqK6peekAVZIj76VEB3XjtuMvRejdiAv8RkJ9jj75SjrbKIQ4ezUlcn/C+7Qp+e1q+w4R+nR3bgH6i42Dka0K/YeN+u6MV/12vJppStI7YxBnz20T0kcSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768465855; c=relaxed/simple;
	bh=G+loJosCYPxM7dM+rE9X0eO2DVA5Iul/rElaBNI978A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Blb6OWHKaEltS8vNadlpeJhuhDB8kPP9y+R8UkdzDyibjrcZN2sL3F9ujJdBAVzl/A68ZsjWp2jHpA8D95o7SBQPrHztAefv2J9O9Pv44tJ6hGgp0MfLzisJ0O5ibC+Bsz0V17JnYjEo8zCwx7dOJkN3qdCMYpEMtgIWg00owiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-8888a16d243so6859986d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 00:30:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768465851; x=1769070651;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6hVlaltCoWANklzhMp5xvIF6YsYsDq1BU+u4OGSDZeY=;
        b=djRMEdwRblq0m7aOwD0TKWWN6PdjX8Wy6wtWMYgtZ6cfbp1PpQZe8qhXNkATpkJ4bv
         ZCp+ZevGALx27OAaekMXN76IWze+BZPm8h+ujAIZncTfiGxMK8jgYJRcjTxyWei+Fnm9
         cZgWQ+uxRL10a3CN6D2KVI437Vs4ZLnufrL9CnpJBh8kuJCionqjAd2Cv/4ZaWM9+fwQ
         hMGVT9ecLw1z06Cwb4Rb2WMvOrce05UgRRDi96mW4h6AQn/663EyhviCP+h2kfLGZLY/
         3jcTtnKW6xpI5+JPBfulLG0unwHLEJ//b85nuyZe7fQQJVAH+ekJetl5Px3Kn4wTGJ/n
         f/zA==
X-Forwarded-Encrypted: i=1; AJvYcCX3+xXljfRIdCsFKsfIWN2oS6HgUENYO1wXbNS1dJd9LOaPY42E6N3QnjVEobYvL4upYjEgMsaObKSM@vger.kernel.org
X-Gm-Message-State: AOJu0YxrnYyhPbA20Jyq6Jb0Tgj4Zt+6fZcYIGvdPyMA1CoGEvH7gtKX
	1l3XHKopDuXSBE5OMG11b2W9DS5zNuSbtpCgtTYtMOAAIlxRzxeXFkdphCg3NFvA
X-Gm-Gg: AY/fxX7cFRXqqwamrSUDFJa++fqxiOPvxOWh3PEep4TMJpP8igOHfvXc7zOal1fGXzX
	jrgmiB6ZLiJeysJxEhjqTiHBGRK44x4c2UrsxoAkSEtUiSZqzu1s+ekA0Q3S73OAuWAhKxmJdzw
	n06eVS3fglr+cdrdZncHZLtKN+RFNvsZrJRCiruZYoJk40fwLovexwuebstfOK3H25ENAfE27VE
	RQS+pR0DUChKJeJBFDaKWquM4sRzwdu3KTHhx+HM1CR4Ca5dhldMMQOxcb2bG2ytIFiwTID7a2z
	EatjWvS31vt49Y37nQpMGFC41wsAUU2IL/w1Chk8w9qL8WRttbqffp6b6QW4hk1xxc0cfQK8kLP
	ZgVB3zNeMhnor+w2Z8elQ0cawCFm83+zqHI8buXS3hSDwJtxRidWQarK7IWuYvT6db237np7p4n
	jXmXlunF62gUnA66z9r+5x2hU0hnPfmq1RBhDcRfLcDB2SuGJOmhgE
X-Received: by 2002:ad4:5aaf:0:b0:880:626a:b129 with SMTP id 6a1803df08f44-89275b3910emr58593036d6.24.1768465850950;
        Thu, 15 Jan 2026 00:30:50 -0800 (PST)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com. [209.85.222.181])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770e2a8fsm194330856d6.16.2026.01.15.00.30.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 00:30:50 -0800 (PST)
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8b29ff9d18cso79911585a.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 00:30:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU10VxBlXBc0Qo6TJvD7MOVkDOAT6DQ/oIiCPK9HRhCsZlDEqmP8aQiB3P2UuArDlYBtVoC0G7hE49v@vger.kernel.org
X-Received: by 2002:a05:6102:304b:b0:5ee:a6f8:f925 with SMTP id
 ada2fe7eead31-5f183897017mr1662832137.8.1768465478084; Thu, 15 Jan 2026
 00:24:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <fcfc4fc5123c2351d96ac102aa5081bd99c8a40e.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <20251203-shrew-of-original-tempering-8a8cfc@quoll> <aTA-Hj6DvjN4zeK6@tom-desktop>
 <CAMuHMdW=UkZxhf-pbtp6OBFd_3jPcjUaKFmH4piuc+P=kgxzGA@mail.gmail.com> <TY3PR01MB11346DF85F8F7EA9ADDED16EB868CA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346DF85F8F7EA9ADDED16EB868CA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 09:24:26 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUhke83ZVXxDQE_Dt1HRwyGeoMq1pYmEP47WOgR_vYNtA@mail.gmail.com>
X-Gm-Features: AZwV_Qgxwq_ugUrK3ifMblmAkyp8fbq-QzkWqQkuoZnCA8EiRq61e2GRJHn8aQo
Message-ID: <CAMuHMdUhke83ZVXxDQE_Dt1HRwyGeoMq1pYmEP47WOgR_vYNtA@mail.gmail.com>
Subject: Re: [PATCH 10/22] dt-bindings: display: renesas,rzg2l-du: Add support
 for RZ/G3E SoC
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Tommaso Merciai <tomm.merciai@gmail.com>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	"laurent.pinchart" <laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	"magnus.damm" <magnus.damm@gmail.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Thu, 15 Jan 2026 at 08:48, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Wed, 3 Dec 2025 at 14:42, Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > On Wed, Dec 03, 2025 at 09:23:53AM +0100, Krzysztof Kozlowski wrote:
> > > > On Wed, Nov 26, 2025 at 03:07:22PM +0100, Tommaso Merciai wrote:
> > > > > The RZ/G3E Soc has 2 LCD controller (LCDC), contain a Frame
> > > > > Compression Processor (FCPVD), a Video Signal Processor (VSPD),
> > > > > Video Signal Processor (VSPD), and Display Unit (DU).
> > > > >
> > > > >  - LCDC0 supports DSI and LVDS (single or dual-channel) outputs.
> > > > >  - LCDC1 supports DSI, LVDS (single-channel), and RGB outputs.
> > > > >
> > > > > Add then two new SoC-specific compatible strings 'renesas,r9a09g047-du0'
> > > > > and 'renesas,r9a09g047-du1'.
> > > >
> > > > LCDC0/1 but compatibles du0/du1...
> > > >
> > > > What are the differences between DU0 and DU1? Just different
> > > > outputs? Is the programming model the same?
> > >
> > > The hardware configurations are different: these are two distinct hardware blocks.
> > >
> > > Based on the block diagrams shown in Figures 9.4-2 (LCDC1) and 9.4-1
> > > (LCDC0), the only difference concerns the output, but this variation
> > > is internal to the hardware blocks themselves.
> > > Therefore, LCDC0 and LCDC1 are not identical blocks, and their
> > > programming models differ as a result.
> > >
> > > In summary, although most of the internal functions are the same, the
> > > two blocks have output signals connected to different components within the SoC.
> > > This requires different hardware configurations and inevitably leads
> > > to different programming models for LCDC0 and LCDC1.
> >
> > Isn't that merely an SoC integration issue?
> > Are there any differences in programming LCDC0 or LCDC1 for the common output types supported by both
> > (single channel LVDS and 4-lane MIPI-DSI)?
>
> Dual LVDS case, dot clock from LCDC0 is used in both LCDC's.

For the single dual-channel LVDS output on LCDC0, or for using two
independent LVDS outputs on both instances? How is this handled?
Don't you need a companion property to link them together?

Is this similar to dual-channel LVDS on R-Car E3 and RZ/G2E?
On these SoCs we have a single combined device node for all DU instances
(which comes with its own set of issues, e.g. Runtime PM and Clock
Domain handling).

> Standalone LVDS and DSI the programming flow is same.

OK.

> > Of there are no such differences, both instances should use the same compatible value.
>
> Then we need to use a property called display-id, to describe the supported
> output types in bindings, right??
>
> Display-id=0 {LVDS, DSI)

LVDS twice?

> Display-id=1 {LVDS, DSI, DPI)

Not necessarily: if this is purely different SoC integration per
instance, describing all possible options is fine.

But I'd like to defer to Laurent for the details...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

