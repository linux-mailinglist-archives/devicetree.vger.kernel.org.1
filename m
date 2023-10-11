Return-Path: <devicetree+bounces-7619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CECFF7C4E2D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:06:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AA571C20C1C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 09:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 323F01A717;
	Wed, 11 Oct 2023 09:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BOKPZ+92"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FDE323D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 09:06:33 +0000 (UTC)
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B6DEDC
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 02:06:31 -0700 (PDT)
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-66cfd3a0e61so7372026d6.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 02:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697015190; x=1697619990; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eoGJqBpx4DnJ8f9sTHuaCwd+hLOrI3etlSVQtwSYzRo=;
        b=BOKPZ+92jlDkwOGpZUCml0hqlK+8bzGobPX/zyffxErQUHLd+bzx8wkJ2c5uxSt8QD
         mXtJIdd1MsP7OWj4oDUjmlV8BaY3XcK73YRZs5HtmQxvQRSI3XvAvOBXpm8mUHdhEiNq
         WgDAXe07z03M1j28X/SiXb2Oz7UeQFFv4y22xNm0srTXGHgQ94bOBqT/ds44bfxaxosH
         neEtT116ShVM9Dpy0PjM2guK8Lf4IU/o54JG+7bZbLUg5khTviT3jbDQE43VP2To0Cj/
         nxDROaFcIb9MdQWrsgccLYFdugc/RtnDswopMzHXClVckJm7WwjCi1Ct6OSeLMND7Oqt
         UHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697015190; x=1697619990;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eoGJqBpx4DnJ8f9sTHuaCwd+hLOrI3etlSVQtwSYzRo=;
        b=hbE7sp83HndcWkax3LAk2QjEg81YZoWNhrtXX3suPTHzxOnXCdpT6FX/IQJ4LL8v07
         loU9Cl8tFyERVLKIw0yYg8T0kmG3Aq7ViCbTVwTdpoFtggBXl9YgcySCvEMFXqzuCgdY
         EXsg15D28OiOZf/LHuC+eJG2Pw0ulTgtNRLQcrnBsFgBYIrOOwCskgEVxIz5pufUY3hk
         D83K3zzScExWBrlN+xQ1ohNIRdsCWLHFQcUY7WN022rTSMdduZGBtWTszkwEQeScTwG1
         wnfPBsMd2AWnr1tzXW/yRzU5/tzXPqGfKi2R8auf6g+/JU31Bccw8XHleHdAhzKE8GF1
         D8nQ==
X-Gm-Message-State: AOJu0YwtQxXQFfu/ThGoIYA7ZdREi5OPnKusVRhNcTXJPbJnUeWzMRWt
	Yi7bbH7RmiWdFniHcpQKu6v8EIHHOoMspPs9xpkPNg==
X-Google-Smtp-Source: AGHT+IFdQ8tqBV1dqi5xaG7XGfWgTgWoFJqlw9bQU9nodG2NXg1+wmQjaus0dItmXwH0cAGNry/TzU0ByWLIxJoNkmQ=
X-Received: by 2002:a05:6214:3d06:b0:656:5441:a13f with SMTP id
 ol6-20020a0562143d0600b006565441a13fmr23058441qvb.45.1697015190275; Wed, 11
 Oct 2023 02:06:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010224928.2296997-1-peter.griffin@linaro.org> <2023101101-mauve-underarm-1b48@gregkh>
In-Reply-To: <2023101101-mauve-underarm-1b48@gregkh>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 11 Oct 2023 10:06:18 +0100
Message-ID: <CADrjBPr2UAfpuuw6M8T5UaiTmCYz0e3jabfDCcUJtH+35mwBKw@mail.gmail.com>
Subject: Re: [PATCH v2 00/20] Add minimal Tensor/GS101 SoC support and
 Oriole/Pixel6 board
To: Greg KH <greg@kroah.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
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

Hi Greg,

Thanks for your reply!

On Wed, 11 Oct 2023 at 08:44, Greg KH <greg@kroah.com> wrote:
>
> On Tue, Oct 10, 2023 at 11:49:08PM +0100, Peter Griffin wrote:
> > Hi folks,
> >
> > Firstly, thanks to everyone who reviewed the v1 series! V2 incorporates all
> > the review feedback received so far.
> >
> > This series adds initial SoC support for the GS101 SoC and also initial board
> > support for Pixel 6 phone (Oriole).
> >
> > The gs101 / Tensor SoC is also used in Pixel6a (bluejay) and Pixel 6 Pro
> > (raven) phones. Currently DT is added for the gs101 SoC and Oriole.
> > As you can see from the patches the SoC is based on a Samsung Exynos SoC,
> > and therefore lots of the low level Exynos drivers can be re-used.
> >
> > The support added in this series consists of:
> > * cpus
> > * pinctrl
> > * some CCF implementation
> > * watchdog
> > * uart
> > * gpio
>
> So you have sent a patch series that crosses multiple subsystems, who is
> supposed to be taking these patches?  Or do you not want them actually
> merged?

Krzysztof indicated here:
https://lore.kernel.org/all/b1598405-b01f-426a-aaba-89f2d2dc9c2e@linaro.org/
that he would like to be the one applying the entire series through the Samsung
SoC tree. If that's fine with everyone (it's OK with me).

kind regards,

Peter.

