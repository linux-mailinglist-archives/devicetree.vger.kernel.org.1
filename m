Return-Path: <devicetree+bounces-255095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 757EAD1FB07
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B9C330A10C2
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF678322768;
	Wed, 14 Jan 2026 15:15:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96CC431A558
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768403718; cv=none; b=SUv08Agw53LUKyZaqk6EcAWgZQFJFxIgqI6hY1S0Spd546Ci7cT7EJbm9ARH3J+5jpHutZhU/SlS+JrhsHc5q2OF4No/D7iq8E5FYb9uvPAv4dexTkUAYn0YFxqVpIDgjHTqMtNyYLlMp0htMEQB3EgVRSN01RnQ8o0HPCF/w3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768403718; c=relaxed/simple;
	bh=9Y389q+RPnEEFphYgapGHzjctMsxb6JLwyPIyYhxWDY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JaaA3TjALg21cX3ngdCFRH9zfDWYPg1+k1sWG5wAEp2gBwWXMt6hlX8mCnSUU46bojNm4dNWm0E59J02THiDqJx4ABnQz0UAVoiJ4gDLeKrc827kZKhwtgAD0GAFxXnnB4i06BZuRykbSO6s1Tyu/XjAlEg9KoVI6eFiubbSiS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5636274b338so842007e0c.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:15:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768403706; x=1769008506;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VIOeuRlphqUpkbTygl+t2fPPcrL2rPHxBDUM21Fb5rs=;
        b=c0tuqNB7rfX1refRPJ3Q+Vkx++BNoeUyrDTltohUW641o4eeIuivS+Zqf2h7jwST78
         sczFD6j/6bR00inqBhfXxR+pCSlbAHc+EEM93ID9EH380XhoslKxy99eOZ/zVSLg5Nb9
         CbKhzjYp0zHK0/usYBtruzDEMgy1aKnVnaunT1cB+Bmwxc8e82DD8iaIMMKVSvNjaPzc
         nRIDXyZfejF2SsPhmX91l9sIcmQYk+6HF/mikiS2wzwSn5kYNujm310OFIUniWV7uAPJ
         b9H/6nDRuu3ZbP6oWep18WcOf57TdX1QR6TDD3nnZh2eI3X8ItqeAvGYrVMpLLPZn3FY
         SzGg==
X-Forwarded-Encrypted: i=1; AJvYcCXcm0G80PPcmEj4hkGRP5bc7IXndWGi+qJUAZtMeXCkE2fOk1YJLy/S+cYlwKM41R/gH8JrUhnXuJLA@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr3IitD41b4CXps/uSfKglWvPh4SPZ4zz+w8jHEfYxkCgetiJ9
	VNCO4y0C/pdutiDVy7Ls7dTpAuDGS6XzMtFrYW3zsQl552qwaq6vqXj3+kjpLmnK
X-Gm-Gg: AY/fxX7kwc/FF3kj4FkmxxF0dc89eXKvd8FpsxQnIPxGMimHJOP6tLFTGWA+wmfQrOh
	/RegjeaT4AGv8/BP2M8Ens4RMQ1z3w5/Yvtk6XIqW1Fxa3ZzMnmjFmGn2nd79ONQ0YtodHAp92n
	oXu092DeiDpR2oYYxUM2gACw675FTKiS3fWY8UKvhu4WzdfvMxWGSTIFgzo0OtGqWIFRuiWjVnP
	M3WRawt2DPMcmWBV/WsLh5IByjCgSB2fQNd2Pn0k9Lm/hR0byCUy5N9qbGtMflJnRA72SJyab7D
	lEf3MUJZhLImkVg/uP82wjkl9o+Z+0xNVmSDuSb1niMg1XlBlD3gf7MoGAHvsYBC60qF+dldfgJ
	ugULdJY2qFKPxJiG/7L8mHh0pRg8OnKgOIMvsC54oyP7sib4kg1iVWTTtpv0lVkK1M/GX/KIdbN
	VC/sLFOdnOI0vIqcovPokYS4Ivu7nW8nIbVRJ6g7VJGDOlOil6jASv
X-Received: by 2002:a05:6122:4589:b0:563:45d3:9b1d with SMTP id 71dfb90a1353d-563a101e51amr1167955e0c.9.1768403706448;
        Wed, 14 Jan 2026 07:15:06 -0800 (PST)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634d9162a4sm21359599e0c.15.2026.01.14.07.15.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 07:15:02 -0800 (PST)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-55b219b2242so628515e0c.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:15:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU3crkOb3/mxdOIRH64w5MB9voMFh70yD6ByZI5dAt6KtMw/WtOUO8+cEA9C3AEmymXBpZy/VZd4uBf@vger.kernel.org
X-Received: by 2002:a05:6122:4896:b0:563:466c:2 with SMTP id
 71dfb90a1353d-56395c42437mr2778733e0c.5.1768403701354; Wed, 14 Jan 2026
 07:15:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <fd7df433130d6955983bd7187f350946e947d1c1.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <fd7df433130d6955983bd7187f350946e947d1c1.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 16:14:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXPGwrudTcYrkpCM2y8cuL3-4eDaeensKUDDZNhKGcEwQ@mail.gmail.com>
X-Gm-Features: AZwV_Qg6hyecIyDwZwQOALkySZLKoQ1lcKWx34cwqlLRfGv4_0uRnV7x2Fxw08k
Message-ID: <CAMuHMdXPGwrudTcYrkpCM2y8cuL3-4eDaeensKUDDZNhKGcEwQ@mail.gmail.com>
Subject: Re: [PATCH 19/22] arm64: dts: renesas: r9a09g047: Add fcpvd1 node
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Tommaso,

On Wed, 26 Nov 2025 at 15:11, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add fcpvd1 node to RZ/G3E SoC DTSI.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

Please merge this with "[PATCH 17/22] arm64: dts: renesas: r9a09g047:
Add fcpvd0 node", i.e. add all FCPV instances in one shot.

> --- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> @@ -1207,6 +1207,18 @@ vspd0: vsp@16480000 {
>                         power-domains = <&cpg>;
>                         renesas,fcp = <&fcpvd0>;
>                 };
> +
> +               fcpvd1: fcp@164a0000 {

Please move this just below fcp@16470000, to preserve sort order
(by unit address, grouped per device type).

> +                       compatible = "renesas,r9a09g047-fcpvd",
> +                                    "renesas,fcpv";
> +                       reg = <0 0x164a0000 0 0x10000>;
> +                       clocks = <&cpg CPG_MOD 0x1a8>,
> +                                <&cpg CPG_MOD 0x1a9>,
> +                                <&cpg CPG_MOD 0x1aa>;
> +                       clock-names = "aclk", "pclk", "vclk";
> +                       resets = <&cpg 0x11e>;
> +                       power-domains = <&cpg>;
> +               };
>         };
>
>         stmmac_axi_setup: stmmac-axi-config {

For the contents:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

