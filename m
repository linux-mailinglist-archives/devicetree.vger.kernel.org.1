Return-Path: <devicetree+bounces-7773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 576E17C5684
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 888A11C20C26
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B01D20323;
	Wed, 11 Oct 2023 14:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RVTC9QS0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0BE1F17E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 14:16:48 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E11A94
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:16:44 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-59f6441215dso85578447b3.2
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 07:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697033804; x=1697638604; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5AcAEIgQaz/GIuBtTUVaPCRo9z2CF/BUIUZyLtSgPXo=;
        b=RVTC9QS0hJLBGokhiZDDFTDJbg2al4+dzIq8+ZBwJtPO248UQm4rVOa0kbNvljlPPu
         eGhAcTBPa+Z4I/QwhmoO4TDKmUQfVwhLFzLLb2wWDXaI1hSAhxCJ+qfzGq7DJ6PlOD5/
         DgvfmmXoMjgsH3tYMc4QsIcwo7d8r9uoz4cQ+XIFIQp1TCvz5LTjishYAEcZSzy/CnaA
         uHFgmUfhYsOdZ45aOyvTSI7XY1f50iNsZ+/uPcf0qHv2uJ9VgFYiEtRdMl1kcfc9Yhmo
         mg2Wa3MwcUwanTNfNVZEQWZ9rwC3IFSNG1iAi91S95veeEnxsVaaL6rpWbxSHyw6E22j
         pL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697033804; x=1697638604;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5AcAEIgQaz/GIuBtTUVaPCRo9z2CF/BUIUZyLtSgPXo=;
        b=DdPWaxZSF/O1gisI0TJ7kg8blpo9s/MSEZ/6ZwBuJ47Y1p4Jy2jgAMrV2h6voNk3VZ
         j/aYgj2WXmx1iioHac7s9+Tgizai67tCp+lHNC7uuZZX/ZTAER4ydKKQ/LszOmIzNhEV
         3hBnp8u54s25wMQ+S9oJ+KlTXBqzgbXt4FM81WJm8iyiHJSdO6bORl9G+xGwxb95Mllh
         gGPUGyYOPGKxS1IVtQnKBwixzjFGtLOr99lwCk0cfLLbFPo90lEuVziY3BvUEEWrj4iJ
         FJ60ch4PrXnF+sAOynhsiBCS399l2lCeK3Peaq3Jaoqm/G9Fx+DczCJ9AkVnSgkSGDsP
         0vRQ==
X-Gm-Message-State: AOJu0Yx7LugAb91vI5FBIGbhV+RbNc3EG5H2l3H7ciTthqwOXGU0LdOS
	FV1y+9juwD/ywaNTxeXkq+8eCr4VbOVnbk+fvDlR6w==
X-Google-Smtp-Source: AGHT+IEbqOax8oDVUgvao/QFTefyxeAVM5knikoYE8lBFFTckEkNGgmTmdLGag/DK7OcWkY2U7XRu7hK5hNHqf19Ykk=
X-Received: by 2002:a25:8e06:0:b0:d44:af:3cce with SMTP id p6-20020a258e06000000b00d4400af3ccemr20446932ybl.27.1697033803795;
 Wed, 11 Oct 2023 07:16:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010224928.2296997-1-peter.griffin@linaro.org>
 <92de302a-f6b5-465c-a5da-2a711861089e@linaro.org> <CADrjBPqOmGEzeVEKiysxQNo9+B0=zD3Z+G24fPDKrFsgUXYJjQ@mail.gmail.com>
 <14bb7d8d-0f99-4a5e-aee6-b0db1d17c1e6@linaro.org>
In-Reply-To: <14bb7d8d-0f99-4a5e-aee6-b0db1d17c1e6@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 11 Oct 2023 15:16:32 +0100
Message-ID: <CADrjBPoJryV_WObRa+EQ38DxV2iTE4167m=HHBMM=eUpWgfzrw@mail.gmail.com>
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

Thanks for your review feedback.

On Wed, 11 Oct 2023 at 09:42, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
>
>
> On 10/11/23 09:16, Peter Griffin wrote:
> > Hi Tudor,
> >
> > Thanks for your reply.
> >
> > On Wed, 11 Oct 2023 at 07:10, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
> >>
> >> Hi, Peter,
> >>
> >> On 10/10/23 23:49, Peter Griffin wrote:
> >>> Note 3: In `dt-bindings: pinctrl: samsung: add google,gs101-pinctrl
> >>> compatible` I tried to narrow the interrupts check to
> >>> google,gs101-pinctrl but I still see a warning: gs101-oriole.dtb:
> >>> pinctrl@174d0000: interrupts: [[0, 0, 4],[..] is too long If anyone can
> >>> educate me on what I've done wrong here it would be most appreciated!
> >>
> >> I guess the initial definition of the number of interrupts should
> >> include the largest min/maxItems. I no longer see the warning with this
> >> change:
> >
> > Yes that is how it was in v1. The review feedback though was to narrow
> > the scope to just google,gs101-pinctrl compatible using if: then: else: which
> > is what I can't get to work properly.
> >
>
> Right. The diff that I sent is on top of your changes (patch 6/20).
> I expect that when the interrupts property is defined it should include
> the min/maxItems of all the available SoCs. Then use "if Soc" to narrow
> the range.

Ah I see, yes thanks Tudor! I will incorporate this in v3.

regards,

Peter

