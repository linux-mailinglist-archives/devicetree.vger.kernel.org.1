Return-Path: <devicetree+bounces-6258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE1B7BA82B
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 19:37:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4E21C281BBB
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 17:37:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE8DF3AC2F;
	Thu,  5 Oct 2023 17:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="0pFLbdRO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0738FBD
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 17:37:20 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DFC11701
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 10:37:18 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1c6052422acso12195ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Oct 2023 10:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696527437; x=1697132237; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=C4e9Kg23SHZu+vjVtfxzHNoF3HFL3xTDkE0f1jaHYfI=;
        b=0pFLbdROommXT53KDHjRurRM2SDehRRvqr7HGcchXkyFXTdApFrKtwZcAcxLJFPgzK
         R+vcP8W/2ZGcTixOY417Qr7K+X5dLU33HleHt/o0g1ZhEORUE//9hZNL//OwMeNXTXQP
         qeWdmS4hCBNq34aV2FtjtQrt050JZETj01/SZb83GzrzeZU4NSt0RhbP6oqGMfQnCKey
         ZogYPX9hzMV3dRywzruCPBnWMdux2IT5Eymsh+M7joRGabGD1QouW7l0cR+C3fljaJXL
         qixpq23HX6pCb2RmNugLJ8BS8aowdmBtaHga+aJg1e0f+jSB77IjqPHbRwbDjBHhyPGp
         GHig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696527437; x=1697132237;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C4e9Kg23SHZu+vjVtfxzHNoF3HFL3xTDkE0f1jaHYfI=;
        b=RnkoLNXqfMtNHDioXo+00LW9XrC7P0nbmVOL9hIvQysghpZb0LCKYq6c/r96VYLkt0
         RQViS6P6S+rlyvA5yx82Dvpk4N0xIXAEFw5BvMv+0p9QDhvZGwmGf7ljTyqt8+UPCYaA
         g34zZmms+1wlRiBu5FNEKUD9KnIo4+GoVvpXU5hirSIU4RVEx9SY+s4tGGDd0kJ5keGx
         z9zAzmHuzAlZRbnvB4U8aIU6F5pKl+UN2kqnt8i7ZyTPR8ArUiw5cijhyXw3PuEkGjwb
         9QpH7fSucAwVPvJ6UMh7UZJXy2KODu+0wnIz+Sbg6pYl2MWfKr1RdIBAzlpMavU1fK/p
         7n3w==
X-Gm-Message-State: AOJu0YxOWxkUnBlDW2jG6O7F7IzAUhDGOfDOtXy8wh+YKLIwt9wFxLvv
	fYga8u+u0Tc75cGaI9wMO7NlJA==
X-Google-Smtp-Source: AGHT+IGQkqtkzOoEy8CUfeYOTGtNX1HN2CAYrTFP+QCLuLZnKQCDyDPhpX/WLtfxTO55ITdGr9wWng==
X-Received: by 2002:a17:903:18c:b0:1c7:5627:2053 with SMTP id z12-20020a170903018c00b001c756272053mr158309plg.18.1696527437142;
        Thu, 05 Oct 2023 10:37:17 -0700 (PDT)
Received: from google.com (13.65.82.34.bc.googleusercontent.com. [34.82.65.13])
        by smtp.gmail.com with ESMTPSA id bo4-20020a17090b090400b0026971450601sm1890158pjb.7.2023.10.05.10.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 10:37:16 -0700 (PDT)
Date: Thu, 5 Oct 2023 10:37:13 -0700
From: William McVicker <willmcvicker@google.com>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org,
	tomasz.figa@gmail.com, s.nawrocki@samsung.com,
	linus.walleij@linaro.org, wim@linux-watchdog.org,
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org,
	arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com,
	tudor.ambarus@linaro.org, andre.draszik@linaro.org,
	semen.protsenko@linaro.org, soc@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org,
	kernel-team@android.com
Subject: Re: [PATCH 05/21] dt-bindings: watchdog: Document Google gs101 &
 gs201 watchdog bindings
Message-ID: <ZR70SdvjY6JskvWD@google.com>
References: <20231005155618.700312-1-peter.griffin@linaro.org>
 <20231005155618.700312-6-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005155618.700312-6-peter.griffin@linaro.org>
X-Spam-Status: No, score=-15.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	ENV_AND_HDR_SPF_MATCH,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/05/2023, Peter Griffin wrote:
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
> diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> index 8fb6656ba0c2..30f5949037fc 100644
> --- a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> @@ -24,6 +24,8 @@ properties:
>        - samsung,exynos7-wdt                   # for Exynos7
>        - samsung,exynos850-wdt                 # for Exynos850
>        - samsung,exynosautov9-wdt              # for Exynosautov9
> +      - google,gs101-wdt                      # for Google gs101
> +      - google,gs201-wdt                      # for Google gs101

For "google,gs201-wdt the comment should be "for Google gs201".

Regards,
Will

>  
>    reg:
>      maxItems: 1
> @@ -42,13 +44,13 @@ properties:
>    samsung,cluster-index:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      description:
> -      Index of CPU cluster on which watchdog is running (in case of Exynos850)
> +      Index of CPU cluster on which watchdog is running (in case of Exynos850 or Google gsx01)
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
> 2.42.0.582.g8ccd20d70d-goog
> 

