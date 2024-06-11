Return-Path: <devicetree+bounces-74751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C3890457D
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 22:06:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C825D1C23DCE
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 20:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D397142620;
	Tue, 11 Jun 2024 20:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="lDXiPaFK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE5B6FE16
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 20:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718136371; cv=none; b=qphsFyrtxOWgqsH0JZZZdvs0QDTMBsbNt42ntL2g2kfkWsLv5+sNQHku0cc9m0vuxNye9KlOLYQHJs3ZXiXWiCRkphckGfduWr2BHoppnJyWggFOSzTedoM+67gXtNx63o6qqSZ1LVm935CNY0qN4tSierzTg+FDkIXnBOQ/hwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718136371; c=relaxed/simple;
	bh=uHnbK8yZ9GQzrqt+GVlF51JCkKEzN8ZWdF3jcm+f9eQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P6RYxWIXacB+3YQWo7NcQn6QT6zxgOzo7n9P0MiwN7C2I/I+8meIWkQb5un7d0aBgDFtS0cd/gUObWm1n1tH9Ml6rqZYKzBlmeXtgAOCzFIhr35+3/43kwMXs69HQ5suR8oNGZSynvB1G5Uv9LD49Tppk8lprbdtSlEJJkWCHGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=lDXiPaFK; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52c7f7fdd24so1964740e87.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 13:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718136368; x=1718741168; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uHnbK8yZ9GQzrqt+GVlF51JCkKEzN8ZWdF3jcm+f9eQ=;
        b=lDXiPaFKuovlZYK3il23Wg5MewPD2fut+IdNs/xXt0jIgm2xmMmXE+y/fre4x5GqsK
         NCzmzTar6Jw99zD8UuilH6uG+Xrp5Ioy6EYHtsVSlTNDAarndn3Zo3iXaaUX1HOfANdK
         UC+Je0/6JHMDLlVvLVR9JUTNs7qMwjAJHnKonfbs8bi3SyVQxyVR45PWiIGjpqbyMK40
         l7ip7rsasFHt3X+04ngrpj+uIV5xcl0AROL14tuQcFiuT/J3dm+qMI/WtYbTgLh+PuNv
         Ec6B7rIKumfUJ0WwrMChJHnq2CMqtDgu+O8eJ3USHaI8+SL6lsZoxBG0jEcMBWvWiSO0
         YeGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718136368; x=1718741168;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uHnbK8yZ9GQzrqt+GVlF51JCkKEzN8ZWdF3jcm+f9eQ=;
        b=ZrbJo64iXk8sROX/hwwYnPFhg3TflekPulcic7SK0UPt84nkKSHeD1gIWaArT1IUGR
         a6rL6YKdsBy3+azfJshHLWBn5Nz0ZrbsJdsKqMhum1+oXnxXUm9Va52BEtiuDExU55H/
         l5CEvL+gt+pR0c5gY8n1zSq1OC91TozvtjlAEdrfvt82jFctokEAnRPAEmU85N35nEjZ
         M1bzz1LjzdZxqwLyvQwxRE+oRcOV3RME5gkEkQs0AOOm+Boi63evj5fHrsi2r1Z4WDb/
         uoJ4pAY2gMtBZC3mep4Mxyy8tgs6wvUw8jzvIYacD5yhamE4YJGWs4cYGC356KiF//+V
         45uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUv+prfqmiNJ4zA+gmb370lcILSVADLmNencauR/ewBfHAfV3NExiJ3Kyp/jSG7aR5uP8biJpHeRmsKSjsapf3mCGCZ7jf+cdWk1w==
X-Gm-Message-State: AOJu0YwKsEgZvl6LsT5dKlgCQcN0WvbuBuWXZKV1eXAvzxHb9rrbBWVo
	N42b1WfhbSvP9M3K1NXij//TmSPzzjC3bqFsfEaXzEQ78yDaGUDztwu6Px4ZAALD9vt9IIAO+kK
	cCdR8tT+k386r72JSNiEFewfstU1yFqhKq4SJ1w==
