Return-Path: <devicetree+bounces-50299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C974087AB08
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 17:25:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84840283AE5
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 16:25:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220B4481DB;
	Wed, 13 Mar 2024 16:25:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oNyJy8xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A9C481D0
	for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 16:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710347138; cv=none; b=ffPplNehPw80KOo62SiTTvdzByIMWrsN2BFOGYo6ffHlfP0006htPsgsD8jCyGV05b4Yi0vfCATRMbNeuwGd1vYMXLRe7p7NeSvl6YQA/bO4fzG1j822yF1YJkNX73+AVc/I1oE26fuWqRI5buMPP+zMmrJY6Hy2Fc5ADggkOXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710347138; c=relaxed/simple;
	bh=fndGBeOY3SA23+9FmeX+5KQzzCNTLAKeBHKcSLCTo4s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LRwfxjX6hPc+ciwM8VXCeh1PlM01ZX3a6xpyscNP6uBXzyAww9G0aKv2WOMv88XowG7WDKy8ec5wyVDujpTDfHCby85+xb94YWzigi1rarCTT8O9QMLkrlnjlnE6nfYt5Xr9diIg0AKI8Z+Bbu+swLk9zfeMLr3U5efTPP8Atrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oNyJy8xk; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6e6b54a28ebso75440b3a.2
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 09:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710347136; x=1710951936; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fYxzXCVmzr66awhRoPiulHCLdn6odFpvWPqlxUZTg40=;
        b=oNyJy8xkxNu9iaHb8N5o9sOPBYyjboZbrGNCHC0UccH86YNw9OQkty9lL/j1ctUVes
         VU6urZpWLvCIGQOwUXNBVrJUtb+nsfhE2LJlGbgDybWmit/DShVra/R9bUp/FHf+NDE+
         2fkAqK/Eq+8FCLy3WpkEr3mSotyHzeF5u0aRgEADdNHfplIhaAJmxjc7Lz4oOj7Nnyv6
         83CHH44pEpEoRLvoy8iq3PamqFumUcqEN0uFmG0Axsc01wE4CqkXZbzhs85ZtzRaL0T6
         uTMdbgkUT6278P9Kl/5g+WrWaTlgpA3/KLaRBMHVleMByl4TnetBVinJ2V6ed48Jg8y4
         idCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710347136; x=1710951936;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fYxzXCVmzr66awhRoPiulHCLdn6odFpvWPqlxUZTg40=;
        b=jzX2soG4J4M8B9LFZqfD3s3YwUo2Nb0Pss/6AgdsWPXS/02+PSLwKV6wOMfAv4RGvQ
         RwPIUVyji3iK9Lx0CJoC/AGlF8T3/0KBL8S+zzyyT937JiQ1jwUMkVKDJRdFCsz0f65z
         29RoUuYdfTi26Pa2fMhaaLmeTMzDe98NB4Ys5PQE1KDrsfCl5VE0eE22ay6xGHcjTA4i
         9ClGILSILiYSbBDbLKkht0B1MfFgplHklHRlDCQ3OHpEkRiCGgvCUv31U7g7iJXRHm5m
         esFwsp+4Gev/KFTgcQdMM3KrD0TSB50cZujrMSxN5vOwfybZkFd8q7aZ0GCIKJJxCmLq
         h4Kw==
X-Forwarded-Encrypted: i=1; AJvYcCX3DxbJ6H0/kzCKpjZkSbzuIut2D4T+T96Y3fL4JJBgXvIZwws+HI1fBQyp5mwsoNmGgzfek+OY3DQ4YvwEN0vD3Luy691xcofvDg==
X-Gm-Message-State: AOJu0YxEWiMK4TCV2JFuo3rAEtyVNd3Zi6Cml48UCnUfCHfPzAl19goy
	Q51H9eSh8CBK5Uz9einVxTFv85Dq4gZ2C/y7Frm+rStdgFlssW82AK9kDCXYSIU=
X-Google-Smtp-Source: AGHT+IGDDlbUcL/kmPgUIK2ocQ/+NVZ5EpvDYRvXae3NfxQmNd58fUdW3Xb6ch21rxY5N5eLOQx7sQ==
X-Received: by 2002:a05:6a20:3956:b0:1a3:2fe9:ad74 with SMTP id r22-20020a056a20395600b001a32fe9ad74mr3319252pzg.44.1710347135680;
        Wed, 13 Mar 2024 09:25:35 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:10b1:40f7:3529:d4f2])
        by smtp.gmail.com with ESMTPSA id cl12-20020a056a02098c00b005e438fe702dsm6934633pgb.65.2024.03.13.09.25.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 09:25:35 -0700 (PDT)
