Return-Path: <devicetree+bounces-171616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC3FA9F58F
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 18:21:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B0E81899118
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 16:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B5A27A903;
	Mon, 28 Apr 2025 16:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xt6cOKoB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0D81FF60A
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 16:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745857301; cv=none; b=WAr6vEQDoGCa7TwAusR1r7f7NVkh5ojVxhCc2G08UyrSc/H6KUWPXNUVfTdZ2vGxxNJ3mnz0+V1g1PG3MgaZDrShwgocbkn5isMQPtclmYzAEYICFd3lxswoM9EKb8o8xwm937biUEZKC3RjP6VDYmIwIMiGrzumiMVVFIQJwRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745857301; c=relaxed/simple;
	bh=VPZALAjR7Zdva25NLVz5KQEgfQ6d4QldoSci+gyc0ho=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DbPbxdtpOvzBV1Ut0ffOvZqJeMoQcjORvipnwbzYYG0Cky8cgM7bQAPspVdz/rAhiky/K9HwuMmKYljQ7/eOBF7bnzSpf7s2rkO9o/po9+X2s2P4+ypjmSTZNn120wPCQEJ3oIdrJnvuA67xO2M15KlKqsfGF1KBfhWrfALX/kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xt6cOKoB; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e72c2a1b0d4so4687268276.2
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 09:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745857297; x=1746462097; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WOhasKd6micKEiWT/MKXPBW1f7I1/Q2+vdBpOz089cI=;
        b=xt6cOKoB4XZo+QMlm4roWVyroBo4inqMuclDNyIjfBylXzBJa3EdRpbTeN6vxRWi17
         AWjY3rmJn7LOzcwpkIgaeznZyMb1+HpTqbRlovBmX9BfUeJX4zitu/suz3tsPW6oCyNZ
         /Zdqn70P8HHDa7s1E993EUv7lP4e8hQy7HIOsmN4rQp/n156vJrVevdBd53hne00SxZ3
         rST48bq48gpdS0v3Xh/gVsdOPzlrVvkWaUhBwec81wjhNpsPpwL0YZVjBh9U7pBMSaVX
         hQx5uv7xaf2ZWY22qChrO4upTYRfG2rJE2THQxHcApDvk0uAY4CgahwdAD4ymyDkVBDq
         CTMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745857297; x=1746462097;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WOhasKd6micKEiWT/MKXPBW1f7I1/Q2+vdBpOz089cI=;
        b=dayH+ppmbmCmE8CZ02osjUQkEU1T59TOEBS8W1PlbyTFxtQliOmkSunDzJPjfIHHcp
         2U1g7mdV2cuqKqajGoYLImXHmEMr7ttMUOEl4ZFlFGnsuEgsb9CVEbjJIgDAHBXO9zxc
         AitNpXppYayj42OU8VijR6Nt02EAhh7BhFa7qLXcDcVJ67gKyP9QtFbb9GoJgXonhVtF
         MK1EdxcjGGOZrZFtIcC/4Fyw0P5KpnfPja8bLkeBM+hasHVJJr8gwlX/3BI1eAsTRjy1
         WaqYIS+42AXY1ifAbx/qzfCySrvTL0jXhY3UlnWO0nxAIXgsU0lOZ7gLnLmdD9lAoL7j
         M0Pw==
X-Forwarded-Encrypted: i=1; AJvYcCVrcekvy/G1b9SRsrGAC6zOOgonlqBg0rQ5C8O72l35jOUwTm6yVs1bSjIQsWZGeVNM1OXw444MNND5@vger.kernel.org
X-Gm-Message-State: AOJu0YyyxUdC9SKRYEzMLjUQYecCEFs7XFCv2ZBaLzJKhwX1DrWK1HZr
	GmirF2vfs68s1uzqFwhs/P6xgg6ZjNLwk56c2C97b5INE5OkmlvGezgDDJO4V0EI7N+Y7Qrxj/W
	glZNPE5GnwugCmdwDY5+CuAVeWL0pNFisxvN5pg==
X-Gm-Gg: ASbGncvTbSynkZ476Et46supAI+D6iOVhHzbEL1BGljfpyD+Yo7SoKCYJH06LSQNsEh
	9RJDy/UscBxxuCw8wdl2B/0/tDCB+xB1pJm1C17sUB/1O7cgnbnA2o/L+ILYZ0LofBtCk3YBBDa
	7Cf9GJLcFC8rK19l9ES9JM+1Q=
X-Google-Smtp-Source: AGHT+IF2+lLJogWYmJ9CklQNKtsYDG7mA++udTlmO/sYgtKfw1zcHF/zNyAnw+6seYbb5sOJx4PEl6rhupOOr/4EHRU=
X-Received: by 2002:a05:6902:15c1:b0:e6d:f0a6:4cd7 with SMTP id
 3f1490d57ef6-e7322febd09mr12474369276.0.1745857297087; Mon, 28 Apr 2025
 09:21:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250413223507.46480-1-inochiama@gmail.com> <20250413223507.46480-8-inochiama@gmail.com>
In-Reply-To: <20250413223507.46480-8-inochiama@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 28 Apr 2025 18:21:01 +0200
X-Gm-Features: ATxdqUHo5zpHgBeVnQwujIcWP56iQkcuhTXqhu8H3yGRlHLlrSHxM1LpwpFg6CU
Message-ID: <CAPDyKFrM32TVAHzSoMvmO_ZW2Ax=RQmH_7KqSGgqXTOc20UnLA@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] dt-bindings: mmc: sdhci-of-dwcmhsc: Add Sophgo
 SG2044 support
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>, 
	Jarkko Nikula <jarkko.nikula@linux.intel.com>, Jisheng Zhang <jszhang@kernel.org>, 
	Chao Wei <chao.wei@sophgo.com>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-mmc@vger.kernel.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 14 Apr 2025 at 00:36, Inochi Amaoto <inochiama@gmail.com> wrote:
>
> The sdhci IP of SG2044 is similar to it of SG2042. They
> share the same clock and controller configuration.
>
> Add compatible string for SG2044.
>
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index e6e604072d3c..5fb347167004 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -19,6 +19,9 @@ properties:
>                - rockchip,rk3562-dwcmshc
>                - rockchip,rk3576-dwcmshc
>            - const: rockchip,rk3588-dwcmshc
> +      - items:
> +          - const: sophgo,sg2044-dwcmshc
> +          - const: sophgo,sg2042-dwcmshc
>        - enum:
>            - rockchip,rk3568-dwcmshc
>            - rockchip,rk3588-dwcmshc
> --
> 2.49.0
>

