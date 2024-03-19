Return-Path: <devicetree+bounces-51751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5993488032C
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 18:13:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F9121C2095C
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 17:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0151528DD0;
	Tue, 19 Mar 2024 17:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lveRWJD3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428D325777
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 17:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710868367; cv=none; b=lreeZcTD8bbLyR1nwcG9BWOSbc2g+HpLckpZG9y8Z2wzBBsrvsPzcYHpPt4heWfxu2yw2TohpkDkqkHvYuDGleU+8PyhOY7DSPKVFVjGXJ4YQTbG9lqBIblvV2rDwjkke9xTL0rNC5A+15lF5vszjvASVGYwN/+71uEt28RCZWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710868367; c=relaxed/simple;
	bh=jL9kHyMM7c3nVEZ31ALav/nIxEz+OLnT9X61bJOp+Xg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mo/87AS/cOehDwGgJCrVleEcNxAmQaI2nySvid9o4WCY0rs2dxCEVZnNKInmT775yViPHLcxlLqx1Opqb83w3HaUV1i0ihBHkLa3f7gq7SlA6DsXSNiApKSgTZluQAgi9q1A3ptxem+NYD3gPiBjICCa6dmdc3QaQSMIFSUgCZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lveRWJD3; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-696147fb5a7so18465846d6.0
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710868362; x=1711473162; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xy7T3S3KJOVX4N1q15sidzyEWWPC1Gkc2ooZN7wpRNo=;
        b=lveRWJD37t6Bo8HYbqTtQCmQbft7h4YuO17Dtoq9WgaypPo5GVK/BthlCxR2hOoJ3h
         yv9oZ3Zqvv/X/tmdABZ9pf/8QYpmzf43C2mCCtK5xbtkcwLyeRVOjVGQoRImTB7+B7yB
         AGH9g4WYmd5W9B8HAdWj/93fLAK2RopDtjub4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710868362; x=1711473162;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xy7T3S3KJOVX4N1q15sidzyEWWPC1Gkc2ooZN7wpRNo=;
        b=DU6VSPohGq33aFPJ0AAZmPYWGEm6xL6hCekgeAIFVT5lxmZXOuKmZGntqmRRGZFRhR
         aMIWNIGKrvFLwGGLd+wbD5NrrljLNW2ikmm1kWJaeBnGWdKv6wT0glWBUBsFsGDX9Lpj
         NjN6NSeAaR0uRQ/Al4PMrzESKHzrJYTywWufKrD6pV+qTAu7IXN9OsE+RnpvALSaqmbd
         hsUvlYnEbnZE4hjZbLzf2nf9mdmTN0b62Y2EpAJ0fR25t4R1ZdwLg2ocCqwrg8Btlang
         x2kvQeDSjFWgXse8i6pUPn1nwiURcMBfKoyIUd+RpbWFD6XAT5QSH9ZYwizNSPHFFS4y
         0Ofg==
X-Forwarded-Encrypted: i=1; AJvYcCWcB0S9hkIIHOuC1FE8iDrsNtj9Y6dSRTvXrZVBxMVjn9fs0/CFpd13APFZEAQMc5haLt+25oECiyGCeDaBX77A7ueB1i1HEukYeg==
X-Gm-Message-State: AOJu0YygcGlO4/mRdPHEyqycBMCuAiaVSfpK05aVt+AZA0trZ9GdxXHo
	o6K4xjPJxbHjv23Q5ygWBWyiGz+fFCc+mt6SlJL+DDVK5wKAWYWKhaiObFlXB9rKnkbA9OzPosw
	=
X-Google-Smtp-Source: AGHT+IGXk2Br1WUBr08sm3oNYoA74kXPPNVM2L1iiFnMOsAlC5Kql9O8Ul+yD73RNr4bD1bNFjHUGA==
X-Received: by 2002:ad4:5309:0:b0:691:6650:5e21 with SMTP id y9-20020ad45309000000b0069166505e21mr14281135qvr.33.1710868361962;
        Tue, 19 Mar 2024 10:12:41 -0700 (PDT)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com. [209.85.160.180])
        by smtp.gmail.com with ESMTPSA id t11-20020a05621421ab00b006960f8a6023sm3213170qvc.69.2024.03.19.10.12.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Mar 2024 10:12:41 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-428405a0205so13541cf.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 10:12:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUyP5Y9qXfYgrHxhLnpWgUpgQEmHy55EQ9Tmp7IAEfdCGUaQzBQ88vh3ThxIn4NaTxs46F5TP3tZbugls0fv2aGxMYrl7NJgP1lug==
