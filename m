Return-Path: <devicetree+bounces-186030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A123ADA2EE
	for <lists+devicetree@lfdr.de>; Sun, 15 Jun 2025 20:03:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 462123AF087
	for <lists+devicetree@lfdr.de>; Sun, 15 Jun 2025 18:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0822327BF84;
	Sun, 15 Jun 2025 18:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="DDf57dHe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BD0261362
	for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 18:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750010612; cv=none; b=q2HjbG6gud7+C33tPi5YlaTRl5J3PHqwVUCjpTzR4Mxfo35Scwmhtw3W01He5B0wqwVZHT7y8kdUeINA2ZS4H5NlXZniCAkUkVFgsgvCw98M2Pb+fbhr4V9r3xCIg1hHgDiGaRur9twgEXOL7eEs9w8d1xOKdB1sEItbi6flG4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750010612; c=relaxed/simple;
	bh=Ki+Rg72ZPSx0d8X68EYpD4TuBAbsUU/QkelWzIu8l9w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u7EMNrJkaWs8Z6tz7zaUFpOXI9Yx1yvdyxi0K+I7/hEhBjD4E34x0+TptgAgIUJk5QGzXPoJ9LTjdx2wInvWEv0BLxJWsGdh2uF9QugBTojo3XJoh3fUL9R0D4SVXDIriVkuQ6PXs/fK0R/9pxrSp6IAXgyci7mK3bAHov5lse8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=DDf57dHe; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-747ef5996edso3197735b3a.0
        for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 11:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1750010610; x=1750615410; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3x1mZR75wgxhPUeoS08uV2B3ZSN0hsffb3DgZbseGCk=;
        b=DDf57dHer0I337g3/efBF3o733zQOlm74AvZORJeWThnRuhi2KOMN0n90r7kaFjGD0
         wSBaaySZqN7LlsKhCNoFD9Ul16FYJJfP3kmOBZ9i9QO3WDQUE5uurj8p6m5G5sl+b1WG
         ucp019rxiB7kxU96WeefUBrQYIH2tlGrpTAtWCHstgvfMWHTwMZDJiib8c5xSV/L+Rpv
         DF4D+VJdnvm4WNLOL8N5XdQ8oAMWvjIuFsec8vuXrT2pVOmGhVKLWAvCXOQ1X35LGOlS
         cbi2Q8F6/rTUdfISGXFgalSbHGe7EGvgd/QterGb7lmJDvFOBcjxNEETc3LIVbL2GoNd
         NIQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750010610; x=1750615410;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3x1mZR75wgxhPUeoS08uV2B3ZSN0hsffb3DgZbseGCk=;
        b=El2dW3kG6cb6Kfbbu8LJbjmPgd44bF5/GUMu50DTd92VQ7wffXt+0PP0pl7cuJDnzm
         Ro67TfvZsZRq4TdInCcHtD3yaehNYeDtuMMU2vv5yo4KwCUNooGkOzNuVmIMwBwjWTlN
         mjw8DtS9bX0AJS5IwKRy63k1BUuiMMAvbOvVDjmG9tBBJdnXHutsGQqnjYqPMDmOi9Yk
         A+f4fEEuIsd+VXDhmasNWCu2ehIWzn8u8Z/pTvjq678DUgx62De6SdRTpRH02SGS4661
         bV1IXq43F9a4+3irCUfe5ICGkXtHeaoCgWxyw2t0Tm6wHwQ1rCxFZd5MjoGWD6Tx9rUv
         H4Rg==
X-Forwarded-Encrypted: i=1; AJvYcCW74Zej8kkKufTeQ2BEFm8s18uZEPYEQsXYPlhyVyZd9NU9UMv/XPBzc145zK38bsZUzD1oASM/dLue@vger.kernel.org
X-Gm-Message-State: AOJu0YyUQhmAHqUyrdFX0cQjJPz9ijv290xeGGWcbkSIg9UZWPOsiPTy
	e9rVPbKPZKJ/329VH7XQ5zrudjb+mppum1nwfq1ZlmZ2pmuE9biGHZVW81gw1HnOYCw=
X-Gm-Gg: ASbGncuNyYCH0G2uIKbUg4ZASHBcMezUdoXs2HKuuRwSFUGF06mwqr2GYfM6HPC/sHX
	df8++oMkHpQ4gP64nA5CbPTzLGGGMnUbyYC45JCxEMCewN9uv0NrzAwQK1SNkzbel8VvQEJ51+u
	h9RbZSHO4uDdXGAdzkl6hX40ndQ/TIkDuwflfTZIk6neBWPjdgCxcDdjYFw3KBL0QeJxNkixa6w
	loLokBwtVHkcMHm4gNddeiFtxKcaChrEZ+PSKyfBoYmYw+qHDEm5TFadJTGNGc0btkYGimUvSRE
	TnauHadjzYr3DT3Azi9r8grF+Vz18KALgeE3JM7Aa/Y3Xpna6UqmbZkMkegxaNekcmCP3aU4Xx5
	OtrgEmVm7
