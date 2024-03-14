Return-Path: <devicetree+bounces-50554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D14AF87C141
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 17:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC7D3B20D48
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 16:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F2C74271;
	Thu, 14 Mar 2024 16:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n6Uyc3Nl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0F8F7353A
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 16:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710433806; cv=none; b=e0y1sWGEC+cR4QYoopSaz+l/1xcnJTW5XBzSwnPHH31UaEh2rlIEBGnrpmqRNuTryWNr9/CvjZAzAJUpbvOmpzHD7s+5WKeNiRYdBrospxiKXj4gw94irnOn5Iw14MY/KAHREKEPjfgKh4xJWlEbnViMLEeoyyW7rGW8ymMnd2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710433806; c=relaxed/simple;
	bh=q7cZe7r0LCnbPyHPLloHmQxC19pPkG/8Zv4KL2YlRpY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=s6y8xQgKP9L8yHDoCmDzsyaU2hJnORTMjSz8+6DpMGfRpGqoiSqJ8qfR2w2yRnK0DyJ3eEdjcPOiYJUWacYZyggsQ5dEOdYbKBq49j2/SuRA+o5CvVlt7fbdLbxtKbUXSvn/cyuQmXMuvlRdHyF7Y15MblU9aSdcTUZU/3lO2OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n6Uyc3Nl; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-55a5e7fa471so1620149a12.1
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 09:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710433803; x=1711038603; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KLl3gK9cV6OxQa3WncHmwC4MY7fLl1EcNbFX0dIn7sc=;
        b=n6Uyc3NlqwrglWx6CD+iKjM48wD/5aa987KJPe9pY3CViriv6cC1HKpXUGuVtxD9vI
         RqeKjx+mnTkT4rZyH6jP0cJetXq7D3I+kSOGk6RoFuL3tmCxteyZGNnXDDHTiDAe8YAQ
         8ySjnTBaIWyWm7bw6v3YaEJoXCkU2fjdvy8b/OmDKDn+msmlCkp7O8rgQ/eXpv5s3vDP
         KesO93ApWtJ6WZGE1cB4Cz7/wd8ebqL2FE+kFyAux9Fjq2onfA9E1tBROaHytyD6jwzN
         jlzBZumlM2K5LhDZic3j9NXHy4sTsdjcKm+z5+qzRBCdSifQIaP3hYlZbjAQtXMXckW0
         DQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710433803; x=1711038603;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KLl3gK9cV6OxQa3WncHmwC4MY7fLl1EcNbFX0dIn7sc=;
        b=cbd+4mCxVQUphJbWw48Y6V4fySL4Mt/LKyzBS8orvl5Rgud//l3V/2F377eYByELR8
         VC4qaqNwvMvKFroSjyzP4E0KdaOMSiClaQ2qX9THIBfUcRA3BTi9qWmmHRWmpOiqva+x
         4Ix0jJYVdY8timgJO1K1hNbK28bDB2jzAmW8w+C2NSeb3yV3HshVbdPN+nU/hRRMVhbH
         Lhx18wK/6v1gNoQMq35gowNhi5FZ8bKDQESAGbxrNbI2FGfSoJCvl2Bg8jidrWQ3R3JD
         01R5YHeqXL6AOkZfXM1wwEfps6vcYCPYHNvcY830MhaSGrMW5NDR+wJ2FrVMkpKqzS85
         hYfg==
X-Forwarded-Encrypted: i=1; AJvYcCU4TslUcxxBjooAJlTIv5Boac63evUuQz811cEKVLuwcnQ9CBvZEZNIpaQoJ2gN0CyHUKtak7IvSfCFnG0Vo3DzGCPUEr3m3/U6kw==
X-Gm-Message-State: AOJu0Yw7WWUn8pKtqAD8K8925fV4kvCU9JQD0mSHQMSBR+Nhbjxd83b5
	EyNHgg9UoNgUj2nZKgqfc9OBvsuEUgIYhMEuKXMVF+pC1Lx95P20aqkr/BhWEW6zlTmXpEr/V16
	iP3ggPCRSggbYo3IRBnR7bGPQIlujvkmRPoLjPQ==
