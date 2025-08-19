Return-Path: <devicetree+bounces-206386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8B4B2C3AB
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 14:33:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 12D551C21A88
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F88B2C11F3;
	Tue, 19 Aug 2025 12:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NPCCtEI6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9D9305057
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 12:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755606479; cv=none; b=RTUNCdg44fp9re0jePqCN4ZAm1C+Rdt2ccFoHsvnbukL0959Eb329DLyru4Ch7EcpoHt2dD1tkSev5/+PPIz3HfuGSJqpJ58b1OgO/l9K+8OPGsLUUoizcDwJRDAV9HSKUULV6o/fwMcn1oZyxA0z5EGiZ8Q1tXRqXjbXfpK4i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755606479; c=relaxed/simple;
	bh=ukBqOMPDevcZIl1hAa3643kHafqFVHmbGBDgRQC4Xdo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LWw0rdMG1uSRs8e0nYJNkB6udXTy3/g5HqVIyuR/YZXzkqto/UZ5ZI4TZCrb1D4fhsy5MXGP4Z9dRqu7pHiUQ1f0QkdGnbUi4/Ck9182J0YNmELT8nYDjbY8q4WrV2mZGLQtzEJno2jHz9gqDYylVpsEDFc2ckC8jp8/cmQDymQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NPCCtEI6; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e94ee2f1fe2so254320276.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755606475; x=1756211275; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yZtv5kbth628kTnUK+fDvEY/2S0WoSxVvPU3B2+mRwI=;
        b=NPCCtEI6XvAmFNb4DNx+ftibxkdy537vheCPjPP+k9zFKs3si/Pq3G5g9GDHXxFyfv
         Xp2ExeJ5KvPwBvp67EspgPvEPBOOoNCLY/cUMoibir9/4RZA5Fa5h/xI63iKsEq7Fv4j
         0izmiWBDGvMVGuw6Dg6R7fl1mhmCsMR6Onbj+tPJUuHSSB/nQIC4WTNujN+UeRd4AvRD
         nbAP824DGcgoOkoShGpXNTRdZ2ut0o9AtYW5xEXTUEvc49KE4nZ7NUUYKPUn20m4ugBa
         p4YJ5YKe4OumkfeMi6m1n6Vn4OJXEi9z+AEhrUmbpoNVAGRMQFTiR8PvrcP0LUSSuPkJ
         QvCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755606475; x=1756211275;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yZtv5kbth628kTnUK+fDvEY/2S0WoSxVvPU3B2+mRwI=;
        b=iFguXoE2JGAk2SiF/jrBc99YsA46VBUrEIK7vMZVQWZr+1+q9jNx4HSTULUYoflbJB
         X0lxLABDmFlG467KujiiJelWv7i0PqA+RQXZjzoVtTiZKDG9s/9dNdlMkjqsAntx1GBy
         y55ACdOrmdCk+7eIKXLAr3nvQM/IaEkmc1xrPhP99vDokE/4AKMkjW2pgNr5PguPkOA9
         fczjnKvKz4/6An2Ua/yoQP4ndiGeWdsEasAjdDSZvZRbmTcpyJsyDX30F2CKUejKtl+Y
         /kHRLRNyrhJwpJOn0qLon7EMsqRUovMtuUKiTCEcimQFBZGjvCAbQEmqTIGaB7gfG26K
         bfag==
X-Forwarded-Encrypted: i=1; AJvYcCUgM68bKnsmxkFu/53tuz1xR+VCpDch7ACZiKhYjhF7w7r01AvVp+QuZyp1Tt3SikcGU6WO37YJnB1M@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa90YqXd7D685A7tE/yhVDvDwJYDoXKrW7R/OfNsxHdrQDcJ3t
	W4XomkojzQfP309ZNLc1OCbJfKf8DrPUhByyIO/JU8G6aERoOA3AhY8+UNFWL4i531PN8C6WvPu
	SpF3Gqni8LErGpbgWIot2Ac5aI1UlULX63A5iMy7usw==
