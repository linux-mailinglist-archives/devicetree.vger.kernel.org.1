Return-Path: <devicetree+bounces-21192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 026CE802BCE
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 07:59:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8D50280D21
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 06:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC4F7186C;
	Mon,  4 Dec 2023 06:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="K4cPDqo/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DC78D8
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 22:59:42 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50be10acaf9so2049420e87.1
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 22:59:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701673180; x=1702277980; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OTNkS8LTnRqCQunaTUOLLsKXlHNWnzfg0xMTKbfGJJg=;
        b=K4cPDqo/LdCnBQ3arJxu73zcZVxTziEBFMdpc3X40hGxTKLwZPWb5T+nOkQGHbHRS5
         Vpd5hYrJuegi7dMayKz+UkVC/Kw5hPgWaUmjLcMEDI04q3qX1u0YSl45k2Toc/SDp/lV
         2N01Nbuw1vJZoqRHE/MYAZNVI/iQ/epx4Olh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701673180; x=1702277980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OTNkS8LTnRqCQunaTUOLLsKXlHNWnzfg0xMTKbfGJJg=;
        b=rYTMUKFo22Q/MPf5G1wf7uWFlIx5SUlgyXsFQBk3FJO1X+p5HKSpTKGsaAIoAwts4/
         JHa16p0CKe+yMaZ1baz2lPD7Byt8ezpef8FUX+0QStcAiw5YUPQN4uHTQ57xZUa/Wi9L
         Qh5GdIpXCr0js6c9VG9fg+iFazS+OIYoobmva91X4Iyrozli5GISG2tmtfefJmm701Ol
         rHSVaR+1fuLTNGITL+L0MwxHP+e4wD07FcrDYOBAW8aNE5waifnvQnOuBRmIDpRK+eGB
         C6wmiHDktSptWDIXCcpAK71C5bILRu9O+G+IVRPR/kTZoaes1VXt9dSvAEW6G6pgBUOo
         w08A==
X-Gm-Message-State: AOJu0YxlknVl+dTrOC9h+9saXYmhOcX+zIEstEygSrsPS/RashssUJmn
	28ap+vfuOa58O9ey+PJW8y/3lTuG6ZWlFqyY1hXl5w==
X-Google-Smtp-Source: AGHT+IHoyWO3QIHEBY5JdBrYFEV7xzgnarDfjr1JxVNq6dHU5EQ6tbsFVJqwEhCrsQ2CBaDRnPGYgwSDkHN9tbdxHX4=
X-Received: by 2002:a05:6512:b9e:b0:50b:ed31:72a4 with SMTP id
 b30-20020a0565120b9e00b0050bed3172a4mr1697429lfv.28.1701673180528; Sun, 03
 Dec 2023 22:59:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128084236.157152-1-wenst@chromium.org> <20231128084236.157152-5-wenst@chromium.org>
 <CAD=FV=W01gfxV6RN2o6CVS7jjf8qgKP-jUy9Bp94d2hWzVC48A@mail.gmail.com>
In-Reply-To: <CAD=FV=W01gfxV6RN2o6CVS7jjf8qgKP-jUy9Bp94d2hWzVC48A@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 4 Dec 2023 14:59:29 +0800
Message-ID: <CAGXv+5E+R292XsOFSL-j0KJMmVJjWtxMRgCK8besP7mo6NDOWA@mail.gmail.com>
Subject: Re: [RFC PATCH v3 4/5] arm64: dts: mediatek: mt8173-elm-hana: Mark
 touchscreens and trackpads as fail
To: Doug Anderson <dianders@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	andriy.shevchenko@linux.intel.com, Jiri Kosina <jikos@kernel.org>, 
	linus.walleij@linaro.org, broonie@kernel.org, gregkh@linuxfoundation.org, 
	hdegoede@redhat.com, james.clark@arm.com, james@equiv.tech, 
	keescook@chromium.org, rafael@kernel.org, tglx@linutronix.de, 
	Jeff LaBundy <jeff@labundy.com>, linux-input@vger.kernel.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 2, 2023 at 8:58=E2=80=AFAM Doug Anderson <dianders@chromium.org=
> wrote:
>
> Hi,
>
> On Tue, Nov 28, 2023 at 12:45=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org=
> wrote:
> >
> > @@ -44,6 +46,7 @@ trackpad2: trackpad@2c {
> >                 reg =3D <0x2c>;
> >                 hid-descr-addr =3D <0x0020>;
> >                 wakeup-source;
> > +               status =3D "fail-needs-probe";
>
> While doing this, you could also remove the hack where the trackpad
> IRQ pinctrl is listed under i2c4.

Sure. I do think we can do away with it though. According to at least one
schematic, the interrupt line has pull-ups on both sides of the voltage
shifter.

BTW, The touchscreen doesn't have pinctrl entries. This has pull-ups on
both sides of the voltage shifter as well.

ChenYu

