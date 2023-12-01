Return-Path: <devicetree+bounces-20666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DFB800778
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 10:49:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D133EB2129F
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 09:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265041DFD9;
	Fri,  1 Dec 2023 09:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="PGgk/ox7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8425E1711
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 01:49:08 -0800 (PST)
Received: by mail-vs1-xe31.google.com with SMTP id ada2fe7eead31-4645ee89eb3so467123137.1
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 01:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1701424147; x=1702028947; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pudx+M3dhX0/gpj4fTc+pSyoGCnULSkPt68MmjHfj+A=;
        b=PGgk/ox7AmcoAlmhw04BOavnLuIhgBeD9NMAl2mR6wnpnVWPpYcDvD69K/oe+G1vTw
         ZHQ5hfGm6SKRlucTk5W1DsO47lwjIlb/oGdd6GBNmymm6VyBQsqGkLTspyksgq6hh/83
         n2tjov4tZVZcIuzrKyHyDjooNqJEwQyaVwEqHkFYEgmr1yIatEymhneO4MBalSVnT29l
         9Gk8OPySWj4m4/2sXzGWFJD9glG/Q2894VMCkrh+jBmtB7nZyQSvGpmkhV8tQhbDh7fB
         KpVoaCgFHvbY7+xsmPZjOr+Uji2Q5tGwBeMjatzVkyP3PDYmoOlQjsnpcSlzS4HeuDD4
         2B9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701424147; x=1702028947;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pudx+M3dhX0/gpj4fTc+pSyoGCnULSkPt68MmjHfj+A=;
        b=H5y/Fpyb4H/TNXQq7ddJ6S4qzCJCV0expbbuLha6QZcI8kFn+thcFdRq/89WA/Juh0
         9PoPG46oo5ItPsYyDIV4BiYirPuI85/y3BB/I/oC2MKbwEvtbRs2y6rs701Qmhe9mO08
         vWXqTIy14N83lq1uQUtAw7/8osq90jylux4/lU8Rf85+KFJ9LkVOlYdscQAUr0Bxdi8y
         rt0CtgcWsQ5RcGMMnjZ7Xwu3wI+FN2vx0K+dcYYGU/05NQfHbkt3/w4ydowm6QXdREOq
         1wDk6pJV2pwM3R0y6T/vHv+T3e2BgxPueZMAoWMDgVwrP347bTnGLeV6FCZuee1ApFbA
         MIwg==
X-Gm-Message-State: AOJu0YwRLLmdh1JAlNazod7v3D50ZT2uCpTf7GaneVcDXZHvg3L7v99G
	+FMufruNF+rduZwZlRn/Dyw4sou1+BZ0hCtuOnD21zaPSVwAvaVS
X-Google-Smtp-Source: AGHT+IETtTe3LXwuqihriEAb8VEPoo+esrLCZj0SXcr9SgYOA7WYlEUeyMA26WsByEYO9++Thtph+NMbVYsZqwWkS0I=
X-Received: by 2002:a05:6102:1621:b0:462:ad95:e6b3 with SMTP id
 cu33-20020a056102162100b00462ad95e6b3mr25002343vsb.30.1701424147573; Fri, 01
 Dec 2023 01:49:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231129-ixp4xx-gpio-clocks-v4-1-345f79058c6b@linaro.org>
In-Reply-To: <20231129-ixp4xx-gpio-clocks-v4-1-345f79058c6b@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 1 Dec 2023 10:48:56 +0100
Message-ID: <CAMRc=McTBokp_aj6UNuPkOcxNbaQrVMfCGYDAgq_Sz6QTF=dSg@mail.gmail.com>
Subject: Re: [PATCH v4] gpio: ixp4xx: Handle clock output on pin 14 and 15
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
	Krzysztof Halasa <khalasa@piap.pl>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 11:37=E2=80=AFPM Linus Walleij <linus.walleij@linar=
o.org> wrote:
>
> This makes it possible to provide basic clock output on pins
> 14 and 15. The clocks are typically used by random electronics,
> not modeled in the device tree, so they just need to be provided
> on request.
>
> In order to not disturb old systems that require that the
> hardware defaults are kept in the clock setting bits, we only
> manipulate these if either device tree property is present.
> Once we know a device needs one of the clocks we can set it
> in the device tree.
>
> Reviewed-by: Andy Shevchenko <andy@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> The GPIO block on the very legacy IXP4xx GPIO can provide
> a generated clock output on GPIO 14 and GPIO 15. This
> provides a straight-forward solution with a flag for each
> clock output.
>
> More complicated solutions are thinkable, but I deemed them
> overdesigned for this legacy SoC.
> ---

Applied, thanks!

Bart

