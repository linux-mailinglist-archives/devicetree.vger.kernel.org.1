Return-Path: <devicetree+bounces-248533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12008CD3945
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 01:33:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F216C300CBA6
	for <lists+devicetree@lfdr.de>; Sun, 21 Dec 2025 00:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E884A1BD9CE;
	Sun, 21 Dec 2025 00:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ObLK/bMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com [74.125.224.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BEA72634
	for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 00:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766277220; cv=none; b=ZBo7GvGwlcCLg2M/F/WB7ci2GtL7Vlvcth9nBWf3B7rzNAOEwuXEqb534hkLsVE5rZETeVT60cP8Ekg9VurX3YZKIgbMyT6/H95Dd7ZyKj8IYiGB0I7KOJO7BZ5S48Lp+uS7DDn78E1njJ090kwqY62JbUKqUvFlhrEp8uDZb2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766277220; c=relaxed/simple;
	bh=HMPSgVSQTL+epLIc/kC163AC8T4yQPlj7ZsUDuK4jB4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XSr6zeB6bLoyEQX0EImJC3FymWCb347c3sbYcqF2p7uec1Jiutcl35VD8DHxEL3gDgmk7QopO+aPECERwRyqUxyU5qBu4u/ysyxkqOUR2rYUccT7tNPgMswKLAVEPnKwHj5ImzApQDu2k3NREvfUd9fFZcPzcLmaRFTo9stn9Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ObLK/bMu; arc=none smtp.client-ip=74.125.224.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f47.google.com with SMTP id 956f58d0204a3-6467bed0d2fso262797d50.0
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 16:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766277218; x=1766882018; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8G9KmswsznvRwWx5QwQoiucqBCNKeB6cJ130wl/F5s=;
        b=ObLK/bMuYBq2EEpGmODMAy3+JxaEEH1OsKwNLseeP2BaY4hMc8Ko/oeOd2gwA1udv+
         1Gy3wQpaYJNAD0hSdGZgTuTtGYHRDu0dxXF7R/UuSUWR/mv/BJWGsylGMAi6qpzb8Bvl
         U6N7mLn0HJdvOSk/ZqE7+rzllZFplqB3sUiYYPKJBq0+FJJobCHNfAR4R0o4ZalSgC0A
         gbaMw4QJ6FGQXa/neBtGga0wDdIPjTRIzBsdRcBo6SC9+xhJQpklb/iTiEFSlvthm+3T
         HfxZaqxjKNYxA3En55P5jc1x+CaVVq3YOCCZoT3CqsUHiwjTfc1CVszATmq2RmQv0mm1
         KB0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766277218; x=1766882018;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X8G9KmswsznvRwWx5QwQoiucqBCNKeB6cJ130wl/F5s=;
        b=Z8vbeHIhbMlELnq6mS5cbYLImFrDJTZCbTm99ZjCq9a92b24HTWOt3f7NqDazXZQo3
         p1/UqakLmCfDIMgZ1wUSY65Mt24SQAI6A8uOCbAYbrPqnMJ3No6dgl5iaA3ezKnT4UfQ
         0aIjCrJD5ZtN2dKPcSTW5Flz7Bl6tzeLzJMt4c6q58xYazZ2cdklYYdA1xXMV4kA/7Gh
         4l6aHw2eu+bg7s6mWKqpvoCu4TK0/xBluHPkqBv7XraXN3uGUTTW6kam69qUWch1w46d
         8G2kEtyzGrGPQWcjzXOtBOi01493itfFBv85g8kgIQ3aAUQR4+5aGnYHO+jNwznV+wT9
         kZSw==
X-Forwarded-Encrypted: i=1; AJvYcCU8ZCOgqGPAT0DlmMa4hzgwNyhGY1FfcZYd/rPKXbzrcmaAXuzeeJXFwSF96kjq99H1U7ZogtqB2O4+@vger.kernel.org
X-Gm-Message-State: AOJu0YzNLZL9AAPGNf6WDg0oT6cQfhyucxTUB9TtupJzkx59051QlGJF
	Fp3F0L1vVKhoGy2CNpA4aQ6qVh9Cn4sWWR944kHHQjvFvfVjE+w4K0yCuHv67B+9Q0TGLFZ3Bgj
	/meK2N/CHZXk08Xax9LUPBHlbIws+0nQ=
X-Gm-Gg: AY/fxX7smLhEaE848nSxIb8CNSYayS6HluD2E5ByydnqhHKpQwkMBSnN+M+g/3zyHC/
	T7EB79XO2z/luAe3bi1irrn03QjK/JKq7NR7A3yPNF65I5C17VJkmeq6V3IoYBqoBkVLy6TnmRf
	dFWxT7qLTwcDsvqKIw7Wa+NBejSJC5NKSTAgRNNcmIsiXSITDulmeVVTtXexFvck1wwnM2NVHt5
	FjD+vZ+K6LxHwwHAkRRutirpbo+CCvhVGPiVuGu+Q/F5FaeZkzBZNC5u38hKDR+Ws/HD87AunZ9
	VGo2K0UE6f6/GQE4fDV6mEVeqnIz
X-Google-Smtp-Source: AGHT+IF+DcP7RBnj1eO65Ay4KAdaw9prgtbEqd38CqDRILia9eh90RWgdc07UopBt80TakLnfpkNrhhTAdF11Rmi1Ew=
X-Received: by 2002:a53:b08c:0:b0:644:6422:cb2 with SMTP id
 956f58d0204a3-6466a8c09ddmr4928743d50.47.1766277218122; Sat, 20 Dec 2025
 16:33:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251220-mt8196-shader-present-v2-0-45b1ff1dfab0@collabora.com>
In-Reply-To: <20251220-mt8196-shader-present-v2-0-45b1ff1dfab0@collabora.com>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Sat, 20 Dec 2025 16:33:26 -0800
X-Gm-Features: AQt7F2pQeCDszCkhBlVBNoYZ8W1xv30ESuUDKy-HkDBic1PvCA7PvceQ4heu6Pg
Message-ID: <CAPaKu7QST65NPQ7rZAGhqLsb4FN21D-rOvUf-UzgsBCrOv1skA@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] Make MT8196 get its Mali GPU shader_present from nvmem
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, 
	Liviu Dudau <liviu.dudau@arm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Chen-Yu Tsai <wenst@chromium.org>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 20, 2025 at 10:50=E2=80=AFAM Nicolas Frattaroli
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
Series is Reviewed-by: Chia-I Wu <olvaffe@gmail.com>
> ---
> Changes in v2:
> - panthor: move to nvmem_cell_read_variable_le_u64
> - mtk-mfg-pmdomain: put of_node in error path
> - mtk-mfg-pmdomain: remove leftover stray of_node_put on NULL
> - Link to v1: https://lore.kernel.org/r/20251217-mt8196-shader-present-v1=
-0-f6f8f3aa1e93@collabora.com
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
>  drivers/pmdomain/mediatek/mtk-mfg-pmdomain.c       | 59 ++++++++++++++++=
++++++
>  4 files changed, 116 insertions(+), 6 deletions(-)
> ---
> base-commit: 638148c6ffa31d2e4958d51708ff3675221e2da7
> change-id: 20251217-mt8196-shader-present-e2dc3f97fc74
>
> Best regards,
> --
> Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>

