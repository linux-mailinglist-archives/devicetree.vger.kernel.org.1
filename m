Return-Path: <devicetree+bounces-7917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E897C60F3
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 01:13:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA79C1C209D6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 23:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E714822EE3;
	Wed, 11 Oct 2023 23:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GPbQZJE9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFD821A09
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 23:13:40 +0000 (UTC)
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D79DA9
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:13:38 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-5859b2eaa67so262584a12.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697066018; x=1697670818; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X5saBzwBoX5B14fYIIgg/6gXpURSg7LZ6ZY/6+XktEg=;
        b=GPbQZJE9q9mKJ25cesAtcP7x0E7ZClY4Plh3b+GhSmZA7zRrisXrH87uAJLqONC/Pl
         8R/ogLAMAmQQb0aLK+Dgj0E3jt6NazJkBXJWYjX4DRakGTjWicTZM9T9KS8a59wm2QB7
         SCz6o5xcW8q5MrBUpo16ixjQhvth8Yu/B+wjbuIicHMP0PEKxYOtv7Tni0JILan+Nb73
         IOSmByv6t4z0YWz4/4YVYVwjL9TCfTEZy6ICsM5r9LpwZKpWLjMOezwhP5hPus1SgJlZ
         DmYAvJi7zSY9+qs/aDfZ8sL43XNhhRTS2B17760kfv28Vghy2u2Xexc3OBt/FE1mVeZs
         rcRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697066018; x=1697670818;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X5saBzwBoX5B14fYIIgg/6gXpURSg7LZ6ZY/6+XktEg=;
        b=CIxErt7ui4sYpHWcP/tC/lqWiZP5OZBDeGXs+l8mwbjeJnmOecGC7qspXgiOec7Pzr
         V/u4TiTcUZA+Bf2LeULXrDDFPK9rTGfQA+nz1vAfyllA3kX7cilBym1IcmM7A34mn7fi
         ngnzCLlHY0x+VhXi6gJGrmXeW/v0QgKy3xvarliWZBfpI/IoNn/8/Rz2ckSGqgdYpPOJ
         xzIncPdDswyZbwNtS3I7bNz8JZYMVSPqsuLpMV8dR6wWbqHF0YehqfOoCmbBTQUMtnJE
         Kc2jbybwFQqDQmll4Jfoct+HxKyKFTszntUmixXNClBTg5ajkOpQaXgLoo2C0Hs9n6za
         11HA==
X-Gm-Message-State: AOJu0YyATNoH7km9rhdmmSGU0Vr3yEY9k4eGaekbxtomSdZI9c9mT/ym
	rzTUX9NSwfPcbzarwhLtaaxfSbSvI1LNO1pHUpEf9g==
X-Google-Smtp-Source: AGHT+IEld7S7h6gZ3fWO8KAIshEdLEI80q2ynQn1SW+nlZmhOV1fXDdbKEzZtX6rH7IBM+FnyFZOxN8YxMRhPqYZWog=
X-Received: by 2002:a17:90b:3891:b0:274:862f:3439 with SMTP id
 mu17-20020a17090b389100b00274862f3439mr19558004pjb.13.1697066018140; Wed, 11
 Oct 2023 16:13:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org> <20231011184823.443959-9-peter.griffin@linaro.org>
In-Reply-To: <20231011184823.443959-9-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 11 Oct 2023 18:13:27 -0500
Message-ID: <CAPLW+4nMKtgdGrjijWpXOCxaYWN5sBVVw9boYk9UMmHLnV3pAA@mail.gmail.com>
Subject: Re: [PATCH v3 08/20] dt-bindings: serial: samsung: Add
 google-gs101-uart compatible
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 1:49=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> Add dedicated google-gs101-uart compatible to the dt-schema for
> representing uart of the Google Tensor gs101 SoC.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  Documentation/devicetree/bindings/serial/samsung_uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b=
/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> index 8bd88d5cbb11..6e807b1b4d8c 100644
> --- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> @@ -24,6 +24,7 @@ properties:
>        - enum:
>            - apple,s5l-uart
>            - axis,artpec8-uart
> +          - google,gs101-uart
>            - samsung,s3c2410-uart
>            - samsung,s3c2412-uart
>            - samsung,s3c2440-uart
> --
> 2.42.0.655.g421f12c284-goog
>