X-Google-Smtp-Source: AGHT+IHo2kDMYmvh1Fiuq6Vp0TjSyMZ5wd2GkAYNc1OHzZu/lwJY6vNBizdeJ06QMzbe9upl8ARaKOiKysYnJKD3dmc=
X-Received: by 2002:ac2:5148:0:b0:52c:5f12:5317 with SMTP id
 2adb3069b0e04-52c5f1256a6mr5730643e87.44.1718136368542; Tue, 11 Jun 2024
 13:06:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605122106.23818-1-brgl@bgdev.pl> <20240605122106.23818-2-brgl@bgdev.pl>
 <87h6e6qjuh.fsf@kernel.org> <CAMRc=MdiKxtnN+g92RUTXdOydaPV5M2u5iUdKyE2SNvDkdXAjg@mail.gmail.com>
 <871q5aqiei.fsf@kernel.org> <CAMRc=McacZMP-51hjH+d8=PVe+Wgw4a8xWcv0sRPLJKL_gP=KQ@mail.gmail.com>
 <87sexqoxm9.fsf@kernel.org> <CAMRc=McYAbhL5M1geYtf8LbgJG5x_+ZUFKXRuo7Vff_8ssNoUA@mail.gmail.com>
 <8db01c97-1cb2-4a86-abff-55176449e264@kernel.org>
In-Reply-To: <8db01c97-1cb2-4a86-abff-55176449e264@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 11 Jun 2024 22:05:57 +0200
Message-ID: <CAMRc=Mer2HpuBLGiabNtSgSRduzrrtT1AtGoDXeHgYqavWXdrA@mail.gmail.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: net: wireless: qcom,ath11k: describe
 the ath11k on QCA6390
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Kalle Valo <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	ath12k@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 7, 2024 at 8:40=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> Kalle,
> All of the devices out there need these supplies, but they are sometimes
> provided by generic PCI supply and on-board regulators. Basically your
> PCI adapter is not the same as QCA6390 chip on Snapdragon board.
>
>
> >
> >> Based on the discussions I have heard only Snapdragon systems who
> >> require all this configuration you describe. Of course there can be
> >> other systems but I have not heard about those.
> >>
> >
> > DT is not configuration, it is description of actual hardware. It
> > doesn't matter if Snapdragon systems are the only ones that actually
> > *require* this description to make WLAN/BT functional upstream. The
> > chipset would be the same on any PCIe board, it's just that the host
> > systems wouldn't need to take care with its power sequence. But for a
> > dynamic board like this, you don't need DT.
> >
>
> Correct.
>
> ...
>
> >
> >>> If your detachable board "just works" then it must be wired in a way
> >>> that enables WLAN the moment it's plugged in but this doesn't happen
> >>> over PCI. The chipset has a power input and GPIOs to enable each
> >>> module.
> >>
> >> I don't know how the boards are implemented but it could be so. But fr=
om
> >> host system point of view it's just a regular PCI device.
> >>
> >
> > And you don't need DT anyway for this type of devices.
>
> Detechable board, like PCI adapter, derives these supplies from generic
> PCI whatever-3.3v through additional regulators. All these supplies are
> there - on the board.
>
> >
> >>> Also: I doubt you need DT for your detachable board?
> >>
> >> Sure, I don't need DT but that's not my point. My point is why require
> >> these supplies for _all_ devices having PCI id 17cb:1101 (ie. QCA6390)
> >> then clearly there are such devices which don't need it? To me that's
> >> bad design and, if I'm understanding correctly, prevents use of
> >> qcom,ath11k-calibration-variant property. To me having the supplies
> >> optional in DT is more approriate.
> >>
> >
> > We require them because *they are physically there*.
>
> I understand that for all known DT QCA6390 hardware, the supplies should
> be provided thus they should be required. If in the future we have
> different design or we represent some pluggable PCI card, then:
> 1. Probably that PCI card does not need power sequencing, thus no DT
> description,
> 2. If still needs power sequencing, you can always amend bindings and
> un-require the supplies.
>
>
> Best regards,
> Krzysztof
>

Kalle, does the above answer your questions? Are these bindings good to go?

Bart

