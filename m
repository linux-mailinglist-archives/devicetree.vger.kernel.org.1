Return-Path: <devicetree+bounces-255085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A5FD1FAB5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:16:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D706F3085A5C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6863176EE;
	Wed, 14 Jan 2026 15:11:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com [209.85.221.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5C4238D42
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768403494; cv=none; b=UZENtSezrRghx9THheas9mmbaFPOSxo9V8QDLs8z0YiQMkByEgHNCXtS1eTwmUYa2mhLCP+9qbXNQf8UwFGeOvRsEqZb/Ev+vFfcfCSTVOR2NNMEUHSr8ea+a1DnQQH4jdV8rVJCCWeNAb6Kh4VMBbT1xC9GH54JenHijvB0aWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768403494; c=relaxed/simple;
	bh=+M+9z0p7l/E4nDyP+sFiFcu+HP8xpPbGwtgulKvWo/s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NmCpLiYGlYzA7wFlDKg1waHWGBJqdswTHyX5d5AYN1yiS062WVCIPLrO7wHS4JgLi9Eit4z3SDAB7mIYBSAcy63BeL76+YvZPtmrJsu6UcH+HzLgfT0Q+oFLI3WvwQxzwUfKa38FOx18k2GKXY7ovbPV4QP+T5kBgIHAbRfpvDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f196.google.com with SMTP id 71dfb90a1353d-56365984503so4115930e0c.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:11:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768403492; x=1769008292;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y2PPCiljP8mKTN3qlK3gNrjsm5ZPU3Yx8SKu0rtGmFo=;
        b=NAy7lap6FFm86Xzby9sODLBlT5LHvw5Mhfsl9Mv8mB1uvvXbyYHYiAN5hCqzEJ5xvU
         L2ZKDaVmmGlBsPkTXOQjLUFjO6X7Pp+7QCLMIG5SWM8Q1Kwr90JfhqINepi6okWkME5W
         MVi4ifoaE5NNbT4m7oTDeojkjWY/ixUnycc6Erzt3vQ360QGCRKYKTy3vo/G/RV85lwM
         9uUOhAywbZZmzaqNR+6YnDWSZQNmHqLlGasvPmVQqHr+0G7I1RFhSKfwaH/ugt+b2pFU
         RJFJWfGcW1Sz8P+Xgzu/Zjl8SmGKBhVssYGrx0khsmdSpwS5uPkUeY3/MyL0auBP8Pjw
         1gMA==
X-Forwarded-Encrypted: i=1; AJvYcCXy94u2a8Z47fCdOTKx+avAGVFVbQ3gZjO37+TRO7EK8Ah5JYLHAcuvZg1qeLxuW2RQzyVdg1nXUow+@vger.kernel.org
X-Gm-Message-State: AOJu0YxEz4rGNJUA9CPUh8nYKJLfm5i3GlqtXc1efWQeFGzk3fIIrLYM
	4m5ae48ef57j3s1rqJSp7dvT2bPYx0GMs+HfMHiLPr0//cRwiHyxVZRn71sKpoHaZ6E=
X-Gm-Gg: AY/fxX4bgNJrCjojtarYBPBSm8t0T7dkUJjH0mwr7LBZK6KNARBZQzkUq/F+t5OEkyc
	Vn+RyWbWxLqOdrNOKbSOX2N/pzFHGPJCKHTzhl0ia9y/iX4hP+glL9pIJN7haxd3zywSiFqvqTf
	WAridNKv4tJIme0wCA6+1PVJKgdUN3sIHpJ1CcExcFy74ZfHXFfgDudJAwLLYkv1grb0w+IxbRY
	WUwAC+5E5ISU514l2Erc/jtLhPKSla6v1XKBlcyAdOvslzROMgynwRMOLZG+MTJFkJK2cGyxiuw
	nmXorU+7Pyiy9coS5DU42mFF2wviR/gcxwlzjRRCMWzXVjcmFNd/2pBDpYw0o7Fd628SVhp9G0u
	o8CYcaukn7kgu+raZi2SJzSrmAo8iFcxJQ8ezo1aoNGLCnNh0AVcziU8MK+9fFMAJs6Obd1G5uO
	CKbSNbw4KEo0uoYTBPMakPF4Ob2u+O4sxBcrDHsR3GdJId/SgvOP+/
X-Received: by 2002:a05:6122:548:b0:563:7268:1717 with SMTP id 71dfb90a1353d-563a09c8df7mr1182745e0c.11.1768403491767;
        Wed, 14 Jan 2026 07:11:31 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5636dc36a20sm14477359e0c.13.2026.01.14.07.11.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 07:11:31 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5636784883bso4328379e0c.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:11:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOxMoj8ZD8x4B+9xuHeLynryE4F8/4xAa8qLlPapup4wWpBETiaRILR2DDdt3A/DrNFFU2TSr4tAzk@vger.kernel.org
X-Received: by 2002:a05:6122:46a2:b0:563:687f:360c with SMTP id
 71dfb90a1353d-563a08080a7mr1323779e0c.0.1768403490712; Wed, 14 Jan 2026
 07:11:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <7b30184db6564f61742594c83c3da072d15a2576.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <7b30184db6564f61742594c83c3da072d15a2576.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 16:11:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXj0_rNtvgDGnaE=pnenFpHi_Aa6dx-Ej6-42oweEv0Kg@mail.gmail.com>
X-Gm-Features: AZwV_QhWXdjW_YU4fjdNyqOSb6ulXkw-i8mzGwj6hWPbLAjpoXOZB9H0uqSzcLg
Message-ID: <CAMuHMdXj0_rNtvgDGnaE=pnenFpHi_Aa6dx-Ej6-42oweEv0Kg@mail.gmail.com>
Subject: Re: [PATCH 16/22] media: dt-bindings: media: renesas,fcp: Document
 RZ/G3E SoC
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
> The FCPVD block on the RZ/G3E SoC is identical to the one found on the
> RZ/G2L SoC.
>
> No driver changes are required, as `renesas,fcpv` will be used as a
> fallback compatible string on the RZ/G3E SoC.
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

