Return-Path: <devicetree+bounces-20885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A64B80146C
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 21:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D40E21F20FE2
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 20:25:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4739657871;
	Fri,  1 Dec 2023 20:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="It/jmjCg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51EED10DE
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 12:25:25 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-5c21e185df5so697546a12.1
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 12:25:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701462325; x=1702067125; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=srxzfUuXBFkMVOn7OGaNdyaL+KSIWUVGXnTpFNQ9fis=;
        b=It/jmjCg6qSzDVE/pAJ6hEk5g1Fk1ppJxx9o+8N5AXfwTq5UWAC/14YXIwxAD3lwnk
         hW9L0wQ0HqztDtqBVJqqNGEpHVbnTdztR7WJ4GaYgarjAMorImA821lSHTQ4pPAVJClU
         VLbM97OlE235JQY8pPKCF1pN6Zha9bkPKjP4dwiN25tXGsyEiSGQqsKDkA9ODuKykJ8a
         VTYTOausGpADocJzHiKdunmthVmGPmJY0i+HLtwE41u+geamXwxAMAPZyggVRhTMW9Zg
         Z/w23fM7wEA7yaTw8pqgD+0UITZzFGvf7RoM1lWtT6ZkFQcVmz2TMeDp0V6PfXidbSWy
         x6zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701462325; x=1702067125;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=srxzfUuXBFkMVOn7OGaNdyaL+KSIWUVGXnTpFNQ9fis=;
        b=MWQX8Tgn1vnA0KOsmQaH+bJir0tk1Jwn9Lq0F8qv03yHAs4cynEaKTcf//0NG+UuKL
         zlEfN1lIDANVWL93SUnQIh2+YndE0CjEbgYvHbSPuTHR6R9czXCX6PS/Y0XWLZJEPN5n
         Krt00KT0VUkvs1NBEwU8nJf2M721ZV9tO5maKrQCth8BV4mcnXCqhGlgcZ2jr09FwOKc
         j6WbE5gnTmAGPlwjeWbFx79SpuNmaB8JwBEGESW32teEn0YDLtYRqoSlMVQqYemFzeKj
         lP1K76ysg4XePoxWGCw9C5cX0m+DrTvAk0WWMRT/G6AHsTJiEEG1B+qytLpiSqHQ4JCt
         tSGg==
X-Gm-Message-State: AOJu0YxjmMi70VavUji06wpQqfdpWI92TcV6JNvvHSViZ8P2+kGLlyxT
	jhrO+qgelcOwUQ+/xKsCkqvsH0W2y8TYwh3bMUMRuQ==
X-Google-Smtp-Source: AGHT+IGhcjjItpFP1S8xXsF49mbnFTtcjlU4G86zhv4yaAeBkLj2OCa5brrLkR7NmAsB4hi8jkTN6iLwfS0jbWLoyLw=
X-Received: by 2002:a17:90b:4a92:b0:285:adb0:de3e with SMTP id
 lp18-20020a17090b4a9200b00285adb0de3emr93998pjb.34.1701462324828; Fri, 01 Dec
 2023 12:25:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231201160925.3136868-1-peter.griffin@linaro.org> <20231201160925.3136868-8-peter.griffin@linaro.org>
In-Reply-To: <20231201160925.3136868-8-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 1 Dec 2023 14:25:13 -0600
Message-ID: <CAPLW+4kMHhh2++F9pU3VSxBo9H-r+79XB8eSc9yi+DR48C=8vQ@mail.gmail.com>
Subject: Re: [PATCH v5 07/20] dt-bindings: pinctrl: samsung: add
 gs101-wakeup-eint compatible
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

On Fri, Dec 1, 2023 at 10:10=E2=80=AFAM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> gs101 is similar to newer Exynos SoCs like Exynos850 and ExynosAutov9
> where more than one pin controller can do external wake-up interrupt.
> So add a dedicated compatible for it.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  .../bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml      | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wa=
keup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pin=
ctrl-wakeup-interrupt.yaml
> index 2bafa867aea2..de2209f8ba00 100644
> --- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-in=
terrupt.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-in=
terrupt.yaml
> @@ -44,6 +44,7 @@ properties:
>            - const: samsung,exynos7-wakeup-eint
>        - items:
>            - enum:
> +              - google,gs101-wakeup-eint
>                - samsung,exynosautov9-wakeup-eint
>                - samsung,exynosautov920-wakeup-eint
>            - const: samsung,exynos850-wakeup-eint

(to myself): I wonder why exynos850 isn't in the enum above.

> @@ -111,6 +112,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - google,gs101-wakeup-eint
>                - samsung,exynos850-wakeup-eint
>      then:
>        properties:
> --
> 2.43.0.rc2.451.g8631bc7472-goog
>

