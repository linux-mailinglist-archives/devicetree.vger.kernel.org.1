Return-Path: <devicetree+bounces-129675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1309EC7BD
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 377A61889F87
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4FC1E9B22;
	Wed, 11 Dec 2024 08:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W6ohtcP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687821E9B1A
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733907179; cv=none; b=ox2bkPoF1rh/9zexsAPxWWNY8TFb9H8dzA2APDGyXcNda0hQ/wUGXd37q6pmt+y1eMUuEMvEtBE/y/GZN8MLP3z3f5TnFTY849ooPBMZU5rfhBs/4X10rO+nu6QbaT3pKkyMX5NfejCcurNqDM3TazpFOTvA//qDQX1FaUdNT5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733907179; c=relaxed/simple;
	bh=6joDyHvzJsiaVrNUUAGqlptwZbyUqWaQt/4zSizsgcs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CP7NbsiTxH/IYfj6hm8bEC0RXBt/wtauNmOZqfIPm1XIoFJ18RXE+CI7MXZurzmVb7N78kH+Lv4e6tUdgU3XOr/f7OrvfUaNCBdmwy91xKi/l5im5xKK7Li5HDcy/mI/vI1HH4TObJtxqoBeLFL90XBswlrrg5UKwW4AJdlB/mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W6ohtcP7; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53e3c47434eso3320837e87.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733907175; x=1734511975; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PQvn4I1rIMKsaknMKxkICyEP4l6YBY0h5q6GbALy4aI=;
        b=W6ohtcP7unRJT0D6kq3vAu2Sv2zIBROG3yoKvhmORJV2KZzOT91EE/a6U6/qpYrfww
         6qnSPLBxCpioWf0BwU4zDSCzqSc0qVxiCQMP88s+HVbCdISXxPsfghEfxpKV8EeLL4xY
         WSgTr2P5R/cbinj3CWj/Oxc2gbjcVtAQkPPogYRwI5bUlL/g8wxejLzfsqs8cYdzn/zE
         FHpazDDAROPpNMBAu683xMpJyZwCPdVcbUzjY1sjO6TXNvdYQiVY4wmYx5L1CNmizloy
         na6iPenv/x+QYw0Y3atobsrZHWcHCQIei0UkZ/O/Vvlu8JwNk2zjylV+WzcQHakl4dbR
         OHKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733907175; x=1734511975;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PQvn4I1rIMKsaknMKxkICyEP4l6YBY0h5q6GbALy4aI=;
        b=UWPxMt9Pd+n/81WmSs/tiInhY8PuQP3v2HPZLVKvym+IVOsQMO5iWufvEOdOOLoVw1
         uCTgoNsYB3o8eLmi+UHpAJEiQxVLXY3YLboNNh5JR4T1zBBb832o3o7qHMHi2hS75Rtt
         wxeSaXTkWBwHVkyiJlkB5/UCup24fuayCwSlBBUso0CuPM6nGW4tlL4cvrJsuQgonKli
         U9/grwioG1K3IKUcKVXgVUuPv3rbVZ54pxAprbmgc/4B5NAqGh/xtBtXwgTzwiE7RWhB
         QcL7l1WRX21oncWCyWYb39zt1Qv9FSzJUZTRJh/2vBespivEotzb/cK384VAJJS0TQK5
         Mq+Q==
X-Forwarded-Encrypted: i=1; AJvYcCUeTOXR06Wv3DYgpk0AZLr7JkWLCv6GafggncZrxuSUfJ/U4//lZogvt3EKe852/AtjKDpN5xY35JYj@vger.kernel.org
X-Gm-Message-State: AOJu0YyixVdWb9Xd0DJi8QBmssYnKyUvfMEp1lrgATqvKRUTFSFpK5AE
	mxXwpj9pwiHZClBsEcX/7QjzaCmpJQFQNvGFE9Qj0NgodX0fQrmxcClYxA5jOgw=
X-Gm-Gg: ASbGncu6FzloKXbs1zpc8ID7eSNQy0mUmghNMzT/1fmMidkC/Zigga8x8yL/9QkkzCi
	MJxvdB+K7X+UaxtvDcyONymm/8wQ2lWmgt5xEzCnaHFIiAqmuhYKciG+b+pjkXHhK/rf9YwJhe4
	UVIzekC/k3rsjIbVHwuxRkitlVTru3L0bcSkdr9RyY8Jv9coO2/JXHz3PDi8XIPAhKf2A7FSQSr
	Z7uP2i8Rx2/S2O+kuZaTrOwQ+oXsIdExkEbrGiOD8+S62Crm+pGIacvd4JfPE5obpsfmVGIoT9v
	Owr3ObmDjlJ2plnszzdxeysMITYulp8U+A==
X-Google-Smtp-Source: AGHT+IGuour6lJxXBzgCzGK78I8fo7xj6s/UcHmwFWIUOfdM9PKGmWIYOC26HeAtncqnF//cs2PKFA==
X-Received: by 2002:a05:6512:3988:b0:540:25a6:c342 with SMTP id 2adb3069b0e04-5402a5d8e27mr581372e87.4.1733907175524;
        Wed, 11 Dec 2024 00:52:55 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401cacc70fsm1012887e87.5.2024.12.11.00.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:52:54 -0800 (PST)
