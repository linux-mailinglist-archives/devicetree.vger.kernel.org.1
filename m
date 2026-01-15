Return-Path: <devicetree+bounces-255695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A14C5D25B84
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:24:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F3CB5300791A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA513BB9E6;
	Thu, 15 Jan 2026 16:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="msLNEHfB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483982BE647
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 16:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768494272; cv=none; b=kgOLKLt5nFmlMm/ZuhEscVlJ491St/k650EOtkCY23kFl3Tu0OZT0RAdBBz2kb9FqX8+2rfnBpOQnqG9ag/zx0eniUErYtqtn7W2S60Hc+mUfW3UgndkKMtIZDpwHSKRMIi2ZTb8YJkEnKr2ouUsUQw9WCZFULQxEdy/kcP+4Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768494272; c=relaxed/simple;
	bh=k7lNDE5gCSmeRgbwOBkK/9sHNPAfd5pEa5j5lNfKJws=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=adxsn05g8+5H6zyWY+YbiW3tyPuFjbA4kYpqAx3ZtLkpNm5Js7H1ua3f9wvdqeLJPX0Vz+1SPVZ/kntwpsXDVE2Ef5bPI3jYUyWngUalIt/NwshNYBntFINGLnfTiivUjTm2kRroUy2+kHsW2iCKmMmNJxSF7jFOwiHFdROr7No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=msLNEHfB; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-382fd45a1feso9921611fa.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768494268; x=1769099068; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UcPjMQs8wlZ69D72bOHJHv8LmpfNACepVb1D7xG/5V4=;
        b=msLNEHfBm8T7z1hOrKA17neRzVkyOrmk1NvuvMcmJqgb+rg+LVvlzR6GMUunQvhcp2
         R5g+ToG8+/rnSm9mBZ56uIklJVmlC75lI8o8dO5VwtE3H7z9nTMOOoGsnDB7jYa/oAZY
         GFsFjxaRxEQUrX0+3GGtrX0jiJOnzgkYNoOu7cjoNvkNkto8RdYLkRN3izHaToxzYmba
         SR44sqUP8z+96LABZSAld9cnxCGlxEGG6VpB/I97EnJqpx0nH9k8vvCMFzKIFCycb93W
         JgDE8fQDzgFfbjE1O6eHsWUPuLKXosjIfoPT9xkewZF9254KNuKNouZol37+lzXabMcG
         LEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768494268; x=1769099068;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UcPjMQs8wlZ69D72bOHJHv8LmpfNACepVb1D7xG/5V4=;
        b=xQVkhvfh7vx0zUp2i/gBO0QR7fzEb93kg/4SXKeX2i4uNliLzE3gGytXq7clUhWFPo
         cuYOtVy2wEgBGTdgwOO5+2BwNGZ/mPuAA3+0m/YCUEKEFdx8LXg/pkEqHwZLCIsO4vHw
         y+HukTAZNduUkYRjisWlvOFUTtQDc7OSAoPwmTZFsPy0Eu48dtgRj43C7dAiEWnvkZq0
         Vfeldv/kEChlhY4fwoTcr7gBOXzM88DMx+hBV2wUfnC5Q/Bk+F1ZaDnlHVa9z4XLN9GP
         14F9zPX0ejvDNkGtTdifnHXyA7GcMgoTi3WBrSQNL7JF8wdtN4wb/pw+v1ox2ClzN1L3
         SPNg==
X-Forwarded-Encrypted: i=1; AJvYcCVU+SYB6/FOM0MMHkh8A/OK9WhI/VKcz9mkdrB1SxpOrM+IbK77We4lmUcd4f1UdYG0QUxFXxJgUcxy@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc1MOGapA/7UdoSUkrQ5JelvNQGT2aZ6SOeFQ7RjpyrsnajD9l
	drEl3AtwkwC0G1/Bs/JxrtiD27orhXjTNX72g7fZMwf1G1t5NpiQr2Vd+Kadv/uTkKZFtKBA74c
	gbKDpYTh0e3aYZvAllPWEXJZCQXlRcYjkNO4EV9zMvA==
X-Gm-Gg: AY/fxX4Sl4ppTpXZyJwjH6wHvHGca8pOaUlvcnGW8ZYNUJjsEvYJLXfsoEVNhPOk+/R
	e1eiw8XErX+A0fIgfuBqUOnsuQLUlpzxWktEhwP4ibfb8yqZf3qKEOoyAzjpUzgDbpxMneDh9oO
	8R7uVG3VL+Q/pYnYe6TQG/Lzr8YCvNWGoMSWBPTYzd0GdobpilyUTTpKZ8G819YIkJiO9TTqWRr
	TWJB1REabTjcWPBtNncktLseG9dCBHSTkLkwFN9bfYfKzuBs9PWsNzTTK5j+qTTVNS3xBcx
X-Received: by 2002:a2e:3003:0:b0:383:543:66d with SMTP id 38308e7fff4ca-3836f09c3afmr8580341fa.16.1768494267944;
 Thu, 15 Jan 2026 08:24:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113110012.36984-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20260113110012.36984-1-angelogioacchino.delregno@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 15 Jan 2026 17:23:51 +0100
X-Gm-Features: AZwV_Qgstc2v5holxo2-uqRefc6HR54B_5kwg-eT_5uV86kY4RNFn6HUBQ_JID8
Message-ID: <CAPDyKFohjOfdg1vz1o4FAhThm_1CTF46SgrWSJuJYt3mLLJwNA@mail.gmail.com>
Subject: Re: [PATCH 0/5] Fix dtbs_check warnings for MediaTek MT7622 platform
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	matthias.bgg@gmail.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 13 Jan 2026 at 12:00, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> This series fixes various dtbs_check warnings happening on the MediaTek
> MT7622 Home Router platforms devicetrees.
>
> Depending on correctness, either the bindings or the devicetree was
> changed as a dtbs_check warning fix.
>
> AngeloGioacchino Del Regno (5):
>   dt-bindings: clock: mediatek,mt7622-pciesys: Remove syscon compatible
>   dt-bindings: power: mt7622-power: Add MT7622_POWER_DOMAIN_AUDIO
>   pmdomain: mediatek: scpsys: Add MT7622 Audio power domain to legacy
>     driver
>   arm64: dts: mediatek: mt7622: Add missing clock to audio-controller
>   arm64: dts: mediatek: mt7622: Add missing power domain to afe
>
>  .../bindings/clock/mediatek,mt7622-pciesys.yaml        | 10 ++++------
>  arch/arm64/boot/dts/mediatek/mt7622.dtsi               |  7 +++++--
>  drivers/pmdomain/mediatek/mtk-scpsys.c                 | 10 ++++++++++
>  include/dt-bindings/power/mt7622-power.h               |  1 +
>  4 files changed, 20 insertions(+), 8 deletions(-)
>
> --
> 2.52.0
>

Patch 2 and 3 applied for next, thanks!

Note, the DT patch (patch2) is also available at the immutable dt
branch, for soc maintainers to pull in.

Kind regards
Uffe

