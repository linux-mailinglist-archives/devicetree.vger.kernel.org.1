Return-Path: <devicetree+bounces-247474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35340CC7F8D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:51:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 53A603044A4B
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:46:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AD1133A6F7;
	Wed, 17 Dec 2025 13:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O29D9vXF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E678030DEDD
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765979135; cv=none; b=LbGJ/2HKorJ8OQc5ccu4pEDIl8fV0hZofowGGrRLX4sYD5HUT8PqE+il8vsEaJRqOniWLESZtkoImIebtB/8/7pnF+OF6sC4cGINUL/nM4lTBKRYN1wPHXXOlwBtGKMu2S98NZE2wWjg9G7WdC8DPAWj2CkvFJz62rNHNzA74EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765979135; c=relaxed/simple;
	bh=XxM58hwtj22qUnWvSSNaFcxRSb7qgw5fmCYbYwzSuMA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZrMSmS3jgSpCG2rvMQki87zHpPKuMlCSpVRbUK4S/sB+I6QvXtnCX3C4AzWfg71Qb3AqKSI27L2JFkwgxnVV7HINWZV7E4tKlPL+vuNJYrnTtmvJyhDi0t7fvMhC1n5IMetpRJK5K+a2tXymMrz3VdXRBkrfBDbm7QvOA+JVU4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O29D9vXF; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-37ba5af5951so51427841fa.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765979132; x=1766583932; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FQgu+jrAqJ7zlM3HKiPD0UlVUjyuw7aGjbTjK4hdIhI=;
        b=O29D9vXFvj00cLDYlivHBmr1U0hp1bM+Mh0gF3N6X5uFFMDpT45HPNtU1lZmz5W5Gn
         gjM07rDtNgrdNhEDb+wtFs2KLrR2xaey3qv2uKICn2L+3TBa4O7zdnu37+guBPgSMwz8
         ofdQkXt+xpGZUN5lQ6vOgwCZbW9Ty7HAfEYltvEAEl9zyf1hZxXmaVnzjb+T16FZmVCJ
         jBYgtUoOzJ3elqWEsJ0yNvA25QF7tcHqKIY+XwCnCYW8bTxdvCi92qCJmLA8QOV/C9nx
         SZSM1wvTiwtInaLXpMOSNdGA7KxNMa6M1VreqGfSX9+vjDTou4saRRxR6jMae+9MS/Vf
         fLcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765979132; x=1766583932;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQgu+jrAqJ7zlM3HKiPD0UlVUjyuw7aGjbTjK4hdIhI=;
        b=u7c2hxNTQctrcJb29z4aND8GbxHxQTYVeR1iGPoDbL+T5iiwks93KzZU+kh4tEAkeX
         zvSqXnjs/t+FWXsDwUXnggG1l6EgPIixQU4E8wx8c8rOPDZVaj8lw8Jx4v1UVkVysT8j
         VQmXo6CRQqLSBQ3tohUZxO7qhNJ5luctnK47F3ZPOiH7F2Vs6WtF9iP8ThJ4HElSUDkA
         LCJXKCbt64uLzx5Etc++WYWln26NTfHlJFjQncHGmApFQnz8OI0nmNCfmm4cBUOq3nEp
         8h1oItJFW32nBG6FaVFaraAKLHQuTDE+8eqid73qAABllACfgbT3B8BcVlspLfM2b6Cs
         SAyg==
X-Forwarded-Encrypted: i=1; AJvYcCUlGD4VeW7BFvl2CgcbP8yXH6gpLIcCH5iiUSOhN0qPV4tT8eEcAcT8xIoh7hHwdxN6e7AWSQ1SOJuN@vger.kernel.org
X-Gm-Message-State: AOJu0YyCvi8UsV7ebBOeDJC4Tvd3+E8YdrMu4vNmr4Tok72AcjiqFWC8
	KlTftj/bQO8yOcIVFTVw/X51i9NLeJYHIcfvZQ3VEOsG23O4X4grplUUtdSNCpS+acYLqV1HgFs
	W8y40l3z/WRd9i0XkYC9ThNHqvHGCMEuuABQZGEBduA==
X-Gm-Gg: AY/fxX6LW+0QnJdd8L3U944zBOwYgczIsfUq6BhsL6IHsNphZdGjy1SVCTiXXRtRnZb
	9jWGix3nX8cpWK5QfiahCH7DaBzxxtyvoE+n/t8p+cMKNzZ7Qy/lv2BgNPsyaRWl0aiUJmo6Bs3
	ziByrHMraSYACCE3HJ4gDsgaFGHfQstc7cMUBG7E4vZ4NU7YiavTIOmxj8jFA7F+mr/NSlEtxuX
	r/LFxrtsJcJE04Ctnj1onNXuXCvJkkawqxgz0/siGPKr33/LnfRi3YndztTmJVZ4h5vtWc=
X-Google-Smtp-Source: AGHT+IEfRhud0B1pWkJS/wAztFbIm6G//tZdQx6+V419o86fVM7qO0JyYtfpWDj0XjAhgMoqylfDNYlBEY4htHAkmmQ=
X-Received: by 2002:a05:651c:1546:b0:37f:d484:599c with SMTP id
 38308e7fff4ca-37fd4845ca8mr49758851fa.28.1765979131922; Wed, 17 Dec 2025
 05:45:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215212751.3321878-1-robh@kernel.org>
In-Reply-To: <20251215212751.3321878-1-robh@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 17 Dec 2025 14:44:56 +0100
X-Gm-Features: AQt7F2qF8MEC-0OIk53PCkMR8aldrM0ymw1ppI8HGcJSnzd3fJG95KQBdaDGnfc
Message-ID: <CAPDyKFoyxOBgqQTTJLFZ5W9iZj0gEiBDAT-V3h_zejqbG1mx8A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: arasan,sdhci: Allow "dma-coherent" property
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 22:28, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> The Arasan SDHCI controller is DMA coherent on the APM merlin SoC, so allow
> the dma-coherent property. No reason implementations can't also be coherent
> and there's not an SoC specific compatible, so allow it on any platform.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index 8e79de97b242..d6b6fa6dcffb 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -121,6 +121,8 @@ properties:
>        - const: clk_ahb
>        - const: gate
>
> +  dma-coherent: true
> +
>    interrupts:
>      minItems: 1
>      maxItems: 2
> --
> 2.51.0
>

