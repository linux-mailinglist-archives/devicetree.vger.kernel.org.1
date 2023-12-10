Return-Path: <devicetree+bounces-23636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E9180BE47
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 00:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 964EC1F20CCB
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 23:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C5F81DFE4;
	Sun, 10 Dec 2023 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rZDMmXth"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 325B2E7
	for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 15:39:51 -0800 (PST)
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-5c1a75a4b6cso1928033a12.2
        for <devicetree@vger.kernel.org>; Sun, 10 Dec 2023 15:39:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702251590; x=1702856390; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZRlK8XSOgjLEALc1Z5hQNRyRQl5uMFZ8VhU8lledO9I=;
        b=rZDMmXth+QtQs5MiTf/Iupg1yKdttYePVq4u7N8MVavGkyTOxS5jxkhOmE/CMfoYXE
         4SKUbksEnScIqYGSBl7zsrUX8CSphCmBPM1Td14wlMToL8vsKMokfjiqiJcDWTruskrT
         iI8+s6Prg9jeTnFg6QWtSvVo9R3ZNSRSdDvkfXFcwf+G5luK7FdlEvnkgfBVt9KwG8ia
         6IpDl28rNur6wXFh79eJ3Tq+Rh18Sodz2RhDmw1de3RtKdcnMyio343YL6EIiuY24cUn
         TFq4uRikU7zFOXQKdW5DMRGgpPmF5q31dP5PKzbxb49xOJ3RjSMC4XK4y3FYmZ45JqVT
         WLQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702251590; x=1702856390;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZRlK8XSOgjLEALc1Z5hQNRyRQl5uMFZ8VhU8lledO9I=;
        b=DS83VooxKCNIqw7BUrOjbZXqXwPtB4K78aYz8gYEbhdYI1DylNmwZwzVQXGaDAhLID
         VgZkdHA9VaAYP7GTsr64JfLeVC2HMIFmDm5NrGyDhkNux3EOjmSPIlRaA640uBhhJohR
         EFLGuvpOnK8j2L8vXAYtlfPE5/0f0WKC/uTilXO21q4VoUcVDq/UuSVYB7lu6Jhtqm6+
         tx7iLwe0PIQUBQAXTQn1imR708xGmXLm4JOj1RxoDhN//Ixaqf6VMcYobPv3PrkB3bAx
         hyb5nSne1TFi5v+lBBES+nPAYRrP01FxbdXSe5JXyiiGfMsbKxwqilShSwkP52haxHrE
         nlJw==
X-Gm-Message-State: AOJu0YxRSvfZQjPZnP8RXVXncctH8JD5UkD+nItV0CGuGlKSmmG4kYu2
	M2apoZRFlk/Ex5dOejdJyYZq6d2sLShQs3vuwkap2g==
X-Google-Smtp-Source: AGHT+IGsxFuYOhPbXcOyI8L4TnUro7MH402Xh7LjA1I7HZsXimGjb/gGb5R5X025i0dHUk0DjPb38yxObtyCuoxUp/s=
X-Received: by 2002:a05:6a21:998c:b0:190:228e:4c26 with SMTP id
 ve12-20020a056a21998c00b00190228e4c26mr1570718pzb.31.1702251590680; Sun, 10
 Dec 2023 15:39:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231210134834.43943-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231210134834.43943-1-krzysztof.kozlowski@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Sun, 10 Dec 2023 17:39:39 -0600
Message-ID: <CAPLW+4nKzYLTPpTAba9X3YmeGwY_avpZoPr=Lw8Uy7ktSkH4_w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: samsung: exynos-sysreg: combine
 exynosautov920 with other enum
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 10, 2023 at 7:48=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> No need to create a new enum every time we bring-up new SoC.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  .../bindings/soc/samsung/samsung,exynos-sysreg.yaml        | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos=
-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos=
-sysreg.yaml
> index 2de4301a467d..b00f25482fec 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg=
.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg=
.yaml
> @@ -17,6 +17,8 @@ properties:
>                - samsung,exynos3-sysreg
>                - samsung,exynos4-sysreg
>                - samsung,exynos5-sysreg
> +              - samsung,exynosautov920-peric0-sysreg
> +              - samsung,exynosautov920-peric1-sysreg
>                - tesla,fsd-cam-sysreg
>                - tesla,fsd-fsys0-sysreg
>                - tesla,fsd-fsys1-sysreg
> @@ -50,11 +52,6 @@ properties:
>                - samsung,exynosautov9-peric1-sysreg
>            - const: samsung,exynosautov9-sysreg
>            - const: syscon
> -      - items:
> -          - enum:
> -              - samsung,exynosautov920-peric0-sysreg
> -              - samsung,exynosautov920-peric1-sysreg
> -          - const: syscon
>
>    reg:
>      maxItems: 1
> --
> 2.34.1
>
>

