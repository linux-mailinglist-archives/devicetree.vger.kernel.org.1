Return-Path: <devicetree+bounces-8111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D727C6B62
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:45:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C84281C20CA5
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F04A12E42;
	Thu, 12 Oct 2023 10:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MkBV1PGU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2135ADF71
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:45:49 +0000 (UTC)
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CDA190
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 03:45:47 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-579de633419so9760517b3.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 03:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697107546; x=1697712346; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1Y1HcKX9gLg/2u91PTGxysXLbI09E4OA7x2vijjT4oo=;
        b=MkBV1PGU6ITEclP07GUvtvRscL427hCkMvhgCt/0j+IEpjJ8okKZ9Z0Psd4m0/7UMK
         VnBPmJwdZfONRlhmwsj5EsKqvVkWk1nTX2l1cQ1lzrpovlMRuQnDxyLsZYKty7fRlfqF
         ICXH1QklmNoCj4ebcFO4ja2U4vBPcgGlql2aBb/tO0vx5JFXfDspcKGb33Hs8NMEj4hr
         nTF0jRiSAmfBzHo1zTAXU8Iu9W3+eDekcj6r2quOWkFebN051DwbYtoODU+LdoISxwl0
         ZDt1WBgAhSch0/UJgFXGAws2k4Dbzs3JRwodxskWcEpkqJ82V/nLY3PyI9t3aYCnwdfY
         49Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697107546; x=1697712346;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Y1HcKX9gLg/2u91PTGxysXLbI09E4OA7x2vijjT4oo=;
        b=UC+6f+I724hTzxCB8GRNxcdBzGub17vF+oubfy4JmDTEAeCS/+tzmGjZy8DzC8ieXh
         GTPh5/HMGnoaR2K1wCktobyySzTFPGYyVJsc/foxWQ3/Ndq7n6HlsypyAAb1cK5420BE
         5m+Tve6fpKudZJ9cqSgVYorRS9NcJD59EY51AqX2KFlXsjQoPX2/+k9aZHYXcoqHjETc
         HLNxIcQqBq4+e5rjJ2I/oRAshoiku1HozwcCXs7VQCaqp2f0Pha/KzqVuijk2dYHgTZ5
         d5cD4uIqDOp7Yj7N9A+RPyaOOqtsA//h7zL/DIFcuL5hjhh7F6Phk4ao+/yeo2r5wInf
         KeGw==
X-Gm-Message-State: AOJu0Yyi7L4a5V86QWhZqQgL1ChtnLWaaNw6uM/wFJmhnSSqfgiRT7r3
	7UP0ymA8nBm9u8aIG5vFtlVfrZaIygQrkvnuuUh2MQ==
X-Google-Smtp-Source: AGHT+IGB+FxE7ccc2MEU8WMKyKb6JfbaLjOX2/doWAHH3NmtLFyPGOAqUKNJex39lRrnodJof8jLL2wunY4kkN6We6s=
X-Received: by 2002:a0d:ee01:0:b0:59b:c6a4:15c7 with SMTP id
 x1-20020a0dee01000000b0059bc6a415c7mr21411976ywe.46.1697107546553; Thu, 12
 Oct 2023 03:45:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-3-peter.griffin@linaro.org> <ZScYOUi7qhvGmMIF@google.com>
 <e4523fc3-e1dd-4791-b950-98dfc6dce1f5@linaro.org> <CADrjBPpntJMsxb6oGQ7zuX3f0dgE3oYFepL4OdxamBz=_or7kw@mail.gmail.com>
 <21742fbf-8484-42ab-aba1-379305091946@linaro.org>
In-Reply-To: <21742fbf-8484-42ab-aba1-379305091946@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 12 Oct 2023 11:45:35 +0100
Message-ID: <CADrjBPpF3Ta67QzUqyXD1YSFV_kFWqujCxPAjKbvRNhgXeMmOg@mail.gmail.com>
Subject: Re: [PATCH v3 02/20] dt-bindings: clock: Add Google gs101 clock
 management unit bindings
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: William McVicker <willmcvicker@google.com>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, 
	conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com, 
	s.nawrocki@samsung.com, linus.walleij@linaro.org, wim@linux-watchdog.org, 
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de, 
	olof@lixom.net, gregkh@linuxfoundation.org, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, soc@kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-watchdog@vger.kernel.org, 
	kernel-team@android.com, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Krzysztof,

On Thu, 12 Oct 2023 at 10:36, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 12/10/2023 10:56, Peter Griffin wrote:
> > Hi Krzysztof,
> >
> > On Thu, 12 Oct 2023 at 07:07, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 11/10/2023 23:48, William McVicker wrote:
> >>> On 10/11/2023, Peter Griffin wrote:
> >>>> Provide dt-schema documentation for Google gs101 SoC clock controller.
> >>>> Currently this adds support for cmu_top, cmu_misc and cmu_apm.
> >>>>
> >>>> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> >>>
> >>> Tested-by: Will McVicker <willmcvicker@google.com>
> >>
> >> And how do you perform testing of a binding?
> >
> > I guess if William is using my script to build and flash the kernel it actually
> > runs the DTC checks as part of the build process.
> >
> > See https://git.codelinaro.org/linaro/googlelt/pixelscripts/-/blob/clo/main/buildp21upstream.sh#L44
>
> So it is a build test? We do not consider building as a test procedure,
> otherwise I should add my and robots tested-by to many other patches.

Ok so I should only add the Tested-by on the .c patches?

> Shall I consider other Tested-by tags here also as build-tested only?

No. William indicated here
https://lore.kernel.org/linux-arm-kernel/ZScZu-QB2LmB4CSM@google.com/T/#mbd96a26b725d6c85eb4193de8cd70ff277bc728e
that he booted it on his Oriole device.

Peter.

