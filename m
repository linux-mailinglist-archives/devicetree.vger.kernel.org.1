Return-Path: <devicetree+bounces-6913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 075E37BDA21
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:39:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 408741C208E8
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 11:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76145567E;
	Mon,  9 Oct 2023 11:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w9VVyKYI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D4C18AF1
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 11:39:25 +0000 (UTC)
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A3FEC5
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 04:39:23 -0700 (PDT)
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-668d9c1f70fso25993356d6.3
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 04:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696851562; x=1697456362; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EuwFZHJVuMY/yvjjKPbV97tzmTd5bLJUXzIBt8fiBeU=;
        b=w9VVyKYIDMz8u+i34CQZ5pUoENfVjQ96fqwJ9Jvmcx7YkBmsTQ7IayFnpayZFFSles
         PWtxiyQJnu89HVuIJWsKqR+pNuL3qbQLlfET5yDWtf62K24XBXF3bJq0fKwwCBI1GplL
         GiS3LQV2WZkRDki0mg7rzBgF4FmtmuAjIA8kzA9FPQF0UqTuL7VMPFPphveQU+4bB+yS
         2HMbZoQ3kCUBpBZdMVdmz1W4zX40aAUtiND+TExtSz3C2gU8iGUq4URYP9A605HuQTIh
         yl+Fgp5ckAYNxJh7oXCzXbND69IJFG858E4qCyKCONiVPO9Pl02+pa3eN42ZGx4KX1Jc
         jKMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696851562; x=1697456362;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EuwFZHJVuMY/yvjjKPbV97tzmTd5bLJUXzIBt8fiBeU=;
        b=AbHzUYDWc5Q9FhsqqIbWTvSn3gzCNwxdHRsRUUcO2dy/2QDgGDYSGwCbJ6YA0eXPFt
         pAOsurF5KchEy2Az2CBSqiq5tcCfN0A3v8kvjEudZc7F+SIn1YQCp3WKBjOyOKS5MUzx
         Amkif3pm9KfB+///FZJitl/hTybBJRbJVrQ1uM0deAPe1UmKP0iBvZ+Tw0jfW9XlSt0C
         P8Um7K3jiDvqtxqSwHYmSKXlqOJt7NV/4LpTxIdv/lYYEmjJcTZ12NTkMm2DgJoVVw7Y
         Rt/ZzUuXa/VqCKrdXVpRpXaNNEvMNLAY6/fiO8jb0j1VxL625/GtH5PqT3zSYmf01BKj
         kOng==
X-Gm-Message-State: AOJu0YxYe6Ywkv8NZqD5Y83a55WWD5JcgYDcYQ0/+mYWbfvlq8otdXq/
	foUzhuzc8ijJB4QAz8G7Y2TiZFREtn8NW4qUBnueMQ==
X-Google-Smtp-Source: AGHT+IHhyWHWa0UYEa7KLSkkNZGhyeUdCzA/1rc4dvVTiJ5tMM/yCOey8ADmLWlaoAKBYm19JBp5FhbJvbRLLVFW2Xo=
X-Received: by 2002:a05:6214:3187:b0:647:2f8f:8c29 with SMTP id
 lb7-20020a056214318700b006472f8f8c29mr15562695qvb.48.1696851562503; Mon, 09
 Oct 2023 04:39:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005155618.700312-1-peter.griffin@linaro.org> <b1598405-b01f-426a-aaba-89f2d2dc9c2e@linaro.org>
In-Reply-To: <b1598405-b01f-426a-aaba-89f2d2dc9c2e@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 9 Oct 2023 12:39:11 +0100
Message-ID: <CADrjBPovLf-L0O26JKMCOgDzDkEVZeo0sZA-M_9f2c9K7z1S2g@mail.gmail.com>
Subject: Re: [PATCH 00/21] Add minimal Tensor/GS101 SoC support and
 Oriole/Pixel6 board
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Krzysztof,

On Thu, 5 Oct 2023 at 17:32, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 05/10/2023 17:55, Peter Griffin wrote:
> > Hi folks,
> >
> > This series adds initial SoC support for the GS101 SoC and also initial board
> > support for Pixel 6 phone (Oriole).
> >
> > The gs101 / Tensor SoC is also used in Pixel6a (bluejay) and Pixel 6 Pro (raven).
> > Currently DT is just added for the gs101 SoC and Oriole.
>
> Thanks for submitting the patches. Nice work!

Thanks, and thankyou for reviewing the series so promptly.

>
> This is basically a custom-made variant of Exynos made by Samsung for
> Google. Something similar what is with Tesla FSD (and Axis Artpec-8
> which was not upstreamed, AFAIR). Many, many drivers and bindings will
> be re-used. I want to be sure that GS101 fits into existing Samsung
> Exynos support, re-uses it as much as possible and extend when necessary
> without breaking anything. Therefore, when the patches are ready, I
> would like to be the one applying entire set and future submissions
> through Samsung SoC tree, just like I am doing it with Tesla FSD, so I
> keep entire Samsung-ecosystem in shape.
>
> This also means that you are lucky to be selected to:
> https://elixir.bootlin.com/linux/v6.6-rc4/source/Documentation/process/maintainer-soc-clean-dts.rst
> joining there Tesla FSD and entire Samsung Exynos family :)
>
> I hope that's ok.

That's all fine, it makes sense and it was what I was expecting. Maybe
we can try and get you some Pixel 6 hardware as well. The only other
Exynos hardware I have for testing unfortunately is the e850 board Sam
has been working on.

Coincidentally https://www.crowdsupply.com/0xda/usb-cereal just started
shipping. Which is quite nice (albeit coincidental) timing, as anyone who
has a Pixel 6 device can order one so they can run upstream kernels on
their phone and have the debug UART available (which currently is the
only way to really interact with the system until we bring up more IO).

regards,

Peter

