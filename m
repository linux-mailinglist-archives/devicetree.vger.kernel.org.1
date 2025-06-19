Return-Path: <devicetree+bounces-187352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C03ADFAF8
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 03:43:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABD2717C69E
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 01:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6E2E1A5BA2;
	Thu, 19 Jun 2025 01:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="Aa8KVzM6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2551A13B5AE
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 01:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750297419; cv=none; b=dQAsjt+9Vr6y/hIN1bI7eS8m5gpgr55s4Ultapn2+fQYW2ijqVBet4Rd7RJF9ivO1q9zH5DuLCVY1mr9hZwX9QqQdjjaOIXDMS4Ri41K4KhlacVLEXir9yFdtBlHQ2ls4ekeXslIMbejybwej/963f3GpYe0NYNxUFFU4l8rjWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750297419; c=relaxed/simple;
	bh=dLjiGbT9JPWGVFlw+MuDObZxogfa330xuB5+6m+uoVI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OnuniPs9WgR/NOj92fkVO0Pz7tkRdri84301wz/0h75I/4eZWG8lJlSxPzDntu9QVTYa/EzwVFdmhI8zD3Oq/b6UKEvpfTWUEORdOMIdHz80GTzHg7HbQgwhb/g68pCnp4+9Kcm3vvo+DtloO0XHQ3B3wCnVeWOgyynCFH8Ayiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=Aa8KVzM6; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7425bd5a83aso189137b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 18:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1750297417; x=1750902217; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9RBzLiRa5kP007xKu/khAw6xLYgVFKSnX02dITEELMQ=;
        b=Aa8KVzM6GHceqv3r1o2xB6qGuOFlRsFM/KwnrmcjPvfeGVYy6f9BWEeS5GStj6Cx6q
         wcSz2x9+9KUsXwPr2TSIcQCOubBQiEUMbD4gQhMKldxfvZyU9601jQfi6FuKnCeBcrot
         Bvehey7MAOHyp5RXqHuPOdxveNobC6hHslUYTmADU1r2s1j+wJrPfHLlAfjjlBjJUQ6u
         rpuXcbGWAd+6o5MJKcvf0NDiFr/hxKgmFcWnbYO2ehktiLTX54p75HwXj65crUGdej77
         uvOyZIzLTPKp4DAsCa2Tj9LpkejskolFXcV+rbM/GJkuRcZjMpqtqof6c040HVbHZZ+P
         Padw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750297417; x=1750902217;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9RBzLiRa5kP007xKu/khAw6xLYgVFKSnX02dITEELMQ=;
        b=UzjuGnoNRK+6Hgut4J2Qe2gis9qj4vCD1d70MA4DsWs2GS/K67yxhhnzGsunzJp8Ho
         pkHa1dMRpd9vdOed1j/ZHtnFLpZkJ3v7SfMvtQngEx3s6igeH50xxmjNEeQR5V4QGKEu
         BbX0wcice6LMejkLjjXd+VFxNSL83xyVZqxG5nm41gp0BH+CvIMLvEgCXsJOW8wYc6NS
         Vv1b9nkLcMmkasljLqYkn2FuPU7g4NtYcOE4Vg+K68tx9kzjOtQa6Yi5WnZ6Snt8/2hd
         7skQ6sPEghFecr4k+PNpKR7YNZJ9lH9pFTtQ2zYJxDcHXoLU/LG31QmI5ddD+0hrgq1U
         XFKQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+qgm/gkhXtUvT3qKdfn+RsgZVWF0l3ODqSi16q/1EJpd7fK6MrWHt5ZIbTXher/Q42cOc+rYh95Hu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4q/qaIMwlgBLUDgRzEhjdIthqu/iflmcdaPedRhoJfXOtipeF
	M1YX177K6zROV4PcMUTvjfxf6GB3GiotHGTeoC1XavqlL3IxaIlVqrEysxIDLKgVoAA=
X-Gm-Gg: ASbGncuIn60rsRgb5SNJ13XJAuAqTacYLoxvxWGaXa5UlTMJltOHTXTsLgNiDjSUy+A
	jSSe7N83DvdxU9ioSSi406cW9C+1q35gVBWlPEwdSn5jEYc6JedQSO4NTLlNRNAU00U+1zjjSvk
	3hMjr5wSMG3fZvZa2Va5/+UJFyN/8EvUIbgnS8Su5ug/dOeAFgOsD1/WfP0M9rXRkYA82Kar+af
	1+jaPOnsEfLCNSyaMIVKHqmb0Wj+1/KcX0h+A48xIOG4ZbHzlgHEluP+MDehipEdncUJXXQVm2d
	UfpOhyK6wNa//il1NeRUAuXMVK7BnyI7V3FDB8mfhGGv/R5eGXE6RhGN8Prv7yy/k+xEGgc=
X-Google-Smtp-Source: AGHT+IER1GlKqenGCJq3qD2Xqlv8+ahed3DymdmXx7TwJgKJZxq18ZlqN5MmHKY9e5pztJs0I4bquQ==
X-Received: by 2002:a05:6a00:178e:b0:742:ae7e:7da8 with SMTP id d2e1a72fcca58-7489ce45893mr32194637b3a.8.1750297417247;
        Wed, 18 Jun 2025 18:43:37 -0700 (PDT)
Received: from x1 (97-120-250-80.ptld.qwest.net. [97.120.250.80])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748fbce0f13sm291934b3a.37.2025.06.18.18.43.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 18:43:36 -0700 (PDT)
Date: Wed, 18 Jun 2025 18:43:34 -0700
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
	dri-devel@lists.freedesktop.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 0/8] Add TH1520 GPU support with power sequencing
Message-ID: <aFNrRtbWzeRa7GmQ@x1>
References: <CGME20250618102225eucas1p129b1172bf54521c1eb0f718cb31af468@eucas1p1.samsung.com>
 <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com>

On Wed, Jun 18, 2025 at 12:22:06PM +0200, Michal Wilczynski wrote:
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

The powevr probe complains:

[    1.060383] powervr ffef400000.gpu: Direct firmware load for powervr/rogue_36.52.104.182_v1.fw failed with error -2

Where is the correct place to get the firmware?

Thanks,
Drew

