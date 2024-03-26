Return-Path: <devicetree+bounces-53453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0F988C506
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 15:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF4842E76DD
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 14:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6B612D766;
	Tue, 26 Mar 2024 14:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bbmPwVNX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ACB86CDD4
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 14:20:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711462852; cv=none; b=cFGXY2NvzjNYDfoM982TDDe05N9hCIU6Lwl/ntur0ECshUEbW2ypfXfxuIUfeoqfZjLXPQczkIJhDTr6yu3gR3T7IhhHa0QL4nkC2tIpbaGcWAqHJdGB8aoVgutnG53WRzuZlkZ9ZRk7yAhrZYx7hsTbu3B97tX8mw6n356fhqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711462852; c=relaxed/simple;
	bh=zbQD84N+7FiwZVGN4FdwAoTPSjxSngVc8SRGDkRxKT8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uziWq62gKPL8zm7sRIv3cpN1ONfkHETZr1VdJ8m2ORmSwpJF9EQR1bB8CQoLg3iVg3AnD3lpRxvAwltXRkjDsfzGTnpYB+qbkib/tr11yK8bAorxMU4qZ5WKTOZbYYbNuOGVGp8TFNfagqK4PDhHHKw5d66cW+0HoPHnFpaYqo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bbmPwVNX; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-56bf6418434so3974799a12.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 07:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711462849; x=1712067649; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=w0pAKQRmRJlibruDxzELT+hsaTaozLHFzCa7oaB4xn8=;
        b=bbmPwVNXEd/szBZoH1EhEVxstgftUptVmc6d34/st2pIdBYWAjCn96Gncn+Vxu5c4e
         MNJ4Bi8iEnOOlqBjgeQeRYNG5tS9M9B80FJVtCgiJvDGoZrrSZpQwMd2t5U47EutWzCM
         MDygHjM58C2qWjF1Q+h4DbWZ+9ZLPl/7DHRH0/5KsB9kQ/BUcvZwaeAE9inM1A+SaXHm
         YcPuJTWNdujv5sT31GhTvbFje/qpgcc70shaBWZQCByva3DkRctv88cjFfseLjOkxvRf
         CgiZfeKketgbhNJI46X9BgblqH6Xg7cr16OZZByNXioOgXQBwiXXj105dy/zlTXF8AyW
         EcDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711462849; x=1712067649;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w0pAKQRmRJlibruDxzELT+hsaTaozLHFzCa7oaB4xn8=;
        b=Ak8WzdFwa9IWyIxZ7qQrAxKM4p7g6ebMlQQoMX0589ZT2phlQC5p62IfxFqJPoR+t3
         ymmaXT346uziXgcYxodCJdE0IFMkGASQ9VJFVNvLjSmLnenrdxxMlNrjd7dxFOuFpEXZ
         DMfvrvLVssq6rAQN3yoGZIczY4qoWLNYouss7kqOtyUNKKuEM3ZRveBWKi5Mni6Lmkp3
         sQcHoiQqojPwpsApMBSU7S2PjD0MwdwVzFrANKBKBmAWkEII4DgL45xh5lvZXrCsfv8g
         TnBL2YRntxCs67oo0Gue7iil5kpv4am6LC/VVD/I5e/M0PAWZ48UMD4JzlO2d5zBpi+2
         iBZg==
X-Forwarded-Encrypted: i=1; AJvYcCVfWgnKhWStRYQBNFyO9ubllFo+OKV0iCG8wqSPrjIzh7cwlT2MEO+LZWdlelA5foJRXLL8fIEPM9gdEPiAUU1i4bfPPUQCSGpTvA==
X-Gm-Message-State: AOJu0YwDXXkloFD6tjLLT0nxq7ytwSiA7H8o3g1L/t5PPnOCoZJ9Vnpw
	Cir/E7t1BOwYsktTPTI9Sv7nS21RUG0d287w4JFMwauIomjWdthYvtQGJIFOiZq2D49Cqq903cd
	8/zTReLg8bQGTc0G4U2XUbdk+KQB1xYhTHe/r0Q==