X-Gm-Gg: ASbGncsyTIir87O10B14gyIKaHj8qihjQsCx2gBfbBUWUiGLgZGUMgieyVdKsIXz+6P
	KtLVEAH5TSpq9V91nfEPzw2r7qk6ZSw4i1c0ziWMp3zvAuBstcObWX3/2qOJDbnbzGYvTK6c3Rx
	89UfVPfmd46zg4CHqqN+OETtkDzjILuoQuVWeZsXkstduf/HZyEvM/i3nVV2gQBisQI5XMDD6xc
	oEOLRA=
X-Google-Smtp-Source: AGHT+IGPSjRE772VSErcWH57I2UwSaBhGARpWSDSr8nygBbsS+Ayx0vpuG9nPJpw7rtBlA7oFHKd2+vlR9/sAMgL0DE=
X-Received: by 2002:a05:690c:55c7:20b0:71f:a20b:6d39 with SMTP id
 00721157ae682-71fa20b735bmr9906017b3.27.1755606475553; Tue, 19 Aug 2025
 05:27:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250805074746.29457-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250805074746.29457-1-angelogioacchino.delregno@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 19 Aug 2025 14:27:19 +0200
X-Gm-Features: Ac12FXzmR131GzmNGplYUoHaNI20Fn5hCBuzfHUqZVmIB9H896qML1tj6z64tsY
Message-ID: <CAPDyKFoe9=4KgOsPUX6FOE+yPxdUqAxRec5yKY2h6uFOeUvvDQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/10] pmdomain: Partial refactor, support modem and RTFF
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, y.oudjana@protonmail.com, 
	fshao@chromium.org, wenst@chromium.org, lihongbo22@huawei.com, 
	mandyjh.liu@mediatek.com, mbrugger@suse.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 5 Aug 2025 at 09:48, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Changes in v3:
