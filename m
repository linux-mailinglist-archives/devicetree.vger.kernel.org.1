Return-Path: <devicetree+bounces-186618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6088ADC95A
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 13:30:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 560767A1F1E
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AB852DF3DE;
	Tue, 17 Jun 2025 11:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="tqFpopGy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A68142DBF7F
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750159736; cv=none; b=qvUIJ6U+HeRzcVRW+AwBA1+kkoh78kugefUXdW9BLEJ8bxdGbNZGKbwMspDKQ23cdyQozOF03JuEX+535ukkXJX/C1PGIzOWSB1O2JfzNB5SSwySC6mx/VAxRWGcY516Jdt80LH6NC+OV4+hZl1OeZSsjwb+K8W6WPHsvnVu3O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750159736; c=relaxed/simple;
	bh=rKqVvNw5lyKW3LX2+iL06fE/DI23RpfEtx3Z3DoV+vw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=orjOefPdFOey4SzUjPBEwqJ1vVYDWssBwNzpk9SF9rcI9ItOekLXZt10xmtxPVUgCjiCxBQ8LNJP9b5apSPpikiQP3XOE4Wk/b+T7J1oo5EXGFIKf1SmomKzp/UYzsOkaZticzNAVgExV59rZVCGmmXhQHbpLzs2+sAx4QWcgL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=tqFpopGy; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-553bcba4ff8so2571062e87.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 04:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750159733; x=1750764533; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rKqVvNw5lyKW3LX2+iL06fE/DI23RpfEtx3Z3DoV+vw=;
        b=tqFpopGy8Cc73b4pE/J+FwS4fvtgJgIyDHR6WwxuUSk/q4YGBxay1eBzs0oV2z8/3q
         xCdbk/zp5tnNqqCF81SxWGBiiM+ISgp+Xf8q9lQ2u9HkKhUuOB0bszOh28KgQHEyj6kB
         wWvcZhgc9V9yHPjZYt5GWOsGjWtkVJL6c74Nx7vpCxmtX+tCLp0wgGrbLTpecSVfw7F7
         Ld6iDua1M+BrxBlupe2aVtZn6L63yZT5w7knAy3x8ZM6KldeNXFFt+7hywXOXoDIMrLo
         YpR7fviFSaLiSk6GNvO5QH9k1Jj4babKrVuix90RlBYFMkIeoc9DlZMJMGCpiTLaR/zX
         1KPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750159733; x=1750764533;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rKqVvNw5lyKW3LX2+iL06fE/DI23RpfEtx3Z3DoV+vw=;
        b=ZS/G/3XBNEs5teFFa1Jyz48BQljCHd2yikpvQs7l4158RsYzfewhsjZJyqR78tkKs8
         /aRT/LvXlucm2os6PABM0kofFjp8oia+uWscvxM8cfX7iFGZDVyvtLXkk9l+VDsuj/fA
         cizfoF1UwPDjFff95P+uA109YPbWmVmngpRKLY7iRktQ9u1qiEHmoI6pU6bgmPQ9AuJd
         9OJOexXtXhkO/4Y34BRCwog/JiKhs25t2gGZvwuJGGH+uSBMNZ1OlfjzRSkG8SOlQGOk
         7vZaOVTFpQAcqbNXcACeS16gMHjyEqGuf8+xH4GneDrY9RIwAl5qfmqUHJFovzOV+erb
         OKhw==
X-Forwarded-Encrypted: i=1; AJvYcCUTny64VTjFZNIn2bxKG5F/GlO8owf/j7525DhZcZjEFJ4q3Og3LhZ0VzQH/18msOpg7vs2Kkwm9SQL@vger.kernel.org
X-Gm-Message-State: AOJu0YzxJIRLpy2yaOWL2lmi7nhHuuisusAAZwYBpQcYpc4RjxCD3nuE
	4gq4Virc+yRU6octinsb4JodQhxTZeeCOi/VS6iF4sx7sEDgYDdWUH7RXAY42ZjYegq57C1AG1Y
	5iqbmWJwttiB8HRrdHtfs2B1SNrydWNDCVHxx+6q80Q==
