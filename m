Return-Path: <devicetree+bounces-23896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA1880CA16
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 13:45:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93A5C1C209EE
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 12:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 187D93BB49;
	Mon, 11 Dec 2023 12:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MD71feyT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FAABB0
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 04:45:29 -0800 (PST)
Received: by mail-qv1-xf2c.google.com with SMTP id 6a1803df08f44-67adea83ea6so32686066d6.0
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 04:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702298728; x=1702903528; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ciTb8X7sSYaGOT4UWkd550gPDBthZN4x3zDDJKswrc0=;
        b=MD71feyTXsRUpjaEAMVx1rbSYeC3aWOn2xg9RS0SC1o3UJKEIZjSiqE07xBHybts2C
         T8IHB0QodWLqaf5ZYUOaVsX9+Mc/zKX3RgMGy7jAAqaOhN67Zw2z+wYGaojTRgMqDNZY
         4IlM6WUV3Rr1GrZAexc1y8ayyPBlCOFAPkK5VZHdsOo9jIGQItb7yp8aWUtuk27j796L
         5gQatQsuUrbAlsLSzN4C9WyaH13R1yRoQnqXpd+BtVaRl+bcj/eRD/gj6l7RHqO7S83y
         kqRBTGP6YOuyr391oXgzA0uE1TubKEmxOR8xByBjzq9KMXHy59WFG7a4GD2eoq1TW9vM
         kwug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702298728; x=1702903528;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ciTb8X7sSYaGOT4UWkd550gPDBthZN4x3zDDJKswrc0=;
        b=rRrKCiBExO5RAhhG5BbQGLjZ6Dd+d4cTk2frLDDSJbQjHt2HisKuZi3Bbd6ADANP9i
         a9ENv9OzrTxnT0Qb4YWIIJZwXA8v7yoTZp31NU2pDPq1LOC8b+MPaJ333p0zGt2GCvlz
         awOomq4GAK5xd3gBLrmw9q01Vpk7XsvdXX+DWZHQ9nKc/GszDvNUBMXTA/PaY6vyLDk5
         EcrySaU7fwSzRSG8LdsmnOE2zNmh/SoSXylskuq1CGb3BxEcOKU3eyDSYcZCyMT46RHa
         j78g92LsLXKTRge8RfBZfQZp+iWoQ+c/KSK/uYXBWg0oEz6UgMBUtcj840kq9zVZNxT4
         +U1Q==
X-Gm-Message-State: AOJu0YxGBUbXWMQc9bm2coG0lJxtuH/snhgs5uocgUF/vWBc/Qt0/D5F
	+IBh07bWvu28970sVgfrF1jj7EIVPe2/RtV2Ov/Wcg==
X-Google-Smtp-Source: AGHT+IEpuGvMmwJK7KEtP0GssM6BhrUf01e5r6sZWErKY3vlOr/IGzS7HSTqH7gTZbrJhzfyaEJCH937yl3bmQukKsg=
X-Received: by 2002:a0c:ef8a:0:b0:67a:8cf8:3fb with SMTP id
 w10-20020a0cef8a000000b0067a8cf803fbmr5908480qvr.61.1702298728335; Mon, 11
 Dec 2023 04:45:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209233106.147416-1-peter.griffin@linaro.org>
 <20231209233106.147416-20-peter.griffin@linaro.org> <03603f37-ec3d-456c-95a4-e543d1df4801@linaro.org>
In-Reply-To: <03603f37-ec3d-456c-95a4-e543d1df4801@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 11 Dec 2023 12:45:16 +0000
Message-ID: <CADrjBPr7tqdec6z_NL0EEm+G3WTUkjj_dE2Lpm+f=4hdg5BA5Q@mail.gmail.com>
Subject: Re: [PATCH v6 19/20] arm64: dts: exynos: google: Add initial
 Oriole/pixel 6 board support
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Sun, 10 Dec 2023 at 14:39, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 10/12/2023 00:31, Peter Griffin wrote:
> > Add initial board support for the Pixel 6 phone code named Oriole. This
> > has been tested with a minimal busybox initramfs and boots to a shell.
> >
> > Tested-by: Will McVicker <willmcvicker@google.com>
> > Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  arch/arm64/boot/dts/exynos/Makefile           |   2 +
>
> ...
>
> > +&serial_0 {
> > +     status = "okay";
>
> Keep status the last

Will fix

>
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&uart0_bus>;
> > +};
> > +
> > +&usi_uart {
> > +     status = "okay";
>
> Keep status the last

Will fix

regards,

Peter

