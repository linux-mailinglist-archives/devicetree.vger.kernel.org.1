Return-Path: <devicetree+bounces-107297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCDF98E009
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 18:02:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C803B2C27A
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 15:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D36841D1F53;
	Wed,  2 Oct 2024 15:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Be2Rpkhl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AACB01D1F58
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 15:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727884111; cv=none; b=iwPnXEi59VbMHD3Y3fuoPjBm9ZIN3LS0A6QGmWg3oeKMBJzAW7nmZhAUCv/i2Y8EoWDOFpdl0EZZmKo63NS7fIyoZUdIpDxJtHCRLJnQaHeK6IvhGm9n5d4G4mcklAoykq7s1S4zvaIm3WTy1+L5ewZ5swqaocI11gLzoLyFjv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727884111; c=relaxed/simple;
	bh=vPpmKPkGsBgRFJIeAW63489wqwk+a4kj5VX3dy2cbbk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xsew5l2HYGSH+UB0bCXRMMfcQTLAf5fS6KsRjF9OsJ3kr0FaO0DxKL+RmMUOZYCxGJT/d6f0+vfXciV3gIh4GTM6LEX7D6qH4EgqmdM7eAvIFU3EFxvmUUfCNwhcDk8TArsE0vW5sLMnAKNh9mec5yIqC/KHf93WOarHs+K/q84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Be2Rpkhl; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2facf481587so32100791fa.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 08:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1727884107; x=1728488907; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vPpmKPkGsBgRFJIeAW63489wqwk+a4kj5VX3dy2cbbk=;
        b=Be2Rpkhlq0G+Mu/tt1/cev3WPgSUuUIz77yKGJnjWWyZD53hBEGXo33AS1sYVn86wf
         mVm2892korUcNRK2BdEAvdHYVUtVOVlDeqM+jlnXQU1e1UsdbLtAFUpqXUyTDJnp4RDN
         rTmOH8D75K76YpcoSNqazctg3G0/cBwyo2lxXHMex/pwmt9+t65VK1tP8SMtkHRQL/BJ
         i17jcpJiqdDrLt6Z1KnepAsxJvOd+6D1FloF0hqR52Dxq5IEL2LB5pOQ8IwcovmHkXtO
         +hIqBDrKiJS5VwqhjXqa18SD5OriqD7untFEvA1diZtSuACBiJ+T3yHd6RPfsNXck0xD
         aWyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727884107; x=1728488907;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vPpmKPkGsBgRFJIeAW63489wqwk+a4kj5VX3dy2cbbk=;
        b=t0ZTrZVay86ON4146BcMae9GA7wEZTPf4UpJk4iaelWI6ol/nsA9FIfWT9Tp1ZPtAY
         cyXy9YqSGI7hB/WgYScc7BhdtpBz9SF47JYSrevGTguCFsn7eJB5NHLZ7NRCVg6q19aK
         9MdbdkQFB7/Y4525j7/IWT7e/B0aF2IKOruMrkTXCUvzYyTyDIWfk9s5NCVd4JA9WCoP
         v88sfsPdNJBmzopgoH5nJZmfBTo0da4LI3i9afE8i9N6zcvSb/DyfcvbyUGTKeO5b4D1
         PMqtBdFrutkq2eQinqh7XrDrfnMpX+yagXgDwyl2z7XwtL55/xRLwjkWQEk3n52+A8jV
         krvg==
X-Forwarded-Encrypted: i=1; AJvYcCV1/7Ho2g0olSMGVPlJ8PHjsvFCGPVKuaNHoIPpkOoAlU1PzuDiOCJssx9ePMsH62umFQzFvNIajxYy@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf539v9TltIPnzj6ieXU1cYxSz12pFaRaT3MbQKIPqTVhomaL2
	JuQLfGpC5QGGe10SF7Clw2qcUreLxdhYlY3s1KOzXmnI/cZQVPq70wu7znCFcbVhuX3EnN8JrJN
	iB4AY81dMA7aswIJIDhvDyAux5jGqQkNTHZkb9g==
