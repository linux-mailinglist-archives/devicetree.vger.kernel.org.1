Return-Path: <devicetree+bounces-182468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4052AACC677
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 14:25:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFCA13A3B75
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 12:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35A6C23024D;
	Tue,  3 Jun 2025 12:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bNAiKOYp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B80A22D7B0
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 12:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748953546; cv=none; b=QuNWyVAsybGWKX/KSJxIopFw/oEmh8OXZZZPS4Mfa4mB7gzDK3blbk6IMCkzWF6/sdNcJen83UeCdvet0HjnOhKvq0fB48kQKAH061RO/bEBkYDHk4DA4AMvOD2NfatgRpBvMeo8JWBR1/N7axnGKn/oFnw5NsPF8JZ+c+WIIWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748953546; c=relaxed/simple;
	bh=Q0chqfdrdIvg4hy8yKc8WRhiOM1bdd348viYZ4BbWjw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kaaNN3kvwu1xNeJNz+zjhd0rlXfIShg9LYbYbeNW40o8wiMM9MJtFvKQwoMtx5QA3cDyiQlJlEYwxmMcJj2D3orzS/fsM50oT7I8tPVYxlB/HhkYwhdtZd/eduk3D0cI4I2SiLpvod4L5vQUYAfX2/gWZwiWgNR04yiKxaZ/YO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bNAiKOYp; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e8153867f47so1589357276.2
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 05:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748953541; x=1749558341; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q0chqfdrdIvg4hy8yKc8WRhiOM1bdd348viYZ4BbWjw=;
        b=bNAiKOYpScLNbeiajK64Ns4iY1wIlZPnRo1YBJ97CHC1aN14+kznealKfJSKYGTtGJ
         vclQFuGdYXd5IUYljAFNe5j4n/eEQhZut9lnF8ZWBouceJoVfeVWuHKE4w9ddKP+C84F
         BauikRN8tNArIKlPzq1coSW2INBu96ryPCK8ky2nX6kJFxTMsf8aoHZw9d9F7NdApT0/
         A8bQsrqxYm6rZs1/u4z+lnjBV0rjeM94qSveEyFEBbb+PnhY3Fz3z3EnZ6+/h2MhH08K
         mulFBf6dHI9knFpCIZw+PAsRoe2NrxUVNBW9V1Qop4A9Jmq2iNvPJslw4IaqQmzNkLki
         grpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748953541; x=1749558341;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q0chqfdrdIvg4hy8yKc8WRhiOM1bdd348viYZ4BbWjw=;
        b=dZ7K2r0ZN7PDv3BH5mdKVFvpJdXF5t0y4LQ8kJYhr8+0v7VX9nIb/0chmxRCWqckVC
         /sV3I7bOtuouMVKwHOU8w84c6clw2YyaxQhj/MQ+Ud7uqnpji7aFdQfyUn8hShpOiYGQ
         BJ+yoBEvkJ5zOhFU48KdVCwq4GSG8o8/xrwW49reL+zl7/67GuFQoNQPX41FKrzFeExY
         tld2LRaRDPR6AuXQ7eFI9/rpngO+qSCx5Uon1TpdZHi8yRav4ppX4SdxtLInaI8ex1l0
         26YbULwFd6zNzL431AEEg073Q0vFCSXHFuhwqYsPY2g0GVg/gEJVmCnyDplIsyUrO2+R
         E5uw==
X-Forwarded-Encrypted: i=1; AJvYcCXCOcM7HhBoi7vvb+l3/xR0EZbt7njK8KlESjEhg8pQHaO6hZZwDEClAxM7a4C0tA/ye833LFa+XXpW@vger.kernel.org
X-Gm-Message-State: AOJu0YzZKRiQLsfez6CL/z/CMMbyIpht8+1rFqFNBrAMArmnaMO/Q/v8
	Yl4MR+9l8V6Ryp+pImw60RXqiJXm1V2Es1jMbyBqoxWNAHF0EvFwjbC+69ShMLfXQfyBg2DuKLl
	xmKnAeWYg8z0Z9SsIUWWplVA1lk1P4Hady6UqU0kOEQ==
X-Gm-Gg: ASbGnctbpJ/zHFZVAFD6LX9pgpXw74JzjYPFoM0kcEzjUj1mdAFDBPceRGwQt8X4ZWo
	OxLWpYMMEpaZnfhAHPKEv8X1b0zwpXxorW2W9fuB8O9wRdSopvhU6xbX9WIeIy44QaHQwrLy3EJ
	ktToD5N03e1+IQeVSvynCcIfnqY5J/TUGd
X-Google-Smtp-Source: AGHT+IEJrWfxa9Bh6hqeqnweQzaVkjYvLD0ahWEYQ41oZGruPcsUvZuu97cItSkDZzbw9aGHdeGYbXtGb/PCj/51Oeg=
X-Received: by 2002:a05:6902:2b04:b0:e7d:988e:e7be with SMTP id
 3f1490d57ef6-e7f821a3acbmr24109793276.43.1748953541373; Tue, 03 Jun 2025
 05:25:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250529222402eucas1p1c9e0ddd3efd62e078e5de2cf71655f58@eucas1p1.samsung.com>
 <20250530-apr_14_for_sending-v3-0-83d5744d997c@samsung.com>
In-Reply-To: <20250530-apr_14_for_sending-v3-0-83d5744d997c@samsung.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 3 Jun 2025 14:25:04 +0200
X-Gm-Features: AX0GCFtQed31aP5hPCNMM0HA628iK-r2BM1mtBEnivi2Jm8ggPrVV8N_s24C_LE
Message-ID: <CAPDyKFqL9Xpau1BDnaa828s066zj=aVOAQOy1tCS=ztKN0ZsfA@mail.gmail.com>
Subject: Re: [PATCH v3 0/8] Add TH1520 GPU support with power sequencing
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
	linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 30 May 2025 at 00:24, Michal Wilczynski
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

Just wanted to share my view. I have looked through the series and to
me this seems like the correct approach, nice work!

Feel free to add my Reviewed-by tag for the series, even if I think
there may be some comments to address from Bartosz etc.

[...]

Kind regards
Uffe

