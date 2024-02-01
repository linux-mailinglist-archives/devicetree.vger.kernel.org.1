Return-Path: <devicetree+bounces-37498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE5B84531F
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 09:50:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 352E91C26AFA
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 08:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9601615AABD;
	Thu,  1 Feb 2024 08:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="esb9YC4y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9C315AAB9
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 08:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706777417; cv=none; b=D252C81dFSKJU/2weXsDJHTICl+u/CizkpNd8g+sEjaLfAImkceNxLfkvXAlhkwHRkT8AQeU4LYB0lOpS/kbCsQevUqNlU1V9ILkJ1KlNX6mQ9Du0gnIffs2ew1Ons4AjSGxaSD7ghC/8+0oDOVi6C+cUjQ6fpAp9699yUot+0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706777417; c=relaxed/simple;
	bh=DuXCuFYNJhHBLcY4f1qpPGoAd7Af5FzK4+eYGfoq3m0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GYgHWP7HMa/iqjiqvaML4i+1JT+52GDIq4QaaL/BKd0yV0kKhJWN7QPlDeVDI8aqouj0tITnzngObUslyJJPlSq9GhIVx7MENmfzjRgIfXcwnf4WoJMU7iVYSKbbhnSsPDkMt4ymJ06JzBQOyVbGw8Tc4YrrDH6YK9y2Tri2vL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=esb9YC4y; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55a9008c185so1106460a12.1
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 00:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706777414; x=1707382214; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w+0W1coADRrc6NCCK1wAOqt+R3gqvTK2Vff6DnM2AMQ=;
        b=esb9YC4ymMAMTIhu+k1ubaLKBg8l1F4e8YCFYOmX2zwwKqIXOrbhv81JUXHDfzwT64
         9KdrPuojxEtXRK3CJt2IvIH15v7fZDR1fpa+RI9WvfJVdXvC+XUPTw6CsIBeq1HcB8sZ
         XjQWT4U9eI1pPXRV78cgml3WHITt2Reh8qf3OE6hsJDzuGDZctPtLP9NKAXoRkdgZxiX
         icxLMq/VjkTjPNHYLQkX9sVWjImtrrL/h/htgztEOQ+XuTrQgJVL4l0bw4i9JC3iXS00
         YZyRNkkjSM6nhjunMX/yepYHptkze8h7Gwa4xODoiLImKTOT9RdFeOAc17cZ33u5Gg1J
         DQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706777414; x=1707382214;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w+0W1coADRrc6NCCK1wAOqt+R3gqvTK2Vff6DnM2AMQ=;
        b=pWy4GO+h/LWLKMmUKpu1Ieyx1WLwk5o3gPH/ppkdidk8WLvjYCzZvxe12n8NO3xokw
         o79IvfzVF3T/zNf8xy8AA3JOI/Vm/QFq5aEn6XscD4luTo8wva2taXmi5NIR3Rnxj3AY
         LQ1+0qILa4uSkFkzjXTxcWZH0INvquIuswzB1CUBa9XFhWg2lEhPJmzB5T/WUR3MVjCw
         pG5CuVz8iAjU71PSMGqPphHrTPYPmWVFaAR2mUFZeRENx5LsQBfocaEI6kNf+CQPoKNG
         LoD38bY9LCehyrspInXi7WCzQAjUYRwuWMdwc/OONusm7NtmCLX+6xLgSPLVEaIkJHwi
         4neA==
X-Gm-Message-State: AOJu0YznwDRlfmpcFzELKp+ZvY6ryivlnot1lUXt/IEk6mOr9qtKgXBd
	9uym3HNZYeQdymr7OYk3ocZ04DOTIkqrxiMm3IgvNwEqhYtTbgf5QJ3h8Zh+ShA=
