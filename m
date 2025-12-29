Return-Path: <devicetree+bounces-250162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C080CE69B8
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4689130078A3
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:52:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD7C72D63FC;
	Mon, 29 Dec 2025 11:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PC9nXtEd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB192284888
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767009172; cv=none; b=lsgXfUFrR/fiCbhhHMldg7qhFQT091E6EybXbZsce2/mySqJg3xlLN1GDgOaegn4lehwW3zCi8tJAGXxfNMinXWi2NdeuZzMQKCOpbxI3O4vFhxLrgjbo1AtlInSoWWE/ug0mV4jFA4e2QmFAZ0DDLBmOTctWYp9K0MXP0wYgec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767009172; c=relaxed/simple;
	bh=MCVCJQtq5JZDtglmKJC6Pd+tnRm9KzM/48l4L6WjwZQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GXjTD7UF858+i5/lw0flWeHANskLrMFYXVYJW3eIdXIZLYsB04tRpbhvWPkS4IOzArYGY9hFk+BlIOdPZTWWYWq+ujB/CP7cdwt65GSif0j797jQRgVDf98qFAJPCsTi9UnSgCApJVy/OEIb47VjHXIjDeE+sXmOBpmVfvCXXVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PC9nXtEd; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-594330147efso10828318e87.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767009169; x=1767613969; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yyAejQoJ31yxLblaGyJA0UaK0btri2z1qopeoq8fo/o=;
        b=PC9nXtEdjqvpTLa7LrRpI6SbWH0hNgpi+svMTpZI2SI62FGRHK0ITuhjERVjPjTBFx
         8EMTLuyBKpftc84EaLSgI1JexB03PRu2Il1IOw8w8xNjsA7bW7X9TKc+Lr0gHAyxb0+p
         SWwD9GiWDa0/mNP1rRpdLmfyqFqsPALSo2dxT+OzlGFbjEqDbwAKkfXmnbmiNyPRowZ9
         ZxFHEoD8aqoF4kRUYefDdDfvLexvna4boDfvCRtVhfvvNGC71Xt1ZWgTwvghZz0cFJ/M
         sE4SnNYT60MhZUhJW8PNYb/5zxP/WNbC/2jkO9M+Brm/JSL2TyerCc8fTMLQWmjmG9FI
         ay8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767009169; x=1767613969;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yyAejQoJ31yxLblaGyJA0UaK0btri2z1qopeoq8fo/o=;
        b=W1j1CzAJR6nF55TskfwQVaxUOPO7/gOXopWdv//7IO+xQuq3zhYYeq1U60NzeTRoFJ
         EY+mAfyvyU8s4yEwy35HYT0GnLSaeLwfRTuC42VI4OEANXn182nQ8RFiAq6G32oeEKjv
         NneWUfSuxKCcqInw3jChIn35VOl2aKcI4b7wnhh+7YKMN8MO5YT6lQLDOozHjNCTrYu9
         JdJRe0atNMWXaTQH//SxY7atDdYc7kG06nB0/OgkdLaPpEN1hB+xUu5Gwb6AnIHwulrt
         foUeFKsuulPKUKYyVD/xYpqeedn9VwK5eIIC6vX5YFUh19aa4B4XAVgt5guXQgEgspsm
         Lkjw==
X-Forwarded-Encrypted: i=1; AJvYcCWduhiFbqfQ2t2V7q+ehBIO+19IXqN07DPKZyqJJnRMCTETyPvEzYPheWneHV5knrOYN5ZISYdjx7VN@vger.kernel.org
X-Gm-Message-State: AOJu0YyL+7/PQHcj4EaUBp/Wn4MBJ+jatslT+Ubk7eH0S0hQg7sAXvF3
	PedxRJnJeZmw1Z+LS0ofX55GI8JeGYRrk1GY+CR2ftxCfajlLdObCSpx9CKwNxKgC4pzJE5yUE1
	Qbjz7ar2vQaPieIXKt9MFqAQxfWkhvY3IIIWzSCrllg==
X-Gm-Gg: AY/fxX5/RJBbWLrNvRbYZL3JVhGRbCZNAfIRfYXgqViccL+OkmWSULiJFhxmu5Awrzi
	Ns+j+HxrVZt4A2GurQxVfc+zLqkxdiHMGOTBt6WctzHLRm1muwrCe2iBHnTndicrustQe5sh2ho
	Os5b7qfRfwK/3XIrUQHVfpzC0lZMwLQqD7dftD7mVaMktnipA+QQJBkoynyi+dF89aOgOyw3f8y
	J8hmoQreGJAr8qBaEQbyBcrU+2E3uszPzLzsGcUamWE/9JDY+8xp4YM2VVvlkezDlMY9GN+
