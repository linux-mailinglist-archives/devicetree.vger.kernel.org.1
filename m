Return-Path: <devicetree+bounces-168781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 983DAA94534
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 21:10:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B38AC3BC99D
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 19:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 730F71DF256;
	Sat, 19 Apr 2025 19:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="bdbKUuBD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5251DC98C
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 19:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745089802; cv=none; b=HvitCoys0THhUHysPrNYdGDSLxmm4AtOaJbSmlbk3WAsPCxxjNc8qwAYTO+teAMg/z6A7HYWwdIO4unidDs1vJyJciwNOva7EH+7o8DuurewfnESV/alWitngYLb/ytpTi99LpdSOQmUuAkeowNRjJttmHSticMk2d/Fpr1TeGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745089802; c=relaxed/simple;
	bh=CvUo7ZEVGQkRI/Tl+PNYklXAI1DxJ6GpVsoi7Pb4tIc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MOcLI0aao3fQbjWziYX6Yspi3aTWbRmlTxE2tEBQszoMYDDfZLToHMdg03bUxDNbPMsU4HNYbgjduUe9Gl5DA8g2r+eUu22OnrWqn6OBy/5LahjKbcB0hL+hAG7c6GtDl4wqIC2M8A41b/vXiNjMJd5T5B7gWVkC5EGzyMYEhsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=bdbKUuBD; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-73712952e1cso2675478b3a.1
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 12:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1745089800; x=1745694600; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Deyh+kw6etAKus8FLe7WroHoH3C1oetm0Mie3XbPmnk=;
        b=bdbKUuBDsSWg/MznC+jTbYpxXmuy4oUSs4iSTrcbgRCG4NsinWYtNdCxr+ngxIhcdX
         bYJ8y+x29GSBmxwXKWKIXqQ9V3M9yADuXD1BtBwUv97zqPdkECZltu8j5yigl08iAulx
         e2FcnqL50TZlZKOzRGws5bU5+bCj0E4ICwm+LbbqqS/K86K4JqXAWMk9HGGfrillQVTd
         2iqxQUoeQTlUBUyPToNFBUwSqe/ELiYJjgbjw1yqTjGaJfSv+A+UjhhFqkOUwkyS8ByO
         GvBQL0uHfkiTiNwlT5a8HrAMbQCIQtbekxyRA7P698XNAvC5VEaCG2WStVKTDrcy0Psi
         9nRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745089800; x=1745694600;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Deyh+kw6etAKus8FLe7WroHoH3C1oetm0Mie3XbPmnk=;
        b=A1xK796gMsbsfrgaGHLwNOMHeyCcZZhtHttwOmrAh+OxHk8JyDrqyu2iNQU0W+DCoN
         dne3EZpGfrGEGv5uAgqehqjTuKTUQEfhvpUptUzaxFrQNlM5zFrRKIG3zYSt92FgG1sN
         QQ9SAyJejGCHcLY0IwwSTll4Wis8KW2f+7Kq6UwVdqpPo78e4bBxkIXVnce14jae3/lM
         vqOsZ0OjhpfOXijXL5/5ryErtmHYE04P7ijekX708YcvN3UMCx2LO3PzxeLFQSxx7veq
         J8arRgQJ6qyW2Eu5EoLYPdd8miJH1mSRnZCqB7/l4FG4gXzs0CGi3GgH6+D694NofcCb
         Xd+w==
X-Forwarded-Encrypted: i=1; AJvYcCVljmOCmO54Dj77Fj1YlKIWhqJAQsNDx17UHegGHMCn63j5bP5fOq0iycVhZ9H0WJrxXvJSD82X+hp3@vger.kernel.org
X-Gm-Message-State: AOJu0YxWRYGGhwLXMgObfnrN3CDRp9pxjORuSgt/jhmRffWey2E/iTck
	CTvyufZXd7T1bCqGgYBtnVTSosFL9kYcmQCB014fOfqZWYcynHaTx6YScnSrcfs=
