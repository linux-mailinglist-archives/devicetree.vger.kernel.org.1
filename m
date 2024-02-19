Return-Path: <devicetree+bounces-43387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE3685A389
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 13:35:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21AF8B255DB
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 12:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6DEF2E835;
	Mon, 19 Feb 2024 12:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mvepqIaD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2F4364D9
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 12:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708346044; cv=none; b=LInuHYtPZCEj4zOiZ9jiFpOois2i7H8JtHVAP6mtAdILP2aWY3uowfqFs+NOhQBx8Qa+UDbjC3PVtC2nGxdNYH1nPT3zNTeFirZ4E42JPjEavMzpgoKFjM1SQ0YUKzZiOwAe1LbT6H/pn2WXTcwuI4pOT2uU38pQrpoU8zMrDCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708346044; c=relaxed/simple;
	bh=EfyswbkjFGsreX6zvvh/xGLIF699ZsioDWGcgzOacl8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RQH/EAvm7kfzEngYvX3/74BOGXHKy8nD6If03qFiakZBk8B4xV48wdxiPJtkG2hIVX8HDhv06ospD1w6gwFRGDh77pdxOeJTE9UfGEDIAENFJSGV91kTee349QzNjPdQiLExR1vlIkW+QSNPye2E8CW3PiU4wlRyfFoVPuy0vEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mvepqIaD; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dc6d24737d7so3603104276.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 04:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708346042; x=1708950842; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EfyswbkjFGsreX6zvvh/xGLIF699ZsioDWGcgzOacl8=;
        b=mvepqIaDXiiTuQyHQdt6Ejh9kUwuKgHBeVQRlLu8/H48EeQfl3hvu5sk+pwj5BXtq/
         dO2RN/phpSedke6qYTOEVwqg0CYP7ljij3Fva+oq7Ze0z1rMPk505oMqZykkzSPvh7w9
         QC6VQUwv4kdryl/yAbkLRX+wxPIcqeCo6+HMuDsqT4m/3WCcZB5SuVifhS0yNcpKEd/j
         QRwdVFja6m6s2UD/aHJIRM5qIigFh4PWHitlfgHWjaQje+pTJl/O18uOxTqE2r0ZYK41
         sQm6f/TlIZpcNu4gtj7N5O+Zpo1ko7c5UCyY9m5lHefaYS97lOWkYNwQDzUPTzx2KbBw
         DmOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708346042; x=1708950842;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EfyswbkjFGsreX6zvvh/xGLIF699ZsioDWGcgzOacl8=;
        b=EmvjEqHXsPVy3JiJ3rkytECsC00+hfiNDB9YvbE3kDiCNYcNM5ARmplKHWELB7pie5
         J0OdIgSUZbtDiWadKv4qmtUwx0Qnokk62b8rNw6plehZU8bley0oT7KM21CtbZjfZY8b
         adQpSxnZav4+yV4ck6sUogkciV0mPW6LuqFZbOJMKyLb35oDC7UUIjMoQ7KoOtAWYoTS
         WraEiMCbJmPJum3ldFhMqUHbAL7ot3LR1hTexYyDuuGlNEcBR0zHPgjqx4efin3ZUUXG
         FUMyWgg1QWD25Hkt8hIMJl/LdZXeQvaDLW9pYqQbBLcbCBz+VX816KOJWaHZMVO/NLtK
         Pmqw==
X-Forwarded-Encrypted: i=1; AJvYcCUCGHnhM4mmp7MYH3HtM71BltfY0v8UCsVUUGMFHNVVSDArxIXGmphNDAiohRhRCJzIROWkQoKWguM87Rs+fb+mKAo9TIm2zJ6ACg==
X-Gm-Message-State: AOJu0YydNruC5AFPEGr4lo8S7vKAwQ0mioBxHLkfq2Ala+NJfwLgtDXn
	rNG3qV1mWTqY78aEGImVBwBqDq8GF+PCG/rVG5MAw1EJeiXTK5K3h44JAqCwl5KuSael9cX7M0d
	7PHQBVzyHVze7mSMesXf4c6ZSDr7cQJMck+Y1PQ==