X-Google-Smtp-Source: AGHT+IGXTnQvaqHS0G2iP51aqu1mvuIV4jhgR6at2cQP1b4/0bJHJAEiAFHVEV4s8SZhwvY+c3cbe65DWXNr4JmMalg=
X-Received: by 2002:a05:6512:3686:b0:59b:4213:7587 with SMTP id
 2adb3069b0e04-59b42137644mr469217e87.27.1767009168978; Mon, 29 Dec 2025
 03:52:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251220-mt8196-shader-present-v2-0-45b1ff1dfab0@collabora.com>
In-Reply-To: <20251220-mt8196-shader-present-v2-0-45b1ff1dfab0@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 29 Dec 2025 12:52:13 +0100
X-Gm-Features: AQt7F2qiYKGEucbLF3l0nxkbcDv5up47FHRBhmipPDgxy8BIo3kAL2HBIUAOYlA
Message-ID: <CAPDyKFqkPg5rWYk7cwDywRn_pexQhd2V3R63atjruJnSpYxfZQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Make MT8196 get its Mali GPU shader_present from nvmem
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	Chia-I Wu <olvaffe@gmail.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 20 Dec 2025 at 19:50, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
>
> The MediaTek MT8196 SoC's Mali SHADER_PRESENT register does not list
> only functional shader cores, but also those that are fused off to
> improve yield.
>
> The SHADER_PRESENT bitmask with the one fused off core omitted is to be
> found in an efuse. However, the efuse address is considered
> confidential, and is not public knowledge.
>
> The MT8196 GPUEB MCU, which does the power management for the Mali GPU
> on this SoC, knows and reads the efuse however, and exposes it in the
> shared memory intended to communicate state to the application
> processor. Reading the bitmask from this shared memory area is the
> vendor's intended solution.
>
> This series models this in the binding and implements it in the
> corresponding Linux drivers:
> - the mali-valhall-csf binding gets an nvmem-cells/nvmem-cell-names
>   property to declare that shader-present is in a different castle
> - the mt8196-gpufreq binding requires nodes to expose the shader-present
>   cell
> - panthor checks for the presence of the shader-present cell and uses it
>   as the shader-present value if it's found, instead of the Mali GPU
>   register contents
> - mtk-mfg-pmdomain becomes an nvmem provider and will happily serve
>   queries for the shader-present cell
>
> While it would be preferable if we could read the efuse directly, it's
> not possible as things stand, and insisting on it will just keep this
> hardware from working in mainline. Running a GPU workload with a
> SHADER_PRESENT bitmask that includes a faulty core results in corrupt
> GPU rendering output.
>
> Modelling the mt8196-gpufreq device as a nvmem-cell provider however is
> not lying about the hardware's capabilities, as it truly does provide
> access to the nvmem-cell, even if it acts as a proxy.
>
> From a bindings and panthor perspective, this is also generic enough to
> where hypothetical other vendors doing the same thing (even with direct
> efuse access) can rely on the same cell name and implementation.
>
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

I have applied the pmdomain changes in patch2 and patch 4 for next, thanks!

I assume the gpu changes will be funneled via another tree, but let me
know if there is a reason to keep these changes together.

Kind regards
Uffe


> ---
> Changes in v2:
> - panthor: move to nvmem_cell_read_variable_le_u64
> - mtk-mfg-pmdomain: put of_node in error path
> - mtk-mfg-pmdomain: remove leftover stray of_node_put on NULL
> - Link to v1: https://lore.kernel.org/r/20251217-mt8196-shader-present-v1-0-f6f8f3aa1e93@collabora.com
>
> ---
> Nicolas Frattaroli (4):
>       dt-bindings: gpu: mali-valhall-csf: Add shader-present nvmem cell
>       dt-bindings: power: mt8196-gpufreq: Describe nvmem provider ability
>       drm/panthor: Implement reading shader_present from nvmem
>       pmdomain: mediatek: mtk-mfg: Expose shader_present as nvmem cell
>
>  .../bindings/gpu/arm,mali-valhall-csf.yaml         | 14 +++++
>  .../bindings/power/mediatek,mt8196-gpufreq.yaml    | 13 +++++
>  drivers/gpu/drm/panthor/panthor_hw.c               | 36 ++++++++++---
>  drivers/pmdomain/mediatek/mtk-mfg-pmdomain.c       | 59 ++++++++++++++++++++++
>  4 files changed, 116 insertions(+), 6 deletions(-)
> ---
> base-commit: 638148c6ffa31d2e4958d51708ff3675221e2da7
> change-id: 20251217-mt8196-shader-present-e2dc3f97fc74
>
> Best regards,
> --
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>

