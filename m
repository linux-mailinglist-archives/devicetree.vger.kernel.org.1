Return-Path: <devicetree+bounces-187353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 967F7ADFB08
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 03:50:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4931F3A912D
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 01:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECB831A3174;
	Thu, 19 Jun 2025 01:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="zn0uKbAg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D15713B58B
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 01:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750297852; cv=none; b=ZD336nGR+VvjsGivFpNF+9T3IyteHVDiU5xdnZHHI2BjhKhL9G69rOWaaZjpm7VRm4gtFN780lxRb+hBnE/f8yIvNx6+7JeCsQVZtsCz6oMIH4qJKFx2xJ1lxRTPeRHBCRpuBEJeBEpFVBO0UajosgfBPWYna+1hCbfhkGu5nLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750297852; c=relaxed/simple;
	bh=LJIIB8Y9KBiJiHVobgfRu8lyn8BY9L9gB/pucGaNm4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AyCuqg66h1engjT1wLE5WlFeQHXDTapMf0BXaPbX9lqmHpjiIj9d9/RFvlx/rlMsYzkgsO+t/2fHrKmKpHrRGdzBn01fPX1+PIEr/UmFxnoyeyZY/AZRtfmIuDY+rofNR590ErEPFSZ5pG6h1bcUnMZUUxpgj0m4kln4eM6O6aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=zn0uKbAg; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-31332cff2d5so136488a91.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 18:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1750297851; x=1750902651; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=77PKh9SalLpybL3AAe7PoOLwMgQqtz9KiJ/uaTkWDSw=;
        b=zn0uKbAgSrLAvfDqV19BsF/Dt/jnN/PCgcpL+67bPnrihGF53lfSk3MyzGmTDP9FHd
         0ixUSsncp8J4U3gYoHVAcjhh1iqIYc/6J92wp45EmGAueHOjViZMFpNA690efLuVqbXw
         qFuYkM8n1oBLBSM/+tKqTB/MlNLM5Cvzuozp2vleI57k1W8WsRMYwr9zAXa5AHatGbvi
         +CrjzEw1U76ydJonHk9DyHLOExOGCntbzhMwUEklcl5LKtLl0xWyFkydOTuOwgw5gAhc
         ZJgNIXWLx6VE52aRN2NbjbzdXN39R2zk5i10bzIy18Rw/SZdIOAA05b/MfADPUJUn0yf
         VJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750297851; x=1750902651;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=77PKh9SalLpybL3AAe7PoOLwMgQqtz9KiJ/uaTkWDSw=;
        b=PjIzbUUELA8o4awrQc7Jzhn4rAvjSAHlTTEv3cWFMy6oiaF7nqWMUqha4i4DwyA5oV
         QO1sGasL/Y/2sDu9AJPb0oR3Nui1yyksxoQ5zI02yXRcnHZF7h/syVXMsUf/TE3/UpAj
         benpk6Md8YB6srhaCkLs4lxO17YFFAwp7xApx45ghLq06j3o+Bcu/1H62z2rDvss0raW
         dW5Ag12fpE+FBpS2pzANGZE5gfrEXLqnCMItkRAXW72za2qZAlMHYu/V/v97NyQL63sI
         /tKa7vVDD7DZs1x0hMAIh2z7av6ZX32somEq4JuvfTACXsXvDJeXFgvVPectFtjU6h1f
         kWSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhp48LS0DGD4pDLyiOUuRMNwtVIFtEWdhrKJCCXBwKD8+8Pyt+8L0nt+nYfu3mSnXuBlmrzGeSXn3+@vger.kernel.org
X-Gm-Message-State: AOJu0YyjAi8wUzrSWMDZy89vfM4qHhw+AJAXixXWg1RAe1IKhIIVRQMZ
	mdprZHy7fJFa2XNKQU+7OthJJpilKqzq/8MxFzwpK6lx+Qpl+2e7HL3gRCjy/GZ33a4=
