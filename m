Return-Path: <devicetree+bounces-248118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51469CCEF6E
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8B0B83006C59
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9876A29D29E;
	Fri, 19 Dec 2025 08:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ha6CUx4j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2546A2472A8
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766132776; cv=none; b=jXeNYWBrYrUd/+tsg/a8mNXP2hpnLiMZT2uxkPgSEmHqcPUEYeDH57zy0qeU19etpwxcHnr6eLGjuVvWU2U4SFZXkJMkbJsyQBmWJu3vtRSN3RPbK4LPsbkA8Jhb3EV9cSX4f/IAnprnf2sl7suYUxQzhAfEdW9hzgZXKwUZDnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766132776; c=relaxed/simple;
	bh=Mh/uUd9EKBwD/5V81hRSsPxVoQWoJ6MYvBOGFnlcFdI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i6DEaOlhYRxTT0F+AXLV2br/8ZGYxIXWctu+mL0BSm0yH/CWXIUrtJJLI2Q/mqK5ZH+4k40czFzkBMqFcpDPiugnpEP4FDD0jaZeW92FJgqGm+f1SvT523AJRBslGykf9+deH3qnImxJ7po6/Yy9S2MFfmX1bpB/9FMuLyj+vO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ha6CUx4j; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-34c565c3673so1221369a91.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766132774; x=1766737574; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m5VbsO8NOFBu8cM3PiLkWiMooEcKpbjdJrZHI4GhWGY=;
        b=ha6CUx4jN70gIMCXVIN6RFh0/gXo5SGDCy8+w1ektQ1suxrHTZM/gIsZD9VI2PZTbU
         NIwVMpRAn9juKzb21Gl9B1ptU8PXnkhCAcek5Lsci4bwhYmSe33E1gTRsjOiM6pP5iWo
         eYkNcukEXh7+2gR1U7JtNj7Jvr2hngZwuYacrH8m/wIjm5J41fHj2gucf5hC4sIZpaDg
         0tdeDcAfJbSgwM48KymLnejtiGp4KkoGhqFXOC8ajvhvv3wOFlNmHjjtK1WUN0/TwHQY
         VA3PWjei+YFyKtkBzx5wxb21EMrB1gS3grPhg4039t9Q+Mz1aswPah/rNEzbQmTirect
         xClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766132774; x=1766737574;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m5VbsO8NOFBu8cM3PiLkWiMooEcKpbjdJrZHI4GhWGY=;
        b=Y/LsIm9zeBX0fZsePjP6TMTbcRX4Ipbzd6qjxHWSW/Od1HLlwXV65FMSathJQ3RHGI
         wATiLX4aYIAvRn9+nrPbJnitBbcdrX0lAurptcdppz9DTmZ9FsfA2V/67GGo8eWDef7B
         PxxjMsXmhHFaZ/cSudoXTjdx/XNieEGjYXswBT43y3BGBzeIvM9bEup3ade7vj2EVw+m
         qz7QY7kANy9LY2cJpyNjNmXJNG4RsZzXrp0kQv5w0gfZbsUbFSGwOtGtBBUiJzvJbN/n
         Rcw9ULjzy2ZNFnvwcomfbh63iJgOOJSxBRLXBBJ/3s7EDmHxroc0SP2p4JpR9LYP4KMf
         PIbw==
X-Gm-Message-State: AOJu0Yz6hBXLH+T3Y3ooihhE2QOdFUImWSS0ZJvW2yy1etDMN8I75KEE
	ePOhmyyjjvOaLS2ZCbLhlvsP9GZKXL3SgPPG1mKG44B+izALHyNXbV3+apD7oHGNbJngL3HOaPe
	HPc+UGX4bMQID0T04U9Z8C01Ieb70Vp3me/VUKCw=
X-Gm-Gg: AY/fxX6ISdmR6wM9leqVFy05rODZBWLWPNv1DBBRvMBbTzM4OY9wgdMfJJO7Cj8xCcE
	gdVUryqG6XIffBP/RYHp4Hzn7JS9QjepL4KsmNcaa2UD4/J1ZNtb132LrwlZeLC4KI3CHC9QJWd
	x47l2kmduD79YoE208Thpgc9LEQZp5EKyl14NMZVvrsTXoJaGVS2MXIqctb/SXFPKjBp0JHQgl8
	46EQ5euejPmJMKp7Fg6aheT0C5jgx5HpR1fEdNbS35ERfRFiWUU047PbEvwu46g0E26M4n4
X-Google-Smtp-Source: AGHT+IGPmADYM3+zkhv22FUUPyuAnnylSRC8nYRgd73Eur0wmU9zUYCJLT1U5U5sFLrEIkHvrknhCBn+vQ2wRGMXl9c=
X-Received: by 2002:a17:90b:1348:b0:34c:ab9b:837c with SMTP id
 98e67ed59e1d1-34e7151d99bmr5127645a91.0.1766132774402; Fri, 19 Dec 2025
 00:26:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
 <20251118-yv5_revise_dts-v1-3-fcd6b44b4497@gmail.com> <74b9c09cebac1de0e6e2e712a1374ab5294f61d8.camel@codeconstruct.com.au>
In-Reply-To: <74b9c09cebac1de0e6e2e712a1374ab5294f61d8.camel@codeconstruct.com.au>
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 19 Dec 2025 16:26:02 +0800
X-Gm-Features: AQt7F2rMlRqPGBwtEiOBW-nH3v4LXxnrzuVjolj7vO7f61ahRRx-VbiavMDcxf8
Message-ID: <CABh9gBd8Mvpyv5WmFMQ7T4uDirxjprKpnq90+if11UOKZ4CN_Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: aspeed: yosemite5: Rename sgpio P0_I3C_APML_ALERT_L
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
	Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

I=E2=80=99ve sent v3 of this series to address these concerns.
The signal rename has been reverted to avoid breaking any existing
user space dependencies. In addition, a new patch has been added to
introduce additional SGPIO line names and a more detailed
discussion in the commit message.

BR,
Kevin

On Mon, Nov 24, 2025 at 12:44=E2=80=AFPM Andrew Jeffery
<andrew@codeconstruct.com.au> wrote:
>
> On Tue, 2025-11-18 at 18:53 +0800, Kevin Tung wrote:
> > Rename P0_I3C_APML_ALERT_L to FM_APML_CPU_ALERT_N for clarity.
>
> Are user space components looking for these names? Will updating the
> devicetree break older applications? I'd like to see more discussion of
> these problems in the commit message.
>
> Cheers,
>
> Andrew
>
> >
> > Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> > ---
> >  arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts=
 b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > index 45b8ac2e8c65a4f672e64571631b7f6944f26213..060757b7211a6da777c51d9=
f0c886796cf2450a4 100644
> > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> > @@ -964,7 +964,7 @@ &sgpiom0 {
> >       "FAULT_P3V3_NIC_N","",
> >       "FAULT_P12V_NIC_N","",
> >       "FAULT_P12V_SCM_N","",
> > -     "P0_I3C_APML_ALERT_L","",
> > +     "FM_APML_CPU_ALERT_N","",
> >       "ALERT_INLET_TEMP_N","",
> >       "FM_CPU_PROCHOT_R_N","",
> >       "FM_CPU_THERMTRIP_N","",

