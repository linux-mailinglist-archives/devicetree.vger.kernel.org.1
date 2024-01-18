Return-Path: <devicetree+bounces-33049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E60831DAE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 17:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 91E3BB234BE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 16:38:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 209AD2C1B2;
	Thu, 18 Jan 2024 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="EbJEgVdG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919D02C19F
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 16:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705595913; cv=none; b=Qqf0TXnff8ZFTM/WiyKOm7pwQlIsESgy5J89+hzTW//fj76TWYT6WSaty4BA6r6lZsaf991n1D3cnPAe5m8ZrtNXK1A4EvGOerP2JYWwIjC5cFmyXRNvyqT2mGxikbuTnM290TcGgdkh/WYi3Dhi0BPdBKgqtmxEg/ZDlcOTn88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705595913; c=relaxed/simple;
	bh=tESaceZsQLu3ExMxs9ZefEewpbweG6jrY8i9oCAW0pY=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:From:
	 In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding; b=HmH1KecKppo71EUkNhpzCqx1k1Rir59i+CR5/cw++HJBXMD56aMCxp6x1iC53vWsQnq8Aar+mHY8ndj/n812fw4TzOU3/I1DNZapcXpruwbmR7lv6jxAGugOpIaJKdk2sLnsROnk0sLIYdydhGeDI+M5B4vSO4fLfD3xhuCIPGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=EbJEgVdG; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-467a7a376d5so2565573137.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 08:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1705595910; x=1706200710; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:references
         :mime-version:in-reply-to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lDcDvEBa0ZL9S0MNvY5nML1juKi6GtvSEwqNpJNBubQ=;
        b=EbJEgVdGh93UWOBZFuB5+c2sOdMhwGRvLBkRL5TWN2ud3Yod/8zfvP0D3p2xfazOhr
         nP/NzVct+n1wSudt5T2MLF7VMZfyZ8w6UqQ9/UTrSMVaYIkIlTk940gE09MTIUHxb2id
         EcS6nrRK2ykTIGxmrFxrjgNJ8PgkhtWco9FF04JFrQtyplY9+EuhiMKGqZ+o2qxkIKF/
         jmwqY2NlB+BpmANtSDN0ie+TLaIJgn6h/3iTyQYQGDBkMHcKP7XODnZyb7eK9HrnyuIw
         78MK/9zWdjpzv2ijFEPGJzJJThGu7v/1eJV/8USyw9aDRBv09JWaB0Y5dyXxSOIFvztg
         xi+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705595910; x=1706200710;
        h=content-transfer-encoding:cc:to:subject:message-id:date:references
         :mime-version:in-reply-to:from:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lDcDvEBa0ZL9S0MNvY5nML1juKi6GtvSEwqNpJNBubQ=;
        b=A0WZ1dcjCVZXg6hHYpmQ3Xj795Uqp39aAuvB411T3Kr5XumBUlFhN+q9/c8w7dQb2D
         wydnST/eb9kx+Fs62VysEzcLVMACOF+ZkPgti4ulqKverOKOWYHALINaYvBWzFvBQHV0
         uRyPX8ZYJfc1gSWfbGY8iIS9X6x1R4hKP4A0ujCYqO34eGAn9i6D+T6aeaQXDOTm3654
         j8ZcOCMI5xBAZLs1QfbAZTKPYCfBW7YOT0KHOoUR9EzJn13Iu6Dpah+TscmsD506V6AP
         uw150RsbTM5vm6a6Qy9KgxF3II53GjElOIpd5vjd33hxbmRrioi3JePjzpl2OMsuxoXS
         Lpnw==
X-Gm-Message-State: AOJu0YwXIfIsic1WVVEQYvlTvKdZd40ajCG6jXKJth7xIZIFfYtYJgca
	NLp96Os7uh+RKSwBLbur+4oavL0rgqrWChye8ddPr8vW29FO1ZkkDS1IhYrA9b1HszlbwHJAxqm
	daWcbzHloTOCtKv6x0FNzy4N8qWWCEcOPi5W58A==