X-Gm-Gg: ASbGnctNM9WG9e7OaULzF+TZzC20wZjkzzfyoTiMqzMmnC/qOuFbR/sPQZWlzAHuZQN
	JcZviRKDur0Uy3tiGVFxfXiwfzItqEtkVDybc7EaLe/4A0Pmte7wz1xeMwNXIlkFJi4dharTur3
	zwI9qXk45xBrtsrFa/w7Wc7iFj44n0BfY8YMKQHQP8RjgdW1IHli+DoZNmD3P7s7PcgG0lGKQd3
	tPuuSVS5zerzbbokqenFfJYdeFL2GaSy3ip7RdfErQJYi1c3VLCffVuJWEcch1M7cCaV4KUKk7m
	K3BgiOCyU07546uaGfPcEQP27ij9v2CN++Csz6w1g7v+6k8=
X-Google-Smtp-Source: AGHT+IEulD0uH2vbpuR4f4ZA7Mcq0ByRrFg1az3eKDUNZKezFcapWJg4o30Tvo+Xd7BMD278/s2TCg==
X-Received: by 2002:a05:6a00:9281:b0:736:9f20:a175 with SMTP id d2e1a72fcca58-73dc1442ee6mr9314401b3a.2.1745089799961;
        Sat, 19 Apr 2025 12:09:59 -0700 (PDT)
Received: from x1 (97-120-122-6.ptld.qwest.net. [97.120.122.6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73dbf90d7easm3611489b3a.84.2025.04.19.12.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 12:09:59 -0700 (PDT)
Date: Sat, 19 Apr 2025 12:09:57 -0700
From: Drew Fustini <drew@pdp7.com>
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, guoren@kernel.org,
	wefu@redhat.com, jassisinghbrar@gmail.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, frank.binns@imgtec.com,
	matt.coster@imgtec.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, ulf.hansson@linaro.org, jszhang@kernel.org,
	p.zabel@pengutronix.de, m.szyprowski@samsung.com,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 20/21] riscv: dts: thead: Introduce reset controller
 node
Message-ID: <aAP1BW3RmMb/Irya@x1>
References: <20250219140239.1378758-1-m.wilczynski@samsung.com>
 <CGME20250219140316eucas1p29a76023868946f090f261bf78d5103e3@eucas1p2.samsung.com>
 <20250219140239.1378758-21-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250219140239.1378758-21-m.wilczynski@samsung.com>

On Wed, Feb 19, 2025 at 03:02:38PM +0100, Michal Wilczynski wrote:
> T-HEAD TH1520 SoC requires to put the GPU out of the reset state as part
> of the power-up sequence.
> 
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index 474f31576a1b..6b34aab4b455 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -7,6 +7,7 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/clock/thead,th1520-clk-ap.h>
>  #include <dt-bindings/power/thead,th1520-power.h>
> +#include <dt-bindings/reset/thead,th1520-reset.h>

Are you okay if I omit this hunk? My thead-dt-for-next branch is based
on 6.15-rc1 but thead,th1520-reset.h only exists in next until the merge
window.

>  
>  / {
>  	compatible = "thead,th1520";
> @@ -497,6 +498,12 @@ clk: clock-controller@ffef010000 {
>  			#clock-cells = <1>;
>  		};
>  
> +		rst: reset-controller@ffef528000 {
> +			compatible = "thead,th1520-reset";
> +			reg = <0xff 0xef528000 0x0 0x4f>;
> +			#reset-cells = <1>;
> +		};
> +
>  		clk_vo: clock-controller@ffef528050 {
>  			compatible = "thead,th1520-clk-vo";
>  			reg = <0xff 0xef528050 0x0 0xfb0>;
> -- 
> 2.34.1
> 

With the above caveat:

Reviewed-by: Drew Fustini <drew@pdp7.com>


-Drew

