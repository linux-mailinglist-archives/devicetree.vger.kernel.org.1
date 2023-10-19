Return-Path: <devicetree+bounces-10101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B285B7CFA7C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 15:11:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BAAC281FB9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25AD4225D4;
	Thu, 19 Oct 2023 13:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BB/ERAsk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31A51A290
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 13:11:08 +0000 (UTC)
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B05211D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:11:06 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6cd33d51852so854455a34.2
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 06:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697721065; x=1698325865; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jm6DMSO8fMKHAOH/Ts5yTawuQ5qbJzgnz2SgvPmjiJE=;
        b=BB/ERAskv535SK29Cyt2aDn+ySYPGvQFbp+h+u9LxFu/8gF4N1X/xK3KXw4yVlS+Gm
         9mVXBQQecNRr7cmLDiqp0pjz9m2OOz4BaZIiXW9+2SR6uGPmwmBo3xq6zAPOs3pXvFMY
         ACc84rVcih8wFCf02VlgNOu9JpEcAfALwipSV3O8mytmS4fMHj2stlXv7Q2GSW8uAPAQ
         KrXPq0hccZIn5nS/38wW2ZQ2qOcnDog6yzezxvrOXh2UysktarYAGSw5w1Uhyx/4C9yI
         0v+JJYTi/6elWx2YJwXqUxSA9HsUbez+Jpmu25nCy4KzqnaJlp+sYhKXo3XvGpyOMxwe
         Yovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697721065; x=1698325865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jm6DMSO8fMKHAOH/Ts5yTawuQ5qbJzgnz2SgvPmjiJE=;
        b=aWacpRZ5UW/nn6RALOfoUt8eDLzutfSd2TS1Bgu3I6AUgm2u0T/HGxTjmW+Q+WUOqd
         sXeuXiPomiYTKBn+WoBTXDXK1JTzeWHLE+5B2a/BMYzXjP9K0XsXZw2DIAXCpNIqRrsM
         wvD8nJsdJ79zddpLo80L4sE/tKvzPBowI8xnvV8U9Z1tGgNfqPBQ+T53n8/70Me6h7VF
         W83QiHBRyZJFK4rlnsd6o3AvYZsje8pbPErqP5v6Brp/794jB8CU8gPX4DRpyj+aBaha
         TV9qkO2UPMt96xW1HRjemH9octo04/bOsGK9osf3A7dX6D+E9exxeIT4cmA2TWRFMthm
         56kw==
X-Gm-Message-State: AOJu0YxvBFvN4cMYhuwC/43LqdSaL83P4/xrQBotU39lLBULFH3QWUGy
	lzyUqpXtKALYNFnJEOxB0LnMQUxpdk03ZKMd26bN7g==
X-Google-Smtp-Source: AGHT+IE/jHTUAAR6nIMpfuFVHDcoOayI4LJaNRr2xjsoB7z11oXnUYLoafVN7xD+i6Z21o/jjAiy3LIc6fQpznqcdbw=
X-Received: by 2002:a05:6830:438c:b0:6c0:f451:ab6a with SMTP id
 s12-20020a056830438c00b006c0f451ab6amr2505339otv.8.1697721065336; Thu, 19 Oct
 2023 06:11:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-4-peter.griffin@linaro.org> <20231016133649.GA2641997-robh@kernel.org>
In-Reply-To: <20231016133649.GA2641997-robh@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 19 Oct 2023 14:10:54 +0100
Message-ID: <CADrjBPo8xYQtR5qyLPgcUU4VKE9Ecfrb3XGKX4BV8CBLggJE0g@mail.gmail.com>
Subject: Re: [PATCH v3 03/20] dt-bindings: soc: google: exynos-sysreg: add
 dedicated SYSREG compatibles to GS101
To: Rob Herring <robh@kernel.org>
Cc: krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, 
	conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com, 
	s.nawrocki@samsung.com, linus.walleij@linaro.org, wim@linux-watchdog.org, 
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de, 
	olof@lixom.net, gregkh@linuxfoundation.org, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Mon, 16 Oct 2023 at 14:36, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Oct 11, 2023 at 07:48:06PM +0100, Peter Griffin wrote:
> > GS101 has three different SYSREG controllers, add dedicated
> > compatibles for them to the documentation.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../bindings/soc/samsung/samsung,exynos-sysreg.yaml         | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
> > index 163e912e9cad..dbd12a97faad 100644
> > --- a/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
> > +++ b/Documentation/devicetree/bindings/soc/samsung/samsung,exynos-sysreg.yaml
> > @@ -30,6 +30,12 @@ properties:
> >                - samsung,exynos5433-fsys-sysreg
> >            - const: samsung,exynos5433-sysreg
> >            - const: syscon
> > +      - items:
> > +          - enum:
> > +              - google,gs101-peric0-sysreg
> > +              - google,gs101-peric1-sysreg
> > +              - google,gs101-apm-sysreg
>
> Alphabetical order.

Will fix

Peter

