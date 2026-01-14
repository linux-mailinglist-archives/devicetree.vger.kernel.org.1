Return-Path: <devicetree+bounces-255025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC0ED1EE07
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:47:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9E1BF300B37C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B6B396D16;
	Wed, 14 Jan 2026 12:44:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0B4397AB0
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:44:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768394677; cv=none; b=a35JpkwCkzhRVadwHzX1GTBC+DqJTIIhk825BlQYCAvknF4cVXpzOkxK6IuCbebdB3xardgt4UPXjd/2u4Aq6o60hIQz9e5Xlo23wG2EUsF/52+WQ821Es1FtTf+2fkMiBDeJIKipzelrPXWQATE5UKqJU+VAvVsW4bjkUn0y08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768394677; c=relaxed/simple;
	bh=uvyq84vfqLkBb8SFLfNReYm5TtcOjgPQQ2g9fXWWq84=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rsVD6jVQlG766jY/pfhQE7FMCzAi4W7YPn1ciuobIlimKtjNXYgdvte6Vb2qDMH0cqJrCC2j/UlUuiEp9KF5mcqPg14U9jb3L6rwW/dTN/Eoq1V1XhYpBMjZb5QFZCHGmhtaHBYnuUaMZPMOaJ0pzkKciM5vAxlhpVV9QJqmHKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-81f3b4ae67bso2251739b3a.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:44:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768394675; x=1768999475;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hj+1g0xoern/NZa0KoVGvEg+BidqfC0JY8V0QW/WQj4=;
        b=tnIdvk4jq0n0dpg4KZHz89BlE+C+Yid1IDMvhkC/knNi+pOyNwc1gHNHZehWV7VKrY
         Oli/S4R/yt+kJsRkLVpkyZ69kq5ourctUWpMWIIStsUpRS6e7hMh3v0WEbTvrcoijLyU
         InzVBoIdb/lhQ3bGk6ZQjZWGOK/fiMwaysacH3Q01OA926fTdBWDzO2Yh+TdIOmW8pXq
         q2T03qn1/ZgFaIBhnS2Xd+6KtzCFKqOPJVY52Qb6bEtLBikWwMB5xx4zLVDLKqGcmiHp
         cWFXOdN58ewaoKyRmAu6RtWxDj+e+bhon7J04/UIdxnVJsdtglLdzw9QdDMhLAbn43De
         3Hcw==
X-Forwarded-Encrypted: i=1; AJvYcCU7TqNDuci68rcEcMMJ3qhijXLRpXrClwpOdN3hw7kKrLVB3sCizMvAFYc3iMC8YKcohL0SMq99i0YR@vger.kernel.org
X-Gm-Message-State: AOJu0YxzBT4oNJzFz4IJrSpo7mqiTdvHyNTwRudEoi9KGm6YtwkczayN
	mLl2Y13whUo7H8jrGNaU1dP0XbWwqQRHWbXR5QzIPJASl0buxVDa585ejzZranoD
X-Gm-Gg: AY/fxX7yuWwN/HmZ/DYL6IO/CsKLJIi4oLA38AIaflf0tEkzpJs00660+62+XSH1BoG
	OqEhHMSZDYPs9e1qaTlXj9S2Ws+gpC7ySTIVjtQJ+Icvfg7RgRDmwvnOijUwF4nM2WYlq38NmxN
	qb9S+E213uEyqKKfp5xsJV7dpSlsvGQ54+i7qJr5gaTnV9eT+YFZoGk7E+PZVKv7IXEY8aWDf38
	FJuwApYnk9DTgO/SzeYlLcz3i+F6vZ4/PlGecu10l836ZaHhUNXcTDR0FaIuT/A5Ik/pGS3oJGU
	jNiI6uRAqfGeqPVPOSEd1e0rxfi1GjBRu8+0AbV4IiIx6xUe80xqGv0EQE/zfsQ6fqopIXTEldS
	NpIdpHD8BD9oAT651KQ96qc7mkq8Dsn/SHpoY856TL9MuZmZLxoXVivfFeoAK/uMITMk49scTcT
	1pT6cjxWe48z7HO1LNfRWOMvZAfxgsJW98uAGCsGl+9KXrWxjEyRF60bkxzb+b7A==
