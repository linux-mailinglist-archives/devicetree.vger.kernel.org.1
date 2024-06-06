Return-Path: <devicetree+bounces-73309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DD28FEF8F
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 16:56:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DBFC1C20BFA
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 14:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 313DD19AA6A;
	Thu,  6 Jun 2024 14:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Uqz4lGYx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C18B198846
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 14:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717684175; cv=none; b=LLppJp8rut6S7B3rXpMdj9ug1V0an2+8iZMCwCzfAlCV1tu4R4zoZyU16RzaqwDe9ohAthwVgt5RyjJ7BQIAVRseaYYbZcmD2/wBlJTR2nDi27P/VyZmpBnQKowQY5ST7Hh8B54NfD/04VleixrPQzzMgwdR/0gmcWFVQ5bztUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717684175; c=relaxed/simple;
	bh=GimoAQIvtE/omE2LWe9rkmcZVAyFh7hH8t8gFFgucFY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A2rUrBqpHVsupxP1eOFwJlgIId5aeSUeXX2oN4X3ZQR45FNBYCv9mSzUvhRb7xVFPu1/Adzkp9XWfPBWADUSSh7QEwDOFPFGH0K9ZQOh0vZLCx2Xf4F7j5nggFV1GdMtDcGT25q8PYqOik/hd0NAugXZXXCQCw/hbnRX31ij7kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Uqz4lGYx; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2eacd7e7b38so11516461fa.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 07:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1717684171; x=1718288971; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QWrHmrBVbxL2N+yjukzrB1xNIeLZkMy2NcMIU1+JPUg=;
        b=Uqz4lGYxdcOmil+vyxA0jJrA8cR4Acx4g2UO2V6EZYsl4TmmK6DDITf7fJ19Fyv0jy
         g2HD7ify7eEzsC2ZTQYfCj4yB4jVILVXjRLz+8sAXwo7c95uSQCqemDN97S6W2ka7ptz
         MLoi08vZkJM9OR36t5ZunIDtGQyTYRnabAeEH5iXOjQOg2SEy1mbYGBK09+LG0GlYxRl
         EUM/MFxFvrn5Yog8it2E+Qzp0Pub8E84clekP/wXhwfaJfR2a5UELn229IuXIjRLKDXe
         j75Gudw/i91V2bTlHgkapKt8EJ0Eqi6VeDcv/K5bFgi8CN891He2hQ0j5LwHKzio2aRd
         lO4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717684171; x=1718288971;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QWrHmrBVbxL2N+yjukzrB1xNIeLZkMy2NcMIU1+JPUg=;
        b=EIv1G7B5QdNJDevp4bpGpr8TQo4uiHShNMJo8mJUvjgZqNMQexWU1PLiTLJ2v92rMk
         ezwVw7jlKhnjAJQ/0/kzWVdLyfcFe0jTQz4Hq9hLt6ojY7vwYTY3ZMSFUSeuLEYcnzdi
         L6zVOkgzENA5UHQQPG5le8VyxfHn+Ctk5fG5zJRfdnkT05btHQG3oOEtnP70SvPwykx3
         jl9zi/NXhxWYsXnChagnC9wbczSv88VB2fyC5bvL4pU/0ps2PVlbPxuCF8V38yPvl2JE
         mZGDUxJHaya1ByVMs4lfDG1K1K6kMwS9bO7AyNf+llrtrY1DJE3JYFhyYLHZTn0GaiQc
         cdYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVihuW8xTkINQMM3DfxNmPOCYgnonVSWrFwKZ29vNC/RMs2UTNxpjXWf8E4dmHV3xySSPnbO5HWTw3Di/trwA/3GP3uLh6XQAn6tg==
X-Gm-Message-State: AOJu0YxfCuWJiQfp9WYmM4gJ4LmDaqJLBju0QNygDuGlPo+pDhvis1Za
	a7wGXgmr2mnwjDxBFPXR7CXPkoeGUX3Ue9Ib5Q3esOS3SetzJWKPqBjdAYd3ltiVvolG+9c19Vy
	WqQ+vQ5P3Pc9OfuzigK9m7N194kXeeKuYrr69Lg==
X-Google-Smtp-Source: AGHT+IE7dV5ZV/18QS1Cl24O5VDU/AyKd8svwpktd8Gq/yIywl49RVlO2hEBVV/ZBTiMOrhqd5gtrUxmBJP66OQy6UM=
X-Received: by 2002:a2e:a403:0:b0:2ea:903b:ca0e with SMTP id
 38308e7fff4ca-2eac7a986abmr42490961fa.52.1717684171575; Thu, 06 Jun 2024
 07:29:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240605122106.23818-1-brgl@bgdev.pl> <20240605122106.23818-2-brgl@bgdev.pl>
 <87h6e6qjuh.fsf@kernel.org> <CAMRc=MdiKxtnN+g92RUTXdOydaPV5M2u5iUdKyE2SNvDkdXAjg@mail.gmail.com>
 <871q5aqiei.fsf@kernel.org>
