Return-Path: <devicetree+bounces-255084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ABAD1FAA0
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:15:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 199CE303BE05
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A16663168EE;
	Wed, 14 Jan 2026 15:11:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B363176FD
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768403472; cv=none; b=i4Td5e9IeKyiVwEa3kigL93Fxnq0ipM7rQTjzyPIYVnAhgrOyroIF5IqvD6bV3mTEqc3NFI4r/RnQ5HjpiOZJItIdYvX6coLzq+dwi0ONXz2iouq2M3hYaPRbFhc1dXmaLxtW5u4Ip/xEO8MdbJAOas6+Kcz6+FHuIDOoZmLc5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768403472; c=relaxed/simple;
	bh=INLiR/9sKC5Ezv7y9MjS952KSFl9npMrRQs9Q37l+jo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MIzx5UIPuOH17g88HeMJz2pBz+c/X4Oy+geIzR9MsDfZlB4tTKtu41HZ7qMlqSBcNyLMuNeRDXJCtmZvU67ZB0fgqYVW0EqzMdZ03xozvHIFxcFXy3FgoNyWz8Kj0P/+3nIqEYLJs6EbW+IxukoHlPUaiGDAMDFVwBE11DfJCfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f195.google.com with SMTP id 71dfb90a1353d-5634d866615so4867314e0c.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:11:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768403470; x=1769008270;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fL62Bf3LdEer05zL+X5t7sIPwEJerT2IEVhS6PXvpSg=;
        b=RN0xjTAJdz0EyidJoFm+uo1pQv7rBxnB4yrbml8JZBpIXPuAD2mcGtwbAOVOtsEN9v
         YUOedB6E5JfTmuALRR/0zpr/DuslCrgZj2oZktzX1uIlNIsMCPSKV09dOX8TNAatsxrX
         zWpRhHSXmbrJJQi7itHtSho8+vpiNt12IFdQv4oWpDWrL7kAGYTN8wo+x/kGGCMmP82J
         rZ2Va1rtAwzZeYbv/HAk2xda+xkY4wJh6P7yBpWa8YXAKHYsTsrEKZojfukzTPZGDpUj
         oRryqaHt5chtnNFf+/xNExi4eOEKEcc7217J7RlfcRAT8SpK7gGPFxsu10mf79oueE8B
         RFlQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+BMXEgxv8EgXfg/GMAKzG8xtGVzl3/XX9YMgd9XYE2lkV2fNKSLk9H54OoAhxeFNzEwyHRBKnmgbi@vger.kernel.org
X-Gm-Message-State: AOJu0YxdUQq7oLAnRqh1A9sWVoWW+7L6hxu/AUk+lopb6JjhJSorBYGN
	cJWKZjEaEivi6IZPaGFxHdp2RRSrZ/lywlIaN0xSFA2FpUpdU56iw5HvyH86ir0MwFQ=
X-Gm-Gg: AY/fxX5CTKY531Xb8YNiF6xSdmsniOhOmiHO+iXhtAGb+7LriPuduq3hvwCUa2Pzrlj
	An9buNIMJpbg+A2YCesj0CqFbCcYDqIklipyV/G/jo2aAvegzOQsa1xJjVp5iANPy0t2ZvcJGmh
	cywI32HFP2jjDL+ov0fJcYu80y9tIlxKepXiGBNQJaQbQpu1JrNucZJRja+6KtJwg7aIJ+h3eHX
	4TLKvciAgV7CtbIwX5JKev/w36WFTdSG+GQlQ9t6sxB+JrMm+E+meYCgGNL5HbbWc+uURM2zQai
	54kzRHEL1Yd93iJJmTuENSlLzAuCy8X9JNX6CXD4sPDsXrTWj2qIDuxa9UeQz5v/gDooNlNAXnq
	3N4so0S4F3dM08QfIm7u6p9eumteg+a2atEc1NQV8VuQMBuieFGA1cdQYFdVCXbiO6QoUDWf8YT
	tsRYdpzuU/Yqa8u29vxBWvNG0L0f1UszApK0lNUR1hJCvLcVr++v1J
X-Received: by 2002:a05:6122:8c10:b0:563:4a88:6ece with SMTP id 71dfb90a1353d-563a093930fmr1197166e0c.5.1768403468181;
        Wed, 14 Jan 2026 07:11:08 -0800 (PST)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5635f13471esm18063451e0c.14.2026.01.14.07.11.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 07:11:05 -0800 (PST)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56365984503so4115325e0c.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:11:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUIJKeZWPwEq7IySu3sU2/zTrKLnqlOSgvsFiN6KJGtWUcTxz7PVS14UtteyAyItNZKaKxfvVlqnpQK@vger.kernel.org
X-Received: by 2002:a05:6122:3113:b0:55a:ba0d:d84d with SMTP id
 71dfb90a1353d-563a093abc8mr1234630e0c.7.1768403465377; Wed, 14 Jan 2026
 07:11:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <2483415f35dabe42ba3c35a0c50a3e9b28dd724a.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <2483415f35dabe42ba3c35a0c50a3e9b28dd724a.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 16:10:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVrr11wufh569kSyCo72bEknos7UiuyxadThRQmt2_5rQ@mail.gmail.com>
X-Gm-Features: AZwV_QhVNfKomHEkvFsmWk2qp5dVEkSvsae2sIrEVsngj9ZQvyn6LkRdKtdcLBk
Message-ID: <CAMuHMdVrr11wufh569kSyCo72bEknos7UiuyxadThRQmt2_5rQ@mail.gmail.com>
Subject: Re: [PATCH 15/22] media: dt-bindings: media: renesas,vsp1: Document RZ/G3E
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 15:10, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> The VSPD block on the RZ/G3E SoC is identical to the one found on the
> RZ/G2L SoC.
>
> No driver changes are required, as `renesas,r9a07g044-vsp2` will be used
> as a fallback compatible string on the RZ/G3E SoC.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

