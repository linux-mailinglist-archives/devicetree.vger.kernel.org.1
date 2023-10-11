Return-Path: <devicetree+bounces-7909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC627C60B7
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 00:58:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E7821C20A0E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 22:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CE301DDCD;
	Wed, 11 Oct 2023 22:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ko1nE2h4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75551D546
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:58:07 +0000 (UTC)
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B907C6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:58:05 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-27d1b48e20dso235043a91.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697065085; x=1697669885; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uYWR/2v3Fd1MoRhNjm1nMoJPUsc+Tcv+RBee2GjvOUk=;
        b=ko1nE2h4dDYIDN3xlTNlKtALe+xg/TuF5LX+Ns3wgdFtOwsAsHrw2XtA/c+os166Z2
         9qmZiq2i4ZYXTaEFlC+Fg1/tIm7pLLpSEvWNy37/7IYIHImqGz4kk1GuCOfikGI/r8vz
         KsysDgrZoe2x3vjpz2GKr5xNlbssl3AQ7g9bZD42KKmxxJqjzGJwIe2TagOkH3O94U4j
         Zvlkg8FcsLlYR8cCEte0OVAfGRwJAXTk/hL3jgLUeIr8p/0fxwvyCM1yq/dhnQZLlTv4
         WI7jsPOB2JqayajjeMTr16zReIoFNmyP95LqyYi1OA0l61dmUm9rSN/zsgP0aMY4Mucv
         /dMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697065085; x=1697669885;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uYWR/2v3Fd1MoRhNjm1nMoJPUsc+Tcv+RBee2GjvOUk=;
        b=wfD0N8w2trHJ/LAf+tH4QrvSt+H6hieGYxKtwT5Ik9taLJRKSTbF9DX0BvEgrxSGcn
         1WY5ViHiNhSjZFLGtmO6bK1QfIekS77zYvqXEy1AnGX7hcTgstkoH0l/3DpcrdT6ExEr
         nuYUTrPamtPY8UKksCuOwjYGhfWg9/3+oEP7X84pbFBTUItsA7qMRZfEcvt000SGa9hH
         0iTtimygUy+ka5WDPX3DnctcgunnBYTb7yF+zhxnXG0IbWoKMqRR/XuhLu8do8NHFDLr
         cBX3/sDE07IKahT+WfqUNJqzfOEnH+qQU+YEmRT8j9UOIHg5Mat7PuFujG9OJFMPZ9H4
         +zyA==
X-Gm-Message-State: AOJu0YwPHpPt4rE+jCsV5GAL7F/hur6Ei8oHyuqugD5lGudc3EklhpRj
	KlzvCyJSeatIV42s7awwG4KYXmohuyiOu75anIAIvA==
X-Google-Smtp-Source: AGHT+IEJWmglU1/rKohd2ItY6wv1Qku3KrD7vpBLL7BDiUXScJ4VqWtMu4B/i5Qi0h72Dw0/+UcqwB+9IoDs4GWrwmk=
X-Received: by 2002:a17:90a:9f46:b0:27d:bc2:7c6e with SMTP id
 q6-20020a17090a9f4600b0027d0bc27c6emr2337631pjv.20.1697065084819; Wed, 11 Oct
 2023 15:58:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org> <20231011184823.443959-5-peter.griffin@linaro.org>
In-Reply-To: <20231011184823.443959-5-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 11 Oct 2023 17:57:53 -0500
Message-ID: <CAPLW+4m4zUFfRWMo+KC1ymGAgHtbLxyx6L99Qd0vJYQXmmCvbw@mail.gmail.com>
Subject: Re: [PATCH v3 04/20] dt-bindings: watchdog: Document Google gs101 &
 gs201 watchdog bindings
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	saravanak@google.com, willmcvicker@google.com, soc@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	kernel-team@android.com, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 1:49=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> Add the "google,gs101-wdt" and "google,gs201-wdt" compatibles to the
> dt-schema documentation.
>
> gs101 SoC has two CPU clusters and each cluster has its own dedicated
> watchdog timer (similar to exynos850 and exynosautov9 SoCs).
>
> These WDT instances are controlled using different bits in PMU
> registers.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  .../devicetree/bindings/watchdog/samsung-wdt.yaml      | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml =
b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> index 8fb6656ba0c2..67c8767f0499 100644
> --- a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> @@ -17,6 +17,8 @@ description: |+
>  properties:
>    compatible:
>      enum:
> +      - google,gs101-wdt                      # for Google gs101
> +      - google,gs201-wdt                      # for Google gs201
>        - samsung,s3c2410-wdt                   # for S3C2410
>        - samsung,s3c6410-wdt                   # for S3C6410, S5PV210 and=
 Exynos4
>        - samsung,exynos5250-wdt                # for Exynos5250
> @@ -42,13 +44,13 @@ properties:
>    samsung,cluster-index:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description:
> -      Index of CPU cluster on which watchdog is running (in case of Exyn=
os850)
> +      Index of CPU cluster on which watchdog is running (in case of Exyn=
os850 or Google gsx01)

Please stick to 80 characters per line when possible.

>
>    samsung,syscon-phandle:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
>        Phandle to the PMU system controller node (in case of Exynos5250,
> -      Exynos5420, Exynos7 and Exynos850).
> +      Exynos5420, Exynos7, Exynos850 and gsx01).
>
>  required:
>    - compatible
> @@ -69,6 +71,8 @@ allOf:
>                - samsung,exynos7-wdt
>                - samsung,exynos850-wdt
>                - samsung,exynosautov9-wdt
> +              - google,gs101-wdt
> +              - google,gs201-wdt
>      then:
>        required:
>          - samsung,syscon-phandle
> @@ -79,6 +83,8 @@ allOf:
>              enum:
>                - samsung,exynos850-wdt
>                - samsung,exynosautov9-wdt
> +              - google,gs101-wdt
> +              - google,gs201-wdt
>      then:
>        properties:
>          clocks:
> --
> 2.42.0.655.g421f12c284-goog
>

