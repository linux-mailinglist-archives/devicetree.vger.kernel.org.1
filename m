Return-Path: <devicetree+bounces-187356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE1AADFB29
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 04:20:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8624189F1FC
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 02:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5795C226D0B;
	Thu, 19 Jun 2025 02:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="g2CwFCi6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3BF225788
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 02:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750299641; cv=none; b=u4+b1054496fb2ePCasDU6BKr1MkiKvGNwSttHHImMei5vsO7WmZlol7LgqUMa0LKhslYJWZzwAqqOXswdcsR1O/nGm1n9ohMJ/8IwSbY0SCqM7e4yjug2lWe92JMmG3i2k2Qra7trLtYLqXhUWf3Hl4UcqEjKs8oOnXGqMTJKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750299641; c=relaxed/simple;
	bh=fbHwj/6Mc7LjY4LJrhtl5037k7Ipk80XNh/vyQkqCi0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g0SkuWKEFIRkee0kJI4zXBXFpHtKPkOeurtaUpA/iGCRCNXfsSgKmVFvGsPGeCZNVqkv30ShTseEdlH3XCFMYx2c2pgm1VQbiuhahbbTGhVvqQ4VLF7SivjoqsticLOWzFlWRCvCIZr2ptQjSq7crgzBieSEivUJ9TDZlEYZH9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=g2CwFCi6; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-739b3fe7ce8so185832b3a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 19:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1750299638; x=1750904438; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aB+z+oapAeIvD/LMQC0pA+9Dvh98i3pYzrLPX5UVNgs=;
        b=g2CwFCi6sq6bYsGW56STu/fdSElwcbEqRmqpOgT+x6/oQ4HJlBBqJw7823cKPGAnn8
         quYuYv5opcB/hsTq0mT3zTvnupthMsWM8LLCPQSj8tsJNlq7BGSNLKV9o4i21u7ibsT8
         3kV3etSW9CXZ6jZWxt1ddGgA4VUBxNvkgbzNPGz4DEtAHxdfSOJDtdinDRFMFDpXmIzu
         XxXHvKt9wyxQS1Spg4UWayJjuwrlKOfKsvU+HngTZEatK8ABBlvF1NHfsGjA80tCOSuC
         jAVwNfeUS21qD2p1bH2eR8qwbtpiUSv6MTszxks7l6vYTtJHC19vJY0ZykxoBLAk04Qn
         iNsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750299638; x=1750904438;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aB+z+oapAeIvD/LMQC0pA+9Dvh98i3pYzrLPX5UVNgs=;
        b=su8H0CqpQ8clIME9vqroReblmTbXMeXmxw8WPe0AcGdkDiTpbZvNn6b2KglQxQGBX0
         cAw1C4xStlNJeAj/1X1NJxTLtqepduPp0Ckef6O2mldyDOo99+Mn9eTYpXhG/QIzRqbH
         QUu4mdAaMHfo0tphWtsmlIyRPSbbF6NcUMU0AHKSbr9s30PC3CiujS+2bM/GUxSbTiR0
         qZKykm6QBA5yfnF1x7T5NjLx067biFVj33g12Vo11Fj6x2b94HvG/Jxcj9OK2MhjQ4ie
         iX7rQKChMaeUCNX7T9Wv02BkI9pyk908gsGPiwThCx4V42ls2s82mRlsQnYHC03O7gam
         Dnvw==
X-Forwarded-Encrypted: i=1; AJvYcCVgv994tBmx6hun5kb0xU8fe/BK8HH/1GzyFFKf0fPBHESEByH2umKI/izkM7LUdzPR1dnBxlFKzOS/@vger.kernel.org
X-Gm-Message-State: AOJu0YwY9H+we47AUUNkNT6TBTwK9m4t7AS+ftaC++O7k9DA9k+TZhQS
	mLQtwsAduZeKDbl5HDEn3+hfh9zA9OzY7C661299tG6e+qFvUNWHy9D9lxdRd3s944o=