X-Google-Smtp-Source: AGHT+IFSPL8gB6IrZ9EKth3bABJWxmPIrQSPD2/Da0JPMgsi4X69cecm94Y73oSYciD9hUyudoSJNj+KFSgVI5DkYDg=
X-Received: by 2002:a67:f24f:0:b0:468:67f:b067 with SMTP id
 y15-20020a67f24f000000b00468067fb067mr855033vsm.35.1705595910409; Thu, 18 Jan
 2024 08:38:30 -0800 (PST)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 18 Jan 2024 08:38:29 -0800
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <CAL_Jsq+0xb-otvjkbLqB8gNKadVqnigwGB_k+VGrj740Y6wxjg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240117160748.37682-1-brgl@bgdev.pl> <CAL_Jsq+0xb-otvjkbLqB8gNKadVqnigwGB_k+VGrj740Y6wxjg@mail.gmail.com>
Date: Thu, 18 Jan 2024 08:38:29 -0800
Message-ID: <CAMRc=MeV6hrPGkxjg4qnK6xH2_5LhjCLtijxEFJGiikW-P2OJg@mail.gmail.com>
Subject: Re: [PATCH 0/9] PCI: introduce the concept of power sequencing of
 PCIe devices
To: Rob Herring <robh+dt@kernel.org>
Cc: Kalle Valo <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Chris Morgan <macromorgan@hotmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Arnd Bergmann <arnd@arndb.de>, Neil Armstrong <neil.armstrong@linaro.org>, 
	=?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Peng Fan <peng.fan@nxp.com>, 
	Robert Richter <rrichter@amd.com>, Dan Williams <dan.j.williams@intel.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Terry Bowman <terry.bowman@amd.com>, 
	Lukas Wunner <lukas@wunner.de>, Huacai Chen <chenhuacai@kernel.org>, Alex Elder <elder@linaro.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Abel Vesa <abel.vesa@linaro.org>, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 18 Jan 2024 15:29:01 +0100, Rob Herring <robh+dt@kernel.org> said:
> On Wed, Jan 17, 2024 at 10:08=E2=80=AFAM Bartosz Golaszewski <brgl@bgdev.=
pl> wrote:
>

[snip]

>
>> The general idea is to instantiate platform devices for child nodes of
>> the PCIe port DT node. For those nodes for which a power-sequencing
>> driver exists, we bind it and let it probe. The driver then triggers a
>> rescan of the PCI bus with the aim of detecting the now powered-on
>> device. The device will consume the same DT node as the platform,
>> power-sequencing device. We use device links to make the latter become
>> the parent of the former.
>>
>> The main advantage of this approach is not modifying the existing DT in
>> any way and especially not adding any "fake" platform devices.
>
> Suspend/resume has been brought up already, but I disagree we can
> worry about that later unless there is and always will be no power
> sequencing during suspend/resume for all devices ever. Given the
> supplies aren't standard, it wouldn't surprise me if standard PCI
> power management isn't either. The primary issue I see with this
> design is we will end up with 2 drivers doing the same power
> sequencing: the platform driver for initial power on and the device's
> PCI driver for suspend/resume.
>
> Rob
>

I admit that I don't have any HW where I could test it but I my thinking wa=
s
that with the following relationships between the devices:

                  =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
                  =E2=94=82                     =E2=94=82
                  =E2=94=82   PCI Port device   =E2=94=82
                  =E2=94=82                     =E2=94=82
                  =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=AC=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
                      =E2=94=82           =E2=94=82
                      =E2=94=82           =E2=94=82
                      =E2=94=82           =E2=94=82
=E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=96=BC=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=90     =E2=94=82
=E2=94=82                           =E2=94=82     =E2=94=82
=E2=94=82   QCA6390 pwrseq device   =E2=94=82     =E2=94=82
=E2=94=82                           =E2=94=82     =E2=94=82
=E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=98     =E2=94=82
                      =E2=94=82           =E2=94=82
                      =E2=94=82           =E2=94=82
                      =E2=94=82           =E2=94=82
                =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=96=BC=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=96=BC=E2=94=80=E2=94=80=E2=94=80=E2=94=90
                =E2=94=82                     =E2=94=82
                =E2=94=82  ath11k_pci device  =E2=94=82
                =E2=94=82                     =E2=94=82
                =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98

the PM subsystem would handle the dependencies automatically and correctly
setup the sequence for suspend and resume. Also: the PCI ath11k driver does
not deal with the kind of resources that the power sequencing platform driv=
er
handles: regulators, GPIOs and clocks.

I agree, it would be useful to have a working case of handling suspend/resu=
me
with this code though.

Bartosz

