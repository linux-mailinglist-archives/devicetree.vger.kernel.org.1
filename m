Return-Path: <devicetree+bounces-43938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DFC85BE56
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 15:12:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72C7EB25DC7
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 14:12:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD13F6BB2A;
	Tue, 20 Feb 2024 14:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jwGeAk+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D196A359
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708438335; cv=none; b=VV6MRpR0/KZ2xhwJRBaJB7Ie5YuqmBmAZ7VOB2F6E4SKPD5+eipDTsm2X8TAk/bRfVDnRZnkdBoPLeJYDbUOV8kOkASGn5H+CeSICubvYgl8DxMT1snsMVROSA+nm7mKergAyNeiA6ZJZ31328h0KCv4YPDLlHA9mFH8AWPTT3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708438335; c=relaxed/simple;
	bh=ZUd/4SIGCstdqfJUTd63+Gsgaaki8fxiSzh0mr3PVCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gsqh7jNJASbfBfyeXQ/RVY3XS91FLVee9/WwAssW0ygbCLbk86Wni21ZVE1DRWTn3xso+tlzTquLL3XEMbEsL9GCbuXHv0BTgUa1QJGa96nTZl3RjMv6B4EqxTK0b6vQ8qkVV8v5my+IUdyoa9x+DOF8dq2c9nAytWGtNDOZYk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jwGeAk+R; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33d153254b7so2634315f8f.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 06:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708438332; x=1709043132; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VlCI9F854lrsWDUIN6PG7zZ3hJeSzAbz00+8LmilWc8=;
        b=jwGeAk+R6VThW+JUlY4uPM1hbUFeOFHIh7TvNpyFy8lqUbVkMmMSUZO+mies2RHt8S
         DMQIo0B7bwaXIxYNYV66GyXKgq6tKRjMSAt87kA/IstD/uW8sxlz3I/+D8GRstrYaHap
         ReGFQhe+o49yE8gcedT1MZIovD2u7U9aODQZ60x3OS+B13BTcBm+g1G+C0N7+GYvbwv9
         909FFIGpJJptV230JtxKxaLcWuhLSLlUowxFIjvv9YD71qcp3ipAF1dNqaxOPBsK2GC4
         VUmKNrSNddMrBuKNX9UIZtPTajQFSz6X0AzdrTNo2XCQgplAJ2frDxP0OyEW9uHAJA9q
         wc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708438332; x=1709043132;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VlCI9F854lrsWDUIN6PG7zZ3hJeSzAbz00+8LmilWc8=;
        b=d/OeHRP2HYCOnXdfVy9ZYI7cyeaMI/jRTzlUFljfrRjIq3MDzcKFLOpGqy4jbFPXer
         xtAmcoIXINxvjgNUknSdEPYtapVHjLjwslhwceCbvd8h6PCZATByUI/PEfy5K1MVsC/0
         /7FJNSRjNfouL5RP7gsVcxbuuWqs6uUGNqTa3W72PcboImMkkS6GYSZBMvxSNd8RIhll
         HDHq86gNj/sogu5JN/REgJbeJHmI/Xm0nWMblIx4n93nENQCPoxyzpGjf4i3xakYMCuZ
         AoW6fByFPHbTXmfxWToZ13IDU7nY/HHsuUdICPpA0BM2dgq8QOSeEOGU6OHv0JxISBLP
         bVTg==
X-Forwarded-Encrypted: i=1; AJvYcCXhYfiBU93hKl4X0FDQUQhXn6nbekxUJxp4s4oPS37OjghTx1bH5iIpoGAbnDQYM/lHwHqNtMTvI55diGLUzhDhoYvFF5/CafKu4w==
X-Gm-Message-State: AOJu0YzpDZd6nRrmcELwcrayjPL1G4d/vzBBs78p6yn6bvVaYZCwzCNU
	KBW9vsa4+gLLOeuCElTkB6wlDgrx+CsZkz0l6aQzK7+z9zECGY9kQm+sKW/Rnu4=
X-Google-Smtp-Source: AGHT+IHoWaPYXgMjU6PeB2yk8TgKT2tZQUeUz9ykPdB+ZXJLtJWkH3ETMuOSkIOY4HbiE/fpQppbBg==
X-Received: by 2002:adf:ec44:0:b0:33d:3ceb:5308 with SMTP id w4-20020adfec44000000b0033d3ceb5308mr4607368wrn.42.1708438332431;
        Tue, 20 Feb 2024 06:12:12 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id bq5-20020a5d5a05000000b0033d60ab6bc8sm4662665wrb.50.2024.02.20.06.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 06:12:12 -0800 (PST)
Date: Tue, 20 Feb 2024 14:12:10 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Luca Weiss <luca@z3ntu.xyz>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Helge Deller <deller@gmx.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	"G.Shark Jeong" <gshark.jeong@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8974-hammerhead: Hook up backlight
Message-ID: <20240220141210.GG6716@aspen.lan>
References: <20240220-lm3630a-fixups-v1-0-9ca62f7e4a33@z3ntu.xyz>
 <20240220-lm3630a-fixups-v1-4-9ca62f7e4a33@z3ntu.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220-lm3630a-fixups-v1-4-9ca62f7e4a33@z3ntu.xyz>

On Tue, Feb 20, 2024 at 12:11:22AM +0100, Luca Weiss wrote:
> Connect the panel with the backlight nodes so that the backlight can be
> turned off when the display is blanked.
>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
> index 4aaae8537a3f..8eaa5b162815 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974-lge-nexus5-hammerhead.dts
> @@ -182,7 +182,7 @@ &blsp2_i2c5 {
>  	status = "okay";
>  	clock-frequency = <355000>;
>
> -	led-controller@38 {
> +	backlight: led-controller@38 {

Again... a minor nit regarding existing problems but this node doesn't
follow the generic naming recommendations:
https://devicetree-specification.readthedocs.io/en/stable/devicetree-basics.html#generic-names-recommendation


Daniel.

