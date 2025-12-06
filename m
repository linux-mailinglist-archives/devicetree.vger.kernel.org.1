Return-Path: <devicetree+bounces-244912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA1ACAA250
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 08:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28E6C3062228
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 07:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDC572E0934;
	Sat,  6 Dec 2025 07:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gW6GO/RZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32622DF153
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 07:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765005204; cv=none; b=dzWVGRa1KY6dKTozcxDvD9dtkEUjqSNocYTC34GZC6tkmVxmBTB9J170e/t+35nFLyRv2abbEMEzEsoqkupLlJMWdk2ALyT4ahVQizY52OoH2N9hYriHhbO0qfoEt+DFuXz/fue65pcsQ7b/OwAcjy0V3Kmra7QA8t2f94ROmlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765005204; c=relaxed/simple;
	bh=OB8CDYw2BEyx4htsDt0c2tW9RbDzMWsghka1tR5xwxI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l2JhQ4er710pUSwyS+FlTrJLG/YEu/QReOk4cHwlJZANQuOyN+QJCg6608EgUiq+eHduCsJa+cSeCVaqlnguFJN+3s18mwNG3lG7Kysilo1E8X4rkFZIMVzoKXQY614lKRglUVGUzX3Dfgp+1U2pRwa8wo6LwJrAFRuPjhWA1GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gW6GO/RZ; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-63c489f1e6cso4548992a12.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 23:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765005200; x=1765610000; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F6O9y5Z+AdkoL+Tm0wkCr7cebT9+l7JoZ+wcqNIg4NU=;
        b=gW6GO/RZ04fKvFlhxUABC5Lf5uDgkQU42U1yGdDPgu7EW2ulIPwZgyebFi4VcvjATB
         4TelUjdlcBtRSjMdkY91chuTMxkEVvsk5ipGJmokQCAcrNH2zVQnWFDSoTv3O7vgpqxk
         r56rbvtzDXC30vHlIKfYmgj42pVuOana7tnDmOyxoZEei+MZRWz1+En8tXv1yLJTNvEL
         P7kTHf1ut23oOkY0XnMWs7isBwjTWY5B8Q/ecyzv9cSFSTzho6S7hBMVLJXeBv1tGnSj
         5CuVdFMWE26di6xQF+yaljjd4y6wgIRtzONszcWbYjDG5JYGckTVQ88dABJNy0HPCMgQ
         x+yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765005200; x=1765610000;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F6O9y5Z+AdkoL+Tm0wkCr7cebT9+l7JoZ+wcqNIg4NU=;
        b=o3pHvEmNbeGKzqkg3pZdSQpVNaC7xjPd9fju0Tw1Wj8jqoZGyCwdM9Q4FgBY6le6oA
         KmyftdnHMD1pxr0su9kkfFL+Uu/SZPw+JclfSw5G0y8h3IE+A8E6BlY5L9sUyL+98DBt
         FuMcHud8HOfGIugq4O7oT352fbXOHIA0MnN/kFXQwydz5vUwjaLP7hwQi7EYFx0lghXN
         EddYDjUj6Ik2KiLH41b4GVLiCL9ymozWKYyK/d4Uapaqaeyv5T4oKUlhssK4jUPYpCCH
         1eczVk9eNUWSHqFjoS0aEk3RLmu3wwV9642jcDxeKJKJmN2ZPtv+MICbkfORgizpwjv/
         H39Q==
X-Forwarded-Encrypted: i=1; AJvYcCUP7c5Hyq7hdO13kAlj21CLzb3oQ2mG6afSf1jyBcTS/vs2px2suh0SKXXcx368wtolr8GK+c4z4EIS@vger.kernel.org
X-Gm-Message-State: AOJu0YxxxG6ySGDFaSzQbgYE8fGcm2HnFKLRWQaHrPhdV/srr2oJFSP7
	1TI1jsvw5T4uU1mt9xwcjsLz00OaayfxFFn0Lp4A60Ena0IgCohBp2mOvoiyzc2SiqaoLxshLVg
	DS9Vj5rMjDPCUeThKpwsdV/irIUygZd0=
X-Gm-Gg: ASbGncs/AosPqI66T83EtJFQojcyU27OFIaddJADm7NtWer5mXb5gdDNSBKJtTaqFSc
	WexZE7jbPIRGhKMo+7IP1reTnUrmxGi2EmFREW3brPDHRqVhuIBJWZ+qPhfOK2VHUFwAVEP5iKF
	n+D/rZtMH44Gy7aYOKlNnpGdQTH5Ae4o3iWujK1FDoJZCj5HJbh16XNCltA9dO586KDoT/yyy0y
	B5xoc64PPo1vTKj8PBTUELT6wysUyqVDbLVMYOI+qeQPMQNqcH14KX4YJxavNcpsLMWMw==
X-Google-Smtp-Source: AGHT+IGwqPkGdPum0faeStLtu2ktwCeeXpdd/Gr8bwvAvPpRB4dJntX84+9feZ0xNyk77ATtUZIZiKkj4xtUXhaRTNE=
X-Received: by 2002:a05:6402:26c8:b0:649:19bf:bba2 with SMTP id
 4fb4d7f45d1cf-64919bfc0d5mr1360036a12.17.1765005199541; Fri, 05 Dec 2025
 23:13:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251123-fixkhadas-v1-1-045348f0a4c2@baylibre.com>
In-Reply-To: <20251123-fixkhadas-v1-1-045348f0a4c2@baylibre.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 6 Dec 2025 12:43:03 +0530
X-Gm-Features: AQt7F2p5UjYlgHBMh4GKU7Y8S9VjvIpYJkR0ez5ZYJAnsWIvHhN0798bvgLMxKg
Message-ID: <CANAwSgSqHR1kYxo8SaHcBfq=eij_YmVAidy8M+h1dFeK2nz1ug@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: meson-g12b: Fix L2 cache reference
 for S922X CPUs
To: Guillaume La Roque <glaroque@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Guillaume,

On Sun, 23 Nov 2025 at 22:44, Guillaume La Roque <glaroque@baylibre.com> wrote:
>
> The original addition of cache information for the Amlogic S922X SoC
> used the wrong next-level cache node for CPU cores 100 and 101,
> incorrectly referencing `l2_cache_l`. These cores actually belong to
> the big cluster and should reference `l2_cache_b`. Update the device
> tree accordingly.
>
> Fixes: e7f85e6c155a ("arm64: dts: amlogic: Add cache information to the Amlogic S922X SoC")
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>

Reviewed-by: Anand Moon <linux.amoon@gmail.com>

Thanks
-Anand
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> index f04efa828256..23358d94844c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
> @@ -87,7 +87,7 @@ cpu100: cpu@100 {
>                         i-cache-line-size = <32>;
>                         i-cache-size = <0x8000>;
>                         i-cache-sets = <32>;
> -                       next-level-cache = <&l2_cache_l>;
> +                       next-level-cache = <&l2_cache_b>;
>                         #cooling-cells = <2>;
>                 };
>
> @@ -103,7 +103,7 @@ cpu101: cpu@101 {
>                         i-cache-line-size = <32>;
>                         i-cache-size = <0x8000>;
>                         i-cache-sets = <32>;
> -                       next-level-cache = <&l2_cache_l>;
> +                       next-level-cache = <&l2_cache_b>;
>                         #cooling-cells = <2>;
>                 };
>
>
> ---
> base-commit: 6a23ae0a96a600d1d12557add110e0bb6e32730c
> change-id: 20251123-fixkhadas-c84da7d7c47c
>
> Best regards,
> --
> Guillaume La Roque <glaroque@baylibre.com>
>

