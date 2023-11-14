Return-Path: <devicetree+bounces-15547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ED87EABD0
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 09:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 904A91F22FE2
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 08:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30C7C14A8E;
	Tue, 14 Nov 2023 08:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="GaBkddCt"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982C111C84
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 08:44:24 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 327111A8
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 00:44:23 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507bd64814fso7839830e87.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 00:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699951461; x=1700556261; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EOI0CPqc9rDEial0ZWLikbzbAhp2oEQwcaX5s3JL5lU=;
        b=GaBkddCtVV4Cx5R32RvyNisa4XpVVlW4VTDJv072taqKn8xuHBn+vUWncuWPIEt21k
         UbAKHTpVdQCUSAUi2ojfoZfaBAZ36yhUIFiM/dphEoWhLckF0Fqqh87fz32AJ2qm1Gd+
         NyMd7q3lS5Sb0fFD4QAHMjzuw7yUDs1wf5+MU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699951461; x=1700556261;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EOI0CPqc9rDEial0ZWLikbzbAhp2oEQwcaX5s3JL5lU=;
        b=PGhtR74XxTNcJ+gSvNGkPEtfNcHQxOryicir4t6YPs23LW7C4T1do9H5d5gYhFMxKz
         UATu830U7aiArtwtuAWaxH8tdbYxBsBtaslCxzUnFjkqvEw/1CcEBS1yvm27h2HU/DEh
         dqLcDOZlKDt7Y9J+yanWpox/4sbVvp15LvX38+UK8q+uk15R9iK15ErrnXzUXTYTe/9E
         1WCBXgcvDdaZhlRyqJmR5kIUXD45P7Hp3zkadQGq3Ltt5ZyL+B5vHqf6FxpRMGdq8KD/
         5EbEZATzaFOFHc88Ttc8F4MA6FvEVEXPkvXtgB7Hzly0p5tpgAQKCIQmBqI1xxB4GL8J
         O6hA==
X-Gm-Message-State: AOJu0YxtgmZyj8HaTnraFCJHYoCHIjWgwm4yxaOFbvAxqvUxyiDXYe8W
	vsRfSWcCP0cvp+XizWu2pFesXQ2x2VDG6K99DmUX8A==
X-Google-Smtp-Source: AGHT+IEa6VnEgDgdb660juJcwqvPMHNrvPtOFZUPkY8aSdfT4qRPasNYPWnpX+E9xWBXVGeBHiyk1pNobLJZBUesJiM=
X-Received: by 2002:ac2:5dd6:0:b0:507:9d70:b297 with SMTP id
 x22-20020ac25dd6000000b005079d70b297mr5427659lfq.60.1699951461277; Tue, 14
 Nov 2023 00:44:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231109100606.1245545-1-wenst@chromium.org> <CAD=FV=WZCyp1aaSmpF-_TQ0CTWG1ZuvPZVw4mR=wJH=NTkKqqg@mail.gmail.com>
In-Reply-To: <CAD=FV=WZCyp1aaSmpF-_TQ0CTWG1ZuvPZVw4mR=wJH=NTkKqqg@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 14 Nov 2023 16:44:10 +0800
Message-ID: <CAGXv+5GHFn_Xr0ta7b5M9WMBJzCE6NJWo_PR+XOYXO0oaoPeaQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/7] of: Introduce hardware prober driver
To: Doug Anderson <dianders@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	andriy.shevchenko@linux.intel.com, Jiri Kosina <jikos@kernel.org>, 
	linus.walleij@linaro.org, broonie@kernel.org, gregkh@linuxfoundation.org, 
	hdegoede@redhat.com, james.clark@arm.com, james@equiv.tech, 
	keescook@chromium.org, rafael@kernel.org, tglx@linutronix.de, 
	Jeff LaBundy <jeff@labundy.com>, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 11, 2023 at 8:22=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Thu, Nov 9, 2023 at 2:06=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> =
wrote:
> >
> > The driver as
> > implemented currently doesn't deal with regulators or GPIO pins,
> > since in the existing device trees they are either always on for
> > regulators, or have GPIO hogs or pinmux and pinconfig directly
> > tied to the pin controller.
>
> I guess I won't object too much about this limitation for v1, but IMO
> it would be good to get this sorted out since I think part of the
> power of having the HW Prober is specifically that it can handle this
> type of use case. You have a little bit of board-specific code that
> knows how to turn on the regulators / GPIOs and can then probe the
> devices.
>
> Note: even if this is "board specific", it doesn't mean you couldn't
> share code between boards. For instance, you could have a helper
> function that would turn on regulators/GPIOs based on some type of
> table and that helper function could be used across a whole pile of
> Chromebooks. If a Chromebook is sufficiently different that it
> couldn't use the helper function then it could call its own function,
> but presumably it wouldn't be hard to support a bunch of boards
> without much code.

I agree this part is fairly generic and should be implemented.

We probably don't even need such a table. If these components share
a common connection to the mainboard, they certainly will have the
same GPIO lines and regulator supplies. The prober could just scan
the nodes looking for -gpio and -supply properties, de-duplicate
them, and turn them on.

The reason this isn't implemented in this version is because the devices
I'm currently using do not have these resources togglable. The supply is
always on, and the GPIO line is disconnected from the SoC. So I have no
way of testing it yet.

> As part of this, I think that your main "HW Prober" for Chromebooks
> should be in "drivers/platform/chrome/". I think that the only things
> that should be in the "drivers/of" directory should be helper
> functions used by the Chromebook HW Probers.

Sound like what Rob wants.

ChenYu

