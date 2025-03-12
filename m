Return-Path: <devicetree+bounces-156856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B50A5DB55
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:25:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22B9E1771A7
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6001523F385;
	Wed, 12 Mar 2025 11:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EV6GD8r8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DBB23F382
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778695; cv=none; b=Gxn4JHC+70y5cldwW0z+nPShg/pu732pl+fB3eRiZnvh6/l7xfUsBKpgSsWgh5T5LksJ7CvAFFJ+6C/m/rbo+GaKseD4l8v4yiN0pR2O9ISxGD4vXf1mjrG01hLO/swJYwCqBxIt+/QwDy3+x88o6+Ii9E8tC+4ETOGRUSOnVwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778695; c=relaxed/simple;
	bh=UcXaR+GDawWoQaNRuFtyapQxtDjf/bEMrcOSC2FkQ1I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kMElBVcOZg1o53hMg0cAGHaqkoasNJVz8KsUpTE9Tzaxgt0F1h2NItK+6A+NfSfezGspf8ggxZZ1FGY4XBD+Wc8rIzHEOZEW2keoG6K2KxlDQBZuy/v/BVFK8yiYce+GbsPmOhmEnzRFH+nKxuUVFtc6aWU7LDOarjTKwLZcnAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EV6GD8r8; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6f6c90b51c3so64435207b3.2
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741778693; x=1742383493; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7OnDqzR6YtSLwONQoTdDT31SC3+7fyj7xPsRU2pi+G4=;
        b=EV6GD8r8zWgHufoxYZ+QpSkBrjjETQbjKZbtbg1/XRRs/CQxraYa/5QiZA6ALJ32ap
         d76NiAu1xvHZlhEoRvliWzkoNx8WutESFw00br4RUBbNCCvEThVl7XgYMU6Wij1baTnC
         Cbi222c/12b5zE0kgwsbcwxI325PfDKUpQCKkGCzv9IkGUZ34QmpI/Kn2dtZ8fry1tEA
         ODWYjs8OzpE8ND+BOz0OpKjUc0GgxRINTtuMB8Bc9Z+Lj9Akgo2maSNMbFdaxfvS3eyb
         FbCk+x9EN7cCEqgsi8FV3cg8smFobPUJiLfjj80wNNckyjiVCPddiR8lnvZ/9qyXX0VC
         jFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778693; x=1742383493;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7OnDqzR6YtSLwONQoTdDT31SC3+7fyj7xPsRU2pi+G4=;
        b=d8j1e3rpEUSlf7R404hx48Y/k3XLJB1Cn6XeNeaKMtEUWILbNXloDnhpSjHtFhUZpA
         USeuj9FFnyaJhcsRArZexz+C5eDdmr3DN8x5VWr6soXTrpuctaeaOKVb8xiQH6GKDKoV
         1w51Nv7bjbJZtlYiuvp7LoW+Y8Pe3jcO4c3bkhxrcBYh1DLYZI6fXPtjYcG3jeUcFqlC
         jWY1d/coCE/qtdsRvA85FXIUzBtZ0o6UueDAprEmbK7W7mmntgMEDZX9DMrhwTA3P5oL
         vPonfGAj/x8sZFVVZzAw4ECWRi6DUue4UbJ7SWswdg2IFWwN1xCzWkWsS56iHWZPA9XJ
         BAOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFW0aTS6PZNrC5bqtQuYx42XMaHULYpl8heZSq2fFHbRKf5X4FpYvFdRTZgTjMpYHnaRbG9DUCc+WS@vger.kernel.org
X-Gm-Message-State: AOJu0YyeeMQ0RnBgCEvIMcxeIzg2gdqLU35dMNyHGSh/xX7bbMPpNfiQ
	Uu1upoNEHW8yaCPuEJwsLiBAviXBCZz3hRFbJpp+3hbX+nYkUbv0Q2UjnLXvKKyDnNTEoc+ZOfz
	oQyMw/9RtFeEf77pWZU0XsDkcfdDJK4zJ1Kuv+w==
X-Gm-Gg: ASbGnct9kRvpYzQFZpi4kO8yVD7sGhfeyuHAGRKAPTL2M+Zx20OZe1xECJChxdCN991
	3EexMqXypma1OurVvQFRy31a0Ixbd5DH03LnFzN4JwNVVZCxE7CfRbGnV2qfyWcffPzUGqlzQVI
	3Mtgv+veqhNgxfQsTqnyU+DFPg7vQ=
X-Google-Smtp-Source: AGHT+IHIrYfmo2j3yVIIaYFZE5oDvK+hQZ8/RGWocwnTto9a3k4qtBGozDsAeCNABMZLWFLC8+SYFjOJXfUQHYTuZMU=
X-Received: by 2002:a05:690c:3612:b0:6ee:8363:96d3 with SMTP id
 00721157ae682-6febf3ade28mr290798997b3.27.1741778692704; Wed, 12 Mar 2025
 04:24:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250219-exynos7870-mmc-v2-0-b4255a3e39ed@disroot.org>
In-Reply-To: <20250219-exynos7870-mmc-v2-0-b4255a3e39ed@disroot.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 12 Mar 2025 12:24:16 +0100
X-Gm-Features: AQ5f1JruelnoNSp1FLqFV_ATP8uAM2_7A2P1q-OWLObav93kN6mUQJG3IRna_fc
Message-ID: <CAPDyKFrmn21xksS6Co9AjLQbtq_EWC8WF=r3RSAc6nfWTT9-zA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Introduce DW MMC support for Exynos7870
To: Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Jaehoon Chung <jh80.chung@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 18 Feb 2025 at 19:48, Kaustabh Chakraborty
<kauschluss@disroot.org> wrote:
>
> This series adds support for SMU and non-SMU variants of Exynos7870 DW
> MMC controllers.
>
> Some DW MMC controllers require two 32-bit r/w from a 64-bit FIFO,
> the series implements that feature as well.
>
> This patch series is a part of Exynos7870 upstreaming.
>
> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>

The series applied for next, thanks!

Kind regards
Uffe


> ---
> Changes in v2:
> - Take over ownership of patches by the co-author, upon their request.
> - Link to v1: https://lore.kernel.org/r/20250204-exynos7870-mmc-v1-0-c87cfc72be4a@disroot.org
>
> ---
> Kaustabh Chakraborty (3):
>       dt-bindings: mmc: samsung,exynos-dw-mshc: add exynos7870 support
>       mmc: dw_mmc: add a quirk for accessing 64-bit FIFOs in two halves
>       mmc: dw_mmc: add exynos7870 DW MMC support
>
>  .../bindings/mmc/samsung,exynos-dw-mshc.yaml       |  2 +
>  drivers/mmc/host/dw_mmc-exynos.c                   | 41 +++++++++-
>  drivers/mmc/host/dw_mmc.c                          | 94 +++++++++++++++++++++-
>  drivers/mmc/host/dw_mmc.h                          | 27 +++++++
>  4 files changed, 161 insertions(+), 3 deletions(-)
> ---
> base-commit: e5d3fd687aac5eceb1721fa92b9f49afcf4c3717
> change-id: 20250203-exynos7870-mmc-75bac583c864
>
> Best regards,
> --
> Kaustabh Chakraborty <kauschluss@disroot.org>
>

