Return-Path: <devicetree+bounces-23633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AE080BE33
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 00:34:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24B3F1C203D9
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 23:34:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DF781DFE2;
	Sun, 10 Dec 2023 23:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xTUzjKkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4B3CF3
	for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 15:34:42 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6d9dbe224bbso2735430a34.2
        for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 15:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702251282; x=1702856082; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0Bc/AKWuuu7ZiMYkuthYcJC3W6VEymZYFDL+Rk6rHQ=;
        b=xTUzjKkVTWpsr0K3MjgnJZUrFNFVE1BcDzbmdsoygNdQp/Qw8+auRDfOCnbh1bNe1d
         QgpeT7Lyvwvrzc7X5MN+a5XKs1tUbUNFxn4FIWbXjKnupuM3H6nvFFUASuzBg0t0E2dj
         MvBJi5ZSBdqKCyJDR1TMdTx30wyzFjVWLzqg9xo6KL4yv+dQstvov8NbUN9vrsCzmeC0
         49N/mRo5DC+F4K7UMcdypylNSinscu5Rlcgkqt9yGEUV/Y3Mi/oNKULo2R887qXPMvkz
         7qZrhYC2PtvAK7P5k4BbUe4P9+Pnd9yC8CQrp9qKYe5Xzy1XIi2e7nK6x/kv3rE4pvgN
         LQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702251282; x=1702856082;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S0Bc/AKWuuu7ZiMYkuthYcJC3W6VEymZYFDL+Rk6rHQ=;
        b=unZB0hkKKMrVjS+mKC394FFDQMXEUwgfLwqZKE7mI/QGt4PxOQDJ0kLhSym1FNOdT6
         qpnZhJ34LvAZ+wFufLSPzdDklIm7AH4huSS+pHsFz9GTFg4mDzJ0X0l3P6sOFLgm2fNQ
         B6y84KuwGfg4iajjR81LzBKekKY2VECdYiaZrzmVQsqayZMpR80iPwIbmllrMZJgmgdC
         vZcZILOoZwHPkw/Mtn04x5nQYTmltjyEOgIaSsmjODcFn8C59VXdmaR7RlKysYRIhguU
         N6RMX2wUlesVrug0Q71Wi/55drnyyj5Fwb+QDiXTtXtxXVZVTNd1omYxDcR2SBXJ4P7A
         KJvQ==
X-Gm-Message-State: AOJu0YwWOA5VmjBWTVFQELhZk1ZHEISEY4LkzRYTrt5FSyKCYGUbLTEV
	u33nwtHbcfDFP+mrlwSSuwHOzHLzN/KpwhOlMF4haA==
X-Google-Smtp-Source: AGHT+IFVEv8jsGoppfiwgaK84rdOj6Eg9outb/gheNsC4CMf28kQ6yJHHDFdVlnIE7iYe3uOxSjPxsRDEjpzjDbk8o0=
X-Received: by 2002:a9d:4d82:0:b0:6d9:f4c5:eed0 with SMTP id
 u2-20020a9d4d82000000b006d9f4c5eed0mr3726570otk.9.1702251282145; Sun, 10 Dec
 2023 15:34:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209233106.147416-1-peter.griffin@linaro.org> <20231209233106.147416-11-peter.griffin@linaro.org>
In-Reply-To: <20231209233106.147416-11-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Sun, 10 Dec 2023 17:34:31 -0600
Message-ID: <CAPLW+4k=k9-TTB4YOyT7NyzfNORNLDJMtHBwfLtdZV52CMgxXQ@mail.gmail.com>
Subject: Re: [PATCH v6 10/20] dt-bindings: soc: samsung: usi: add
 google,gs101-usi compatible
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 9, 2023 at 5:31=E2=80=AFPM Peter Griffin <peter.griffin@linaro.=
org> wrote:
>
> From: Tudor Ambarus <tudor.ambarus@linaro.org>
>
> Add google,gs101-usi dedicated compatible for representing USI of Google
> GS101 SoC.
>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yam=
l b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> index 61be1f2ddbe7..8b478d6cdc30 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
> @@ -25,6 +25,7 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - google,gs101-usi
>                - samsung,exynosautov9-usi
>                - samsung,exynosautov920-usi
>            - const: samsung,exynos850-usi
> --
> 2.43.0.472.g3155946c3a-goog
>

