Return-Path: <devicetree+bounces-16060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BD57ED2F0
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:45:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 922071C20969
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 20:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8E943AAB;
	Wed, 15 Nov 2023 20:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XW2Fbidh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41F0CA1
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 12:45:05 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9c2a0725825so15025366b.2
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 12:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700081102; x=1700685902; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MMCXFclGcLK2XWRhjGnvFkwVtcm+D581tPNKMzDFIwY=;
        b=XW2FbidhV0kiGU4tZfY5di/mHMlam05rTCbQxyoaSU5AR4sZBsjNq5KuVn8Kj/6MhH
         eXnlBUlAy/aK4jcHuBA30xhc0OY/44xfwDiXgxHrz/aqPRuC8uEqKgFhdYDj6GJdhPnf
         GJd47CnHksZxgM1dft+Lrh2bZA+cHMCNPKQn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700081102; x=1700685902;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MMCXFclGcLK2XWRhjGnvFkwVtcm+D581tPNKMzDFIwY=;
        b=SlGo4rX3lTC1tR7/2cO4eJdBXAMUcHgX4OATcRYjiW1Vj+AGykdD7Wyv6SbYOAWLxd
         9sKuzFJZ/3JgUqxKjY6yMAWjZitcWHkrNlWO7U9HZLtKkuSNZxkjLfUBrbiSfoxFiyju
         HaIxlKlSMWRKe6FyOFBQh27aC+b7Sw3Cr3BO1X5fmaMDE8iO/+RYKlI/xw+94LoGl4RY
         edpE/Hvp009HnyyoD7c4auZYqPAqsWAHHxzxKdOzW7EyO+YTyl9sfQbHEWrS2zxybu7+
         dV4GSXr0W83hwHcQNARrGZfQUku2TWH7tNCQVLIz9KJ4HGNXg9VboHLc4q3Op8TN7Y/U
         KBpA==
X-Gm-Message-State: AOJu0YyTfro5ctnfI7qcgcOlpYfqtA7erohZupsXGb/gBOtsG43eN1mw
	7YoKNWlTlbG9TY3+g9BsLpx+0QHl4pM+AwKzHqpOTO3s
X-Google-Smtp-Source: AGHT+IHnEj7IzZZCmUlEgPyg7uo3GMyeApmPKeUv/nM2TuNxw/9nEECCTJSPidHKrxyfV9MWWnFysw==
X-Received: by 2002:a17:906:aed3:b0:9c3:7510:e522 with SMTP id me19-20020a170906aed300b009c37510e522mr326185ejb.63.1700081102319;
        Wed, 15 Nov 2023 12:45:02 -0800 (PST)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com. [209.85.208.52])
        by smtp.gmail.com with ESMTPSA id rp21-20020a170906d97500b009e6af2efd77sm7445829ejb.45.2023.11.15.12.45.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 12:45:02 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-53eeb28e8e5so3048a12.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 12:45:02 -0800 (PST)
X-Received: by 2002:a05:600c:3b23:b0:408:3727:92c5 with SMTP id
 m35-20020a05600c3b2300b00408372792c5mr11547wms.2.1700081081263; Wed, 15 Nov
 2023 12:44:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231109100606.1245545-1-wenst@chromium.org> <859ac058-c50a-4eb8-99b6-3011ef4e7529@collabora.com>
 <CAL_JsqK64w3+r_LJZoh50PzAUcsvH6ahSDCqgSiKrD3LBAXE9g@mail.gmail.com>
 <CAD=FV=VUZy9DaZgKafSpXXopD5k8ExGSR97BjAqC5tupPoxNfQ@mail.gmail.com> <CAL_Jsq+puq20EWkQg1RTs2zfmh4DGbqz1krp+19c=wPXnLT5dA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+puq20EWkQg1RTs2zfmh4DGbqz1krp+19c=wPXnLT5dA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 Nov 2023 12:44:25 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X-17COQ2-tycV1bSuCrGy7MJ88Un8nA-a-ODexvgi9TQ@mail.gmail.com>
Message-ID: <CAD=FV=X-17COQ2-tycV1bSuCrGy7MJ88Un8nA-a-ODexvgi9TQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/7] of: Introduce hardware prober driver
To: Rob Herring <robh+dt@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chen-Yu Tsai <wenst@chromium.org>, Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, andriy.shevchenko@linux.intel.com, 
	Jiri Kosina <jikos@kernel.org>, linus.walleij@linaro.org, broonie@kernel.org, 
	gregkh@linuxfoundation.org, hdegoede@redhat.com, james.clark@arm.com, 
	james@equiv.tech, keescook@chromium.org, petr.tesarik.ext@huawei.com, 
	rafael@kernel.org, tglx@linutronix.de, Jeff LaBundy <jeff@labundy.com>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Nov 15, 2023 at 2:28=E2=80=AFPM Rob Herring <robh+dt@kernel.org> wr=
ote:
>
> > So if we're searching the whole device tree for "failed-needs-probe"
> > then we need to figure out which devices are related to each other. If
> > a given board has second sources for MIPI panels, touchscreens, and
> > trackpads then we need to know which of the "failed-needs-probe"
> > devices are trackpads, which are touchscreens, and which are MIPI
> > panels. Do you have any suggestions for how we should do that? Maybe
> > it was in some other thread that I missed? I guess we could have a
> > board-specific table mapping (compatible + node name + reg) to a
> > class, but that feels awkward.
>
> Node name is supposed to correspond to device class, so why not use
> that (no path or unit-address.) and nothing else (well, besides
> "status")?

One problem is that I could imagine having two second source trackpads
that both have the same i2c address. That would give them the same
name, right? I guess you could maybe come up with some sort of suffix
rule? Like

trackpad-1@10 {
  compatible =3D "elan,blah";
  ret =3D <0x10>;
  status =3D "failed-needs-probe";
  ...
}
trackpad-2@10 {
  compatible =3D "goodix,gt7375p";
  ret =3D <0x10>;
  status =3D "failed-needs-probe";
  ...
}

Then I guess the class would be "trackpad"?


-Doug

