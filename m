Return-Path: <devicetree+bounces-229734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1025CBFB3CE
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:54:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD24519C1371
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00623315D57;
	Wed, 22 Oct 2025 09:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MrKHwu/4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D31298CDE
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761126887; cv=none; b=qb3jkOD5zW/a0BJkcpXS/2qG+E8zyX9CBpRowe1Yj2h4TmNqxobdOcMNfwnUpuDeWgjRzI5a6aMTiGjZ/CjnCuoAR0A/k1iCUc2kN070JbKlK8UCFT4C2GpsHSp8zv09s27ngwf8SAs8xH3O+2RxTA6u2AqBDOgT34njCFlZI+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761126887; c=relaxed/simple;
	bh=HB1y7cWvJVBaffceb4N2grQDkRK84MOxaGljtCDtKQ8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GxzjEI4BFuHzDz8OiHyiuYf1YUZcEUL72HynttX1sQwgbg/aqHfAc2nZXlpM3+zvKloOi7ix6zahueZeGivKb3ZfqHr3MoX8J5DsiaH2Ri71A95BEUUUM+hh15byOtd05zzGprOIEHKM9c4786kzH4RvzZU8/G+/vVKjsRlx40g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MrKHwu/4; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-637e9f9f9fbso11751621a12.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761126883; x=1761731683; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/BE3p8f/tb4AmnzEBEYSIcdIiv74xFJHBlZnCilZ3pE=;
        b=MrKHwu/4HGuNYZRe9NfyEn/r6PYiIzIyDjhvEywd38xFpAjXvTbeBjxbJb9ncwGMA7
         BmgGTxiqVR5ujIx2nyrueqN6Vh5Hr+uOqHnz0b69YfDJhqlU0ytNKMLcwXeRkyYhayUU
         NQJCY1qYsAmw45rDACQP/EJfWr585ufAc2XgU82MNMIJJUanEEmDDwJRHiWea/JR95f4
         2zO2l3ZIjV0dRlmrKr8VFcokTlx7n2bW4aTaSpV2xSKY5/Lrz44BVqx25oFv4qVu4ffa
         qtHre8Bn/CTMSJ/rgPL5luimvWFH429lu0yN4wyfxjVou9EZbRo8f/umIGycNlEl2SmR
         /LMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761126883; x=1761731683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/BE3p8f/tb4AmnzEBEYSIcdIiv74xFJHBlZnCilZ3pE=;
        b=lalzO2Z1nJX6fpgr8QNpZcG09x2sYcvT5UZV2i8EGE+UDx2wwkhU2je1bzVOpI41pa
         1Wmig5qOXE74SKfgWe2SK6Jy7EJRuZXW2Ma4vNnQjtaTzwLClbgstMvx8ZtwKiWEYtw8
         FdKcXH50Xqt5IVGlAbvFFP2FnPcCSnzJZGMo2sf/hq3UVF1v+Wj2NzicjSyBrp/r/rm+
         QwZms6DAdfL1Q2//7tx3KucyrQrszYTtGaioy9HdxAGXUhsNCQXEbuQLbbmcgN3/gq/Y
         3W17Q3N/TnbCng0exNjGyaIecD5qCMDNvmvbMT7wt8YrDinQluBztT+F0EyaDalcGIeY
         60qw==
X-Forwarded-Encrypted: i=1; AJvYcCWdFNiMfdGXywoqXyfOZ+Qgge5NEqlVIYI1+pErkAkz+HcqTnF0LO4YEci6PaN4II1G6D2zuwvAsQnT@vger.kernel.org
X-Gm-Message-State: AOJu0YyyE7nutPTHH9pWs3zV8a+ha80Du5RqKF6CXZ4Rshrpt103ums1
	O47I+8n+1hTNx8MLZuNzASM//tjxZ9raPHtZXjZlRTXIhwi9on/Yw3CcMwngwc8OR9jMf6HM6Oy
	AaGLGKnZFaKT3gjnQ6MCiNzPnUYGDKw5MgpIjcOQ4gg==
X-Gm-Gg: ASbGnctuHRaDN1BnCnBon+vQnIDB+N2+3jWE6+yOXGoe4ipcaHT5X9jg8FE6jC+HtNH
	xDHmfqdEDhlP2IQhbRXjReM0sDgXn/pAsscnnVBpGevKTKIUV7uZO9Bnb540Y1vZ7SDZOqfK6Y3
	v46qZODDz2MFhw/7JQcT/SGYaz1A1iQNX5Hp6nJvTWdR6OLwop2J0UUoaZpJrSc2H9wL84gL0eR
	i9f4wnH4Slxa8/uX/0pkSe8Ya4fPFGfvO50q9oyINYd9PuwkSKncb0i4iFIMlgfK2VPtOkG
X-Google-Smtp-Source: AGHT+IGxvyYJRi71ypaY/f+2tvs/h/Gx3CtsJRVjqydJdRQpedqCN+n+dBFxLmYoHUas/Vv3sBj08NYXtnVui6clXA8=
X-Received: by 2002:a05:6402:5212:b0:639:dbe7:37b6 with SMTP id
 4fb4d7f45d1cf-63c1f63081dmr20417683a12.3.1761126883450; Wed, 22 Oct 2025
 02:54:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251021222955.193323-1-heiko@sntech.de>
In-Reply-To: <20251021222955.193323-1-heiko@sntech.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Oct 2025 11:54:05 +0200
X-Gm-Features: AS18NWAUdMZHC3UmuDzl3MkQoA2Eup4bT1W9-ZX5g9xcPcRU8J3IcH9rg1TAlQY
Message-ID: <CAPDyKFpGC292uOpWh542_=yS2XP5tAUWiJhj6tp_CPVrZ5VKkw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: rockchip-dw-mshc: Add compatible string
 for RK3506
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 Oct 2025 at 00:30, Heiko Stuebner <heiko@sntech.de> wrote:
>
> The dw-mshc controller in the RK3506 is compatible to the one first found
> in the RK3288 SoC, so add the RK3506 to the variant list.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Applied for next, thanks!

Kind regards
Uffe

> ---
>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index bf273115235b..acb9fb9a92cd 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -38,6 +38,7 @@ properties:
>                - rockchip,rk3328-dw-mshc
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
> +              - rockchip,rk3506-dw-mshc
>                - rockchip,rk3528-dw-mshc
>                - rockchip,rk3562-dw-mshc
>                - rockchip,rk3568-dw-mshc
> --
> 2.47.2
>

