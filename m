Return-Path: <devicetree+bounces-8053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AF67C68A2
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:56:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0D55282776
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 702251F93C;
	Thu, 12 Oct 2023 08:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h+nB6pHr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0A0D531
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 08:56:33 +0000 (UTC)
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 820E598
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:56:31 -0700 (PDT)
Received: by mail-ua1-x92b.google.com with SMTP id a1e0cc1a2514c-7b605706bb0so330765241.3
        for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697100990; x=1697705790; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pPBtRkAyR8/yvLpXM2v/s42WseLth6/jHTmdZIsTmP0=;
        b=h+nB6pHrr77EtQ4S5o4MRd7OTpOniGIk1qmH0SD7P1yihaFadtNX08ZAa3UC4n+z+w
         egb3mxjqXvdZVieow3GbzQ0T8dPal4vUmMeILL1RDrVf8ni43FoTUwCHvr2Z6uENnib9
         zv+O0fuspWiqBIEcJF/7nyw48/R1tj+B+ENxZhdQpyX2CxWToMaDGNAG12M9pdKErOci
         1Ke1h3Uj0y/TuNBElQ/h3w66J8/o2p70L8KrTkEyNhYJP6G8OuTzeMCXhxulXgOkfSrx
         D2jXyaoFNlq3EoYUKZmP2v+J12ptE0XY3qKRcpZu504cKvXK9yAXdUu71AOoWYIfBYkS
         sfHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697100990; x=1697705790;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pPBtRkAyR8/yvLpXM2v/s42WseLth6/jHTmdZIsTmP0=;
        b=Nvtnb7k9yktkC7XcYRjxswZOBg4f313oGEPhur9QlVbu5QZ+n147EReTK/0t5xwI6B
         8A2DwJIVp4ysV4UN4O0IiDGustDt5ceXxhLTcVD3SByIAb00W1Q+OWPlT6S9R6vcT3bl
         FaCg1trqw67mwLH3uVjIL61V+zP+2reoMzHyHwRG+xG+hHtJHQFceUbG7By6whTf0WcA
         tV10MBs3N/IYDK++qzHkoYY05eBMfZjrS3Kc+1rAtXST5sejIXOirIoDAkVY0TtBsoFW
         7vhKU2DYf6MxX07kxbJDP0Ab7DwYyWyYnIkma8qZiShqvvxriE8uryEKMOhR/vi3J+Gu
         oWkw==
X-Gm-Message-State: AOJu0YyxZgcWq4EHwPPO9q5l6DBGH+WTRMyn2aqa8klBzvVqXNEVmh24
	Mx82xV54j7VhY/Pxu7jMlhLBHo1DQlagq0ZLRUvXxw==
X-Google-Smtp-Source: AGHT+IFo3Lm+2RcnGTHf/V2J1XBT43I24bimP6qoGhCOeQNixS13RWY5pVJxbWa7Xp+lhHh0Is6YyxIfDwTn7aNz6FQ=
X-Received: by 2002:a67:e2cb:0:b0:452:c3a4:1f8c with SMTP id
 i11-20020a67e2cb000000b00452c3a41f8cmr18858896vsm.2.1697100990608; Thu, 12
 Oct 2023 01:56:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-3-peter.griffin@linaro.org> <ZScYOUi7qhvGmMIF@google.com>
 <e4523fc3-e1dd-4791-b950-98dfc6dce1f5@linaro.org>
In-Reply-To: <e4523fc3-e1dd-4791-b950-98dfc6dce1f5@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 12 Oct 2023 09:56:19 +0100
Message-ID: <CADrjBPpntJMsxb6oGQ7zuX3f0dgE3oYFepL4OdxamBz=_or7kw@mail.gmail.com>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Krzysztof,

On Thu, 12 Oct 2023 at 07:07, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 11/10/2023 23:48, William McVicker wrote:
> > On 10/11/2023, Peter Griffin wrote:
> >> Provide dt-schema documentation for Google gs101 SoC clock controller.
> >> Currently this adds support for cmu_top, cmu_misc and cmu_apm.
> >>
> >> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> >
> > Tested-by: Will McVicker <willmcvicker@google.com>
>
> And how do you perform testing of a binding?

I guess if William is using my script to build and flash the kernel it actually
runs the DTC checks as part of the build process.

See https://git.codelinaro.org/linaro/googlelt/pixelscripts/-/blob/clo/main/buildp21upstream.sh#L44

regards,

Peter.