X-Google-Smtp-Source: AGHT+IFW8hhd6M3At62V/9wLITSoPMQHLrtCAz5Offi/bXn5seDzbGyDiAZKXHo0tEWEDjfOFoAQhZeOCTlFpOff0gM=
X-Received: by 2002:a25:adc9:0:b0:dcd:63f8:ba32 with SMTP id
 d9-20020a25adc9000000b00dcd63f8ba32mr10169009ybe.65.1708346037293; Mon, 19
 Feb 2024 04:33:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240216203215.40870-1-brgl@bgdev.pl> <CAA8EJppt4-L1RyDeG=1SbbzkTDhLkGcmAbZQeY0S6wGnBbFbvw@mail.gmail.com>
 <e4cddd9f-9d76-43b7-9091-413f923d27f2@linaro.org> <CAA8EJpp6+2w65o2Bfcr44tE_ircMoON6hvGgyWfvFuh3HamoSQ@mail.gmail.com>
 <4d2a6f16-bb48-4d4e-b8fd-7e4b14563ffa@linaro.org> <CAA8EJpq=iyOfYzNATRbpqfBaYSdJV1Ao5t2ewLK+wY+vEaFYAQ@mail.gmail.com>
 <CAMRc=Mfnpusf+mb-CB5S8_p7QwVW6owekC5KcQF0qrR=iOQ=oA@mail.gmail.com>
In-Reply-To: <CAMRc=Mfnpusf+mb-CB5S8_p7QwVW6owekC5KcQF0qrR=iOQ=oA@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 19 Feb 2024 14:33:46 +0200
Message-ID: <CAA8EJppY7VTrDz3-FMZh2qHoU+JSGUjCVEi5x=OZgNVxQLm3eQ@mail.gmail.com>
Subject: Re: [PATCH v5 00/18] power: sequencing: implement the subsystem and
 add first users
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: neil.armstrong@linaro.org, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kalle Valo <kvalo@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Saravana Kannan <saravanak@google.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Alex Elder <elder@linaro.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, linux-bluetooth@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-pm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 19 Feb 2024 at 14:23, Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>
> On Mon, Feb 19, 2024 at 11:26=E2=80=AFAM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
>
> [snip]
>
> > > >>>>
> > > >>>> For WCN7850 we hide the existence of the PMU as modeling it is s=
imply not
> > > >>>> necessary. The BT and WLAN devices on the device-tree are repres=
ented as
> > > >>>> consuming the inputs (relevant to the functionality of each) of =
the PMU
> > > >>>> directly.
> > > >>>
> > > >>> We are describing the hardware. From the hardware point of view, =
there
> > > >>> is a PMU. I think at some point we would really like to describe =
all
> > > >>> Qualcomm/Atheros WiFI+BT units using this PMU approach, including=
 the
> > > >>> older ath10k units present on RB3 (WCN3990) and db820c (QCA6174).
> > > >>
> > > >> While I agree with older WiFi+BT units, I don't think it's needed =
for
> > > >> WCN7850 since BT+WiFi are now designed to be fully independent and=
 PMU is
> > > >> transparent.
> > > >
> > > > I don't see any significant difference between WCN6750/WCN6855 and
> > > > WCN7850 from the PMU / power up point of view. Could you please poi=
nt
> > > > me to the difference?
> > > >
> > >
> > > The WCN7850 datasheet clearly states there's not contraint on the WLA=
N_EN
> > > and BT_EN ordering and the only requirement is to have all input regu=
lators
> > > up before pulling up WLAN_EN and/or BT_EN.
> > >
> > > This makes the PMU transparent and BT and WLAN can be described as in=
dependent.
> >
> > From the hardware perspective, there is a PMU. It has several LDOs. So
> > the device tree should have the same style as the previous
> > generations.
> >
>
> My thinking was this: yes, there is a PMU but describing it has no
> benefit (unlike QCA6x90). If we do describe, then we'll end up having
> to use pwrseq here despite it not being needed because now we won't be
> able to just get regulators from WLAN/BT drivers directly.
>
> So I also vote for keeping it this way. Let's go into the package
> detail only if it's required.

The WiFi / BT parts are not powered up by the board regulators. They
are powered up by the PSU. So we are not describing it in the accurate
way.

Moreover, I think we definitely want to move BT driver to use only the
pwrseq power up method. Doing it in the other way results in the code
duplication and possible issues because of the regulator / pwrseq
taking different code paths.


--=20
With best wishes
Dmitry

