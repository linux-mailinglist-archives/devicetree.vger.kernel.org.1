Return-Path: <devicetree+bounces-196551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 805B4B060FF
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 16:28:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7510C4E5816
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 14:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C597B293B73;
	Tue, 15 Jul 2025 14:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yzBG5AKr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B00A293C54
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 14:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752588580; cv=none; b=nauoW67jtHETbfk1Q4ACS7RWuc7a/hpkVuGbmgiGOQLsODrbhR9BZO7vCDQJjs59MVjbPNa8sLY9Mkx/rn/VbdC4wD9vWHZFu8nUcYxaI6mvNtDxsZmyTCAmOmURvT+5U7My0z1LEkDfGQSpznSKZoRRZqIUrxLvZZSB0gcAC2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752588580; c=relaxed/simple;
	bh=jJTBj4fac1bgJaznP0nVpLk5OWhiPHvmPDoBk2KvbXA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IHBbRkc5k0kuviToIAw9hzRQd3rauPJKDqia1q9Hw/K44lsMW3141cZwpqfA/t0oOeSP3uC+cdFQtJ2O/NPeLJx6ORPH5jH85tYL1D6PJGoBwzyQU3xw2Nqc/O74v0/EEPdg3dz7wY3LqKSRfNGHN3ozmkrDrcOl56Knk767T9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yzBG5AKr; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e8bbeee8450so206524276.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 07:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752588578; x=1753193378; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rdR+LRqRBkJBUvCkbRrJJULDxmBDkmzUM6UrN84Yku0=;
        b=yzBG5AKrjyd5HXxpwA1l8iVFZfC3R2ccr+oBhijiQ/mV7QAz0S1NHKz9opHeqlkEEy
         rha5cWy7naMTyehV9fV2cbVc1jNCuWM86lT1RDrSLPb94WtM5Q7yzrv5P575Tb46HOUp
         gd9wVMheroi1nScrIUFRTmK7TYW8jlMUC/0gkcbUV8onXKStrE/w4/9SzvknYyMSYRaE
         Q8zVcgJEynEupepXHISKbzhSNwSColiBhDg1xKHVsu+AeMnVO9AO51XmN4dHhgqrnvgu
         07dU4uGHxO/icWHzlS+kzg5X34hHg4MOvtVWuQNwk4tJZoZ/Imb9BCEaKhLNFOL+Fr9c
         ODvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752588578; x=1753193378;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rdR+LRqRBkJBUvCkbRrJJULDxmBDkmzUM6UrN84Yku0=;
        b=ZLkXnyX1HVXAbatgMRk6NpWC0XVNpL5WR/XUUjwO2uL8m8cEJpQn8pKG33ZEPdoopL
         UhbZHbLczpfzwFbvIAFrgAexSbGkBp2Pd5uN/H7AFuv1h37yMZYbP1fdembB/LDiKxfR
         3gU4lP8OYphjvN/tWkV9mVYznRevpc5eExaK5ffqHd+1HcdoW5KumcP6ByyqGDnit4i9
         CoV5D+9gFMUSFM5+k2dBM1iXu2bxvUfUu+o3NUVsnnWEkn9yk1dsL/EuuviAHLRy+bEH
         YerX4Uz/l1kFhuIAXj2VonP3I0ptjcRt6NTQs+OtOBvB37Z/kiGt9x9zQj4D6OJ9MRAy
         pd7w==
X-Forwarded-Encrypted: i=1; AJvYcCX3RBEkVc2SfKZelVQQjPE9p2/K2fIr/goIdCFh04feJ6Q8c3nIQSZiHAx3p3wAUdKymOyehIBN+uEo@vger.kernel.org
X-Gm-Message-State: AOJu0YymGApglyPD+qkX0OqALLQwlw6RTRp12cvESceV4C2QbP6bscAH
	IDGOQ+UJUZhzV3wn+ArrMZ8WUgOFjS/ca9Ui1WpFzTxcpuJ/nsFAlNuiwzcS8SoPNd7GbhAoIIX
	1DgKMETtDydZdBWv+X6SobrOwpM6yaU8wUSA1/m+K8g==
X-Gm-Gg: ASbGncumJgHiiT8QV4s9dPF6cLAVlygKdBCdoUhNmlYTFQFvxNXXYzRGQUhbj1je8Xo
	mCfFKKeD4wnzgUFZQfKWRtSBeYZyUwBmzUZvZlK/4gJWrDRxudpwT9OO9s935mfQNBRGnbW80gf
	2ZXsMk4em6ZQBEh46MmsIxitgX8xNs968fWjcCvZL/kNgGzcCvymnrTpG0N1pCHL4a0m1eroJRt
	psxVvmr