X-Gm-Gg: ASbGncs1LgYmNYmhJV1Kn0t5/H94tubhGNxC1jZLSpHY55zloeWVrQh2a1Zoi2Fi1O1
	tC+AwTkxa5gKkD0Bvm3Jthch/Q9pEvfYGs1hhFhNgBajaKdTvi622usBVi8mkS6882Z5bNfB4Xe
	Mln19oc5X1bhEDtkgJOJ5MztS2p+nHqx6LfZmDvtBBo91LYOW6rQpSrY+LCYplQzUDM/1v7aLaX
	V/8pWsrNrVByL5trtAfJjBrVjx5Hcs/Qw/r4qumt2wClSuK/y5dSrgVmuvidoZX9I9XL0rDgKG0
	gx61YJPa01IbzpP1JcUa/r63GpgNA9WIJTZiidMsSM+r8dF54jQjAUYU9rm1nlA42ih0IV0=
X-Google-Smtp-Source: AGHT+IEH8ENEIXXiapQFn7dY5pW85bznCSDAM8YeveXgruCVaip94nhm+ZCyfl9XM7JJOLVmNJsDyw==
X-Received: by 2002:a17:90b:586b:b0:312:39c1:c9cf with SMTP id 98e67ed59e1d1-313f1be1c89mr31855817a91.7.1750297850614;
        Wed, 18 Jun 2025 18:50:50 -0700 (PDT)
Received: from x1 (97-120-250-80.ptld.qwest.net. [97.120.250.80])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3158a226f7asm811267a91.10.2025.06.18.18.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 18:50:50 -0700 (PDT)
Date: Wed, 18 Jun 2025 18:50:48 -0700
From: Drew Fustini <drew@pdp7.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Frank Binns <frank.binns@imgtec.com>,
	Matt Coster <matt.coster@imgtec.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v5 2/8] dt-bindings: firmware: thead,th1520: Add resets
 for GPU clkgen
Message-ID: <aFNs+PLgw1jqqiUm@x1>
References: <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com>
 <CGME20250618102227eucas1p26e8968805092c3ce0ecbe84e9724a6e2@eucas1p2.samsung.com>
 <20250618-apr_14_for_sending-v5-2-27ed33ea5c6f@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250618-apr_14_for_sending-v5-2-27ed33ea5c6f@samsung.com>

On Wed, Jun 18, 2025 at 12:22:08PM +0200, Michal Wilczynski wrote:
> Extend the TH1520 AON to describe the GPU clkgen reset line, required
> for proper GPU clock and reset sequencing.
> 
> The T-HEAD TH1520 GPU requires coordinated management of two clocks
> (core and sys) and two resets (GPU core reset and GPU clkgen reset).
> Only the clkgen reset is exposed at the AON level, to support SoC
> specific initialization handled through a dedicated auxiliary power
> sequencing driver. The GPU core reset remains described in the GPU
> device node, as from the GPU driver's perspective, there is only a
> single reset line [1].
> 
> This follows upstream maintainers' recommendations [2] to abstract SoC
> specific details into the PM domain layer rather than exposing them to
> drivers directly.
> 
> Link: https://lore.kernel.org/all/816db99d-7088-4c1a-af03-b9a825ac09dc@imgtec.com/ - [1]
> Link: https://lore.kernel.org/all/38d9650fc11a674c8b689d6bab937acf@kernel.org/ - [2]
> 
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  Documentation/devicetree/bindings/firmware/thead,th1520-aon.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/thead,th1520-aon.yaml b/Documentation/devicetree/bindings/firmware/thead,th1520-aon.yaml
> index bbc183200400de7aadbb21fea21911f6f4227b09..3365124c7fd4736922717bd31caa13272f4a4ea6 100644
> --- a/Documentation/devicetree/bindings/firmware/thead,th1520-aon.yaml
> +++ b/Documentation/devicetree/bindings/firmware/thead,th1520-aon.yaml
> @@ -32,6 +32,13 @@ properties:
>      items:
>        - const: aon
>  
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    items:
> +      - const: gpu-clkgen
> +
>    "#power-domain-cells":
>      const: 1
>  
> 
> -- 
> 2.34.1
> 

Reviewed-by: Drew Fustini <drew@pdp7.com>

I'm wondering what tree this should go through. Ulf took the original
patch that created the binding.

Thanks,
Drew

