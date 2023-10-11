Return-Path: <devicetree+bounces-7914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 028667C60D6
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 01:06:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0705282282
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD38A21A09;
	Wed, 11 Oct 2023 23:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QpiScnFI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733F6249FE
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 23:06:45 +0000 (UTC)
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D570DBA
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:06:42 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-565e54cb93aso273151a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697065602; x=1697670402; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=830+T/xr9uEn4yhzfFmm+l2X0cKAII88KMLpZDMLLPE=;
        b=QpiScnFImBncuHOvYPuSQyL5ByN3jBeSxYQQ5i+gFdSxWaUDy+2rqK/l76BO0oixkw
         yyvHZpKEzoi85its3NfS598Z1x5ssvA2SXkrIuLlonqg5CkgWtN3piIHuXnwrtb4lsbU
         T2/DS0LEs7C7F3rWezadzcXYW8HeziFK3b+PYNA1u5h71FV7+tDrEdJ7LSgkSPGJMttU
         wC8h2q1vO2O8USDbE6g/DFlB5lYbL3wF5Ajgp5K53qLA4p4cn3G572ss2vnDRQRfuDa6
         jcy6OXrJ56pEbaIjAgETY+PhgBzuU+J+oGoGfpDVY7PkKMOIdYjsZ1qNd4gaNRlT6rYO
         2udg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697065602; x=1697670402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=830+T/xr9uEn4yhzfFmm+l2X0cKAII88KMLpZDMLLPE=;
        b=MO+tgsSJ75OXnZpt/Y+ZrdCnBmpCNkLWc2JQCLs7vm1g9DnnVo8IRVKtwM8y7ZzfCO
         TsNI6xklbXwb/nCg62wynnuRRnPZZlfX2mDmKZvEgdMVlpWMw0NkwQK3kWNwmRJsyL59
         tkKj2TRCvQERNvbwUC7pv3JnTc7p/ECgl9QZelcMgHU5yFBB4EkvT5Di1EB/VNamkQux
         4p3qBfrwRfNOSrfSfVa5eSjVzSIPLeCEQ4L+1ySL+9qviLCVx4Lx8OK+zwEtg9a5N12A
         Z01Ek0yoB0JXJOl0HAgKX6IyMdmqr+SZ1v2u7vAajslCe6NK+FHW/1A2TzAFrY0D+mtJ
         hsAg==
X-Gm-Message-State: AOJu0Yymbuz2yChDjlDGYzy+D0wJcvAZDYFWzCbcHFv2k7nD5M9vYTgO
	82DmHNTCPx6mEFXsv4BHNPX9DDYIxucGsGcOhREwlA==
X-Google-Smtp-Source: AGHT+IFkrUQFnZd9m9zomJjfToUWFrobK9kapcqFNH2fBvaJKzZmviD5aTDDF66CYAN9UuRyUiHFrGqywS2lm3wpxuY=
X-Received: by 2002:a17:90a:8b13:b0:274:e8e0:1503 with SMTP id
 y19-20020a17090a8b1300b00274e8e01503mr19230372pjn.16.1697065602253; Wed, 11
 Oct 2023 16:06:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org> <20231011184823.443959-6-peter.griffin@linaro.org>
In-Reply-To: <20231011184823.443959-6-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 11 Oct 2023 18:06:31 -0500
Message-ID: <CAPLW+4kK_hhkht7OPgyUCinwaEPMyVq3DJ4mnbRVkGXJvPWbwg@mail.gmail.com>
Subject: Re: [PATCH v3 05/20] dt-bindings: arm: google: Add bindings for
 Google ARM platforms
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
	kernel-team@android.com, linux-serial@vger.kernel.org, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 1:49=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> This introduces bindings and dt-schema for the Google tensor SoCs.
> Currently just gs101 and pixel 6 are supported.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/arm/google.yaml       | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/google.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Document=
ation/devicetree/bindings/arm/google.yaml
> new file mode 100644
> index 000000000000..167945e4d5ee
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/google.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/google.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google Tensor platforms
> +
> +maintainers:
> +  - Peter Griffin <peter.griffin@linaro.org>
> +
> +description: |
> +  ARM platforms using SoCs designed by Google branded "Tensor" used in P=
ixel
> +  devices.
> +
> +  Currently upstream this is devices using "gs101" SoC which is found in=
 Pixel
> +  6, Pixel 6 Pro and Pixel 6a.
> +
> +  Google have a few different names for the SoC.
> +  - Marketing name ("Tensor")
> +  - Codename ("Whitechapel")
> +  - SoC ID ("gs101")
> +  - Die ID ("S5P9845");
> +
> +  Likewise there are a couple of names for the actual device
> +  - Marketing name ("Pixel 6")
> +  - Codename ("Oriole")
> +
> +  Devicetrees should use the lowercased SoC ID and lowercased board code=
name.
> +  e.g. gs101 and gs101-oriole
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +

Is that empty line is actually needed here?

> +      - description: Google Pixel 6 / Oriole
> +        items:
> +          - enum:
> +              - google,gs101-oriole
> +          - const: google,gs101
> +
> +additionalProperties: true
> +
> +...
> --
> 2.42.0.655.g421f12c284-goog
>