Date: Wed, 13 Mar 2024 10:25:32 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Abdellatif El Khlifi <abdellatif.elkhlifi@arm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Drew.Reed@arm.com,
	Adam.Johnston@arm.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-remoteproc@vger.kernel.org
Subject: Re: [PATCH 1/3] remoteproc: Add Arm remoteproc driver
Message-ID: <ZfHTfNx4um8koTlY@p14s>
References: <20240301164227.339208-1-abdellatif.elkhlifi@arm.com>
 <20240301164227.339208-2-abdellatif.elkhlifi@arm.com>
 <ZeYWKVpeFm1+4mlT@p14s>
 <20240307194026.GA355455@e130802.arm.com>
 <CANLsYkzA20rQdTM6AOvFK=3o28GvcoRbckL=ri8RegHqyHaiCw@mail.gmail.com>
 <20240311114442.GA82865@e130802.arm.com>
 <CANLsYkwReJvB1UWvR5TwtSs-w_VqU45kDSUzuQ0k+waetEn6Yw@mail.gmail.com>
 <20240312173252.GA38992@e130802.arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240312173252.GA38992@e130802.arm.com>

On Tue, Mar 12, 2024 at 05:32:52PM +0000, Abdellatif El Khlifi wrote:
> Hi Mathieu,
> 
> On Tue, Mar 12, 2024 at 10:29:52AM -0600, Mathieu Poirier wrote:
> > > This is an initial patchset for allowing to turn on and off the remote processor.
> > > The FW is already loaded before the Corstone-1000 SoC is powered on and this
> > > is done through the FPGA board bootloader in case of the FPGA target. Or by the Corstone-1000 FVP model
> > > (emulator).
> > >
> > >From the above I take it that booting with a preloaded firmware is a
> > scenario that needs to be supported and not just a temporary stage.
> 
> The current status of the Corstone-1000 SoC requires that there is
> a preloaded firmware for the external core. Preloading is done externally
> either through the FPGA bootloader or the emulator (FVP) before powering
> on the SoC.
> 

Ok

> Corstone-1000 will be upgraded in a way that the A core running Linux is able
> to share memory with the remote core and also being able to access the remote
> core memory so Linux can copy the firmware to. This HW changes are still
> This is why this patchset is relying on a preloaded firmware. And it's the step 1
> of adding remoteproc support for Corstone.
>

Ok, so there is a HW problem where A core and M core can't see each other's
memory, preventing the A core from copying the firmware image to the proper
location.

When the HW is fixed, will there be a need to support scenarios where the
firmware image has been preloaded into memory?

> When the HW is ready, we will be able to avoid preloading the firmware
> and the user can do the following:
> 
> 1) Use a default firmware filename stated in the DT (firmware-name property),
> that's the one remoteproc subsystem will use initially, load the firmware file
> and start the remote core.
> 
> 2) Then, the user can choose to use another firmware file:
> 
>     echo stop >/sys/class/remoteproc/remoteproc0/state
>     echo -n new_firmware.elf > /sys/class/remoteproc/remoteproc0/firmware
>     echo start >/sys/class/remoteproc/remoteproc0/state
> 
> > > The plan for the driver is as follows:
> > >
> > > Step 1: provide a foundation driver capable of turning the core on/off
> > >
> > > Step 2: provide mailbox support for comms
> > >
> > > Step 3: provide FW reload capability
> > >
> > What happens when a user wants to boot the remote processor with the
> > firmware provided on the file system rather than the one preloaded
> > into memory?
> 
> We will support this scenario when the HW is upgraded and copying the firmware
> to the remote core memory becomes possible.
> 
> > Furthermore, how do we account for scenarios where the
> > remote processor goes from running a firmware image on the file system
> > to the firmware image loaded by an external entity?  Is this a valid
> > scenario?
> 
> No, this scenario won't apply when we get the HW upgrade. No need for an
> external entity anymore. The firmware(s) will all be files in the linux filesystem.
> 
> > > Steps 2 & 3 are waiting for a HW update so the Cortex-A35 (running Linux) can share memory with
> > > the remote core.
> > >
> > > I'm happy to provide more explanation in the commit log to reflect this status.
> > >
> > > Is it OK that we go with step 1 as a foundation please ?
> > >
> > 
> > First let's clarify all the scenarios that need to be supported.  From
> > there I will advise on how to proceed and what modifications to the
> > subsystem's core should be made, if need be.
> 
> Thanks, I hope the answers above provide the information needed.
> 
> Cheers
> Abdellatif

