Return-Path: <devicetree+bounces-48795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD3E8738ED
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 15:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E6891C2135A
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 14:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E616133993;
	Wed,  6 Mar 2024 14:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rnGXafhB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382391332A6
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 14:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709735049; cv=none; b=Vadz54s4bwtM9wf24bGyXf1/mAAztZ0h8tB2CxGWpA1d1HQORqdSr5D/zTv0/s7JCFofJ7jgxRp97vMqh+4AENo9HuvkhbbooX9dvtq+UHUDEBChXNev5VYERatr/s0CNKvCX0cM/tyM2E9GIDpuqqiCy0GkvAVPbewMFNtqJWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709735049; c=relaxed/simple;
	bh=eZpMPKa6e7jU2jBVyiXD1uP0V9gbgVlt9tlhzywS1d0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Eiraw4aO0oNxCpiTl5/1Sbla8/wHq9a7dPiHT0dFyOyWQdPCWUAUFRaRYbaqHKSPVfvOi323vxDhuvV4yjDLXTPCoqWIYuimNizgyt7Pwp+O9RukY9BOaRs7/AE1ChMe1oiZX/aPbByw7tpFmwCdd2Lz4VPfTVq2fBVxe+QVHCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rnGXafhB; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-609241c2696so11262497b3.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 06:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709735046; x=1710339846; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eZpMPKa6e7jU2jBVyiXD1uP0V9gbgVlt9tlhzywS1d0=;
        b=rnGXafhBwgZ3X2A7OmLQqrx5w0KJmp1jM8ggJm/FkaIdToXtbz2JqG8vXRnDnliy+b
         4GUyy4fx2rXA5B9TDVbC4GMKv90EFetLO4Q7//m9Nbd/sS6UmB3ERiuF0sWRJeOKC3FN
         fZKZ9NF6V25uga2MmVAv9YxnyHy6yI5JtT7f5/1MwsZnwAA7PLgT8cMkNXOzqXQNaLfx
         nbkK9FxfEpi7ELYEluRBprSi+HwBwExs/+kq3UbPSHzXuHclY040y3rhuwH0vvXrd8LG
         c7fAUFPAFRyT3Rk46cpVA8u7ehx46UPn/vgbVDPKrbcEoS86/dL9c6hUbBLXp4/wCSgI
         nmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709735046; x=1710339846;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eZpMPKa6e7jU2jBVyiXD1uP0V9gbgVlt9tlhzywS1d0=;
        b=qXKbW6lg3WamjDuXbvuWbDWYi+gOUhRtC3SXZDH3+LE3lSvefP++gEgHAFjNDB8OjT
         UVqjBjXTVPtZ3CZe9MLZ1CUxG3PLO53+95NGIBCBOPP34c9kmuJwSs/1pqjMG2Ih/EZX
         KQzNSqLmnjMoyOdJQendBsb9+9zhGr8ftysnyFPuC0S2EjK7JEc3m+YWRWDLdE8p1OlL
         Fn7WpTjmM244oDN1TgUfUPE5bo4tDKvpEgtJKGztQ9eOudI7e62QNm0c4GaLzKHm8Y9D
         8mPVK3EC8idAe5XGnfxzaOLwwSMUe1rM6GcRIWvJyB7Pg0kSgR1Byw3lD7uyu1sxPVQe
         gptA==
X-Forwarded-Encrypted: i=1; AJvYcCXb0ODyujetHPv+XjNL2Tw9q2/tEWwrB7YT5oq99oXm0COtzrhWa06eKvm885YE9j/OrwaOoY0+2uokYPl08/Q1+gPf21g3k/7d2g==
X-Gm-Message-State: AOJu0Yw60Mpp0OfaRTDKyRhodTJ5cmraxzM4N/gdBbdu7X76Z1bg0//S
	sYCg1JMI4byB4AxYC6uGJ+Qm5HPMIJoFCOydn0XTJ58NLB3NMt7lr6+JxddWJTaZ9Ff6DSLKOz3
	sUKvIGYWSDAShO/3FbOyRYP44VQNl4FK9za2kag==
X-Google-Smtp-Source: AGHT+IFtPw7iiv+byEAcjoYdyvfBnMJrrGDYSOvTrCZtLuKlzx6HBrSrHHu558ENUxjrcYdwWnuD1V710Dta5mIdRvM=
X-Received: by 2002:a81:85c5:0:b0:609:9171:130d with SMTP id
 v188-20020a8185c5000000b006099171130dmr10635779ywf.19.1709735046114; Wed, 06
 Mar 2024 06:24:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306-wcn3990-firmware-path-v2-0-f89e98e71a57@linaro.org>
 <87plw7hgt4.fsf@kernel.org> <CAA8EJpr6fRfY5pNz6cXVTaNashqffy5_qLv9c35nkgjaDuSgyQ@mail.gmail.com>
 <87cys7hard.fsf@kernel.org>