X-Google-Smtp-Source: AGHT+IHUzEZjvpgRrsCaJghKSKw3iJjB0Ths2J/HVSVaWGgZXcyLBL9k9H9rRvQGerf20MW83Wx/xJluM2WUtm1Yl3c=
X-Received: by 2002:a50:9f4a:0:b0:56c:19d2:85be with SMTP id
 b68-20020a509f4a000000b0056c19d285bemr3317223edf.11.1711462848915; Tue, 26
 Mar 2024 07:20:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240307194026.GA355455@e130802.arm.com> <CANLsYkzA20rQdTM6AOvFK=3o28GvcoRbckL=ri8RegHqyHaiCw@mail.gmail.com>
 <20240311114442.GA82865@e130802.arm.com> <CANLsYkwReJvB1UWvR5TwtSs-w_VqU45kDSUzuQ0k+waetEn6Yw@mail.gmail.com>
 <20240312173252.GA38992@e130802.arm.com> <ZfHTfNx4um8koTlY@p14s>
 <20240313171756.GA82165@e130802.arm.com> <ZfMPS+qn0lh5IrS7@p14s>
 <ZfMQyJWTh15P7Ru3@bogus> <CANLsYkzdfP8Np-XwPDt=GBNLYiSypd8tNdb29KUwr+tyi7gJEA@mail.gmail.com>
 <20240325171339.GA368569@e130802.arm.com>
In-Reply-To: <20240325171339.GA368569@e130802.arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 26 Mar 2024 08:20:37 -0600
Message-ID: <CANLsYkwOrtXxObL5MKf30OrUYB_uT=DnGEXUtfjH503r_LyMQA@mail.gmail.com>
Subject: Re: [PATCH 1/3] remoteproc: Add Arm remoteproc driver
To: Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Drew.Reed@arm.com, Adam.Johnston@arm.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 25 Mar 2024 at 11:13, Abdellatif El Khlifi
<abdellatif.elkhlifi@arm.com> wrote:
>
> Hi Mathieu,
>
> > > > > > > > > This is an initial patchset for allowing to turn on and off the remote processor.
> > > > > > > > > The FW is already loaded before the Corstone-1000 SoC is powered on and this
> > > > > > > > > is done through the FPGA board bootloader in case of the FPGA target. Or by the Corstone-1000 FVP model
> > > > > > > > > (emulator).
> > > > > > > > >
> > > > > > > > >From the above I take it that booting with a preloaded firmware is a
> > > > > > > > scenario that needs to be supported and not just a temporary stage.
> > > > > > >
> > > > > > > The current status of the Corstone-1000 SoC requires that there is
> > > > > > > a preloaded firmware for the external core. Preloading is done externally
> > > > > > > either through the FPGA bootloader or the emulator (FVP) before powering
> > > > > > > on the SoC.
> > > > > > >
> > > > > >
> > > > > > Ok
> > > > > >
> > > > > > > Corstone-1000 will be upgraded in a way that the A core running Linux is able
> > > > > > > to share memory with the remote core and also being able to access the remote
> > > > > > > core memory so Linux can copy the firmware to. This HW changes are still
> > > > > > > This is why this patchset is relying on a preloaded firmware. And it's the step 1
> > > > > > > of adding remoteproc support for Corstone.
> > > > > > >
> > > > > >
> > > > > > Ok, so there is a HW problem where A core and M core can't see each other's
> > > > > > memory, preventing the A core from copying the firmware image to the proper
> > > > > > location.
> > > > > >
> > > > > > When the HW is fixed, will there be a need to support scenarios where the
> > > > > > firmware image has been preloaded into memory?
> > > > >
> > > > > No, this scenario won't apply when we get the HW upgrade. No need for an
> > > > > external entity anymore. The firmware(s) will all be files in the linux filesystem.
> > > > >
> > > >
> > > > Very well.  I am willing to continue with this driver but it does so little that
> > > > I wonder if it wouldn't simply be better to move forward with upstreaming when
> > > > the HW is fixed.  The choice is yours.
> > > >
> > >
> > > I think Robin has raised few points that need clarification. I think it was
> > > done as part of DT binding patch. I share those concerns and I wanted to
> > > reaching to the same concerns by starting the questions I asked on corstone
> > > device tree changes.
> > >
> >
> > I also agree with Robin's point of view.  Proceeding with an initial
> > driver with minimal functionality doesn't preclude having complete
> > bindings.  But that said and as I pointed out, it might be better to
> > wait for the HW to be fixed before moving forward.
>
> We checked with the HW teams. The missing features will be implemented but
> this will take time.
>
> The foundation driver as it is right now is still valuable for people wanting to
> know how to power control Corstone external systems in a future proof manner
> (even in the incomplete state). We prefer to address all the review comments
> made so it can be merged. This includes making the DT binding as complete as
> possible as you advised. Then, once the HW is ready, I'll implement the comms
> and the FW reload part. Is that OK please ?
>

I'm in agreement with that plan as long as we agree the current
preloaded heuristic is temporary and is not a valid long term
scenario.

> Cheers,
> Abdellatif