X-Google-Smtp-Source: AGHT+IFpIn7TT0AiybQDiWVZF1Z4qdpPM6E8iz2nG1KaTGZ1pllTxFamD1VdBv+3cD8hZVxtHssjLQ==
X-Received: by 2002:a05:6a21:8dc6:b0:1f5:9208:3ad6 with SMTP id adf61e73a8af0-21fbd5e0f1amr10461747637.41.1750010610502;
        Sun, 15 Jun 2025 11:03:30 -0700 (PDT)
Received: from x1 (97-120-245-201.ptld.qwest.net. [97.120.245.201])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2fe168987esm5294629a12.57.2025.06.15.11.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jun 2025 11:03:30 -0700 (PDT)
Date: Sun, 15 Jun 2025 11:03:28 -0700
From: Drew Fustini <drew@pdp7.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Andreas Hindborg <a.hindborg@kernel.org>,
	Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
	Danilo Krummrich <dakr@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Benno Lossin <lossin@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org, rust-for-linux@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 3/7] clk: thead: Mark essential bus clocks as
 CLK_IGNORE_UNUSED
Message-ID: <aE8K8LjHsc/gTobD@x1>
References: <20250610-rust-next-pwm-working-fan-for-sending-v2-0-753e2955f110@samsung.com>
 <CGME20250610125334eucas1p25545871cc703378afed320da70c2d2f3@eucas1p2.samsung.com>
 <20250610-rust-next-pwm-working-fan-for-sending-v2-3-753e2955f110@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250610-rust-next-pwm-working-fan-for-sending-v2-3-753e2955f110@samsung.com>

On Tue, Jun 10, 2025 at 02:52:51PM +0200, Michal Wilczynski wrote:
> Probing peripherals in the AON and PERI domains, such as the PVT thermal
> sensor and the PWM controller, can lead to boot hangs or unresponsive
> devices on the LPi4A board. The root cause is that their parent bus
> clocks ('CLK_CPU2AON_X2H' and the 'CLK_PERISYS_APB' clocks) are
> automatically gated by the kernel's power-saving mechanisms when the bus
> is perceived as idle.
> 
> Alternative solutions were investigated, including modeling the parent
> bus in the Device Tree with 'simple-pm-bus' or refactoring the clock
> driver's parentage. The 'simple-pm-bus' approach is not viable due to
> the lack of defined bus address ranges in the hardware manual and its
> creation of improper dependencies on the 'pm_runtime' API for consumer
> drivers.
> 
> Therefore, applying the'`CLK_IGNORE_UNUSED' flag directly to the
> essential bus clocks is the most direct and targeted fix. This prevents
> the kernel from auto-gating these buses and ensures peripherals remain
> accessible.
> 
> This change fixes the boot hang associated with the PVT sensor and
> resolves the functional issues with the PWM controller.
> 
> [1] - https://lore.kernel.org/all/9e8a12db-236d-474c-b110-b3be96edf057@samsung.com/
> 
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  drivers/clk/thead/clk-th1520-ap.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/thead/clk-th1520-ap.c b/drivers/clk/thead/clk-th1520-ap.c
> index ebfb1d59401d05443716eb0029403b01775e8f73..cf7f6bd428a0faa4611b3fc61edbbc6690e565d9 100644
> --- a/drivers/clk/thead/clk-th1520-ap.c
> +++ b/drivers/clk/thead/clk-th1520-ap.c
> @@ -792,11 +792,12 @@ static CCU_GATE(CLK_AON2CPU_A2X, aon2cpu_a2x_clk, "aon2cpu-a2x", axi4_cpusys2_ac
>  		0x134, BIT(8), 0);
>  static CCU_GATE(CLK_X2X_CPUSYS, x2x_cpusys_clk, "x2x-cpusys", axi4_cpusys2_aclk_pd,
>  		0x134, BIT(7), 0);
> -static CCU_GATE(CLK_CPU2AON_X2H, cpu2aon_x2h_clk, "cpu2aon-x2h", axi_aclk_pd, 0x138, BIT(8), 0);
> +static CCU_GATE(CLK_CPU2AON_X2H, cpu2aon_x2h_clk, "cpu2aon-x2h", axi_aclk_pd,
> +		0x138, BIT(8), CLK_IGNORE_UNUSED);
>  static CCU_GATE(CLK_CPU2PERI_X2H, cpu2peri_x2h_clk, "cpu2peri-x2h", axi4_cpusys2_aclk_pd,
>  		0x140, BIT(9), CLK_IGNORE_UNUSED);
>  static CCU_GATE(CLK_PERISYS_APB1_HCLK, perisys_apb1_hclk, "perisys-apb1-hclk", perisys_ahb_hclk_pd,
> -		0x150, BIT(9), 0);
> +		0x150, BIT(9), CLK_IGNORE_UNUSED);
>  static CCU_GATE(CLK_PERISYS_APB2_HCLK, perisys_apb2_hclk, "perisys-apb2-hclk", perisys_ahb_hclk_pd,
>  		0x150, BIT(10), CLK_IGNORE_UNUSED);
>  static CCU_GATE(CLK_PERISYS_APB3_HCLK, perisys_apb3_hclk, "perisys-apb3-hclk", perisys_ahb_hclk_pd,
> 
> -- 
> 2.34.1
> 

I'm okay with fixing it this way for now and revisiting the parent
relationships later.

Reviewed-by: Drew Fustini <drew@pdp7.com>

