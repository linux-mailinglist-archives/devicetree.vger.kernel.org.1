Return-Path: <devicetree+bounces-189482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DEBAE7EBE
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 12:12:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92CFF17179E
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 10:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A00832BE7AF;
	Wed, 25 Jun 2025 10:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XIUdo6lG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5098285C80
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 10:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750846240; cv=none; b=bNzOJGzeyKcnqxJ73kWjr7/tXsR4JeI6G1QAoDff2sbONHGcWUrscPYygJeN5cZVvHuG5YjAzDPA5ebtv+3VCdaj+Wh4GIiBsWwLPU1B5p1KW7fUvnSKzsJrUcTzNgvRw1Hqv/8235tUJceXsNHzs/MK273/FEqcaXesGa38KTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750846240; c=relaxed/simple;
	bh=fwr13GjDwenIIn+hJVnH+OK1h41ZA7vGn8reGc5n3Cc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rRIMtESWnd+a/sPlzEqpa6LhJn9jk7Yu0aWFUgT8jRFvjFxDqwSzdeWKakdTZJXlpUxO3Saa8kIfSZHkbz2sncMcNfGqAznwgCaH9uf5WIBzm/STRyDFTXqPrWFyiYehTfL37ARF7WX7phz3KbDQjWkGscXqhEmgNQEvRs9BSJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XIUdo6lG; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e731a56e111so5442493276.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 03:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750846236; x=1751451036; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NyqCTrWRH38g5oBlyqrDfAPMaqAjSD4w/gNXRimf4zI=;
        b=XIUdo6lG0rL0BOjJ/uYuQLXsp4QHvNQyKw2LFjb6yKO3t6JnPRskaByrsDc8VqUl5u
         mgqd57GS9/KlYo+uJWyKYh7/dYVX0NsSJXUrzACozJscx1ckMLaIhHJJSGHnCFZOgglz
         5smChTQ+eUvY9sNFvs0P+kbPFpWRF3PEAp7GpaCFVgOnbjWUXEuR/LAo4FeT1+t4Fqj8
         rNg4o77u+xCkEDI/t+dzI7ESphrzpLfHgKdPx77n3bbmAy1UsP5zdIGBSt3fA0/TGrJs
         nkMZNk6qSwjk3mgWhad1orrSsp4n4ToBwQ6H5pzT3LAWu4ANOG7CUmQxBLSda2JEu1bt
         xi3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750846236; x=1751451036;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NyqCTrWRH38g5oBlyqrDfAPMaqAjSD4w/gNXRimf4zI=;
        b=cJIEhYR0jKZ0hr5WOz7bZU59+v6Gs1eMeBigUZ4gYUuzyTaiUxhIJgIe10Q1nr34YZ
         P8gM7/0K8jPazJy413E844dm0Ae7psUCmqx7e6GpXrrNnFG/jHwZxW+7xhjydb31oPHJ
         CByHUFaALVRsIlGvXEmxiPEvt8U1zwt08LaT2qAK8v/MjS6Pokw6MywFs65ZflUr/a7m
         MWejTFBiWJNSlOPxEW0s/CpSuCac/zCzw/ZLNfl/0LvInR8Dr6j/wbT/UUYtby9fscEz
         zaFHsy98NHvuc8Oei+YHFcXzO/SWfhJww5iS/XcyTJLUYDtk9OtvU63cRqEDz1P0C49W
         5Wug==
X-Forwarded-Encrypted: i=1; AJvYcCVwpzQuOp4ccPF4/RaamLWoSyNmE8LPdOLhh99zQ/xinpnupVRgeXowZrJLVg/fw7EpaOJdkHqn7QC3@vger.kernel.org
X-Gm-Message-State: AOJu0YxAoRCRAH5o824iwvZCJUQChLYfTDoalXqxbEiu83oK7sM2yVnP
	1Ns7F4nK2KzLmqzGAhJceDSPPLY5XsMF4KhtVxk7qq0vQyZqIZy6B/RvclOIXKToZh3YU/lmwPO
	i3O5Qx444JcIUEp21wc7uoCnbTlHl/QpIt0sW4RBajw==
