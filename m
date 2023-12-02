Return-Path: <devicetree+bounces-20918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6B9801937
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 01:59:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEC9E281AE8
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 00:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FDD67E2;
	Sat,  2 Dec 2023 00:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WCI/DR5/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8F5CB6
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 16:58:54 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a1a0bc1e415so157006466b.0
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 16:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701478731; x=1702083531; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2AjpI9QlzX4/sI/azrgjTOEsQmOURin+5qeGoAR1AD0=;
        b=WCI/DR5/9p728sN41+4asESbmkp4mDQuHFzUzdy+nAVhY8SYf+5u1lzKdNb+sQcoSO
         iI0/xUBjBDKS5id0jLDXeIPQIGqZF3WOVH+8NLDCVRCFc7LrbvK5oIyDoBVYIxYtqKCI
         xDREkHl7LA+gz/klqmiQvVPvILD0V3se9KS3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701478731; x=1702083531;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2AjpI9QlzX4/sI/azrgjTOEsQmOURin+5qeGoAR1AD0=;
        b=C/4JamseoKuvAmTwKWcTi8pdxXqFIECOQs736cEZN8ods7DCPxzC3yFZjtj02SSFvl
         AgYYmVvyb04ITRcJGrI18IBAjOcYFGgqBlT4c878fpb5a2UXAr3Rtqy40Sqnym1DNQ0p
         QXvGajwQI/Nc1iZI/utf4OpWC9xLU9HRTLn8qWBvPsxqrhxxf7OGjXf11qxoT6jVlwYV
         O8JDro81QO74DzkPC0xuCWK4o2laV2Qpm3ewPzRV+LLuH8FzEV6SViz8Qlyc8yBGLP/T
         DeoG5/3+YJsTEN/f/96w4MsrdgamXAqOx21jpj3wcYsaYBmyIl81IrFQpcjCTQl1HYMH
         pFlg==
X-Gm-Message-State: AOJu0Yxn3XsjR7HBnO7Uf53HK3gg7FdAk/ey409OUV2IErtfmOliqnGE
	Ap98EfEfNNf8ERQWiwN/gzwOEHpVr+A8HzOd5aKNCmWI
X-Google-Smtp-Source: AGHT+IGHTZJUlT8QgdjVbAVA1qA1tE5POKG97OpGAKG1wiUS9CUUBGKTXJ6oA7z0h9D7fJ94ZCc5rg==
X-Received: by 2002:a17:906:5611:b0:a19:a1ba:8cb7 with SMTP id f17-20020a170906561100b00a19a1ba8cb7mr1246397ejq.85.1701478731300;
        Fri, 01 Dec 2023 16:58:51 -0800 (PST)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com. [209.85.128.54])
        by smtp.gmail.com with ESMTPSA id uz14-20020a170907118e00b00a0104d5758dsm2463349ejb.50.2023.12.01.16.58.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 16:58:50 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40b51e26a7aso12195e9.1
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 16:58:50 -0800 (PST)
X-Received: by 2002:a7b:c4c6:0:b0:40b:3d89:ba70 with SMTP id
 g6-20020a7bc4c6000000b0040b3d89ba70mr237236wmk.7.1701478730440; Fri, 01 Dec
 2023 16:58:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128084236.157152-1-wenst@chromium.org> <20231128084236.157152-5-wenst@chromium.org>
In-Reply-To: <20231128084236.157152-5-wenst@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 1 Dec 2023 16:58:34 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W01gfxV6RN2o6CVS7jjf8qgKP-jUy9Bp94d2hWzVC48A@mail.gmail.com>
Message-ID: <CAD=FV=W01gfxV6RN2o6CVS7jjf8qgKP-jUy9Bp94d2hWzVC48A@mail.gmail.com>
Subject: Re: [RFC PATCH v3 4/5] arm64: dts: mediatek: mt8173-elm-hana: Mark
 touchscreens and trackpads as fail
To: Chen-Yu Tsai <wenst@chromium.org>
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

Hi,

On Tue, Nov 28, 2023 at 12:45=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
>
> @@ -44,6 +46,7 @@ trackpad2: trackpad@2c {
>                 reg =3D <0x2c>;
>                 hid-descr-addr =3D <0x0020>;
>                 wakeup-source;
> +               status =3D "fail-needs-probe";

While doing this, you could also remove the hack where the trackpad
IRQ pinctrl is listed under i2c4.

