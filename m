Return-Path: <devicetree+bounces-187328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8932ADF99E
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 00:55:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48B03178022
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 22:55:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804F227D773;
	Wed, 18 Jun 2025 22:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="nGd+6EMy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0103085CC
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 22:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750287302; cv=none; b=kmPLXAbBKj0JOubl0pFuO1QfZNIGwMn+3rFC3uvXSqBxZ6R5hi9uvLz6NvFEkHFBmmjHhw9Qw6wdSAVtUDK7iIRxaWIpeAmgeCXe8WgdXu+BWS/oEQUTEhkiHFtPPZezp0RJ1vazTmYU+ykxITyYxAWXAhLSTM+aavtyWY2kWOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750287302; c=relaxed/simple;
	bh=MVcOFZqeSZ2MqvQCc0Mh/4bkk3iDu1m9HAf/e2F974M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TgUHv2nAD1hEuxRsmXR6kwCy6EgyCW0uO4q8arQ+fZZANDDyxHIQigU7B02rU5BgEN6iBwBuenZBnIGQpGi4IE2KyNXGBOR694Z1vEGP1X5wljGLaOE8BppzfNsPfP12ehZYgV0zdQW6nkFFjAN9C/liWIL30hZVQ7z+bv7BrN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=nGd+6EMy; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-234f17910d8so2293555ad.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 15:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1750287300; x=1750892100; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/5NwaPDyOETWv2pDddwa/aKZNaAck4pdMU751257ncI=;
        b=nGd+6EMyXEm/f7XPhD9F6aIWMRMN444fLJ0ryS73mz3Bfekd82NCX6zqFQ7hYXZ+tM
         pNQqM+/d97aZJqY34tRIYVfxXvFTNE3PmZlop+ejrjvsEDnnxbICJ47e4vkQsuXlSbmV
         kXtBnaHGifK56qrJTCTeDiM7Bp7YgaVlzz7vbHsr9dzeS1ZsGfX0supdSSsqNvbROnzW
         MfI5ELI2r6wR+kI22FH/TAQq9Z0aYkrWEA3+NJrR2Ncq186IOq+BJNpkGT/jQ2Etgzyz
         L06Of1ifi2jQZY8gsxZbXVJvTZuoSyrfbXiXcXYfJuXf88U+j613wO8b2NZyDr9Pcqec
         fPQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750287300; x=1750892100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/5NwaPDyOETWv2pDddwa/aKZNaAck4pdMU751257ncI=;
        b=upXI+zvcbd6Pv8ndNSi1U4G0kFN+b7BkH4jtqVxJanH3tY3vh8K7t2pqaIuGNFw+xE
         Yb6J8lA9q1Gk73dGtUHnNL7HMZ9m1WNzWB9Owjhv5IMkNZQxvitIckucOTzdLMFT/I5J
         GNl7JYxp9DN950B6zKmmIBFon4F21rAGMqQVXozagUWcJitGqyu/6pbZpN0hdKLPf2g8
         LnnSb2KzrRnhox7Y77FmvY4vJd7TJ49k98H1bZR0RIb2ZGNCBvzFkR9rOjJvz5EHvjwO
         GCe2QOA7r/S3WMPF9q6wv4K9Nlrf5cYpbt5L5VUqDQpaOxfGZDnPn/yMQzyhINGz30mu
         FSjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKn8JtFvvBL/Absm9HStD50Vfkdxh1AXEJLwc4PQ1XQ1QFe9/9/wbA2dPdfPqYPTIAH2C5lKrf1AXY@vger.kernel.org
X-Gm-Message-State: AOJu0YxqReY1INxcTtL3csTQkCKkmtcpevf86jqmpzTLD10HlYmh5T7o
	WWL4MwbYR/4Nsk+5AxbIBsFSjXqGAiSRcVTpxc3gR4f8fiD5UXZTmudD86qbFJ7tqGI=
X-Gm-Gg: ASbGncvKGjmeKuXE0oksTgyUNprcOBQkHJ7+MjZcQtw/U+Jxp+XC/NSgkmU43D+4q3v
	5+LPjX+WRG91Ue56H8T1J/8b8vDnQEZwWz10UM1ejJSQ/G+CErrfoCPTJ0tc0qmUOxXkdMFebJB
	NJPpybwb7TdShPg0YpU8Yu46GTw6f7tCEknaWhTLxc/Giimuuo1h5Hl9ZHkzd4FxINtJLDGYezn
	FNSCNjuhvEzdrcs4uI7wp7ahZomX1xAAwq3OZzSERHZJV6To72l9+Xh6YynN17nufcYUtipLaTz
	VFPh8oVZ4yfT+Y/ofvtL/FtTbgi36LIA9POrtzO/dRVK2K8Vf7lLaGO3F1OERRWi2nDkO4hY0xA
	gBiVrIQ==
