Return-Path: <devicetree+bounces-217407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BD73BB57966
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:54:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44B471A27CFC
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 441EC3043DC;
	Mon, 15 Sep 2025 11:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yg5psPh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9497A3043D3
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757937219; cv=none; b=kRz5PKeQdPAj6n8ydZFTLS/cLhtecw8QqNy2XZFt8ZnKITMQXhUyszeHacvAoKt0Rns+BoD6ODp1eHH9vwV2ozn/9guEbqMOIl6igxVTGLaljtfUH/MCIfsxagGu8uQo2v3HnbkuhJrWnvURnRnpgHXD5VHZmD0PKCiVy46PRjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757937219; c=relaxed/simple;
	bh=0ILSGIiItmyMCE7xHI853y8dy3amB33rFGrcT6q6w44=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ip/e8vsfx4TNJklrZKkTyRdixisUPwQMrypkxjimSR+AVcrymyf1EkXORnvVmSQepX9kHQspPepflu2upe7QFlqDAqgo/aVcPMq09wLNsphkD8bEunrK5djhzsQCsINOqx2jCe/YaXZUbEjTKaksX9BaZrmu1OPbYi4BPD+LsFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yg5psPh4; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3eb0a50a4d6so476101f8f.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757937216; x=1758542016; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S9rsfkbv0EL7aToRl/37b12mldmjeHZasuzSc06g/5c=;
        b=Yg5psPh4WYZ92pfMU1Q8RGDtkgtbVzBijRhhArXWxcjCQh7G2fsyAIeW+QpA1vE1Io
         nCv/WF4UgrliahfuxHIJLVjISmUpoAJYkxt0siwxT0iq6BmS7ZU+MgulJvzepOA5yXuv
         yzUMbfAXMl4dbqDCITwYp920tI8Lj1lAoIuUGNAJacC2seqrYv8qHW2ANiApNh77wJNc
         VI37DsVmgptMc5/oXJTjIhioAO1KxAg+69q9c2L1Qr6UKEFLaUogMB+C9lTQYejLLnsF
         8EwaHXq7nuy5DlVrNXOuqgAzrPoJmNRg0IV5lY7l0IWhqOKrxywuJrRNuc5G6SQUUT0f
         mJNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757937216; x=1758542016;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9rsfkbv0EL7aToRl/37b12mldmjeHZasuzSc06g/5c=;
        b=J/n2rUChD80hRY3+wMsH5nc6jQ4GyRRoDjFcCzfUXKC/qEiAgeeD+olb091vgGdQeZ
         clV/q9fP5FDmZ7fYDyl5RJus3gAvy8c0x4mzNIXnp3Tx1fwHpfrXiS1E7TSxQQkubaXB
         zaVfhx6mWe6BD3nwFA7ie48h05OKLp8gMxpOd9InPLhui7oGEWSKGmGx6IaNU+ji8Ms9
         1S97sMsMlvy9Fwv3cTmPhDdBabC15eb4cc8OmtwP+HgDHdae11VqoWXSLKK2Q/PAyDQ/
         UTQUTMviHr8NKDbNu/fLJLh8OQP8g/KFrpJC971GJuPRY1rqzS5KfhjLyGNzPcxQkt5o
         kBvw==
X-Forwarded-Encrypted: i=1; AJvYcCW3Cpswekw/e9fzjDGwcj1xzLwQ8xsCKCI7HxAwJRCQeFIY289Q7a4Mea0Axl9KKxY1/RRTJe1Syquy@vger.kernel.org
X-Gm-Message-State: AOJu0YwQDLMZOHqK4qu2gNLywn4n7zerIMnZU4nFOhbpBIyOdWLkDKBU
	QryadW89liYqiT6KgKao4KClIBXgts73bH1hU2+qhIOf5uZDlefGNZ8iCnsGe0NB19sUZagB636
	/ZddklfK4gK2dXDb/xE+B0huDPqCmpmM=