X-Gm-Gg: ASbGncslTHC2vt9kQmnP8mdvlos9LjPPkxrUjUEaJ7C3PJikDLTSetu9RKdHhNeydMe
	1j8GwEuf4QZUBZnbWSgzJ1qvqDmBpkqmhEkS35MvM0B7p3clMuQppMgFigCLdLMLFea57gTUlkV
	FLkhdxKLKcSGLZCxyGaHRG/boFtsafvAuOF98divVSBH2IzHnNQpYOT3ZWS+GKhCeGM0VNyAMJC
	LY=
X-Google-Smtp-Source: AGHT+IHFBHasejrt+vYHa1q+yyWQGNzh3xU6idx339UYt4amSi8DXGKZ9NJfBKCdaCs39R8/W/TUJxSI6bT+G4W5cw4=
X-Received: by 2002:a05:6512:3c84:b0:553:2159:8718 with SMTP id
 2adb3069b0e04-553b6f34ec5mr2709376e87.40.1750159732568; Tue, 17 Jun 2025
 04:28:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250616143341.51944-1-brgl@bgdev.pl> <713cd518-935f-4501-9753-d33c9ea6aef7@oss.qualcomm.com>
 <CAMRc=MceV-HgyFFvqytXAiuY+y10PQbdPBxuvd57NCeSLVLXCg@mail.gmail.com> <vyr6s4wzw5jc5gt7mywu4s4xob6aeca5aclbe5tdr4v3yng2tn@yb7rn2b2btb7>
In-Reply-To: <vyr6s4wzw5jc5gt7mywu4s4xob6aeca5aclbe5tdr4v3yng2tn@yb7rn2b2btb7>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Jun 2025 13:28:41 +0200
X-Gm-Features: AX0GCFuz6389iQUm3yW4uW2Du3zW54O1SWWkQeThcuXo-yttR-Q71TT_q21DHSU
Message-ID: <CAMRc=MccuJe144NcwapPPRXtQOZbPW8qmybuEA2O9EtfKzs7oQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: add debug UART pins to reserved GPIO
 ranges on RB2
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 17, 2025 at 5:18=E2=80=AFAM Bjorn Andersson <andersson@kernel.o=
rg> wrote:
>
> On Mon, Jun 16, 2025 at 06:43:16PM +0200, Bartosz Golaszewski wrote:
> > On Mon, Jun 16, 2025 at 6:20=E2=80=AFPM Konrad Dybcio
> > <konrad.dybcio@oss.qualcomm.com> wrote:
> > >
> > > On 6/16/25 4:33 PM, Bartosz Golaszewski wrote:
> > > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > > >
> > > > GPIO12 and GPIO13 are used for the debug UART and must not be avail=
able
> > > > to drivers or user-space. Add them to the gpio-reserved-ranges.
> > > >
> > > > Fixes: 8d58a8c0d930c ("arm64: dts: qcom: Add base qrb4210-rb2 board=
 dts")
> > > > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > > > ---
> > >
> > > That also makes them unavailable to the kernel though, no?
> > >
> >
> > Yes. They could only be used by QUP - I2C or SPI #4 - on sm6115 but
> > none of these are used on RB2. I just noticed that my console froze
> > when I accidentally requested GPIO12 and figured that it makes sense
> > to make them unavailable. Let me know if this should be dropped.
> >
>
> I'm guessing that this would be a problem for any pin that is used for
> some other function. Should we instead prevent userspace from being able
> to request pins that are not in "gpio" pinmux state?
>

That's supported by the "strict" flag in struct pinmux_ops. However
the two pins in question are muxed to GPIOs as far as the msm pinctrl
driver is concerned so it wouldn't help. Turning on the strict flag at
the global level of the pinctrl-msm driver would be risky though as it
would affect so many platforms, I'm sure it would break things. So IMO
it's either this change or let's drop it and leave it as is.

Bartosz