X-Google-Smtp-Source: AGHT+IHFysDJuZx8WaSgVN8UaQyI4uT/Kws9od+ssgUFSxoLe79xE2iiRf9rncVkWebMw/kyZE9YRMP8x9J1VnQQqYY=
X-Received: by 2002:a05:6402:5414:b0:565:7733:3c58 with SMTP id
 ev20-20020a056402541400b0056577333c58mr872607edb.4.1710433803045; Thu, 14 Mar
 2024 09:30:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240301164227.339208-2-abdellatif.elkhlifi@arm.com>
 <ZeYWKVpeFm1+4mlT@p14s> <20240307194026.GA355455@e130802.arm.com>
 <CANLsYkzA20rQdTM6AOvFK=3o28GvcoRbckL=ri8RegHqyHaiCw@mail.gmail.com>
 <20240311114442.GA82865@e130802.arm.com> <CANLsYkwReJvB1UWvR5TwtSs-w_VqU45kDSUzuQ0k+waetEn6Yw@mail.gmail.com>
 <20240312173252.GA38992@e130802.arm.com> <ZfHTfNx4um8koTlY@p14s>
 <20240313171756.GA82165@e130802.arm.com> <ZfMPS+qn0lh5IrS7@p14s> <ZfMQyJWTh15P7Ru3@bogus>
In-Reply-To: <ZfMQyJWTh15P7Ru3@bogus>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 14 Mar 2024 10:29:51 -0600
Message-ID: <CANLsYkzdfP8Np-XwPDt=GBNLYiSypd8tNdb29KUwr+tyi7gJEA@mail.gmail.com>
Subject: Re: [PATCH 1/3] remoteproc: Add Arm remoteproc driver
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Drew.Reed@arm.com, Adam.Johnston@arm.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 Mar 2024 at 08:59, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Mar 14, 2024 at 08:52:59AM -0600, Mathieu Poirier wrote:
> > On Wed, Mar 13, 2024 at 05:17:56PM +0000, Abdellatif El Khlifi wrote:
> > > Hi Mathieu,
> > >
> > > On Wed, Mar 13, 2024 at 10:25:32AM -0600, Mathieu Poirier wrote:
> > > > On Tue, Mar 12, 2024 at 05:32:52PM +0000, Abdellatif El Khlifi wrote:
> > > > > Hi Mathieu,
> > > > >
> > > > > On Tue, Mar 12, 2024 at 10:29:52AM -0600, Mathieu Poirier wrote:
> > > > > > > This is an initial patchset for allowing to turn on and off the remote processor.
> > > > > > > The FW is already loaded before the Corstone-1000 SoC is powered on and this
> > > > > > > is done through the FPGA board bootloader in case of the FPGA target. Or by the Corstone-1000 FVP model
> > > > > > > (emulator).
> > > > > > >
> > > > > > >From the above I take it that booting with a preloaded firmware is a
> > > > > > scenario that needs to be supported and not just a temporary stage.
> > > > >
> > > > > The current status of the Corstone-1000 SoC requires that there is
> > > > > a preloaded firmware for the external core. Preloading is done externally
> > > > > either through the FPGA bootloader or the emulator (FVP) before powering
> > > > > on the SoC.
> > > > >
> > > >
> > > > Ok
> > > >
> > > > > Corstone-1000 will be upgraded in a way that the A core running Linux is able
> > > > > to share memory with the remote core and also being able to access the remote
> > > > > core memory so Linux can copy the firmware to. This HW changes are still
> > > > > This is why this patchset is relying on a preloaded firmware. And it's the step 1
> > > > > of adding remoteproc support for Corstone.
> > > > >
> > > >
> > > > Ok, so there is a HW problem where A core and M core can't see each other's
> > > > memory, preventing the A core from copying the firmware image to the proper
> > > > location.
> > > >
> > > > When the HW is fixed, will there be a need to support scenarios where the
> > > > firmware image has been preloaded into memory?
> > >
> > > No, this scenario won't apply when we get the HW upgrade. No need for an
> > > external entity anymore. The firmware(s) will all be files in the linux filesystem.
> > >
> >
> > Very well.  I am willing to continue with this driver but it does so little that
> > I wonder if it wouldn't simply be better to move forward with upstreaming when
> > the HW is fixed.  The choice is yours.
> >
>
> I think Robin has raised few points that need clarification. I think it was
> done as part of DT binding patch. I share those concerns and I wanted to
> reaching to the same concerns by starting the questions I asked on corstone
> device tree changes.
>

I also agree with Robin's point of view.  Proceeding with an initial
driver with minimal functionality doesn't preclude having complete
bindings.  But that said and as I pointed out, it might be better to
wait for the HW to be fixed before moving forward.

> --
> Regards,
> Sudeep