X-Gm-Gg: ASbGncuHqBkCpJObho7gSEi3Y/zRsPXmBaEev1sxdIgPEKA2t34atdtkxaPdhXHzTq5
	BI1xQBzXdk29zF5lvy5Wssnoz+2HJsfC8OxOcvEs1PFm860NNFcncEzkaEsLkYwlIktt1Pz03iS
	Uh9vpqIil8hMU28JUC9xTEpP3f5vyKkgpuHQ7kMKpBjSh1U/Fnl//5iEHJgxRfgAIb+1DGBR/vJ
	+ZqpCZscLdniE5oefo=
X-Google-Smtp-Source: AGHT+IGfEQTtfZM/ItJCozrT631R5nXA0YD+rGtclPjyGWg2BWC+ZOF/elBODu9mAt1IorwWM6bWM2cMtMtquc7HPHI=
X-Received: by 2002:a05:6000:1884:b0:3ea:558d:8e33 with SMTP id
 ffacd0b85a97d-3ea558d92femr3441083f8f.11.1757937215754; Mon, 15 Sep 2025
 04:53:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250915060141.12540-1-clamor95@gmail.com> <aMf6DLr8pTCP8tKn@shikoro>
In-Reply-To: <aMf6DLr8pTCP8tKn@shikoro>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Mon, 15 Sep 2025 14:53:23 +0300
X-Gm-Features: AS18NWBLkeKaqjltS4302C4IX18eul5NJVuVOImh89VIisTr8ceAaA7N6g0u10Y
Message-ID: <CAPVz0n3m9VOV5unVHhU67XQnk4jckA+zyJdCHXu2fFxCSht4JQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] i2c: muxes: Add GPIO-detected hotplug I2C
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Herve Codina <herve.codina@bootlin.com>, Luca Ceresoli <luca@lucaceresoli.net>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Rosin <peda@axentia.se>, 
	=?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	=?UTF-8?Q?Jonas_Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=BF=D0=BD, 15 =D0=B2=D0=B5=D1=80. 2025=E2=80=AF=D1=80. =D0=BE 14:35 Wolf=
ram Sang
<wsa+renesas@sang-engineering.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Mon, Sep 15, 2025 at 09:01:36AM +0300, Svyatoslav Ryhel wrote:
> > Implement driver for hot-plugged I2C busses, where some devices on
> > a bus are hot-pluggable and their presence is indicated by GPIO line.
> > This feature is used by the ASUS Transformers family, by the  Microsoft
> > Surface RT/2 and maybe more.
> >
> > ASUS Transformers expose i2c line via proprietary 40 pin plug and wire
> > that line through optional dock accessory. Devices in the dock are
> > connected to this i2c line and docks presence is detected by a dedicted
> > GPIO.
> >
> > Micha=C5=82 Miros=C5=82aw (1):
> >   i2c: muxes: Add GPIO-detected hotplug I2C
> >
> > Svyatoslav Ryhel (1):
> >   dt-bindings: i2c: Document GPIO detected hot-plugged I2C bus
> >
> >  .../bindings/i2c/i2c-hotplug-gpio.yaml        |  65 +++++
> >  drivers/i2c/muxes/Kconfig                     |  11 +
> >  drivers/i2c/muxes/Makefile                    |   1 +
> >  drivers/i2c/muxes/i2c-hotplug-gpio.c          | 263 ++++++++++++++++++
> >  4 files changed, 340 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-hotplug-g=
pio.yaml
> >  create mode 100644 drivers/i2c/muxes/i2c-hotplug-gpio.c
>
> Adding Herve and Luca to CC because they want to achieve the same with
> their I2C bus extensions, no?
>

I have no idea what you are talking about, this an original series I
have sent 2 years ago but now I decided that would be nice to have it
in mainline Linux.  Here is a link to patchset from 19th Jun 2023
https://lkml.org/lkml/2023/6/19/781