In-Reply-To: <871q5aqiei.fsf@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 6 Jun 2024 16:29:20 +0200
Message-ID: <CAMRc=McacZMP-51hjH+d8=PVe+Wgw4a8xWcv0sRPLJKL_gP=KQ@mail.gmail.com>
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

On Thu, Jun 6, 2024 at 4:02=E2=80=AFPM Kalle Valo <kvalo@kernel.org> wrote:
>
> Bartosz Golaszewski <brgl@bgdev.pl> writes:
>
> > On Thu, Jun 6, 2024 at 3:30=E2=80=AFPM Kalle Valo <kvalo@kernel.org> wr=
ote:
> >
> >>
> >> Bartosz Golaszewski <brgl@bgdev.pl> writes:
> >>
> >> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >> >
> >> > Add a PCI compatible for the ATH11K module on QCA6390 and describe t=
he
> >> > power inputs from the PMU that it consumes.
> >> >
> >> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> > Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >>
> >> [...]
> >>
> >> > +allOf:
> >> > +  - if:
> >> > +      properties:
> >> > +        compatible:
> >> > +          contains:
> >> > +            const: pci17cb,1101
> >> > +    then:
> >> > +      required:
> >> > +        - vddrfacmn-supply
> >> > +        - vddaon-supply
> >> > +        - vddwlcx-supply
> >> > +        - vddwlmx-supply
> >> > +        - vddrfa0p8-supply
> >> > +        - vddrfa1p2-supply
> >> > +        - vddrfa1p7-supply
> >> > +        - vddpcie0p9-supply
> >> > +        - vddpcie1p8-supply
> >>
> >> Not sure if we discussed this before, but based on this I understand
> >> that there can't be an DT entry for device pci17cb,1101 without all th=
e
> >> supply properties? But there are QCA6390 devices with PCI id 17cb:1101
> >> which do not need these supplies and already work. For example, my Del=
l
> >> XPS 13 x86 laptop is one. Or anyone who manually installs QCA6390 boar=
d
> >> to their PCI slot and some of them might want to use DT, for example
> >> setting qcom,ath11k-calibration-variant.
> >>
> >> This is not a blocker for me, just making sure that we are not breakin=
g
> >> any existing setups.
> >>
> >
> > If they are already powered up without the need for the PCI pwrctl
> > driver to do it, then they will work alright. Bindings don't affect
> > functionality.
>
> Sure, I'm not worried about functionality. I'm worried that if I
> there's, for example, an ARM based setup which uses DT and wants to use
> a similar QCA6390 board that I have, and set
> qcom,ath11k-calibration-variant in DT. In other words, I'm worried if
> you are looking at this only for Snapdragon family of boards?
>

No, what I'm looking at is the entire QCA6390 package. That means WLAN
*and* Bluetooth *and* the PMU that manages power.

If you're using the QCA6390 on a device-tree system then you should
probably model at least the WLAN node and the PMU and the problem with
supplies is fixed. But if you don't have the supplies, that's alright
for downstream.

> Again, I don't see this as a blocker. I just want to understand how this
> should work for all types of devices there are out there.
>
> > But if you have a QCA6390 then you have its PMU too and the bindings
> > model the real-world hardware.
> >
> > IOW: your laptop should be alright but the supplies are really there
> > which warrants adding them to the bindings.
>
> Sorry, not following here. Can you clarify your comment "the supplies
> are really there"? You mean inside the PCI board? But that's not visible
> to the kernel in anyway, the PCI board just works after I plug it in.
> It's like a regular PCI device. So I don't understand why that should be
> visible in DT, but I can very well be missing something.
>

I think you're thinking about some kind of detachable PCIe board with
this chipset on it. I refer to the QCA6390 chipset itself which is
also more than just PCI. The Bluetooth interface doesn't use PCI at
all. On the boards I'm working on, the chipset is just soldered to the
main board. If your detachable board "just works" then it must be
wired in a way that enables WLAN the moment it's plugged in but this
doesn't happen over PCI. The chipset has a power input and GPIOs to
enable each module.

Also: I doubt you need DT for your detachable board?

Bart

> --
> https://patchwork.kernel.org/project/linux-wireless/list/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpa=
tches

