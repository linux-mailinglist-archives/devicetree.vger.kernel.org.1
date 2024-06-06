Return-Path: <devicetree+bounces-73403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2580C8FF453
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 20:08:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89CE91F28454
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 18:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19009199391;
	Thu,  6 Jun 2024 18:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="c+EYy9P8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB1D199385
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 18:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717697307; cv=none; b=VYxvyMp4QBFV8jmFket1pKKS5TbNU9gzn2MvIkuo22ngi+Urvg+CJl1WFWDi3IIjguqt7dqLRB7TOHjI87r0JluOe8e/iflDP9zO04Oylot2IDHfbIR3G0JVd7O7I+Vz2Rd+EBdyVcVSI99wTa0oGU3AA7zfS9Pz30/nSZzd7GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717697307; c=relaxed/simple;
	bh=UuHyBaZqZ0ETTUmxyLtoNi6/bmTPX8y+z8SZWI0RROE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=B1Iyi6j25idtDulZDSSYfii3T/xa06J7ekkB+ZmPxCgGmGC91cLcEztsc4DV5vH2poqMUi5svOcGgYF0pfb6ssY/PatIMAC9qA+LOy0UNbK99U8wmn6SmYGKHW+Ocw7nu0zztwW9C8TrSPMCcceupyXP6IxH5FICN8BE6YH09lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=c+EYy9P8; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2eaae2a6dc1so25417871fa.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 11:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717697302; x=1718302102; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sFgymo/FZ1mBM/so/Gc56Q4p5/VyC1A8hH1xyBB/UOc=;
        b=c+EYy9P8lDgBwuHqaFbSJFM8bazHHvsGfXD77gqRgnk1nuCEjvbr4/4DUfeHbdezC5
         zN9p/Vt/gkfp7OXRE9tGUEAcH6ixzIHO/Txl3dlR3mFkDvWNoz45bhTpdqENC8aZiMlO
         rWnhTS1/O8p5mXBT5S+631P6fQ2UASsOYZlwhZFctAPj/FE6lI+X+iMP0Ju+BA7UiZwP
         9rcU9RBFzEad6CHbnZlOeB92q4q6tt18KxPsADLihXLTJkgiE+zkMgkNXNX2yfM23C56
         i/o/qnAuw8egCIsf0j8OwJ3K/TMKhaqqxBD6yJiGHlGylOXpwpJJDmAMFxvltgYZAM8+
         /1CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717697302; x=1718302102;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sFgymo/FZ1mBM/so/Gc56Q4p5/VyC1A8hH1xyBB/UOc=;
        b=I2lcoM9nI76IOOcld3RQFDTgWFPNSLWF3IlUCh5B11RKUTUZrnF0zxPZuV+W/sijB/
         arKHjJAiB6StuLT8n20/J4GVfMVvYMGGiVYG47as/i7n43u/BvaT1kPQWOYezkJJ0Zfy
         o7AdS6/FJxTXnI3Ehus3xC+4NuNC/nHvpkpD2ZT9rIwjIIEIfB7r6lJxsFkQ9yc3t5iv
         RNT0oMAFR95R48mz2BtaVwfs82YMo+jUZWC7tVHetMiEafrDF91s7ZmbuFFrm+NQ6N/G
         A7G8kRdXtscHOs6lQxi5CntD0f43mi0hzj1BXn17mG/05P5i2d1zx8wH6Do3RtyF8tXK
         PXzg==
X-Forwarded-Encrypted: i=1; AJvYcCW9hax2/bSBao7zDGAf+qHqykvx/ARlR+CD94k+sf/BFKqEtc0+m7XP0aydrhz509eS1ysjP/AfO5PJF4PJS+Htu4s/JvILMi9iMw==
X-Gm-Message-State: AOJu0YyGF4oOj9Kaj/9YiZ/il24Mev/Jj8NjxVaXwjFIlgDONn0vCtFI
	o45F6oeSOPnHGATZfwEEdTnhBdPdxHalykjSE9n/KElNfH/dvb/YXXkykWFf7JY13nyewLcSiET
	hYOos4ego6D/zEnQtL9FA4zA+LcgY46RlU50jLg==
