Return-Path: <devicetree+bounces-15087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A84A7E86EB
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 01:29:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDC1F1F20F09
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 00:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A2FFEA1;
	Sat, 11 Nov 2023 00:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="MDC7I5Z7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37593EDB
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 00:29:47 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 357AB420B
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 16:29:45 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507cd62472dso4093683e87.0
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 16:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699662582; x=1700267382; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vc6pY2X/kV1rFostxbU0Y7TflzeE7tCSZzGD8ktPRxY=;
        b=MDC7I5Z7LhZHt3YeAfpXr2pBNomw29Vk/ttfzeFF+K5OszucAqumbgbfmBFDJmfNrB
         T1jXeFn5miBcKtxCIC508zMCUevqr5K8NY8hDOXjHNJWEcOp44xXcQ9PmvWnM2gEbv9D
         1OkHGTnnNprG3cnkrlwSGYfzzBDoyRzpwBk98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699662582; x=1700267382;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vc6pY2X/kV1rFostxbU0Y7TflzeE7tCSZzGD8ktPRxY=;
        b=NOX/5aR3DVCW7O99sWjtVFtKHZs/2cvaFK7+vT4AXFY0/Uuf5nUE8EkjQikOJnMn7x
         CLrVAB6EWYtWhmPPmEpjo7oDo7kYW1RkI2s9xArenuU0A3UuWJYz5RijbPIMbBF+7VYM
         4i4Rg7TT3ugFf58ZqYd/LGxXqlj1J96hFkpjTKJ+JugF8KZeJJqOMy84ruZHINH1fxhB
         ZRfLETUT7K8hwGQ5JPWeMWch4IcL/8hfMaq5SmFt+i5+WErIfOf/QoXwrOdSobOwV7kr
         SsEV/4Df5mHgGYPlogSlbpggM3v8x+CHPSmVoRIn6byWNeXgJbl4RxmkqXmAcAyGnids
         nP1A==
X-Gm-Message-State: AOJu0Yz0I9fBas9ueuFZqF2WUqtHYJrXgi8U0Uw2YPAjaVfH2R5flge/
	Y9rj9/Gt/2SawErN2ocDWmuIeHyRsVKN8lVBDC1WBC1b
X-Google-Smtp-Source: AGHT+IFVCc+RfvOsp77TvBvy+Mez9esyvEXOWugLsbol5hRo9e9cLcsdetJZb8vXbAyPHa93QjgZXA==
X-Received: by 2002:a05:6512:4024:b0:507:9ef4:8309 with SMTP id br36-20020a056512402400b005079ef48309mr229240lfb.25.1699662582451;
        Fri, 10 Nov 2023 16:29:42 -0800 (PST)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com. [209.85.167.51])
        by smtp.gmail.com with ESMTPSA id t6-20020a056512068600b0050474de0713sm101285lfe.7.2023.11.10.16.29.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 16:29:42 -0800 (PST)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-507a5edc2ebso502e87.1
        for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 16:29:42 -0800 (PST)
X-Received: by 2002:a05:600c:1c91:b0:405:35bf:7362 with SMTP id
 k17-20020a05600c1c9100b0040535bf7362mr34662wms.0.1699662560938; Fri, 10 Nov
 2023 16:29:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231109100606.1245545-1-wenst@chromium.org> <20231109100606.1245545-7-wenst@chromium.org>
 <20231110210443.GA419831-robh@kernel.org>
In-Reply-To: <20231110210443.GA419831-robh@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 10 Nov 2023 16:29:08 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XARZpeEZo-i+CNTAH=AQrxPfwnzSMXDWx6Pvj4k6cP8g@mail.gmail.com>
Message-ID: <CAD=FV=XARZpeEZo-i+CNTAH=AQrxPfwnzSMXDWx6Pvj4k6cP8g@mail.gmail.com>
Subject: Re: [RFC PATCH v2 6/7] dt-bindings: arm: mediatek: Remove SKU
 specific compatibles for Google Krane
To: Rob Herring <robh@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	andriy.shevchenko@linux.intel.com, Jiri Kosina <jikos@kernel.org>, 
	linus.walleij@linaro.org, broonie@kernel.org, gregkh@linuxfoundation.org, 
	hdegoede@redhat.com, james.clark@arm.com, james@equiv.tech, 
	keescook@chromium.org, petr.tesarik.ext@huawei.com, rafael@kernel.org, 
	tglx@linutronix.de, Jeff LaBundy <jeff@labundy.com>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Nov 10, 2023 at 1:04=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Nov 09, 2023 at 06:06:03PM +0800, Chen-Yu Tsai wrote:
> > In cases where the same Chromebook model is manufactured with different
> > components (MIPI DSI panels, MIPI CSI camera sensors, or trackpad /
> > touchscreens with conflicting addresses), a different SKU ID is
> > allocated to each specific combination. This SKU ID is exported by the
> > bootloader into the device tree, and can be used to "discover" which
> > combination is present on the current machine. Thus we no longer have
> > to specify separate compatible strings for each of them.
>
> You just broke an existing kernel with a new DT having this change.
>
> Just because you come up with a new way to do things, doesn't mean you
> can remove the old way.

I was wondering about that, actually. My understanding was that what
Chen-Yu was doing here was correct, but I'm happy to be educated.

Specifically, I think that after his series old device trees will
continue to boot just fine. ...so if someone took a device tree from
before his series and booted it on a kernel after his series that
everything would be hunky dory. If that doesn't work then, I agree,
that should be fixed.

However, here, he is documenting what the "latest and greatest" device
tree should look at and that matches what's checked into the "dts"
directory. In general, I thought that yaml files didn't necessarily
always document old/deprecated ways of doing things and just focused
on documenting the new/best way.

Now, obviously, if someone took a new device tree and tried to put it
on an old kernel then it wouldn't work, but I was always under the
impression that wasn't a requirement.


-Doug

