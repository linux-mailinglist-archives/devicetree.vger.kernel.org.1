Return-Path: <devicetree+bounces-122416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E21399D0837
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 04:53:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A63928194D
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 03:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98EAF4964D;
	Mon, 18 Nov 2024 03:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mTnxgjPA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01EB428F3
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 03:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731902027; cv=none; b=KMYsDO1xkiAL8c6Q1LzPrFJ1SeRyl8src8VO9v+H85TtYuBufMMx2KUsj6LpuPFXcfBitOky7170cAiBpXzYEOJVLSsf7HCp+VfY6YrbMg3Uf8CZwzNdEl+V16u4PAW4RiE1XHrFvGGujGSRpqIeWPIb82p3KrkIR8EiY4LTZG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731902027; c=relaxed/simple;
	bh=757AscSd7zeiv7j6vKkam3CidywRcEO/KEooyL092no=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n3TD1+UoGfNCgnF/9diTNTuXq5iLFKNR/6zovIgPZztkhRKsNgbvraz2IuoUlPZvKrsTfIJy42zrB71dfIO1bdvDGZ8eWr5c9+sVvA1c/gA8n4NTI3gPl2WeMiNfx3KLLOZtel/lvYanb2pRPgFzgP1z48dJrceutL8oG5k7gD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mTnxgjPA; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-7ede82dbb63so746260a12.2
        for <devicetree@vger.kernel.org>; Sun, 17 Nov 2024 19:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731902025; x=1732506825; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iziczI7ZYYRzrx5DXDLTU2aWQXZX8V3J+sI1zP/uoWY=;
        b=mTnxgjPALibj2O3WKJROtQSBmv1id6igwS4U05Q9rMEXJIoEwCLREH2brLEYPRoXtH
         D/BICguNymuGh0SCSUIIgq1I3iohW6sFKKLQDmST2m1umImQItqJSCch2fMusSdze/QO
         Qo0k/2oc6Y/4amFlola95IDmUJEex9k5UV2SEHC6FoZ9AQFc/OWjcd66ErRFwzcg8KDL
         sY1L9Xubm2ZM8aRNwxFtQG/d5Zkl/L0wnyR6UwF8ETxH+D2j1eaQKoGQGtk5GWgpolx9
         TyMMjooqiiIAcIBfQOm8zP9CJTU/eCk25ff1FJFoIDf57JVb/YZ2kpcVx/wKpkX4TLg7
         oWlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731902025; x=1732506825;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iziczI7ZYYRzrx5DXDLTU2aWQXZX8V3J+sI1zP/uoWY=;
        b=M4u6hLDW/i0ZDtcbimpmnEh3oeSj7ysQwc9tgI7j/owYOO4ObfDV3l8/4UG8v+yJfK
         wXdLqkuKLKbt3YsEtl8i2jorHTXLu7lU3HeX6P9HtacC6qTkT/W7o2P2Bgw9U++F1rQA
         y/pV/xZDRdAJYNinek38Q/soDrdNYVAoi61EioCujsFx2ek3qo6d09J/90MQP69x8bqG
         I5aQ2oax9aofr0OHyIVXJ8nvax99RNTDOq+UHZ0XzEPR7rmGMLm8jzlZ59K0+XD9iobb
         pdgbrCUsQxeQIKWZJMb/c3YXs5scKcnYm+6bQW07QPpQgm0qPyVpBSqAHeC8cvHPqF4G
         pr8w==
X-Forwarded-Encrypted: i=1; AJvYcCXz2Z6sj7v/sShlh+BbnfC1qKngDGg4JE1Q8APpnVUfLQlnvvYsS596w3e30tKvH+CXuWUdNLo/tElf@vger.kernel.org
X-Gm-Message-State: AOJu0YwXSkF9oAkzWOYmAjljBXPJBg2YTcbubfxX7lLIjp50bXj3PHfc
	hT19Kx4MwEAqp2YJDJkkvUBNYllHeJ0k2BvFGKwJWM0ZYATZGuQRkG8J3jYCVtU=
X-Google-Smtp-Source: AGHT+IGYl9W0UXIVLMASe6ljQEHSvMFAGPTR22VIIByVAeNekYNbpUP8Pv6DHUaufX/uZNV/YdmOCg==
X-Received: by 2002:a05:6a20:840d:b0:1d9:3acf:8bdc with SMTP id adf61e73a8af0-1dc90c05eafmr19652857637.46.1731902025266;
        Sun, 17 Nov 2024 19:53:45 -0800 (PST)
Received: from localhost ([122.172.86.146])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7247711e005sm5159648b3a.72.2024.11.17.19.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Nov 2024 19:53:44 -0800 (PST)
Date: Mon, 18 Nov 2024 09:23:42 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Viresh Kumar <vireshk@kernel.org>,
	Shiraz Hashim <shiraz.linux.kernel@gmail.com>, soc@kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm: dts: spear13xx: Remove unused and undocumented
 "pl022,slave-tx-disable" property
Message-ID: <20241118035342.ej5pxzrn2lildyzk@vireshk-i7>
References: <20241115193835.3623725-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241115193835.3623725-1-robh@kernel.org>

On 15-11-24, 13:38, Rob Herring (Arm) wrote:
> Remove "pl022,slave-tx-disable" property which is both unused in the kernel
> and undocumented. Most likely they are leftovers from downstream.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  arch/arm/boot/dts/st/spear1310-evb.dts | 2 --
>  arch/arm/boot/dts/st/spear1340-evb.dts | 2 --
>  2 files changed, 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/st/spear1310-evb.dts b/arch/arm/boot/dts/st/spear1310-evb.dts
> index 18191a87f07c..ad216571ba57 100644
> --- a/arch/arm/boot/dts/st/spear1310-evb.dts
> +++ b/arch/arm/boot/dts/st/spear1310-evb.dts
> @@ -353,7 +353,6 @@ stmpe610@0 {
>  					spi-max-frequency = <1000000>;
>  					spi-cpha;
>  					pl022,interface = <0>;
> -					pl022,slave-tx-disable;
>  					pl022,com-mode = <0>;
>  					pl022,rx-level-trig = <0>;
>  					pl022,tx-level-trig = <0>;
> @@ -385,7 +384,6 @@ flash@1 {
>  					spi-cpol;
>  					spi-cpha;
>  					pl022,interface = <0>;
> -					pl022,slave-tx-disable;
>  					pl022,com-mode = <0x2>;
>  					pl022,rx-level-trig = <0>;
>  					pl022,tx-level-trig = <0>;
> diff --git a/arch/arm/boot/dts/st/spear1340-evb.dts b/arch/arm/boot/dts/st/spear1340-evb.dts
> index cea624fc745c..9b515b21a633 100644
> --- a/arch/arm/boot/dts/st/spear1340-evb.dts
> +++ b/arch/arm/boot/dts/st/spear1340-evb.dts
> @@ -446,7 +446,6 @@ flash@0 {
>  					spi-cpol;
>  					spi-cpha;
>  					pl022,interface = <0>;
> -					pl022,slave-tx-disable;
>  					pl022,com-mode = <0x2>;
>  					pl022,rx-level-trig = <0>;
>  					pl022,tx-level-trig = <0>;
> @@ -461,7 +460,6 @@ stmpe610@1 {
>  					spi-cpha;
>  					reg = <1>;
>  					pl022,interface = <0>;
> -					pl022,slave-tx-disable;
>  					pl022,com-mode = <0>;
>  					pl022,rx-level-trig = <0>;
>  					pl022,tx-level-trig = <0>;

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