In-Reply-To: <87cys7hard.fsf@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 16:23:55 +0200
Message-ID: <CAA8EJpowyEEbXQ4YK-GQ63wZSkJDy04qJsC2uuYCXt+aJ1HSOQ@mail.gmail.com>
Subject: Re: [PATCH RFC v2 0/4] wifi: ath10k: support board-specific firmware overrides
To: Kalle Valo <kvalo@kernel.org>
Cc: Jeff Johnson <quic_jjohnson@quicinc.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	ath10k@lists.infradead.org, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2024 at 13:15, Kalle Valo <kvalo@kernel.org> wrote:
>
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> writes:
>
> > On Wed, 6 Mar 2024 at 11:04, Kalle Valo <kvalo@kernel.org> wrote:
> >
> >>
> >> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> writes:
> >>
> >> > On WCN3990 platforms actual firmware, wlanmdsp.mbn, is sideloaded to the
> >> > modem DSP via the TQFTPserv. These MBN files are signed by the device
> >> > vendor, can only be used with the particular SoC or device.
> >> >
> >> > Unfortunately different firmware versions come with different features.
> >> > For example firmware for SDM845 doesn't use single-chan-info-per-channel
> >> > feature, while firmware for QRB2210 / QRB4210 requires that feature.
> >> >
> >> > Allow board DT files to override the subdir of the fw dir used to lookup
> >> > the firmware-N.bin file decribing corresponding WiFi firmware.
> >> > For example, adding firmware-name = "qrb4210" property will make the
> >> > driver look for the firmware-N.bin first in ath10k/WCN3990/hw1.0/qrb4210
> >> > directory and then fallback to the default ath10k/WCN3990/hw1.0 dir.
> >> >
> >> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >> > ---
> >> > Changes in v2:
> >> > - Fixed the comment about the default board name being NULL (Kalle)
> >> > - Expanded commit message to provide examples for firmware paths (Kalle)
> >> > - Added a note regarding board-2.bin to the commit message (Kalle)
> >> > - Link to v1:
> >> > https://lore.kernel.org/r/20240130-wcn3990-firmware-path-v1-0-826b93202964@linaro.org
> >>
> >> From my point of view this looks good now but let's see what others say.
> >> Is there a specific reason why you marked this as RFC still?
> >
> > No, I just forgot to remove it from the series settings, so you can
> > consider it as final.
>
> Good, so let's ignore the RFC label for this v2.
>
> > I had one minor question in my head (but that's mostly for patches 3
> > and 4): in linux-firmware we will have ath10k/WCN3990/hw1.0/qcm2290
> > and make qrb4210 as a symlink to it. Is that fine from your POV?
>
> Yes, I think using a symlink is a good idea.
>
> > Or should we use sensible device names (e.g. qcom-rb1)?
>
> I guess 'qcom-rb1' refers to 'Qualcomm Robotics RB1' board? In other
> words, the question is that should we use chipset specific names like
> 'qcm2290' or product based names like 'qcom-rb1'?
>
> That's a good question for which I don't have a good answer :) I'm not
> very familiar with WCN3990 hardware and SoCs to have a full picture of
> all this, especially how the firmware images are signed or what
> different firmware branches there are etc.

I checked Pixel-3 data, it has wlanmdsp.mbn signed by Google.

>
> To be on the safe side using 'qcom-rb1' makes sense but on the other
> hand that means we need to update linux-firmware (basically add a new
> symlink) everytime a new product is added. But are there going to be
> that many new ath10k based products?
>
> Using 'qcm2290' is easier because for a new product then there only
> needs to be a change in DTS and no need to change anything
> linux-firmware. But here the risk is that if there's actually two
> different ath10k firmware branches for 'qcm2290'. If that ever happens
> (I hope not) I guess we could solve that by adding new 'qcm2290-foo'
> directory?
>
> But I don't really know, thoughts?

After some thought, I'd suggest to follow approach taken by the rest
of qcom firmware:
put a default (accepted by non-secured hardware) firmware to SoC dir
and then put a vendor-specific firmware into subdir. If any of such
vendors appear, we might even implement structural fallback: first
look into sdm845/Google/blueline, then in sdm845/Google, sdm845/ and
finally just under hw1.0.

>
> --
> https://patchwork.kernel.org/project/linux-wireless/list/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


--
With best wishes
Dmitry

