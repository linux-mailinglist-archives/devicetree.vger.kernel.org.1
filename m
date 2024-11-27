Return-Path: <devicetree+bounces-125010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4429DA844
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F30428145D
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3C41FCD14;
	Wed, 27 Nov 2024 13:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Kms9ftvq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4AB1FC11A
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732713081; cv=none; b=uQDfGMC3ak1vL2JYQROPv/LFKMBIZanSMnE9tH3Mfh+TJITyo3nN0sae3qOjA1hXPwWrNnhM5K0us5aXsT16TN6fUAvf5WEXMiSIdrNxm+l8ISNuNVddtOvPaOwAhXD6743rn3ohWL8Ft1XWBAgcL4e7jVk979+VYlpSiBQWhRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732713081; c=relaxed/simple;
	bh=cDpVWiiGl6etsITAHNV9gpxqYjho8V5OYTkLU7VMxc8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dChv8xeL25L0+4zRMXTTvD5+syHTFzhGnxbKu0tm13ANy7ybOJ+tBuVeq5jjheFz2TqYA0L5AA3YNGFWPXMXwNzEZw7zNGCyPR3V+jgszSPpnWf/kpP7gWfet+fxnNUx6VIXFBA+LL4LxHdaHjsEWfmDtIWyHTeGMLI/JJuZSQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Kms9ftvq; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e38232fc4d8so5911298276.2
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 05:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732713079; x=1733317879; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0pJ4f5/AA0Na3QRUimWC4sZ6Mc3cd4bD928BKUzVBg8=;
        b=Kms9ftvqy9bHW8+XcZ5ytkIYj7Sj6MMIKVNpaXHrZI1UqzafvcWgMvSTnvazV4lmNI
         +D4cIVysoH5/PBylJCeCbR97ff8NY+sbH0NlJNQVuqRwl+XdxhZQ1Eu+3okPjo/qnPer
         ZaML1auj6fFoHnfZnDYCf+O3VKW9GUfx9ldq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732713079; x=1733317879;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0pJ4f5/AA0Na3QRUimWC4sZ6Mc3cd4bD928BKUzVBg8=;
        b=grsnZkYA7Pwso9TWmin7Rpq8taK8SEmeNbyScB4+vCO/576w1pmWBMW8YITIEOEHX0
         Zh9gcc/KHNwFQjOW1Fy136pf4C/5hb3T6VoWaWr4o6QU8vUaex40KmM99wyEwRNAwCkf
         XfptpH9izvmxC8+wWVeEDLqI00/uELZvEA01T3hm+OvpSBFsfJcqHKdi4rANe++dmEeL
         KETrlLIXepEzZB72J70mxduOtLtSZkjgUQ3cOxzutB1kmppFPUwWDOuYmW+iRuxrwjv7
         Gm90+x1ElPHWXDn0IGnX6o5CZXPVQTGccdq3qr+swX+Dvl7Xj6wAT85ZzV2cGcgoJxqt
         bBtw==
X-Forwarded-Encrypted: i=1; AJvYcCUY3nA3mrfBYFWv3K9wdAQwe4jez7yRu4Jj1JRs7LS15N/3UFmVdoYjS4AcsCacIiBoklRcL2spoEmH@vger.kernel.org
X-Gm-Message-State: AOJu0YxL1bBNf8C1PJjOTNxo02c+NtAgaUitZVpg8hq1TA8xX5Jj2SIz
	p+WXIuE0yCPtbAV96ekMDGRgJQUUWoRVMlPWKCbVTq0HVgc1mfEJikaJdFMC7yS7Ujt13afqEzg
	iqwu+RsSdELKw9W/zoSlGZMxbnxmpUzfMIgbgYVI4oV8jMp4bgA==
X-Gm-Gg: ASbGnctbNnWtCWa1Qy1eTDaLjwdkYDYW/8qqfUl/+aFobQR2hMDrQAidvcOXqsUQg0T
	41LaUhh5oM3lm/QGthAhASIILqv2Wy8DN
X-Google-Smtp-Source: AGHT+IGHme/L5ioql1/e+CfRbka6xoxAYc90GtctpaIvtM30KbIeIU6v/mBHT7nNurKZ5GDi7Le2AMYnuUIp2KUuv5k=
X-Received: by 2002:a05:6902:cc5:b0:e2b:d3da:46c8 with SMTP id
 3f1490d57ef6-e395b93642dmr2466586276.37.1732713078836; Wed, 27 Nov 2024
 05:11:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241126103632.419469-1-wmacek@chromium.org> <20241126103632.419469-3-wmacek@chromium.org>
 <473283aa-fc84-4b3f-93bc-653c9d83c837@collabora.com>
In-Reply-To: <473283aa-fc84-4b3f-93bc-653c9d83c837@collabora.com>
From: Wojciech Macek <wmacek@chromium.org>
Date: Wed, 27 Nov 2024 14:11:06 +0100
Message-ID: <CAJrw_jmqfPaOsoT1pneoFuUg9ws1CsDgy3YdqWPE5SoK7Lrv+g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: mediatek: mt8186: Add Starmie device
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Chen-Yu Tsai <wenst@chromium.org>, Rafal Milecki <rafal@milecki.pl>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 26, 2024 at 12:35=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 26/11/24 11:36, Wojciech Macek ha scritto:
> > Add support for Starmie Chromebooks.
> >
> > Signed-off-by: Wojciech Macek <wmacek@chromium.org>
> > ---
> > Changelog v3-v2:
> >   - Cleaned up DTS
> >     - Re-using dsi_out node
> >     - Removed unnecessary delete-nodes
> >     - Moved touchpads to per-board dts
> >     - Modified 3.3/6V power regulator node
> > Changelog v2-v1:
> >   - No changes
> >   arch/arm64/boot/dts/mediatek/Makefile         |   2 +
> >   .../mediatek/mt8186-corsola-starmie-sku0.dts  |  31 ++
> >   .../mediatek/mt8186-corsola-starmie-sku1.dts  |  31 ++
> >   .../dts/mediatek/mt8186-corsola-starmie.dtsi  | 465 +++++++++++++++++=
+
> >   4 files changed, 529 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmi=
e-sku0.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmi=
e-sku1.dts
> >   create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-starmi=
e.dtsi
> >
>
> ..snip..
> > +/*
> > + * Battery on Starmie is using a different address than default.
> > + */
> > +&battery {
>
> I didn't ask you to do it this way, and that was for a good reason.
>
> Besides, you haven't run dtbs_check before sending this.
> Give it a go and you'll see why.
>
> Regards,
> Angelo

I'll update patches tomorrow once I get my Starmie back.
Meanwhile, to limit unnecessary turnarounds, I think I'd like to leave
the /delete-node/ for battery. In case status=3Ddisabled is used we
still would end up with the "battery" alias pointing to the old node.
That might be very misleading if someone ever tries to access battery
node using &battery link. Something like below.

 /*
  * Battery on Starmie is using a different address than default.
  * Remove old node to avoid "battery" alias pointing to disabled
  * node.
  */
/delete-node/ &battery;
&i2c_tunnel {
        battery: sbs-battery@f {
                compatible =3D "sbs,sbs-battery";
                reg =3D <0xf>;
                sbs,i2c-retry-count =3D <2>;
                sbs,poll-retry-count =3D <1>;
        };
};

Please let me know if you're OK with that.

Thanks,
Wojtek

>
> > +     reg =3D <0xf>;
> > +};
>

