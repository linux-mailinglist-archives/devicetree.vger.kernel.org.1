Return-Path: <devicetree+bounces-7598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B994C7C4CDA
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 10:16:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F332B1C20897
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 08:16:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FB75199D6;
	Wed, 11 Oct 2023 08:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xl8Go/6y"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D5319BCE
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 08:16:43 +0000 (UTC)
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B45DDBA
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:16:40 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-7741bffd123so467965085a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 01:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697012199; x=1697616999; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nA0RDDaTkiz/7JWtA8mSntXcdVkGEnyXDFoq63BjRlY=;
        b=xl8Go/6yojwnAlAX/9Y6ZEG3orREXWGbRUwpZPFNBqMyv7+E9gYYFpTqJvQbokYEG8
         mx9jPMhbcdZKuVCIXKYR2B7/0UoxrvSQb0Kndcwv5Scrd0lzhYIlpKH9BLDeRGXmo8RC
         MSGJZJ20Ohu7A4jy6JuZKSpgNe0oihcy1jgLyzBeAYKnihl9GzfzJfVrMxMQJrJm1zHy
         TZ7NoxjwHh+6UgQNr9Jc+GxunvO0Vhtneql7YrT5NlkmKL2H7Jo7hGeOlrxXKBIiQyvy
         q7KtpPOg2DcBQYC1silkk3dmQgLFldWfUGA2LJTuQUEcBC9RckC+LIKw7oGVm3kpjFqh
         vhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697012199; x=1697616999;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nA0RDDaTkiz/7JWtA8mSntXcdVkGEnyXDFoq63BjRlY=;
        b=CpIm5Vj9JI47oQ3LP1Y69W1gEm8/GaHfp1gL1ig+CV2W82ePpcFAjchwvf1SrwiN4K
         PF+VzGVK6/ErdDJyBGbPhOTxIFJz5Sfiz+6i7mffsjGqLF2rPMeHp22Gv6XS/I7t9Jj3
         9PoucTHddNslSan4p5FusUyeunmlBeHfUcZtSXTWroKBZOa9jMoC8ODmjuqGtrnRdpJg
         TY25Tq1De8Rs7l6v92zB3cgnInb1iSH7f1r/rdk3idSwEKgM2M78u1oxkAIEOpqNqp2o
         3It5Me+bnRTrscX4ejItv6ODMOWl2KhY8mAOTB2EnuKNKo+VL/pQStvFVucU67OI7XYB
         tIWg==
X-Gm-Message-State: AOJu0YzXxuHIMfUHKQgWjzcQ4mJQxWGTMx6Rj3Cl6PjjaoQURdgqvZMV
	5UBrFwzV88OJoe66mxvjC1DQQJQ6+LPQ9tHjGleYpw==
X-Google-Smtp-Source: AGHT+IG+0ROOZO1mYXDe5AanejoBg3TXGpWOGx8a61SnY82+auoDhpY/ZD9spxpXsT1DrFa9tocnRlQSlCFjBmjz/zI=
X-Received: by 2002:a0c:aa9a:0:b0:65b:771:f2ea with SMTP id
 f26-20020a0caa9a000000b0065b0771f2eamr15590074qvb.53.1697012199437; Wed, 11
 Oct 2023 01:16:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010224928.2296997-1-peter.griffin@linaro.org> <92de302a-f6b5-465c-a5da-2a711861089e@linaro.org>
In-Reply-To: <92de302a-f6b5-465c-a5da-2a711861089e@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 11 Oct 2023 09:16:27 +0100
Message-ID: <CADrjBPqOmGEzeVEKiysxQNo9+B0=zD3Z+G24fPDKrFsgUXYJjQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] Add minimal Tensor/GS101 SoC support and
 Oriole/Pixel6 board
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com, 
	andre.draszik@linaro.org, semen.protsenko@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Tudor,

Thanks for your reply.

On Wed, 11 Oct 2023 at 07:10, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
> Hi, Peter,
>
> On 10/10/23 23:49, Peter Griffin wrote:
> > Note 3: In `dt-bindings: pinctrl: samsung: add google,gs101-pinctrl
> > compatible` I tried to narrow the interrupts check to
> > google,gs101-pinctrl but I still see a warning: gs101-oriole.dtb:
> > pinctrl@174d0000: interrupts: [[0, 0, 4],[..] is too long If anyone can
> > educate me on what I've done wrong here it would be most appreciated!
>
> I guess the initial definition of the number of interrupts should
> include the largest min/maxItems. I no longer see the warning with this
> change:

Yes that is how it was in v1. The review feedback though was to narrow
the scope to just google,gs101-pinctrl compatible using if: then: else: which
is what I can't get to work properly.

regards,

Peter.


>
> diff --git
> a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> index 2464bc43aacb..6dc648490668 100644
> --- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> @@ -59,7 +59,8 @@ properties:
>    interrupts:
>      description:
>        Required for GPIO banks supporting external GPIO interrupts.
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 50
>
>    power-domains:
>      maxItems: 1