X-Received: by 2002:a05:6a00:aa04:b0:81f:4675:c2a7 with SMTP id d2e1a72fcca58-81f81f76f2emr2115638b3a.55.1768394675193;
        Wed, 14 Jan 2026 04:44:35 -0800 (PST)
Received: from mail-dy1-f178.google.com (mail-dy1-f178.google.com. [74.125.82.178])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f2347e3edsm12600373b3a.49.2026.01.14.04.44.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 04:44:34 -0800 (PST)
Received: by mail-dy1-f178.google.com with SMTP id 5a478bee46e88-2b05fe2bf14so14024108eec.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:44:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVe13UkrdeM9cVuLDfBGW60Eb49b4mLJGQXrPQPKB1+f8m0rGApqSPMcZAnhx2UU+eJyOvZY5RMPro4@vger.kernel.org
X-Received: by 2002:a05:6102:3e0f:b0:5ea:67f4:c1ad with SMTP id
 ada2fe7eead31-5f17f5c4c79mr942660137.21.1768394289171; Wed, 14 Jan 2026
 04:38:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <fcfc4fc5123c2351d96ac102aa5081bd99c8a40e.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
 <20251203-shrew-of-original-tempering-8a8cfc@quoll> <aTA-Hj6DvjN4zeK6@tom-desktop>
In-Reply-To: <aTA-Hj6DvjN4zeK6@tom-desktop>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 13:37:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW=UkZxhf-pbtp6OBFd_3jPcjUaKFmH4piuc+P=kgxzGA@mail.gmail.com>
X-Gm-Features: AZwV_Qj82EmcdFo9GBygajeXpLdMczZEl-yzaqrHERtstQ_T42ZqMwts5Zu_4K4
Message-ID: <CAMuHMdW=UkZxhf-pbtp6OBFd_3jPcjUaKFmH4piuc+P=kgxzGA@mail.gmail.com>
Subject: Re: [PATCH 10/22] dt-bindings: display: renesas,rzg2l-du: Add support
 for RZ/G3E SoC
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, tomm.merciai@gmail.com, 
	linux-renesas-soc@vger.kernel.org, biju.das.jz@bp.renesas.com, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Tommaso,

On Wed, 3 Dec 2025 at 14:42, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> On Wed, Dec 03, 2025 at 09:23:53AM +0100, Krzysztof Kozlowski wrote:
> > On Wed, Nov 26, 2025 at 03:07:22PM +0100, Tommaso Merciai wrote:
> > > The RZ/G3E Soc has 2 LCD controller (LCDC), contain a Frame Compression
> > > Processor (FCPVD), a Video Signal Processor (VSPD), Video Signal
> > > Processor (VSPD), and Display Unit (DU).
> > >
> > >  - LCDC0 supports DSI and LVDS (single or dual-channel) outputs.
> > >  - LCDC1 supports DSI, LVDS (single-channel), and RGB outputs.
> > >
> > > Add then two new SoC-specific compatible strings 'renesas,r9a09g047-du0'
> > > and 'renesas,r9a09g047-du1'.
> >
> > LCDC0/1 but compatibles du0/du1...
> >
> > What are the differences between DU0 and DU1? Just different outputs? Is
> > the programming model the same?
>
> The hardware configurations are different: these are two distinct hardware blocks.
>
> Based on the block diagrams shown in Figures 9.4-2 (LCDC1) and 9.4-1 (LCDC0),
> the only difference concerns the output, but this variation is internal to the
> hardware blocks themselves.
> Therefore, LCDC0 and LCDC1 are not identical blocks, and their programming models
> differ as a result.
>
> In summary, although most of the internal functions are the same, the two blocks
> have output signals connected to different components within the SoC.
> This requires different hardware configurations and inevitably leads to different
> programming models for LCDC0 and LCDC1.

Isn't that merely an SoC integration issue?
Are there any differences in programming LCDC0 or LCDC1 for the
common output types supported by both (single channel LVDS and 4-lane
MIPI-DSI)?

Of there are no such differences, both instances should use the same
compatible value.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