X-Google-Smtp-Source: AGHT+IHgVrtzzhpW+oJLMdXuYbVuOtesVP9Nvp/NylotZPQenDpgvWchZUgnqqSWky9m7BlwSjYVnw==
X-Received: by 2002:a17:90a:dfcb:b0:313:d346:f347 with SMTP id 98e67ed59e1d1-313f1e27e38mr28887847a91.35.1750287300056;
        Wed, 18 Jun 2025 15:55:00 -0700 (PDT)
Received: from x1 (97-120-250-80.ptld.qwest.net. [97.120.250.80])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3158a24be89sm591076a91.23.2025.06.18.15.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 15:54:59 -0700 (PDT)
Date: Wed, 18 Jun 2025 15:54:57 -0700
From: Drew Fustini <drew@pdp7.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Frank Binns <frank.binns@imgtec.com>,
	Matt Coster <matt.coster@imgtec.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v5 1/8] power: sequencing: Add T-HEAD TH1520 GPU power
 sequencer driver
Message-ID: <aFNDwcK5+ZuHBdrw@x1>
References: <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com>
 <CGME20250618102226eucas1p112dacf9670f68b4a8581aa1a8b5ced9d@eucas1p1.samsung.com>
 <20250618-apr_14_for_sending-v5-1-27ed33ea5c6f@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250618-apr_14_for_sending-v5-1-27ed33ea5c6f@samsung.com>

On Wed, Jun 18, 2025 at 12:22:07PM +0200, Michal Wilczynski wrote:
> Introduce the pwrseq-thead-gpu driver, a power sequencer provider for
> the Imagination BXM-4-64 GPU on the T-HEAD TH1520 SoC. This driver
> controls an auxiliary device instantiated by the AON power domain.
> 
> The TH1520 GPU requires a specific sequence to correctly initialize and
> power down its resources:
>  - Enable GPU clocks (core and sys).
>  - De-assert the GPU clock generator reset (clkgen_reset).
>  - Introduce a short hardware-required delay.
>  - De-assert the GPU core reset. The power-down sequence performs these
>    steps in reverse.
> 
> Implement this sequence via the pwrseq_power_on and pwrseq_power_off
> callbacks.
> 
> Crucially, the driver's match function is called when a consumer (the
> Imagination GPU driver) requests the "gpu-power" target. During this
> match, the sequencer uses clk_bulk_get() and
> reset_control_get_exclusive() on the consumer's device to obtain handles
> to the GPU's "core" and "sys" clocks, and the GPU core reset.  These,
> along with clkgen_reset obtained from parent aon node, allow it to
> perform the complete sequence.
> 
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  MAINTAINERS                                 |   1 +
>  drivers/power/sequencing/Kconfig            |   8 +
>  drivers/power/sequencing/Makefile           |   1 +
>  drivers/power/sequencing/pwrseq-thead-gpu.c | 231 ++++++++++++++++++++++++++++
>  4 files changed, 241 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0183c028fa18c397d30ec82fd419894f1f50a448..3283ff592215249bcf702dbb4ab710477243477e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21395,6 +21395,7 @@ F:	drivers/mailbox/mailbox-th1520.c
>  F:	drivers/net/ethernet/stmicro/stmmac/dwmac-thead.c
>  F:	drivers/pinctrl/pinctrl-th1520.c
>  F:	drivers/pmdomain/thead/
> +F:	drivers/power/sequencing/pwrseq-thead-gpu.c
>  F:	drivers/reset/reset-th1520.c
>  F:	include/dt-bindings/clock/thead,th1520-clk-ap.h
>  F:	include/dt-bindings/power/thead,th1520-power.h
> diff --git a/drivers/power/sequencing/Kconfig b/drivers/power/sequencing/Kconfig
> index ddcc42a984921c55667c46ac586d259625e1f1a7..7fa912c9af2479cdce909467c29fe335788f0bd7 100644
> --- a/drivers/power/sequencing/Kconfig
> +++ b/drivers/power/sequencing/Kconfig
> @@ -27,4 +27,12 @@ config POWER_SEQUENCING_QCOM_WCN
>  	  this driver is needed for correct power control or else we'd risk not
>  	  respecting the required delays between enabling Bluetooth and WLAN.
>  
> +config POWER_SEQUENCING_THEAD_GPU
> +	tristate "T-HEAD TH1520 GPU power sequencing driver"
> +	depends on ARCH_THEAD && AUXILIARY_BUS
> +	help
> +	  Say Y here to enable the power sequencing driver for the TH1520 SoC
> +	  GPU. This driver handles the complex clock and reset sequence
> +	  required to power on the Imagination BXM GPU on this platform.

This is a minor nit but maybe this should be POWER_SEQUENCING_TH1520_GPU?

I often grep for TH1520 to make sure I have all the options enabled and
it took me a second to realize it was 'THEAD' instead of 'TH1520'.

In retrospect, I probably should have have used CONFIG_DWMAC_TH1520 for
the ethernet driver instead of CONFIG_DWMAC_THEAD.

Thanks,
Drew