X-Gm-Gg: ASbGncs9Z8cAfKAB1hvUl8EtPgTYPxoqnQ2/U+KlF22+Vk5Y9QCX0mgZ+bLBkubdfN2
	ZicvAEAnMKPa9At96t8mF0DeYVbOajH37PgiCFAyMsiMK3NxXqqoz7xqJl8mUHBMmuBkvvf1QbS
	FfvMPmzusOsHsRsMwibhYNo7Wxj5mvcFwSI4dXH1XAL+0SqCdF/s0Cl73Ldm+O8zG7ufrbuS8lm
	qQhmFx8QOZyJiudFCeLdKLj5b3xgDImpordW5viePfZu0f5NGUrGOsUIrzBzWX3ufogfQdaWDiF
	dzFim/He1bRKC2TUqpLoI3hYv/W9Fhpj1SzeZkHCG3NrKDeHFhifKF55c0nO+cDsPdXmbQg=
X-Google-Smtp-Source: AGHT+IGjSSZuolaUpbJOSDgxdNJ2rz6g6jIUWqfE+ln3NvBoOq+EqOxlPwszxtc7pzssoDHlu8HO3g==
X-Received: by 2002:a05:6a21:62c9:b0:1f5:7366:2a01 with SMTP id adf61e73a8af0-21fbd6925a5mr30398731637.37.1750299638092;
        Wed, 18 Jun 2025 19:20:38 -0700 (PDT)
Received: from x1 (97-120-250-80.ptld.qwest.net. [97.120.250.80])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b31c84be11fsm2584945a12.78.2025.06.18.19.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 19:20:37 -0700 (PDT)
Date: Wed, 18 Jun 2025 19:20:35 -0700
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
Subject: Re: [PATCH v5 6/8] riscv: dts: thead: th1520: Add GPU clkgen reset
 to AON node
Message-ID: <aFNz8/m7q4T2qSHd@x1>
References: <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com>
 <CGME20250618102231eucas1p1ec99058179825cb1250a1f189313b3eb@eucas1p1.samsung.com>
 <20250618-apr_14_for_sending-v5-6-27ed33ea5c6f@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250618-apr_14_for_sending-v5-6-27ed33ea5c6f@samsung.com>

On Wed, Jun 18, 2025 at 12:22:12PM +0200, Michal Wilczynski wrote:
> Add the "gpu-clkgen" reset property to the AON device tree node. This
> allows the AON power domain driver to detect the capability to power
> sequence the GPU and spawn the necessary pwrseq-thead-gpu auxiliary
> driver for managing the GPU's complex power sequence.
> 
> This commit also adds the prerequisite
> dt-bindings/reset/thead,th1520-reset.h include to make the
> TH1520_RESET_ID_GPU_CLKGEN available. This include was previously
> dropped during a conflict resolution [1].
> 
> Link: https://lore.kernel.org/all/aAvfn2mq0Ksi8DF2@x1/ [1]
> 
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index 1db0054c4e093400e9dbebcee5fcfa5b5cae6e32..f3f5db0201ab8c0306d4d63072a1573431e51893 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -7,6 +7,7 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/clock/thead,th1520-clk-ap.h>
>  #include <dt-bindings/power/thead,th1520-power.h>
> +#include <dt-bindings/reset/thead,th1520-reset.h>
>  
>  / {
>  	compatible = "thead,th1520";
> @@ -234,6 +235,8 @@ aon: aon {
>  		compatible = "thead,th1520-aon";
>  		mboxes = <&mbox_910t 1>;
>  		mbox-names = "aon";
> +		resets = <&rst TH1520_RESET_ID_GPU_CLKGEN>;
> +		reset-names = "gpu-clkgen";
>  		#power-domain-cells = <1>;
>  	};
>  
> 
> -- 
> 2.34.1
> 

Reviewed-by: Drew Fustini <drew@pdp7.com>

