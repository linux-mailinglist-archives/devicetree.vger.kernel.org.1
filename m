Return-Path: <devicetree+bounces-116585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 172379B3526
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:43:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1F22281B6F
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 15:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1614A1DE3D2;
	Mon, 28 Oct 2024 15:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZZfmiySD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA14D12F585
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730130191; cv=none; b=NqcQyD3lemySkpXGQYHnHn88Vc4ep7aghtvm3MozcxRIX0pGlhF1A9HvONMthyJYBqTpzaEktnn307+U128CPLzwcxLof5HKgTDcE6OSIHwbO4nQMDqdDYquOULanccSqkj7sza37PjZVkbf4uDDa8inLf0cLlvXPtYWzQ/dXYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730130191; c=relaxed/simple;
	bh=XVo/3bwi+PIOaKUXsNSyar2v36pwhDUCgR7r4pY4lo0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XCSqdpCgkbJzsc5rZIUtcHMLl3KDbsDf58q/DcESJ8xcjqYFaDbfN25Dz5f8RtLGftbb6C3kpODaddZjLz4963aNWHv7dvc2GhTKwuBOjPYQDwkRo3iyHA3s7DoaRgQGcomrAxiN1RrFKscTTqBx3cy3plWruFU09L0C4cOVkac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ZZfmiySD; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb3110b964so35189571fa.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730130187; x=1730734987; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/+Fm3T4pn4crwgwgU+f7W2PGkdCB3Gmk2ieoRtXcSM=;
        b=ZZfmiySDTJiexl7PxKSSn1FTPe415dRvb5liimGCpAHkKMMuScA22Zg2x4KKuwhT9+
         i/puM4jStxfRHC0fY3hISpDROnJ01Nsz5TFcaW4+kgXfJb4ssZjE7zIMwC5/gC5WjeU8
         GYQtPSd9F7Kxn2dFHUJNFmHtb7wjte+FWPpfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730130187; x=1730734987;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p/+Fm3T4pn4crwgwgU+f7W2PGkdCB3Gmk2ieoRtXcSM=;
        b=R3AOfKVXiCrTu1hn9aQ4W0fTcJYWG4jYWyu0Bc19l9ocBSIGtZIOm5syMAvIlks3f7
         uyVmSqxz75c/lErRmYN6iDc33ytx05SsQlGAMIARXu1rwpV/bb7kac7W0TKEirIPWj8f
         179SXeQbtnzVw9kAxonq9OSi0yStipRaJODciSkvxBAjMgmnXo/7fDmoG9iVkPV2wFHT
         93ry82ZNjAlagw7tp6y1gAlyHc0myTvb2gVMQ5TQyl0sv+g8H/81wkftlkGQ8KuKLl4a
         JH2vCWWKX1/G8EGj1EZ6WKJ4PafIqHHfND1nMJ3SZRrk3oTDhAhO4hgnn7sI7ViLXNTF
         PGlw==
X-Forwarded-Encrypted: i=1; AJvYcCWXQ047W82l2ZbmmHDRtxvPQ38IGqRWiSetx3rDst0+sp8NXRZdIZ41FSvRM3QhHSjq+Izdal+mOH05@vger.kernel.org
X-Gm-Message-State: AOJu0YwIGTlX3Mmj9Ksbzgk+aCI+s7IRX37DZJ+eJ+nOLEaiq+HtsVx4
	jXYXdnLhNeEkjVwDMdRxIBzi8pQC4usN/m3ZeHZxM0aunXMqG0CvRLJYNZIDJMvogt3oKsBdJ3L
	eHQ==
X-Google-Smtp-Source: AGHT+IHKew89BJyrtZ4pi4jtHNd9ubCHeUMs5crbEvEWVbzeSUiUE2pxBh7V2sTkCdcfXmJuYdHIig==
X-Received: by 2002:a2e:be04:0:b0:2fa:ce87:b7ea with SMTP id 38308e7fff4ca-2fcbddfeb5emr34781841fa.0.1730130186790;
        Mon, 28 Oct 2024 08:43:06 -0700 (PDT)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com. [209.85.208.181])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fcb4601e4csm12040781fa.112.2024.10.28.08.43.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 08:43:06 -0700 (PDT)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb4fa17044so44504981fa.3
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:43:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXm5SxHqEX9a4UfR0fwmwVsUUl0W4Nri+XT7wrVxOunOnhxnBg1UTJn4oMO6tTJm4pxuoQh41LZ/aiN@vger.kernel.org
X-Received: by 2002:a2e:bc0d:0:b0:2fa:d9db:7bac with SMTP id
 38308e7fff4ca-2fcbdf6250cmr34338691fa.3.1730130185979; Mon, 28 Oct 2024
 08:43:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017094222.1014936-1-wenst@chromium.org> <20241017094222.1014936-8-wenst@chromium.org>
 <CAD=FV=X-YzEGEc+tp-uB6vdPMEC-V9M=Gb60H69=_XY9w4R8nw@mail.gmail.com> <CAGXv+5H8kxrr=JJsMMY5Y+HC5JqMN-bMkm7hztOzQgrbew6-rw@mail.gmail.com>
In-Reply-To: <CAGXv+5H8kxrr=JJsMMY5Y+HC5JqMN-bMkm7hztOzQgrbew6-rw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 28 Oct 2024 08:42:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VbTMLr8ybCvKwm4aau+UkwCewuj2mqFX_+9hdCALLBRA@mail.gmail.com>
Message-ID: <CAD=FV=VbTMLr8ybCvKwm4aau+UkwCewuj2mqFX_+9hdCALLBRA@mail.gmail.com>
Subject: Re: [PATCH v9 7/7] arm64: dts: mediatek: mt8173-elm-hana: Mark
 touchscreens and trackpads as fail
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 28, 2024 at 2:14=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> > > @@ -35,6 +37,7 @@ touchscreen@40 {
> > >                 hid-descr-addr =3D <0x0001>;
> > >                 interrupt-parent =3D <&pio>;
> > >                 interrupts =3D <88 IRQ_TYPE_LEVEL_LOW>;
> > > +               status =3D "fail-needs-probe";
> >
> > It's a little weird that there's no pinctrl definition for the
> > touchscreens but there is one for the trackpad, but that predates your
> > patch and is unlikely to be a big deal.
>
> To be honest I'm in favor of getting rid of pinctrl settings that
> do nothing more than mux in a GPIO, as mentioned in my talk at ELCE.
> Such settings are already implied by the interrupts or gpios properties.
> The fact that the OS doesn't enforce exclusiveness between the
> subsystems is not something the DT should deal with.

One could also argue that the fact that the Linux kernel happens to
auto-mux pins to GPIO is not something that the device tree should
assume. Personally I have never liked the "auto-mux" behavior of Linux
and I've found that it can get in the way when you need to do more
advanced pinmuxing, like when a driver needs to sometimes use a pin in
"special function" mode and sometimes in GPIO mode. The auto-muxing
happens behind the back of the driver which then needs to account for
this fact and work around it. Just sayin. :-P

