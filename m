Return-Path: <devicetree+bounces-7916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7A67C60EC
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 01:12:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 332A62823A3
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1051224E2;
	Wed, 11 Oct 2023 23:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ie/9FT9r"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E9321A09
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 23:12:46 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 443D6B7
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:12:45 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-692c02adeefso259431b3a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697065965; x=1697670765; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1SUsXcVKQn8A+B+wkybfUBsU0p3cLnFC4FwTHNb3kWg=;
        b=Ie/9FT9rO7sD5nm73t4qjjqYeGqISckKD1SqVALlJSd+tMoAwrPeQIYkNcl+cqjw4S
         rkXbZmKFA/F5eMKk15Qd4uovBWAmyBYWQvoMQxCs5vGCfSgAToK+tp0imQRHdioyDqHW
         wvNw9t9M5F+AJZbrWGHz7VtAlfBiuq3UtcMNR7EnyawbpChIJ0AnUKw1suMazUqnCl9M
         K7lCs4gZZOAUQ4ODVg8aqh10Ue9v4xCi25+Z4Gzj5xUd69N5eKXpeuhUchjKqhM6tjsm
         8r/NhG4YBHm0Jr6MZ+zBQVrLLnVHH9FX8VeLgPhViL3qxGw/ThdTyNCa/9UrSCyu92X2
         MZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697065965; x=1697670765;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1SUsXcVKQn8A+B+wkybfUBsU0p3cLnFC4FwTHNb3kWg=;
        b=ncBY739PE23kOpOTS8FN5VpATWXr1w8IXPn9stahrFloVyu0vmPB73WiOZV+R/Glxd
         w4VH+vOrxErrNA1jn3I5+9wx86EbL3FAZWD/xpAEbw/ZfrlfQQJ70J3BMTxCF2FAkVbt
         /La755iVnC/nleY48PW/HdqNu8EPRCaPJZSZ24pPbIrFFAhEvcLuqQ1ARvVKwIsxEhPw
         XwfdxMhHgCtWep4fhKOjkFTXD5UIwQ/gRCVyqN40p79AC4rZ9Qfl1XT2gF+JCkYxL4IQ
         kFlWS7o9//9OAi4MgNdkysA/Ix6GkEXhyUHv9pOpTQglmaBDjiBQ+9XTTKJx8eG94Hh8
         8yrQ==
X-Gm-Message-State: AOJu0YyRTGIY1XwputXylHSv6tMvpKaF2x/VKka9ATY5TNDcAes1V4X2
	AHmulkytIoJ99Me7w89Gg+hx/Jv0YXNaGcK3zynaXg==
X-Google-Smtp-Source: AGHT+IHaJTcIj35kPFbipbN/CrQTdHVJTofe7kJ9Oof6VmcGMyPjSqNPDoeQzoD/zw9b5RjGiSgpqynUtZsW+Lj2se8=
X-Received: by 2002:a05:6a21:3d88:b0:171:a3e8:8c05 with SMTP id
 bj8-20020a056a213d8800b00171a3e88c05mr5927440pzc.53.1697065964759; Wed, 11
 Oct 2023 16:12:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010224928.2296997-1-peter.griffin@linaro.org> <20231010224928.2296997-8-peter.griffin@linaro.org>
In-Reply-To: <20231010224928.2296997-8-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 11 Oct 2023 18:12:33 -0500
Message-ID: <CAPLW+4nO8kfUbQ6wJDjG_Ft0HAu_j3gAvcLLHU3BAHnALqaULA@mail.gmail.com>
Subject: Re: [PATCH v2 07/20] dt-bindings: pinctrl: samsung: add
 gs101-wakeup-eint compatible
To: Peter Griffin <peter.griffin@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 10, 2023 at 5:49=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> gs101 is similar to newer Exynos SoCs like Exynos850 and ExynosAutov9
> where more than one pin controller can do external wake-up interrupt.
> So add a dedicated compatible for it.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  .../bindings/pinctrl/samsung,pinctrl-wakeup-interrupt.yaml      | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wa=
keup-interrupt.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pin=
ctrl-wakeup-interrupt.yaml
> index 1de91a51234d..7cddce761c46 100644
> --- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-in=
terrupt.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl-wakeup-in=
terrupt.yaml
> @@ -29,6 +29,7 @@ description: |
>  properties:
>    compatible:
>      enum:
> +      - google,gs101-wakeup-eint
>        - samsung,s3c2410-wakeup-eint
>        - samsung,s3c2412-wakeup-eint
>        - samsung,s3c64xx-wakeup-eint
> @@ -99,6 +100,7 @@ allOf:
>              enum:
>                - samsung,exynos850-wakeup-eint
>                - samsung,exynosautov9-wakeup-eint
> +              - google,gs101-wakeup-eint

Maybe move it on top, to keep the list sorted alphabetically?

>      then:
>        properties:
>          interrupts: false
> --
> 2.42.0.609.gbb76f46606-goog
>

