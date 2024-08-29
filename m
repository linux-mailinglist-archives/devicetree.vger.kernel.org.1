Return-Path: <devicetree+bounces-97852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7F4963DB9
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 09:53:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FC581F22D77
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 07:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9137C189BBD;
	Thu, 29 Aug 2024 07:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zo3JL890"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9768161914
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 07:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724918013; cv=none; b=IQDrR4S026v5YBKYH9YytJpSzmD838ENd50+5BSx9WSeFwDp3NuIS5olR82WmSSntAe+HPDXYMK6VEb9mGle7cJ0UHbPpby2I1ZfMaruOejftnTpsjowhb98KomSy3IosNteZqFRFr0w3XNzUUzJcfmeK0Babqy2f2F91BAjesE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724918013; c=relaxed/simple;
	bh=W3a7fcWo+PgBtFPMvzXW2DFGxj1QeaatlOg1GiAuNAc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=abvhlvv5ItkLfE6ggM9KxYsFNuDRpamGwfxawaE8sjqVpClIQsdLcftJG5p1Feia4YC9W4t80j+smDLRdShyuLW+kN1/RggHCwDcHhDXknkLgtyApY33pNpCyug0JxpgQCLGTg9lGK3vusdDd5v3WMro1uic0drYN7A5C+3tn/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zo3JL890; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42bb885f97eso333995e9.0
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 00:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724918010; x=1725522810; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=InYUyDiltHfYnX1zRpFtWut+hZvc9QSePUy7MTBnp5I=;
        b=Zo3JL890FP4MaLYz0qiqH5FwtBQfy6cmsAOIumaQBxs+pivCLnGCAsEIYGzOoRzUAE
         GTnQgpUBjB9IfwZrMq+N/E2xyrWhRELw6B8AEtBMsJyfAD0iBVWmHgsb1f1NUOsK3haq
         Qk+bmgeLbW1mJYf5a9p2qFL2FSLkwc6AofnDilxJNEizgbBE6KIU+K0s3aB8AGKF15Hu
         Gegzvpp1yYbf2cTrP/UjAvywBFCjPfKGPj1GTQPntP52MbrzQctAPmomgdf0FBZoXnI0
         pQGo+wkkN0TQEL9OtGNFWWPZSa2KBFcxyULgsFeMNRD9n54cy0F7Y/HgdDmidavXEgUH
         PJ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724918010; x=1725522810;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InYUyDiltHfYnX1zRpFtWut+hZvc9QSePUy7MTBnp5I=;
        b=FkphxGYNeq1z/3K6t9zpOHGD1R+kX0HfAnBOU6OzKC/lWKB4TobIkLxeIFXiY21EMK
         OrzPkDJDUCdIiUS3Kcd64IJr23ZbujrUYj41kDDoOOMgW4FSfK3jA3aeYwrcLTCLVBw4
         rlY1qdvTe/I4AL437IJ4e3YMhCunqMHTzBDgRS0CB1eaBP+/UN/dmfbX5TwHSbtjWrPv
         EqjrbMxlQGulhekC4ULHsumgsopfuvzrG8GGi5PGLmKw+suEzGVTyQ3SRw1flMAhmKfk
         sHmUSQJ1MTiuaQSl5lUDBZV+RepuLob8k1WnYR0x+wIbBZWRP+5CmUsTsk6A9ebqZy6h
         bbFg==
X-Forwarded-Encrypted: i=1; AJvYcCVkpmiiI4aJuCaym7Rae5J3fbUB/nwg9ugWKDcRXbzJvSfHf0dtsojbZFqT4DnL7//bXKQU0mW2LmOK@vger.kernel.org
X-Gm-Message-State: AOJu0YztncCKUnNKTJNdfYLpbRUeqiGjWNCZ2nNBIhpKQ9K8CgDGpIzs
	Mq4FZb2T1M3PdSCuhdSsvTFWe9y5Mrz7scEJnsRkrfE5gF/RZDydAD3BuW1pRp4=
X-Google-Smtp-Source: AGHT+IG36wbd/M5Oo2bLRecVz+d/tZ6IYaPfKGqL9VUz1yj12FPMnhEBY5MgAchFiPL25jDtKrOvaA==
X-Received: by 2002:a05:600c:5025:b0:426:64c1:8388 with SMTP id 5b1f17b1804b1-42bb7461abdmr5020065e9.17.1724918010053;
        Thu, 29 Aug 2024 00:53:30 -0700 (PDT)
Received: from linaro.org ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749ee4aa22sm733789f8f.7.2024.08.29.00.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 00:53:29 -0700 (PDT)
Date: Thu, 29 Aug 2024 10:53:28 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	festevam@gmail.com, abelvesa@kernel.org, peng.fan@nxp.com,
	Wei Fang <wei.fang@nxp.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [Patch v3 0/4] add NETCMIX block control support on i.MX95
Message-ID: <ZtAo+B0XOE558+93@linaro.org>
References: <20240829011849.364987-1-wei.fang@nxp.com>
 <172491778768.2521946.17064463983702008243.b4-ty@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172491778768.2521946.17064463983702008243.b4-ty@linaro.org>

On 24-08-29 10:50:16, Abel Vesa wrote:
> 
> On Thu, 29 Aug 2024 09:18:45 +0800, Wei Fang wrote:
> > The NETCMIX block control consists of registers for configuration of
> > peripherals in the NETC domain, such as MQS, SAI and NETC. So add the
> > NETCMIX block control support on i.MX95 platform.
> > 
> 
> Applied, thanks!
> 
> [1/4] dt-bindings: clock: add i.MX95 NETCMIX block control
>       commit: 4b78b54762dbfc2f22f28655fa3cf6f5d50de197
> [2/4] dt-bindings: clock: add RMII clock selection
>       commit: b4f62001ccd3fa953769ccbd313c9a7a4f5f8f3d
> [3/4] clk: imx95: enable the clock of NETCMIX block control
>       commit: 42dc425fa8b5be982bcc2025d5bf30be8b26da86
> [4/4] arm64: dts: imx95: Add NETCMIX block control support
>       (no commit info)

For some reason, b4 ty thinks it's OK to mention this 4th patch as
applied, while it is obviously not.

I only applied the first 3 patches.

> 
> Best regards,
> -- 
> Abel Vesa <abel.vesa@linaro.org>