X-Google-Smtp-Source: AGHT+IEvw2Du14s9LhbMiEG3oShp3mxTzmgORDkj+Yh8Hmemm1ygt2yqAchw1+JnWIg+p6IdwXlg7YFgaTVoOQb9ur4=
X-Received: by 2002:a2e:7d12:0:b0:2ea:8d54:452b with SMTP id
 38308e7fff4ca-2eadce3836cmr3770821fa.16.1717697302075; Thu, 06 Jun 2024
 11:08:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605122106.23818-1-brgl@bgdev.pl> <20240605122106.23818-2-brgl@bgdev.pl>
 <87h6e6qjuh.fsf@kernel.org> <CAMRc=MdiKxtnN+g92RUTXdOydaPV5M2u5iUdKyE2SNvDkdXAjg@mail.gmail.com>
 <871q5aqiei.fsf@kernel.org> <CAMRc=McacZMP-51hjH+d8=PVe+Wgw4a8xWcv0sRPLJKL_gP=KQ@mail.gmail.com>
 <87sexqoxm9.fsf@kernel.org>
In-Reply-To: <87sexqoxm9.fsf@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 6 Jun 2024 20:08:11 +0200
Message-ID: <CAMRc=McYAbhL5M1geYtf8LbgJG5x_+ZUFKXRuo7Vff_8ssNoUA@mail.gmail.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: net: wireless: qcom,ath11k: describe
 the ath11k on QCA6390
To: Kalle Valo <kvalo@kernel.org>
Cc: "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jeff Johnson <jjohnson@kernel.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	ath11k@lists.infradead.org, linux-kernel@vger.kernel.org, 
	ath12k@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 6, 2024 at 6:16=E2=80=AFPM Kalle Valo <kvalo@kernel.org> wrote:
>
> Bartosz Golaszewski <brgl@bgdev.pl> writes:
>
> > On Thu, Jun 6, 2024 at 4:02=E2=80=AFPM Kalle Valo <kvalo@kernel.org> wr=
ote:
> >
> >>
> >> Bartosz Golaszewski <brgl@bgdev.pl> writes:
> >>
> >> > On Thu, Jun 6, 2024 at 3:30=E2=80=AFPM Kalle Valo <kvalo@kernel.org>=
 wrote:
> >> >
> >> >>
> >> >> Bartosz Golaszewski <brgl@bgdev.pl> writes:
> >> >>
> >> >> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >> >> >
> >> >> > Add a PCI compatible for the ATH11K module on QCA6390 and describ=
e the
> >> >> > power inputs from the PMU that it consumes.
> >> >> >
> >> >> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> >> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.or=
g>
> >> >>
> >> >> [...]
> >> >>
> >> >> > +allOf:
> >> >> > +  - if:
> >> >> > +      properties:
> >> >> > +        compatible:
> >> >> > +          contains:
> >> >> > +            const: pci17cb,1101
> >> >> > +    then:
> >> >> > +      required:
> >> >> > +        - vddrfacmn-supply
> >> >> > +        - vddaon-supply
> >> >> > +        - vddwlcx-supply
> >> >> > +        - vddwlmx-supply
> >> >> > +        - vddrfa0p8-supply
> >> >> > +        - vddrfa1p2-supply
> >> >> > +        - vddrfa1p7-supply
> >> >> > +        - vddpcie0p9-supply
> >> >> > +        - vddpcie1p8-supply
> >> >>
> >> >> Not sure if we discussed this before, but based on this I understan=
d
> >> >> that there can't be an DT entry for device pci17cb,1101 without all=
 the