X-Google-Smtp-Source: AGHT+IGmufUBvXu7yjtJQA/VoqO6xdB6gQShGIN28deYeT3cjtGburCBhBDouEH/AREOpJ2czLYyEw==
X-Received: by 2002:aa7:d987:0:b0:55f:c25:c2fc with SMTP id u7-20020aa7d987000000b0055f0c25c2fcmr6665313eds.11.1706777414153;
        Thu, 01 Feb 2024 00:50:14 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXvUXOB+uQvxdvzMH2buPm9d28wUK4rt5Fje4cjH9cNA3uVo+lKuMD5pMbsQMiueFjhatQ1/hKnxy+Y+OD6QwNOinRzMoU7aaQCVlFKeNtz+AiR7eIGIUp4Swi1ETxWhgjfnirK1kMUXLeAvnQ9PYF/5CYT/DnSNy1peoxX4lAuK9fxv0icyamEt8PiFi+Mg/aPWpEixmv5qZUmVkk0Y9tSi2aIeYk2swtbSIj+dWsIN7z7ONsw6AJOtPYpXwuMHzTHwcSj/mWn95YXG/vNsUOuIeT8gp/4utomcoSowpovxPplnWmIqzYCnK2aE/KUlhmpzqk1JDwkuGOTO5FlbXQSW6xtHawy6fV3d4r7Gy61XLlthIeVSB+UoWFj6ovK4IZt+gUmHYl/eC2jBg7oh/+8SdX2Ofy5
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id fe1-20020a056402390100b005598e3d6d23sm6551798edb.16.2024.02.01.00.50.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Feb 2024 00:50:13 -0800 (PST)
Message-ID: <059cd10e-0fa3-4edd-bb2b-521236e1a686@linaro.org>
Date: Thu, 1 Feb 2024 09:50:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] ARM: tegra: Add device-tree for LG Optimus Vu
 (P895)
Content-Language: en-US
To: Svyatoslav Ryhel <clamor95@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kees Cook <keescook@chromium.org>, Maxim Schwalm <maxim.schwalm@gmail.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
References: <20240131105153.8070-1-clamor95@gmail.com>
 <20240131105153.8070-4-clamor95@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240131105153.8070-4-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/01/2024 11:51, Svyatoslav Ryhel wrote:
> Add device-tree for LG Optimus Vu P895, which is a NVIDIA
> Tegra30-based smartphone, orignally running Android.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  arch/arm/boot/dts/nvidia/Makefile            |    1 +
>  arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts |  496 +++++
>  arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi  | 1821 ++++++++++++++++++
>  3 files changed, 2318 insertions(+)
>  create mode 100644 arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
>  create mode 100644 arch/arm/boot/dts/nvidia/tegra30-lg-x3.dtsi
> 
> diff --git a/arch/arm/boot/dts/nvidia/Makefile b/arch/arm/boot/dts/nvidia/Makefile
> index 60091bf7e48b..f66337e5d188 100644
> --- a/arch/arm/boot/dts/nvidia/Makefile
> +++ b/arch/arm/boot/dts/nvidia/Makefile
> @@ -39,5 +39,6 @@ dtb-$(CONFIG_ARCH_TEGRA_3x_SOC) += \
>  	tegra30-cardhu-a02.dtb \
>  	tegra30-cardhu-a04.dtb \
>  	tegra30-colibri-eval-v3.dtb \
> +	tegra30-lg-p895.dtb \
>  	tegra30-ouya.dtb \
>  	tegra30-pegatron-chagall.dtb
> diff --git a/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
> new file mode 100644
> index 000000000000..7e7cfaabe56e
> --- /dev/null
> +++ b/arch/arm/boot/dts/nvidia/tegra30-lg-p895.dts
> @@ -0,0 +1,496 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/dts-v1/;
> +
> +#include "tegra30-lg-x3.dtsi"
> +
> +/ {
> +	model = "LG Optimus Vu P895";
> +	compatible = "lge,p895", "nvidia,tegra30";

This is lg, not lge.

Also, all over the file you have underscores in node names. They are not
allowed. Please consult DTS coding style document.

Best regards,
Krzysztof


