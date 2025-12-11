Return-Path: <devicetree+bounces-245827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E7ACB5A54
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 12:32:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EAE47300F334
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56B8D2D3A70;
	Thu, 11 Dec 2025 11:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JqjYI0+Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582BA2517B9
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765452745; cv=none; b=YMP62LMqhrYEAqytSJT9uWutmwGqyI2fHZhAS3z2ymbCE6/5axjWg7weZMA+NC3cTMr6S2wwqGuFBpBEcBSB4i55oTGBB5Mxn/o2PKGdjCvpyswQfVl4fyml+mAeq3sCC0voajA3Kx3Bey/XfYUyMZiJDY7Zhstkc6Dsg6EzzG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765452745; c=relaxed/simple;
	bh=fTSH993Mk+TXcNH7gBcDzv8X8Zy3Ya7TfMmE6MvGpFc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MB4z1pF1mcvT93FEcx8ouR23cZ4Wbl0YoRp4JGuUoUi6i+zjoJhqdJ4LRmuxsYaEXKQ4gKApznw36ddRrg/LFc05b6kvgFqPp+VF8qTCSWcRhCWQQupaXcz//exoUxv0SOxoWQgTXpNEKOSv3XAiLHGBQxQf4hb6pAAzhRqNKZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JqjYI0+Q; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-6447743ce59so806462d50.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 03:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765452742; x=1766057542; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=phiy9ied8gdfxveKkebHqanag2hE7Otb50tt4bxl1+s=;
        b=JqjYI0+QfCo2XJtf6glhKa4oS63fM3EiwnAyqO6fTI6BPzirD8QQyM48d/AjqlE5ni
         olrWKVMLmfSuw93+pIqY5JAs7SerzbNm2dv6TfsSzoUjHr7PQURGgJ+nDJiVPl3xx+Ht
         RyKElP1puHDfVaeIp94/WkUNFhMX2hG2Ffl68cgargk44w5ddzae5456iRqF8yaeS5wk
         1S+F/0+PhyVM4URNyoPHK1fCsp66FOQI0z8deC6xLLqYD60Z+F9TRohmLaufyDOlOxfH
         8YF980pLwUbReSRDgr3F7kC9SdQMEtWwVKlsPlFElx2xxfTWbXw5GXr0Q90dgOrqZuis
         1y6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765452742; x=1766057542;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=phiy9ied8gdfxveKkebHqanag2hE7Otb50tt4bxl1+s=;
        b=UbE7toiyq9HBKHHuksfsjbgNxK9dTQXuyTEqdt7qYnNEuO8SPcuwDT/bn3Myp+JfzZ
         2ylWBlUrZVHK2xmqBcq1oKsDEjrgINwt6oSV1PqY2BN/VZgIVvHcpJd/hU9+S+SS6DKW
         SEtE5C9wLPiEnbAtgp/M/WM3NZDrqYXNECSypjFZRzbXX3zHKL44Cj330k+3d6EHVQJS
         R2tQbSXg17UInzWxDMFvlarCXCjeutpfUwm897RmCcxOb8bf+pdC4lTV5UZVQNgxCy9A
         XD8kXuoayF/3aaDtISijhZH1ZAEXJ2vr7UXfWgNbJFCx/QRY9cJsi3+GvP6FDfx2pXyI
         1jUg==
X-Forwarded-Encrypted: i=1; AJvYcCVJ+JVGbDPUhiFddBETP1lyiQfx4F5QFI4mxlQq07fLZD0jsqT9bLDIgtHUmslawPSZ2XFWxhfZEW/U@vger.kernel.org
X-Gm-Message-State: AOJu0YxIYubQtjEEoImXiWeLfHkwax3pkwfI6vf4nMocFlDukFEOIbHS
	kNr4FBoMKpRw847oKIP1rkAxQOagmj6NDi5zsqZNRHRkMHCwVlMesAr1f+bYc69utlM1Rnhf2Qg
	i7NzumfLaXha+hUjy4jmj5HwBQrzZWwQ3rk0YJtSwag==
X-Gm-Gg: AY/fxX61SnSObK+lnnuwjMmuDzhu2Th8PB/LdRSqijbWYTKKLRkNI7r1XCVmljJaTOD
	sdO9sNX1gZArq1RK89UH4BmJ23yp+wzpMyW59+f1mZkouyIzX0OKVSGAUljAilBpC54aQooYehk
	r8Whe143e3cy4X7JP1yias8TabkamTKHKbtV0jMaFTQnbx2cG7NNa0e/af8HnhwRDNKUM0EuAnG
	sG07bj0CJvlecszLlYLO6VThZVfb7hRxHTS8yPxFpN4t3u0d7pp9b5NCx6toTU48tOjJhrb
X-Google-Smtp-Source: AGHT+IGcqwaxtfJMJnD56RcASi/uVKO/lK/0JnQ8qMBQTGtHR3OnnoyAdnC7R6PIycF4XsJLibnnvktvbwIlYjUAVZY=
X-Received: by 2002:a05:690e:120e:b0:63f:96d7:a350 with SMTP id
 956f58d0204a3-6446eb4a92cmr4347837d50.66.1765452742333; Thu, 11 Dec 2025
 03:32:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251211-dev-dt-warnings-all-v1-0-21b18b9ada77@codeconstruct.com.au>
 <20251211-dev-dt-warnings-all-v1-7-21b18b9ada77@codeconstruct.com.au>
In-Reply-To: <20251211-dev-dt-warnings-all-v1-7-21b18b9ada77@codeconstruct.com.au>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 11 Dec 2025 12:31:45 +0100
X-Gm-Features: AQt7F2oiHWORIK5IUrdndTpX-opjO6A0dESgetC9ddqm2QKKAaLxTanuvA5lEio
Message-ID: <CAPDyKFqZQUurBNSNUBKE7rgBf+UHxKiYBWt+xxSY+dh7PgdPPQ@mail.gmail.com>
Subject: Re: [PATCH RFC 07/16] ARM: dts: aspeed: Remove sdhci-drive-type
 property from AST2600 EVB
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-crypto@vger.kernel.org, linux-iio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 11 Dec 2025 at 09:47, Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> The property isn't specified in the bindings and is not used by the
> corresponding driver, so drop it.
>
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>

FWIW:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>


> ---
>  arch/arm/boot/dts/aspeed/aspeed-ast2600-evb.dts | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-ast2600-evb.dts b/arch/arm/boot/dts/aspeed/aspeed-ast2600-evb.dts
> index de83c0eb1d6e..3eba676e57f1 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-ast2600-evb.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-ast2600-evb.dts
> @@ -314,7 +314,6 @@ &sdhci0 {
>         status = "okay";
>         bus-width = <4>;
>         max-frequency = <100000000>;
> -       sdhci-drive-type = /bits/ 8 <3>;
>         sdhci-caps-mask = <0x7 0x0>;
>         sdhci,wp-inverted;
>         vmmc-supply = <&vcc_sdhci0>;
> @@ -326,7 +325,6 @@ &sdhci1 {
>         status = "okay";
>         bus-width = <4>;
>         max-frequency = <100000000>;
> -       sdhci-drive-type = /bits/ 8 <3>;
>         sdhci-caps-mask = <0x7 0x0>;
>         sdhci,wp-inverted;
>         vmmc-supply = <&vcc_sdhci1>;
>
> --
> 2.47.3
>
>