X-Google-Smtp-Source: AGHT+IFtquU+/hcjv4KamAH8Yf+XATK5XoDLh3KzbtFyShyMUx8jgBBNpz1iQXTqzLz0TE6q0aUQe5/IgaOyycvE4tU=
X-Received: by 2002:a2e:a17a:0:b0:2fa:c2c4:f9f5 with SMTP id
 38308e7fff4ca-2fae109ca6emr18835131fa.38.1727884107406; Wed, 02 Oct 2024
 08:48:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240919094339.2407641-1-billy_tsai@aspeedtech.com>
 <20240919094339.2407641-7-billy_tsai@aspeedtech.com> <CACRpkdbFD9CiqVwQ5xxZ9SfQtVvDJGCr=8spxBG4u-JQ0PKJ3w@mail.gmail.com>
 <CAMRc=MdvV7Z2yPpoR9mXLH6UCF5uA=TbkC_qUSj=akP_09M0WQ@mail.gmail.com> <OSQPR06MB7252DF4BB404D5C01785BB5B8B702@OSQPR06MB7252.apcprd06.prod.outlook.com>
In-Reply-To: <OSQPR06MB7252DF4BB404D5C01785BB5B8B702@OSQPR06MB7252.apcprd06.prod.outlook.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 2 Oct 2024 17:48:16 +0200
Message-ID: <CAMRc=MdXeRCj9ExsKH31isE9qdbNyC7=nWL=GgORknSZjf7oVg@mail.gmail.com>
Subject: Re: [PATCH v4 6/6] gpio: aspeed: Add the flush write to ensure the
 write complete.
To: Billy Tsai <billy_tsai@aspeedtech.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"joel@jms.id.au" <joel@jms.id.au>, 
	"andrew@codeconstruct.com.au" <andrew@codeconstruct.com.au>, 
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, BMC-SW <BMC-SW@aspeedtech.com>, 
	"Peter.Yin@quantatw.com" <Peter.Yin@quantatw.com>, "Jay_Zhang@wiwynn.com" <Jay_Zhang@wiwynn.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 2, 2024 at 5:09=E2=80=AFPM Billy Tsai <billy_tsai@aspeedtech.co=
m> wrote:
>
> > >
> > > On Thu, Sep 19, 2024 at 11:43=E2=80=AFAM Billy Tsai <billy_tsai@aspee=
dtech.com> wrote:
> > >
> > > > Performing a dummy read ensures that the register write operation i=
s fully
> > > > completed, mitigating any potential bus delays that could otherwise=
 impact
> > > > the frequency of bitbang usage. E.g., if the JTAG application uses =
GPIO to
> > > > control the JTAG pins (TCK, TMS, TDI, TDO, and TRST), and the appli=
cation
> > > > sets the TCK clock to 1 MHz, the GPIO=E2=80=99s high/low transition=
s will rely on
> > > > a delay function to ensure the clock frequency does not exceed 1 MH=
z.
> > > > However, this can lead to rapid toggling of the GPIO because the wr=
ite
> > > > operation is POSTed and does not wait for a bus acknowledgment.
> > > >
> > > > Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>
> > >
> > > If this applies cleanly on mainline I think it should go into fixes a=
s-is.
> > >
> > > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > >
> > > Yours,
> > > Linus Walleij
>
> > I agree but it doesn't. :(
>
> > Billy: please send it separately and - while at it - use a C-style comm=
ent.
>
> > Bart
>
> Hi Linus Walleij and Bart,
>
> Sorry, I don=E2=80=99t quite understand the meaning of =E2=80=9Csend it s=
eparately.=E2=80=9D
> Does this mean I need to send this patch individually after the GPIO patc=
h series has been accepted?
>

This is a fix, meaning: it should go upstream now and get backported
to stable branches. The other patches from this series will go in the
next merge window in two months or so. So send this as the first patch
in the series with an appropriate Fixes: tag or even send it entirely
independently from the rest.

Bart

