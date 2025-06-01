Return-Path: <devicetree+bounces-182085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC8FACA001
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 19:40:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D190816405C
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 17:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99FDB1CAA6D;
	Sun,  1 Jun 2025 17:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="DyoOMtCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D3C14F9EB
	for <devicetree@vger.kernel.org>; Sun,  1 Jun 2025 17:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748799643; cv=none; b=dFsXg9B/J33y/fa9hJ7siRrHyeDIxLyTDLQwFhoj4J1/yv362Poo35PTlFbfCUnrrf/k/XUyhZy2EhMigVar0vL8bwYGHQgBNcFJvDTom4hSvOAPJW8hwB2XAqA7NOLYUftv80hsbjzamMMDgJZPR0enUcqtrtHNo5PVX6qdEc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748799643; c=relaxed/simple;
	bh=fHU9vAayxyS9M23CCsLIv4yQasA8GWOU54cbEzhGxx0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UzEKazZMKeHeAERmIMz3+EnxAskIQ91F1inobpR1t3VNM53jUYDC8tBQ/lbqR/fCDepKewvDINkjBgWpSM4ilxJhqpeSsCntiO05yyFeRAvK4HhnpKOKb70lm9pIW9xj17genT5WYlNbjdMLNqOc+aKP7s3xhHAJrcuGqNjQr6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=DyoOMtCI; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-745fe311741so4068168b3a.0
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 10:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1748799641; x=1749404441; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FGcwYr4Y+MLOa5A3Y1t4BMM/OO3+HUq+DjYuxkG81Yg=;
        b=DyoOMtCIhyJJoviaMXwpyCRnNq2v/HAc5CzrlidKBPhhfLpKatlK1fGkiAJAnpykDm
         Z2dT3NAUNcC5FwuaeoYpzVCyl74+aYtiwoSF5cIPzAV+Gvqi19o8NBf0aBsZXALPqFbr
         VMD5u8p3oVMVwW24sAhaZYnzPsPwWY3p+pHZ7yIRRgaT3gQiAFpudLot0IcuxDeX+qOW
         Ir1XSImh6ew+HE78IgjH8bZ+ELM+tf921nzsPEQqdWivCMlUumcNmBbbzYYcGPnD+V/8
         K/YOZCSFVr43Zan+i4abn/wGNaC1kvAyo0updgFdsXPz8SiLIXaWElDhrS+iVpirYgV+
         UwHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748799641; x=1749404441;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FGcwYr4Y+MLOa5A3Y1t4BMM/OO3+HUq+DjYuxkG81Yg=;
        b=P/MmCzU+Jf8NTEupJ7/NB/miY00MKmjd7ddsvLzswosozIs8P0vkFydal26NDlrG1g
         RzApj8jC5AriTSN1K2H3jay9HX0Dtvk+IHhyfzAwAkFvlkc2DjXN5gT/0y76GulN5vmQ
         J3Kx2dNixcK+yS2XtQQfJTEt91Q0UsJPZck5ivUh69sN+XD4j/Us8DxYS/GOiT9ylj3y
         O987ChhxiT8clUKeMeKYvo+/VwzA1n9uMYdeOJVI0XYd2o7kTOoTmLiCOLBzkhvOVmdH
         X1eu6ps5IOMvxwyeuYBCQ7WG7fh1WSHGVvJpfTpoysTkG8NSeftAsmsny2oMALuAp4a0
         9TJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWOZULFa3C0UKMK3Y6N4bLEnl7UxcU2DDlEtk6suTkGS6Bcb0exHPS84/tovtVXLA0BTrWibjGtpag@vger.kernel.org
X-Gm-Message-State: AOJu0YwcaeKZLM6hTGIV003LByoNnNXY2VJ0hy65LQB+ak8KIz7usLFy
	hQB/Ij2vcjhaSKB7OaP4yrtwk1cPWTdp2a1LneAPJ/t2QM2Njm0gJa9wqamnKt9FzyU=
X-Gm-Gg: ASbGncsMo2sYiWYgiL0IcQRXP14PkOzllfadApaY+QL7qkgp3RO90h6eELZM9iFiTRG
	GramrSqaUUOJcMFHr5mxFSLskgNZm9vN7c2PuIcR6Fs98vpRQvOS3UKaoGMt7T9ahwpjtOebpF0
	zAr9p82kca79mVDAM5JlinUM0whMfBtD8UaZMCLgdmWtr07EnR4efr9VeE8+3GfODQUpGpN+gR/
	6/wyC5adJJc3F7vFv9RwDZvxbFqnK5nOJAE0W+W4hCWmdT295mY2Jn/H0kdGOULdNbcFYWYO7T0
	kO3AB7Ics1a+dvwFuBAt2zkwVzDVjqLC
X-Google-Smtp-Source: AGHT+IF2ujxBrmibEGhRD1r5ubHgFgoV1MofVKpoxo8rCC1rOV+5p1PoXq7rqs5EnyuTlJRwnhzInQ==
X-Received: by 2002:a05:6a21:600e:b0:1f5:8622:5ed5 with SMTP id adf61e73a8af0-21ad94e20c0mr17874238637.3.1748799641313;
        Sun, 01 Jun 2025 10:40:41 -0700 (PDT)
Received: from x1 ([97.120.245.255])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afeab6b2sm6352890b3a.57.2025.06.01.10.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 10:40:40 -0700 (PDT)
Date: Sun, 1 Jun 2025 10:40:38 -0700
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
Subject: Re: [PATCH v3 5/8] riscv: dts: thead: th1520: Add missing reset
 controller header include
Message-ID: <aDyQlqXhdgBAoR8D@x1>
References: <20250530-apr_14_for_sending-v3-0-83d5744d997c@samsung.com>
 <CGME20250529222407eucas1p233be883d7e84e5a000e4d44b37cf7265@eucas1p2.samsung.com>
 <20250530-apr_14_for_sending-v3-5-83d5744d997c@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250530-apr_14_for_sending-v3-5-83d5744d997c@samsung.com>

On Fri, May 30, 2025 at 12:23:52AM +0200, Michal Wilczynski wrote:
> TH1520_RESET_ID_GPU_CLKGEN and TH1520_RESET_ID_GPU are required for GPU
> power sequencing to work.  To make these symbols available, add the
> necessary include for the T-HEAD TH1520 reset controller bindings.
> 
> This change was dropped during conflict resolution [1].
> 
> [1] - https://lore.kernel.org/all/aAvfn2mq0Ksi8DF2@x1/
> 
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index 1db0054c4e093400e9dbebcee5fcfa5b5cae6e32..bdbb1b985b0b76cf669a9bf40c6ec37258329056 100644
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
> 
> -- 
> 2.34.1
> 

Thanks for adding the header back now that there is no longer a
conflict. I'll look at the rest of this series and the rust pwm series
soon, but I just want to send a quick Rb on this patch right now.

Reviewed-by: Drew Fustini <drew@pdp7.com>

