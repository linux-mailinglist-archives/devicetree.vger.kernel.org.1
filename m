Return-Path: <devicetree+bounces-246426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F065CBCC73
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:35:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5EDE23007C67
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 07:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B943A328B7D;
	Mon, 15 Dec 2025 07:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DLfquJmP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2433328B5F
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 07:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765783828; cv=none; b=Hz1rfm1y+AIhz0uNMPuE7h6q6fpSsMA/ManX7JHsi32hXh6PV8grVvvgqNn3ymDJWxvwrjWQvLUp9YC9nHWCB95XPIHoeF+AeO4ahcmB4JCzYgIjr9gnMjU6HTKWiRty6p4oym/Es7iqCypPGr6ndeIFVpPEaNJxtVXvV2QL5+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765783828; c=relaxed/simple;
	bh=ny2OD9BiO7SHTpHigNLl/XImUrXL4VCXAvUSIHW8BGk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bFiRVxRo6wc2PjyAaWYVXy9z1nph6h0QExXI0vkQKMeL1/CI1hMxqNpT7w1JQUmRMxdiqqyC8JT8P8ZGk/s7cHiWbP8JJsdJO1RZrMt5smfgPW6lzMRWzilzo/35BrUrwgAC1PqOgQ034WstuhA9oLjjA8d2qs1bqtUshbTEIS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DLfquJmP; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477aa218f20so19739855e9.0
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 23:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765783825; x=1766388625; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R1Xd5pQpDiVW5fKbBbRiS4/q3sr+HKaLlW1Eq/UI+9o=;
        b=DLfquJmPnJMVuFRtn4oBWUX7s3WxUFm7ZjlmW1HXETicMMjSlilhnYNl0NlBQX8m/C
         2TMN8QRR2rOQ91aYOqt5zShn7Ri0DsymP/1OlPlrQ6pACK1EpgKvmnNQw1zY68Z2Ua8D
         jBmVf8M4AtDDDI5ItZkmgL2j3L3eKMF/9wXBPa8Izw+vdhsDfvnKWeUuu2Md/ob5aZ7S
         8X6cmRX+x/sUr5ZwyDyrUZHwZeRAUyp/DGHvvh4h+UBWjjRgaaJCe9hHqgnKd0aLZSD7
         Ht3+lfPoLdZcBsfPIeBHaEtUnXkhVNaY1ROgDzCRn/UjoW4dbVLqDpOSr2y7NW14Kn0F
         v46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765783825; x=1766388625;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R1Xd5pQpDiVW5fKbBbRiS4/q3sr+HKaLlW1Eq/UI+9o=;
        b=kO52VUPg7qB1JdcUx/0GyOiLvOaWLj2vPPg4+y3UfJ2ua6GV3sMcxQTbHwsh6S5uVu
         x8czOW8FSNuhkDxz8CyGUNdlIVb5ZvkMCvlnVJUtzJYNlljRyJShXN4w7hNcFXzwsPK8
         C3U+cX2Nbfk+wKni6rbqdClwPsCeofh8Ja+K+xmc2Jhh+0ltfSf15LjQ8Lf7VHKZ7LTO
         xetB3q1QAvnIyJNe3aeDk0qTTCe7Ge/KIdlRwiihnhvebJEL/0ImoRtddUy6L3S4KIUx
         BxahaxrrB1jBl1V4EpQ13hrP9lz8mMXhDujAdCnF6c4X7vo/RhRyijvbH1VwIwVX5/e/
         k8yg==
X-Forwarded-Encrypted: i=1; AJvYcCXNWs3SsypWti0GO69zFE+QYTTzaifDLNwyvlFEIz0sRhoFSi40jEXzHYai6FMiXh3LEaEAmxxFYRFR@vger.kernel.org
X-Gm-Message-State: AOJu0YxYyIUm7TBbS2NQ7yDLjC4YmhJAx9+6ftTJ9qCUZwXQpoeOQCMA
	H+HTmGP/4S2MlKTPTgNBdXkWoyFSfQs/X90H8rEcqrYML7X+koqlbaK/vGqNgg==
X-Gm-Gg: AY/fxX5SwX7ky+9IoJdC38tPeN6Ubvxq4Ee1VlCYWcsSKGvyAVIxKQquYvWlxoU159X
	AMuYjyARqrdsvEAvZPwn6Qxo0NxYEokZQUbWkB4YlnoY95kKBZ+YW5rvmMmBzY+VrhGS//4PNpV
	ADiq97rGhZ14xffgcNi4Rm1PJmeL6Y7NSBliZR3jq8rwLssnTR76zHt7D5LVKHv6XMcIhWNKGIe
	B4ztqI2TDPj0hEMRDTdfeodpkVNW4skQayNWD/FpwDc332TrvvwNGhSYWaLnlndSVTPx5NGA9WH
	kyeQgZAkYJCtP7tHBMiTQGRlIMy8sGro3KeNZpFDQGiU2bFqdZhadZHGN73fYJjf6gXdmm9rD3o
	hiEnBsNMRTecVtBTZecjBDBUyqNJf4gfgBnGzaSZZ2Ot9+gF6TbGyoVn/rMqox96yUmUC6uXIVe
	X9+sHuWCcqTX6NqHU9KsiGfNpo5ECrMONbSN9CefwqRn0/t0qOn9cI6lWN8A5huN2F