> >> >> supply properties? But there are QCA6390 devices with PCI id 17cb:1=
101
> >> >> which do not need these supplies and already work. For example, my =
Dell
> >> >> XPS 13 x86 laptop is one. Or anyone who manually installs QCA6390 b=
oard
> >> >> to their PCI slot and some of them might want to use DT, for exampl=
e
> >> >> setting qcom,ath11k-calibration-variant.
> >> >>
> >> >> This is not a blocker for me, just making sure that we are not brea=
king
> >> >> any existing setups.
> >> >>
> >> >
> >> > If they are already powered up without the need for the PCI pwrctl
> >> > driver to do it, then they will work alright. Bindings don't affect
> >> > functionality.
> >>
> >> Sure, I'm not worried about functionality. I'm worried that if I
> >> there's, for example, an ARM based setup which uses DT and wants to us=
e
> >> a similar QCA6390 board that I have, and set
> >> qcom,ath11k-calibration-variant in DT. In other words, I'm worried if
> >> you are looking at this only for Snapdragon family of boards?
> >>
> >
> > No, what I'm looking at is the entire QCA6390 package. That means WLAN
> > *and* Bluetooth *and* the PMU that manages power.
>
> I think we are just looking at this from different point of views. You
> are looking at a datasheet (most likely for a Snapdragon based system)
> and I'm looking what actual devices there are out in the field.
>
> > If you're using the QCA6390 on a device-tree system then you should
> > probably model at least the WLAN node and the PMU and the problem with
> > supplies is fixed.
>
> But why? If there are boards out there who don't need any of this why
> would they still need to model all this in DT?
>

Because this is what is there? The goal of the device tree is to
describe the hardware. The fact we didn't describe it before doesn't
make it correct.

> Based on the discussions I have heard only Snapdragon systems who
> require all this configuration you describe. Of course there can be
> other systems but I have not heard about those.
>

DT is not configuration, it is description of actual hardware. It
doesn't matter if Snapdragon systems are the only ones that actually
*require* this description to make WLAN/BT functional upstream. The
chipset would be the same on any PCIe board, it's just that the host
systems wouldn't need to take care with its power sequence. But for a
dynamic board like this, you don't need DT.

> > But if you don't have the supplies, that's alright for downstream.
>
> What do you mean downstream in this context?
>

I mean: if you wanted to upstream the DT sources, then they should
include the supplies AND the PMU node. But if you just want to make
the WLAN run on some vendor kernel then you don't need to think about
it, it will work.

> >> Again, I don't see this as a blocker. I just want to understand how th=
is
> >> should work for all types of devices there are out there.
> >>
> >> > But if you have a QCA6390 then you have its PMU too and the bindings
> >> > model the real-world hardware.
> >> >
> >> > IOW: your laptop should be alright but the supplies are really there
> >> > which warrants adding them to the bindings.
> >>
> >> Sorry, not following here. Can you clarify your comment "the supplies
> >> are really there"? You mean inside the PCI board? But that's not visib=
le
> >> to the kernel in anyway, the PCI board just works after I plug it in.
> >> It's like a regular PCI device. So I don't understand why that should =
be
> >> visible in DT, but I can very well be missing something.
> >>
> >
> > I think you're thinking about some kind of detachable PCIe board with
> > this chipset on it.
>
> Exactly, a lot of WLAN boards are like this.
>
> > I refer to the QCA6390 chipset itself which is also more than just
> > PCI. The Bluetooth interface doesn't use PCI at all. On the boards I'm
> > working on, the chipset is just soldered to the main board.
>
> And I guess you are looking at Snapdragon boards only?
>

But what is your point?

> > If your detachable board "just works" then it must be wired in a way
> > that enables WLAN the moment it's plugged in but this doesn't happen
> > over PCI. The chipset has a power input and GPIOs to enable each
> > module.
>
> I don't know how the boards are implemented but it could be so. But from
> host system point of view it's just a regular PCI device.
>

And you don't need DT anyway for this type of devices.

> > Also: I doubt you need DT for your detachable board?
>
> Sure, I don't need DT but that's not my point. My point is why require
> these supplies for _all_ devices having PCI id 17cb:1101 (ie. QCA6390)
> then clearly there are such devices which don't need it? To me that's
> bad design and, if I'm understanding correctly, prevents use of
> qcom,ath11k-calibration-variant property. To me having the supplies
> optional in DT is more approriate.
>

We require them because *they are physically there*.

Bart

> --
> https://patchwork.kernel.org/project/linux-wireless/list/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpa=
tches