Date: Wed, 11 Dec 2024 10:52:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Pavan Kondeti <quic_pkondeti@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Akhil P Oommen <quic_akhilpo@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Elliot Berman <quic_eberman@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] drm/msm/a6xx: Skip gpu secure fw load in EL2 mode
Message-ID: <pndxbcduiwytfwkortyxpdqgwa4bm3ajnjpa5nedjtgndq6z5v@mziv5z36zeqr>
References: <20241209-drm-msm-kvm-support-v1-1-1c983a8a8087@quicinc.com>
 <CAF6AEGtKfWOGpd1gMfJ96BjCqwERZzBVmj5GzmjKxw8_vmSrJg@mail.gmail.com>
 <f4813046-5952-4d16-bae6-37303f22ad1a@quicinc.com>
 <iyknardi445n4h74am22arpgc4vlchh6z6cvkbff2xg76pd655@nozwz7snt476>
 <1219b46d-2aea-4377-a8ca-024039ee1499@quicinc.com>
 <CAF6AEGs4EebrwyQZviNXqB2=3h2wgZpmbrdGHuEU4z1D014GRA@mail.gmail.com>
 <b47d44cc-77b7-4137-97e3-b245e1394580@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b47d44cc-77b7-4137-97e3-b245e1394580@quicinc.com>

On Wed, Dec 11, 2024 at 01:06:58PM +0530, Pavan Kondeti wrote:
> +devicetree
> 
> On Tue, Dec 10, 2024 at 07:43:19PM -0800, Rob Clark wrote:
> > On Tue, Dec 10, 2024 at 7:08 PM Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
> > >
> > > On 12/11/2024 6:43 AM, Bjorn Andersson wrote:
> > > > On Tue, Dec 10, 2024 at 02:22:27AM +0530, Akhil P Oommen wrote:
> > > >> On 12/10/2024 1:24 AM, Rob Clark wrote:
> > > >>> On Mon, Dec 9, 2024 at 12:20 AM Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
> > > >>>>
> > > >>>> When kernel is booted in EL2, SECVID registers are accessible to the
> > > >>>> KMD. So we can use that to switch GPU's secure mode to avoid dependency
> > > >>>> on Zap firmware. Also, we can't load a secure firmware without a
> > > >>>> hypervisor that supports it.
> > > >>>
> > > >>> Shouldn't we do this based on whether zap node is in dtb (and not disabled)?
> > > >>
> > > >> This is better, isn't it? Otherwise, multiple overlays should be
> > > >> maintained for each soc/board since EL2 can be toggled from bootloader.
> > > >> And this feature is likely going to be more widely available.
> > > >>
> > > >
> > > > The DeviceTree passed to the OS needs to describe the world that said OS
> > > > is going to operate in. If you change the world you need to change the
> > > > description.
> > > > There are several other examples where this would be necessary
> > > > (remoteproc and watchdog to name two examples from the Qualcomm upstream
> > > > world).
> > >
> > > But basic things work without those changes, right? For eg: Desktop UI
> > 
> > It isn't really so much about whether certain use-cases can work with
> > a sub-optimal description of the hw (where in this case "hw" really
> > means "hw plus how the fw allows things to look to the HLOS").. It is
> > more about the hw/fw/whatever providing an accurate description of
> > what things look like to the HLOS.
> > 
> > I'm leaning more towards the hw+fw providing HLOS an accurate view...
> > and the fact that that carries over into other areas of dtb (ie. it
> > isn't the only thing that slbounce needs to patch, as I previously
> > mentioned) reinforces my view there.  This seems like a thing to fix
> > in fw/bootloader tbh.
> > 
> 
> Thanks Rob and Bjorn for your inputs. At the moment, we don't have
> capability in our bootloader to apply a *specific* overlay when Linux
> kernel is starteed in EL, this is making GPU non-functional. This patch
> from Akhil fixes the problem without depending on the bootloader.
> 
> From this discussion, I understand that it is recommended to provide
> HW+FW view in dT correctly instead of doing runtime checks in the
> kernel. We can take this as a requirement to the bootloader.
> 
> I would like to check how we should proceed with overlay. Should we
> submit dtso upstream and let bootloader apply the overlay at runtime or
> this whole overlay needs to be maintained in the bootloader. Also,
> Should we build all board dtb for EL2 as well or just leave it at compiling
> the EL2 dtbo (one per SoC)?

It doesn't have to be a dtbo. Instead you might just patch the DT
(Ideally via the https://github.com/U-Boot-EFI/EFI_DT_FIXUP_PROTOCOL).
I think the bootloader already changes the DT (by fixing memory sizes,
etc), so enabling or disabling ZAP & fixing several other bits and
pieces sounds logical.

-- 
With best wishes
Dmitry