X-Received: by 2002:ac8:590c:0:b0:430:b7d0:59d4 with SMTP id
 12-20020ac8590c000000b00430b7d059d4mr1682qty.19.1710868359392; Tue, 19 Mar
 2024 10:12:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319152926.1288-1-johan+linaro@kernel.org>
 <20240319152926.1288-4-johan+linaro@kernel.org> <CAD=FV=WqwY07fMV-TuO8QMRnk555BJYEysv4urcugsELufHr4A@mail.gmail.com>
 <Zfm_oFLNgPHqJKtG@hovoldconsulting.com>
In-Reply-To: <Zfm_oFLNgPHqJKtG@hovoldconsulting.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 Mar 2024 10:12:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UgCNmeWJiwWAGj_jm78eeTNoo-_bx7QrqLfyDMJwRNKA@mail.gmail.com>
Message-ID: <CAD=FV=UgCNmeWJiwWAGj_jm78eeTNoo-_bx7QrqLfyDMJwRNKA@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] Bluetooth: qca: fix device-address endianness
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Marcel Holtmann <marcel@holtmann.org>, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Johan Hedberg <johan.hedberg@gmail.com>, 
	Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, Matthias Kaehlcke <mka@chromium.org>, 
	Rocky Liao <quic_rjliao@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	linux-bluetooth@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Nikita Travkin <nikita@trvn.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Mar 19, 2024 at 9:38=E2=80=AFAM Johan Hovold <johan@kernel.org> wro=
te:
>
> On Tue, Mar 19, 2024 at 09:10:38AM -0700, Doug Anderson wrote:
> > On Tue, Mar 19, 2024 at 8:30=E2=80=AFAM Johan Hovold <johan+linaro@kern=
el.org> wrote:
> > >
> > > The WCN6855 firmware on the Lenovo ThinkPad X13s expects the Bluetoot=
h
> > > device address in big-endian order when setting it using the
> > > EDL_WRITE_BD_ADDR_OPCODE command.
> > >
> > > Presumably, this is the case for all non-ROME devices which all use t=
he
> > > EDL_WRITE_BD_ADDR_OPCODE command for this (unlike the ROME devices wh=
ich
> > > use a different command and expect the address in little-endian order=
).
> > >
> > > Reverse the little-endian address before setting it to make sure that
> > > the address can be configured using tools like btmgmt or using the
> > > 'local-bd-address' devicetree property.
> > >
> > > Note that this can potentially break systems with boot firmware which
> > > has started relying on the broken behaviour and is incorrectly passin=
g
> > > the address via devicetree in big-endian order.
> > >
> > > Fixes: 5c0a1001c8be ("Bluetooth: hci_qca: Add helper to set device ad=
dress")
> > > Cc: stable@vger.kernel.org      # 5.1
> > > Cc: Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
> > > Cc: Matthias Kaehlcke <mka@chromium.org>
> > > Tested-by: Nikita Travkin <nikita@trvn.ru> # sc7180
> > > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > > ---
> > >  drivers/bluetooth/btqca.c | 8 ++++++--
> > >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > Personally, I'd prefer it if you didn't break bisectability with your
> > series. As it is, if someone applies just the first 3 patches they'll
> > end up with broken Bluetooth.
>
> It doesn't break the build, but yes, the device address would be
> reversed for Trogdor machines for two commits and possible break any
> previous pairings. That's hardly something to worry about.
>
> So I consider this to be acceptable for sake of clarity, and especially
> since these patches will be coming in from separate trees anyway.

I guess I have a different opinion on the matter. I often end up
cherry-picking stuff to older branches and I generally assume that
it's relatively safe to pick the beginning of a series without picking
later patches because I assume everyone has a goal of bisectability.
This breaks that assumption. IMO splitting up the Qualcomm Bluetooth
patch into two patches doesn't help enough with clarity to justify.


> > IMO the order should be:
> > 1. Binding (currently patch #1)
> > 2. Trogdor dt patch, which won't hurt on its own (currently patch #5)
> > 3. Bluetooth subsystem patch handling the quirk (currently patch #2)
> > 4. Qualcomm change to fix the endianness and handle the quirk squashed
> > into 1 patch (currently patch #3 + #4)
> >
> > ..and the patch that changes the Qualcomm driver should make it
> > obvious that it depends on the trogdor DT patch in the change
> > description.
> >
> > With patches #3 and #4 combined, feel free to add my Reviewed-by tag
> > as both patches look fine to me.
>
> I don't think it's worth spending more time and effort on this issue
> (which should have been caught and fixed years ago) for this.

Sure, that's your opinion and if the BT folks agree with you then they
are free to land the patches without my Reviewed-by on them. ;-) Mine
is not a strong Nak but I feel strongly enough that I'd prefer not to
have my Reviewed-by added without the re-organization.

-Doug