X-Google-Smtp-Source: AGHT+IFr5aZe129SXty/aUauZ98iCrC5028PDfP3/dwd83DOGHiwFr2/EEOsdifr9IoyiESxKl68x3MmFGTyJODgVvM=
X-Received: by 2002:a05:690c:b82:b0:712:c295:d010 with SMTP id
 00721157ae682-717d5e2848bmr255785147b3.33.1752588573210; Tue, 15 Jul 2025
 07:09:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250712074021.805953-1-wens@kernel.org>
In-Reply-To: <20250712074021.805953-1-wens@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 15 Jul 2025 16:08:57 +0200
X-Gm-Features: Ac12FXzjyKVG9YpXDr4ujfp7DHXXwLEZE6WjntfBOMpvZOZeuC_qP0opUlbqcZM
Message-ID: <CAPDyKFoSe3sch1ooP7e-TOiB91y=_Q=-FaSooc2ROoMwfEsP+g@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] allwinner: a523: Add power controllers
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andre Przywara <andre.przywara@arm.com>, linux-sunxi@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 12 Jul 2025 at 09:40, Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> Hi folks,
>
> This is v3 of my A523 power controllers series.
>
> Changes since v2:
> - pck600 driver:
>   - Fixed whitespace issue
>   - Added explanation about possible PCK-600 lineage and document
>     references to driver
>   - Changed Kconfig option to tristate
>   - Rewrote Kconfig option help text to make it clear that the driver
>     is required for certain peripherals to work
>   - Made it depend on ARCH_SUNXI or COMPILE_TEST
>   - Made it enabled by default for ARCH_SUNXI
>   - Renamed PPU_PWSR_PWR_STATUS to PPU_PWR_STATUS, and added a comment
>     to note the macro is shared between two registers
> - New patch changing sun20i-ppu driver to tristate, and enable by
>   default for ARCH_SUNXI
> - Fixed pck-600 header path in dtsi file
> - Link to v2:
>   https://lore.kernel.org/all/20250709155343.3765227-1-wens@kernel.org/
>
> Changes since v1:
> - Re-order compatible string entries
> - Fix name of header file to match compatible string
> - Link to v1:
>   https://lore.kernel.org/all/20250627152918.2606728-1-wens@kernel.org/
>
> This series adds the power controllers found in the Allwinner A523
> family of SoCs. There are two power controllers. One is the same type
> as those found in the D1 SoC, just with a different number of valid
> power domains. The second is (I assume) a unit based on ARM's PCK-600
> power controller. Some of the registers and values match up, but there
> are extra registers for delay controls in the PCK-600's reserved
> register range.
>
> Patch 1 adds new compatible string entries for both of these
> controllers.
>
> Patch 2 adds support for the A523 PPU to the existing D1 PPU driver.
>
> Patch 3 adds a new driver of the PCK-600 unit in the A523 SoC.
>
> Patch 4 aligns Kconfig dependencies and default for SUN20I_PPU with the
> new PCK-600 driver.
>
> Patch 5 adds device nodes for both of these controllers.
>
>
> Please have a look. The power controllers are critical for enabling more
> peripherals, such as display output, camera input, video codecs, the NPU,
> and a second DWMAC-compatible ethernet interface.
>
>
> Thanks
> ChenYu
>
>
> Chen-Yu Tsai (5):
>   dt-bindings: power: Add A523 PPU and PCK600 power controllers
>   pmdomain: sunxi: sun20i-ppu: add A523 support
>   pmdomain: sunxi: add driver for Allwinner A523's PCK-600 power
>     controller
>   pmdomain: sunxi: sun20i-ppu: change to tristate and enable for
>     ARCH_SUNXI
>   arm64: dts: allwinner: a523: Add power controller device nodes
>
>  .../power/allwinner,sun20i-d1-ppu.yaml        |   4 +-
>  .../arm64/boot/dts/allwinner/sun55i-a523.dtsi |  18 ++
>  drivers/pmdomain/sunxi/Kconfig                |  19 +-
>  drivers/pmdomain/sunxi/Makefile               |   1 +
>  drivers/pmdomain/sunxi/sun20i-ppu.c           |  17 ++
>  drivers/pmdomain/sunxi/sun55i-pck600.c        | 234 ++++++++++++++++++
>  .../power/allwinner,sun55i-a523-pck-600.h     |  15 ++
>  .../power/allwinner,sun55i-a523-ppu.h         |  12 +
>  8 files changed, 316 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/pmdomain/sunxi/sun55i-pck600.c
>  create mode 100644 include/dt-bindings/power/allwinner,sun55i-a523-pck-600.h
>  create mode 100644 include/dt-bindings/power/allwinner,sun55i-a523-ppu.h
>
> --
> 2.39.5
>

Patch 1->4 applied for next (the dt patch is also available on the
immutable dt branch), thanks!

Kind regards
Uffe

