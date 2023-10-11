Return-Path: <devicetree+bounces-7907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9109C7C60AE
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 00:56:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23567282439
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 22:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B48B11D6BA;
	Wed, 11 Oct 2023 22:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G/WVRDar"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59487D2E5
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 22:56:50 +0000 (UTC)
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82165B8
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:56:48 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-690f7bf73ddso272965b3a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 15:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697065008; x=1697669808; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i+Wd5EIBxy7tg1IcC5pX8wjJFGApZ86qa6K6AgCJp6k=;
        b=G/WVRDarUVzQ0zIf9jTro8qy2mZVpTMOSwuWWjmXjtPZJIDD40XfFEIVsar9zyRGu1
         NVkwCSQyauq1GfalRbeT60whdnjYmjjukdn5NiX5YfWfJtBzs7isTj2yHODl3UJ9n7vK
         3ZFfCxhWSvqUfvhBNLGto6aktRDoSy/uF3/pu19KtiRnIDSEUzmd+mCw85+pC/Pcbx8u
         XoAyKC42FRYMjXHKCBl1Zo6p4rd1VtkSPCeCbC8Axt8t4FKh/tVL9RHsxLpO9XIKkdG1
         LUMR38oUqhFhC78fvlZyjd5SvYc3bR1K4ABK5W3pfxZhPKFUztO+QjLvg1sgHGXpsuI8
         IuBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697065008; x=1697669808;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i+Wd5EIBxy7tg1IcC5pX8wjJFGApZ86qa6K6AgCJp6k=;
        b=NibB1usM1xayReWMOtf5RHXUBPrp91uzIJsxPFe/RzTxUsvUf4OlLn8IwOXJJ8KjP9
         czzDXYtN+aYvCOvlKpjQqiKslcUDzAXbGIVK50YagYgF5tW2QN5wtAdR63BLycGxkmHf
         r+aVxnifKioUaQbLk4pXkAO2qt1yzV4RBc1TXy2POqKkuBFErsq7cy1nCgU0SRA1GvDg
         0ijI/XuKwxuX/QaPfx9flAlUlimR14Hbl/3Su9q9kulGXqDEiCw8Z2LdhmwOxqkwe5fs
         3T/ws6Q6l69YapFZUUJwklQlS9SdPvcES5BfkO2srSBr7KJ5SG1qchfRRLtFLLIPWc2Q
         40lA==
X-Gm-Message-State: AOJu0YyU3+0mSXwht9GpjTsiM+/zKD9KjWdQwbPqckzOqxxyNTjnTxNJ
	yRzcqjxik5+0KqiZX32yARJEDJO8y32W/dgdppVR8g==
X-Google-Smtp-Source: AGHT+IHWOczWu7WQV1EKAk6a/KcbReCPfGwJhoqvpNTDXWx/1qiK3Ag9j63GW3w5nl3ySyA5aOL457sQ0LvlcBwTEtw=
X-Received: by 2002:a05:6a20:a11b:b0:16b:7fcb:4257 with SMTP id
 q27-20020a056a20a11b00b0016b7fcb4257mr16749547pzk.4.1697065007917; Wed, 11
 Oct 2023 15:56:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org> <20231011184823.443959-4-peter.griffin@linaro.org>
In-Reply-To: <20231011184823.443959-4-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 11 Oct 2023 17:56:37 -0500
Message-ID: <CAPLW+4koMf3gcdyBC5vuBDxCyu_2MJT91zuC4diGHFY6FNyMyA@mail.gmail.com>
Subject: Re: [PATCH v3 03/20] dt-bindings: soc: google: exynos-sysreg: add
 dedicated SYSREG compatibles to GS101
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
> GS101 has three different SYSREG controllers, add dedicated
> compatibles for them to the documentation.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  .../bindings/soc/samsung/samsung,exynos-sysreg.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos=
-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos=
-sysreg.yaml
> index 163e912e9cad..dbd12a97faad 100644
> --- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg=
.yaml
> +++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg=
.yaml
> @@ -30,6 +30,12 @@ properties:
>                - samsung,exynos5433-fsys-sysreg
>            - const: samsung,exynos5433-sysreg
>            - const: syscon
> +      - items:
> +          - enum:
> +              - google,gs101-peric0-sysreg
> +              - google,gs101-peric1-sysreg
> +              - google,gs101-apm-sysreg
> +          - const: syscon
>        - items:
>            - enum:
>                - samsung,exynos5433-sysreg
> --
> 2.42.0.655.g421f12c284-goog
>