X-Google-Smtp-Source: AGHT+IHZi4YEyjXSh3+xr8wfS4Ptfco/QiJmJQcOuGES3JsEx8a6lhUx7zm74MVICNiYUDhJ7dAdnA==
X-Received: by 2002:a05:600c:6090:b0:477:a21c:2066 with SMTP id 5b1f17b1804b1-47a8f8a7efdmr89529355e9.5.1765783824606;
        Sun, 14 Dec 2025 23:30:24 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-430f280cf30sm13151751f8f.3.2025.12.14.23.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 23:30:23 -0800 (PST)
Date: Mon, 15 Dec 2025 07:30:22 +0000
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Bonn <jonas@southpole.se>,
	Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
	Masahiro Yamada <masahiroy@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 4/5] openrisc: dts: Split simple smp dts to dts and dtsi
Message-ID: <aT-5DoreXbGm_QMn@antec>
References: <20251214180158.3955285-1-shorne@gmail.com>
 <20251214180158.3955285-5-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251214180158.3955285-5-shorne@gmail.com>

On Sun, Dec 14, 2025 at 06:01:44PM +0000, Stafford Horne wrote:
> Split out the common memory, CPU and PIC definitions of the simple SMP
> system to a DTSI file which we will later use for our De0 Nano multicore
> board device tree.  We also take this opportunity to swich underscores
> to dashes as that seems to be the more common convention for DTS files.
> 
> Signed-off-by: Stafford Horne <shorne@gmail.com>
> ---
>  arch/openrisc/boot/dts/simple-smp.dts         | 25 +++++++++++++++++++
>  .../dts/{simple_smp.dts => simple-smp.dtsi}   | 12 ++++-----
>  arch/openrisc/configs/simple_smp_defconfig    |  2 +-
>  3 files changed, 32 insertions(+), 7 deletions(-)
>  create mode 100644 arch/openrisc/boot/dts/simple-smp.dts
>  rename arch/openrisc/boot/dts/{simple_smp.dts => simple-smp.dtsi} (89%)
> 
> diff --git a/arch/openrisc/boot/dts/simple-smp.dts b/arch/openrisc/boot/dts/simple-smp.dts
> new file mode 100644
> index 000000000000..174c2613c419
> --- /dev/null
> +++ b/arch/openrisc/boot/dts/simple-smp.dts
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/dts-v1/;
> +
> +#include "simple_smp.dtsi"

This should be simple-smp.dtsi.

> +
> +/ {
> +	model = "Simple SMP Board";
> +};
> +
> +&cpu0 {
> +	clock-frequency = <20000000>;
> +};
> +
> +&cpu1 {
> +	clock-frequency = <20000000>;
> +};
> +
> +&serial0 {
> +	clock-frequency = <20000000>;
> +};
> +
> +&enet0 {
> +	status = "okay";
> +};
> diff --git a/arch/openrisc/boot/dts/simple_smp.dts b/arch/openrisc/boot/dts/simple-smp.dtsi
> similarity index 89%
> rename from arch/openrisc/boot/dts/simple_smp.dts
> rename to arch/openrisc/boot/dts/simple-smp.dtsi
> index 71af0e117bfe..92770bb6fcf7 100644
> --- a/arch/openrisc/boot/dts/simple_smp.dts
> +++ b/arch/openrisc/boot/dts/simple-smp.dtsi
> @@ -1,4 +1,3 @@
> -/dts-v1/;
>  / {
>  	compatible = "opencores,or1ksim";
>  	#address-cells = <1>;
> @@ -22,15 +21,15 @@ memory@0 {
>  	cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> -		cpu@0 {
> +		cpu0: cpu@0 {
>  			compatible = "opencores,or1200-rtlsvn481";
>  			reg = <0>;
> -			clock-frequency = <20000000>;
> +			clock-frequency = <0>;
>  		};
> -		cpu@1 {
> +		cpu1: cpu@1 {
>  			compatible = "opencores,or1200-rtlsvn481";
>  			reg = <1>;
> -			clock-frequency = <20000000>;
> +			clock-frequency = <0>;
>  		};
>  	};
>  
> @@ -57,7 +56,7 @@ serial0: serial@90000000 {
>  		compatible = "opencores,uart16550-rtlsvn105", "ns16550a";
>  		reg = <0x90000000 0x100>;
>  		interrupts = <2>;
> -		clock-frequency = <20000000>;
> +		clock-frequency = <0>;
>  	};
>  
>  	enet0: ethoc@92000000 {
> @@ -65,5 +64,6 @@ enet0: ethoc@92000000 {
>  		reg = <0x92000000 0x800>;
>  		interrupts = <4>;
>  		big-endian;
> +		status = "disabled";
>  	};
>  };
> diff --git a/arch/openrisc/configs/simple_smp_defconfig b/arch/openrisc/configs/simple_smp_defconfig
> index 6008e824d31c..db77c795225e 100644
> --- a/arch/openrisc/configs/simple_smp_defconfig
> +++ b/arch/openrisc/configs/simple_smp_defconfig
> @@ -20,7 +20,7 @@ CONFIG_SLUB=y
>  CONFIG_SLUB_TINY=y
>  CONFIG_MODULES=y
>  # CONFIG_BLOCK is not set
> -CONFIG_BUILTIN_DTB_NAME="simple_smp"
> +CONFIG_BUILTIN_DTB_NAME="simple-smp"
>  CONFIG_SMP=y
>  CONFIG_HZ_100=y
>  CONFIG_OPENRISC_HAVE_SHADOW_GPRS=y
> -- 
> 2.51.0
> 

