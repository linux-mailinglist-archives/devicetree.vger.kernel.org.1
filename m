Return-Path: <devicetree+bounces-8092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2B87C6ABC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:15:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 926B61C20A5D
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:15:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF23122EE1;
	Thu, 12 Oct 2023 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mau7NHR0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9BE22336
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:15:21 +0000 (UTC)
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12BA5E7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 03:15:19 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-66cfd35f595so4652446d6.2
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 03:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697105718; x=1697710518; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4bfmHiCpC0jdM/8Nmc5CLWmrrts9axW4w44tXuO9DcI=;
        b=Mau7NHR0b2aPF+Txd8J6JkUTo8sF3sv0sAg5q4yO03xHdzTYYdHql4+KxeQ3xOnyHX
         P7J2cVnmz29UDTphZg9aWrZA7aF2xkrAOvQ7SyYYHd9szBsMjILvQzRK5E5Ptrx8eBfN
         c5GleJal1Jgi6QNFa7qxzZo6YzkVN/rORwOGeAvMFd244uikpMNadh3OsJb9hQtg8Ys6
         7iuLf2r/erNhleLjMwmCUGNKqjoaMLL/iZQkwlu3gCZBpoLRF2wKXgmkEWkb0hL3muav
         H7bYLqekLbZuKiSWbroDui5xku444r6o02QRzlY2i53OWEMP9atOsv6r3/LZ7Qh1awIW
         4iDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697105718; x=1697710518;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4bfmHiCpC0jdM/8Nmc5CLWmrrts9axW4w44tXuO9DcI=;
        b=nIioiFu12oA8uKPPoPwKMnBMbi84tkSdYFaTAT2bj3umjTdoYIn28o4EXiA2h3exoB
         ORgcDAxMamTaPV8Zj3/KGmmT3FAN/wt19iEbxdEhQAq5bR4ZlPFa9lQrZGAXgnlnPCIR
         qY5aJ8os/9BNfVo/EAsEQYgbpl8DNd3q+sU5D2PcbWiaY76A4bsCAcqgSG1xoGub3I06
         h5y5V1mbgSirdPAh4QY4o+JBUIVrX88UPKSWZb7odk2iju/WHkqFG9+S2SBFyzaKEABE
         sLBzspKC5wVcWi5fQ9ke49Hw+E/eFBdTRAHhR/22cC4Ky93yTHbp8KKh2YIBK/iofncK
         IElA==
X-Gm-Message-State: AOJu0YxZi8a3w5qrkPWW2fDPqYHojB//+efw92345bx0+3B+QGzgigTW
	QUwt/5JZ/QHjw65QU3Si48IqYC5dPgazCtQ/55Jijg==
X-Google-Smtp-Source: AGHT+IEr9WuwYaxxoqJYFrbfAwBrWEHdqAE5exk8Mtmrx/Nk29qQXhDrGvuFAVS7ncKWTmolqk5rMwGO1qR3JFlm9Cg=
X-Received: by 2002:a05:6214:2c04:b0:65a:fcd1:1d85 with SMTP id
 qq4-20020a0562142c0400b0065afcd11d85mr24813204qvb.60.1697105718086; Thu, 12
 Oct 2023 03:15:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-3-peter.griffin@linaro.org> <5907e2b3-9a0b-4871-be08-6ca42200b8ec@linaro.org>
In-Reply-To: <5907e2b3-9a0b-4871-be08-6ca42200b8ec@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 12 Oct 2023 11:15:06 +0100
Message-ID: <CADrjBPqF67bcTnssQO8cN2n1ZbevziVNa+gA5azEDz_1wXzaNQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/20] dt-bindings: clock: Add Google gs101 clock
 management unit bindings
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Krzysztof,

Thanks for your review.

On Thu, 12 Oct 2023 at 07:11, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 11/10/2023 20:48, Peter Griffin wrote:
> > Provide dt-schema documentation for Google gs101 SoC clock controller.
> > Currently this adds support for cmu_top, cmu_misc and cmu_apm.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../bindings/clock/google,gs101-clock.yaml    | 125 ++++++++++
> >  include/dt-bindings/clock/google,gs101.h      | 232 ++++++++++++++++++
> >  2 files changed, 357 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> >  create mode 100644 include/dt-bindings/clock/google,gs101.h
> >
> > diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> > new file mode 100644
> > index 000000000000..f74494594b3b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> > @@ -0,0 +1,125 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/google,gs101-clock.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google GS101 SoC clock controller
> > +
> > +maintainers:
> > +  - Peter Griffin <peter.griffin@linaro.org>
> > +
> > +description: |
> > +  Google GS101 clock controller is comprised of several CMU units, generating
> > +  clocks for different domains. Those CMU units are modeled as separate device
> > +  tree nodes, and might depend on each other. The root clock in that clock tree
> > +  is OSCCLK (24.576 MHz). That external clock must be defined as a fixed-rate
> > +  clock in dts.
> > +
> > +  CMU_TOP is a top-level CMU, where all base clocks are prepared using PLLs and
> > +  dividers; all other leaf clocks (other CMUs) are usually derived from CMU_TOP.
> > +
> > +  Each clock is assigned an identifier and client nodes can use this identifier
> > +  to specify the clock which they consume. All clocks available for usage
> > +  in clock consumer nodes are defined as preprocessor macros in
> > +  'dt-bindings/clock/gs101.h' header.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - google,gs101-cmu-top
> > +      - google,gs101-cmu-apm
> > +      - google,gs101-cmu-misc
> > +
> > +  clocks:
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    minItems: 1
> > +    maxItems: 2
> > +
> > +  "#clock-cells":
> > +    const: 1
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +allOf:
>
> No improvements here from v1.

Seems I missed the
"required:" go before "allOf:" comment here. Sorry about that I've fixed that
in v4.

Seems like a few other exynos clock yaml bindings need that fix to.

>
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: google,gs101-cmu-top
> > +
> > +    then:
> > +      properties:
> > +        clocks:
> > +          items:
> > +            - description: External reference clock (24.576 MHz)
> > +
> > +        clock-names:
> > +          items:
> > +            - const: oscclk
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
>
> enum:
>   - google,gs101-cmu-apm
>   - google,gs101-cmu-misc

Ok just to be clear, are you saying I should have it like this?

  - if:
      properties:
        compatible:
          contains:
            enum:
              - google,gs101-cmu-misc
              - google,gs101-cmu-apm

    then:
      properties:
        clocks:
          minItems: 1
          items:
            - description: External reference clock (24.576 MHz)
            - description: Misc bus clock (from CMU_TOP)

        clock-names:
          minItems: 1
          items:
            - const: oscclk
            - const: dout_cmu_misc_bus

Instead of a dedicated  'if: const <compatible> then: ' for each CMU?

If I'm wrong above would you been kind enough to elaborate a bit
more on what you want, as all this dt-schema yaml stuff is a bit new
for me

Many thanks,

Peter