X-Gm-Gg: ASbGncvlIDPwJGHYd3DUFUo2EpszssG+4bVymnP446Ho0HR0ja9lUjrR7Kcl1V/Y49f
	3ijfH//awtSETDm/LPI4UcELBpO65zoPt7EczVLrFGQTjCP2HQxyb/UhXYODsO5za8qBdaM2QNo
	Fkot1rTfVJ+c2yCJYsAYg8D4mIt4pZ0Fla0au9OmLsIWM=
X-Google-Smtp-Source: AGHT+IGe9cdom9zPx5u2qPQ0tKYQR48QY3X3hjRnSL5OJURAbiiA4qXISjJMreIIdvqnR03DBzmyaEkxFKrpD5ccSCA=
X-Received: by 2002:a05:6902:1703:b0:e81:9aa9:88d0 with SMTP id
 3f1490d57ef6-e86018ef2f7mr2666888276.40.1750846235599; Wed, 25 Jun 2025
 03:10:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250623114429eucas1p1e74e09e74c5873b2f7f01228073be72a@eucas1p1.samsung.com>
 <20250623-apr_14_for_sending-v6-0-6583ce0f6c25@samsung.com>
In-Reply-To: <20250623-apr_14_for_sending-v6-0-6583ce0f6c25@samsung.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 25 Jun 2025 12:09:59 +0200
X-Gm-Features: AX0GCFuzRfZFQhIpkvF03Pc7_qxAuJk_yHypckCZgiSZSQVUDRcV_4FwsCAnQX0
Message-ID: <CAPDyKFrCeYxtqscX8Vr165HMOcSof_d62PMtRwt_yDyZ4ujSDQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/8] Add TH1520 GPU support with power sequencing
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 23 Jun 2025 at 13:44, Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> This patch series introduces support for the Imagination IMG BXM-4-64
> GPU found on the T-HEAD TH1520 SoC. A key aspect of this support is
> managing the GPU's complex power-up and power-down sequence, which
> involves multiple clocks and resets.
>
> The TH1520 GPU requires a specific sequence to be followed for its
> clocks and resets to ensure correct operation. Initial discussions and
> an earlier version of this series explored managing this via the generic
> power domain (genpd) framework. However, following further discussions
> with kernel maintainers [1], the approach has been reworked to utilize
> the dedicated power sequencing (pwrseq) framework.
>
> This revised series now employs a new pwrseq provider driver
> (pwrseq-thead-gpu.c) specifically for the TH1520 GPU. This driver
> encapsulates the SoC specific power sequence details. The Imagination
> GPU driver (pvr_device.c) is updated to act as a consumer of this power
> sequencer, requesting the "gpu-power" target. The sequencer driver,
> during its match phase with the GPU device, acquires the necessary clock
> and reset handles from the GPU device node to perform the full sequence.
>
> This approach aligns with the goal of abstracting SoC specific power
> management details away from generic device drivers and leverages the
> pwrseq framework as recommended.
>
> The series is structured as follows:
>
> Patch 1: Introduces the pwrseq-thead-gpu auxiliary driver to manage the
>          GPU's power-on/off sequence.
> Patch 2: Adds device tree bindings for the gpu-clkgen reset to the
>          existing thead,th1520-aon binding.
> Patch 3: Extends the pm-domains driver to detect the gpu-clkgen reset
>          and spawn the pwrseq-thead-gpu auxiliary driver.
> Patch 4: Updates the Imagination DRM driver to utilize the pwrseq
>          framework for TH1520 GPU power management.
> Patch 5: Adds the thead,th1520-gpu compatible string to the PowerVR GPU
>          device tree bindings.
> Patch 6: Adds the gpu-clkgen reset property to the aon node in the
>          TH1520 device tree source.
> Patch 7: Adds the device tree node for the IMG BXM-4-64 GPU and its
>          required fixed-clock.
> Patch 8: Enables compilation of the Imagination PowerVR driver on the
>          RISC-V architecture.
>
> This patchset finishes the work started in bigger series [2] by adding
> all remaining GPU power sequencing piece. After this patchset the GPU
> probes correctly.
>
> This series supersedes the previous genpd based approach. Testing on
> T-HEAD TH1520 SoC indicates the new pwrseq based solution works
> correctly.

I have applied patch2 and patch3 for next via the pmdomain tree, thanks!

Note that, the DT patch (patch2) is also available on the immutable dt
branch, if it needs to be pulled into some other tree.

[...]

Kind regards
Uffe