>  - Dropped specified items for cells restriction as suggested by Rob
>  - Fixed an issue in patch 4 still referencing "mediatek,bus-protection"
>    as it is entirely replaced by "access-controllers"
>
> Changes in v2:
>  - Added #access-controller-cells allowance for MT8188/95 infracfg_ao
>
> This series is a subset of [1], leaving out the Hardware Voter specific
> bits for MT8196 until the discussion around it reaches a conclusion.
>
> Even though the proposed code was born as a preparation to support the
> MT8196/MT6991 SoCs power domain controllers, it is a necessary cleanup
> for all power domain controllers of all of the currently supported SoCs
> from MediaTek.
>
> You may also notice the addition of support for modem power sequences:
> this was brought up 6 months ago (or more) by community contributors
> (mainly Yassine Oudjana) that were trying to upstream the MediaTek
> MT6735 Smartphone SoC and needed support to provide power to the MD
> subsystem - so, even though in this specific series the code for the
> modem power sequence is not yet triggered by any SoC, please please
> please, let it in.
> Besides, "a bunch" of upstream supported SoCs do have the MD power
> domain even though it wasn't added to their drivers (because if there
> was no support in the driver, it would just crash the system); the
> addition is something that I plan to do at some point, but definitely
> not now as I have no bandwidth for that (bar MT8196, which will have
> this domain).
>
> Compared to v1 in [1]:
>  - Changed mediatek,bus-protection to access-controllers
>    as suggested by Rob (thanks!)
>  - Added commits to document #access-controller-cells on all of
>    the access control providers
>
> In the meanwhile.... relevant excerpt from the old series:
>
> This series refactors the bus protection regmaps retrieval to avoid
> searching in all power domain devicetree subnodes for vendor properties
> to get syscons for different busses, and adds a new property which is
> located in the power controller root node containing handles to the same.
>
> Retrocompatibility is retained and was tested on multiple SoCs in the
> Collabora lab - specifically, on Genio 350/510/700/1200, and manually
> on MT6795 Helio (Xperia M5 Smartphone), MT8186, MT8192 and MT8195
> Chromebooks.
>
> This was tested *three times*:
>  - Before the per-SoC conversion in drivers/pmdomain/mediatek
>  - With per-SoC conversion code but with *legacy* devicetree
>  - With per-SoC conversion code and with *new* devicetree conversion
>
> All of those tests were successful on all of the aforementioned SoCs.
>
> This also adds support for:
>  - Modem power domain for both old and new MediaTek SoCs, useful for
>    bringing up the GSM/3G/4G/5G modem for both laptop and smartphone use
>  - RTFF MCU HW, as found in MT8196 Chromebooks and MT6991 Dimensity 9400
>
> ...and prepares the pmdomain code to accomodate only the directly
> controlled power domains for MT8196 (HW Voter support was left out).
>
> [1] https://lore.kernel.org/all/20250623120154.109429-1-angelogioacchino.delregno@collabora.com
>
> AngeloGioacchino Del Regno (10):
>   dt-bindings: memory: mtk-smi: Document #access-controller-cells
>   dt-bindings: clock: mediatek: Document #access-controller-cells
>   dt-bindings: power: mediatek: Document access-controllers property
>   pmdomain: mediatek: Refactor bus protection regmaps retrieval
>   pmdomain: mediatek: Handle SoCs with inverted SRAM power-down bits
>   pmdomain: mediatek: Move ctl sequences out of power_on/off functions
>   pmdomain: mediatek: Add support for modem power sequences
>   pmdomain: mediatek: Add support for RTFF Hardware in MT8196/MT6991
>   pmdomain: mediatek: Convert all SoCs to new style regmap retrieval
>   arm64: dts: mediatek: Convert all SoCs to use access-controllers
>
>  .../bindings/clock/mediatek,infracfg.yaml     |   3 +
>  .../clock/mediatek,mt8186-sys-clock.yaml      |  15 +
>  .../clock/mediatek,mt8188-sys-clock.yaml      |  15 +
>  .../clock/mediatek,mt8192-sys-clock.yaml      |  15 +
>  .../clock/mediatek,mt8195-sys-clock.yaml      |  15 +
>  .../clock/mediatek,mt8365-sys-clock.yaml      |  15 +
>  .../mediatek,smi-common.yaml                  |  16 +
>  .../power/mediatek,power-controller.yaml      |  37 ++
>  arch/arm64/boot/dts/mediatek/mt6795.dtsi      |   5 +-
>  arch/arm64/boot/dts/mediatek/mt8167.dtsi      |   6 +-
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi      |   4 +-
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  17 +-
>  arch/arm64/boot/dts/mediatek/mt8186.dtsi      |  12 +-
>  arch/arm64/boot/dts/mediatek/mt8188.dtsi      |  23 +-
>  arch/arm64/boot/dts/mediatek/mt8192.dtsi      |  13 +-
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi      |  20 +-
>  arch/arm64/boot/dts/mediatek/mt8365.dtsi      |  16 +-
>  drivers/pmdomain/mediatek/mt6795-pm-domains.h |   5 +
>  drivers/pmdomain/mediatek/mt8167-pm-domains.h |   5 +
>  drivers/pmdomain/mediatek/mt8173-pm-domains.h |   5 +
>  drivers/pmdomain/mediatek/mt8183-pm-domains.h |   5 +
>  drivers/pmdomain/mediatek/mt8186-pm-domains.h |   5 +
>  drivers/pmdomain/mediatek/mt8188-pm-domains.h |   6 +
>  drivers/pmdomain/mediatek/mt8192-pm-domains.h |   5 +
>  drivers/pmdomain/mediatek/mt8195-pm-domains.h |   5 +
>  drivers/pmdomain/mediatek/mt8365-pm-domains.h |  14 +-
>  drivers/pmdomain/mediatek/mtk-pm-domains.c    | 399 +++++++++++++++---
>  drivers/pmdomain/mediatek/mtk-pm-domains.h    |  74 +++-
>  28 files changed, 594 insertions(+), 181 deletions(-)
>

Patch 3->9 applied for next, thanks!

Note, patch 3 is also available on the immutable dt branch for SoC
maintainers to pull in.

Kind regards
Uffe

