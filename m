Return-Path: <devicetree+bounces-30297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 420168274B5
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 17:10:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD6E6B21F99
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 16:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 722F053819;
	Mon,  8 Jan 2024 16:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Hq+RPIwQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842B2537ED
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 16:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-4b745fa9671so194586e0c.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 08:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1704730213; x=1705335013; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8JlDxMUsqbGectUh8EIxrkNYT83uPUecoA8VWJ2a5gw=;
        b=Hq+RPIwQMKBmofXa4sCQcFnurU/20bnMoA1FCPLVo/bDHvLug6jbgMaDlIV2dRb3mW
         gjMDZPv9bwTfJDwMWRNiUUo44BwUaifWtG5m7eXz4Vf/2eAL6dCQDoC5lxayiP4yQtzG
         BOAxoxF+YyouDRkd37iWUwaWm0XNDOxj8ga3kLKnVN25bEkD1HL8qSYgzNlQC98/YUEV
         jp2k45begzs/Xl2Nqyi2qSYfw8bBeWXdUlcT9Ptuf5+qNq0to5Izqe+H72kJc+WtiCYK
         4cna/q7uJ8ZGF0T7PX9TflEqfQmLCfKntOWaFzthuLsDga8S8OrM5daOe7zIy7SNwHBL
         0dSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704730213; x=1705335013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8JlDxMUsqbGectUh8EIxrkNYT83uPUecoA8VWJ2a5gw=;
        b=IQ3dMcuV6l4ksHXlO25dV1O0faLDa18SvPQa/231Tj1z2kY6O2c8Z+cX9p1gW9/k/W
         G5GSNR1qqFcI4e6ViRng3LIqh2kThZ4pYiR8CgzM1vDwIY/83mCTSGQIOIEwAeE0kC1z
         EfnXSoCGKRTJaOIDc39V6uY9hXCCrS4iA5VyX9JVgOL4oukxFAnWwXYF9oSnmwZ6t+9s
         wmkQYEDVR/dn1nv8da17KrDF9uF+Iy/tDChqyOD0Yxn+PzbeuZrpxrQ6tALddooaA/2W
         DDKnX4sgZzAHGvLrAO0Pji8q6nYrZfCloIcoNVX7sKfI/ybDXwbWKK24aATEZInsv3hn
         ayZw==
X-Gm-Message-State: AOJu0YxFWBq+2Pb1lsQxRi7DrNIVJaaun+0MMZR/TfZHz7lezPHmzsoD
	mehhb7Opr2Ph0fx7hqRdy5EXmYDiCW3LxUULqO4lLrnn4pSizg==
X-Google-Smtp-Source: AGHT+IH2ohe7yImgJmTTE/Wko3CMU+zS3sQUItHcrSLheScuDG9+B0iL9MMp/HN2zRHrDOfHcElD6gfDz+jUZpk0DV8=
X-Received: by 2002:a05:6122:2513:b0:4b7:53cf:bec6 with SMTP id
 cl19-20020a056122251300b004b753cfbec6mr1204475vkb.0.1704730213337; Mon, 08
 Jan 2024 08:10:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240104130123.37115-1-brgl@bgdev.pl> <abefffc7-35d0-4c29-a892-48ec606acbf8@linaro.org>
In-Reply-To: <abefffc7-35d0-4c29-a892-48ec606acbf8@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 8 Jan 2024 17:10:02 +0100
Message-ID: <CAMRc=MdUgY2XScpe6FjyPoC0hxWcxZ5eaa+qKFjNUrin--updg@mail.gmail.com>
Subject: Re: [RFC 0/9] PCI: introduce the concept of power sequencing of PCIe devices
To: neil.armstrong@linaro.org
Cc: Kalle Valo <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Chris Morgan <macromorgan@hotmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Arnd Bergmann <arnd@arndb.de>, =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Peng Fan <peng.fan@nxp.com>, 
	Robert Richter <rrichter@amd.com>, Dan Williams <dan.j.williams@intel.com>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Terry Bowman <terry.bowman@amd.com>, 
	Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>, 
	=?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
	Huacai Chen <chenhuacai@kernel.org>, Alex Elder <elder@linaro.org>, 
	Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 8, 2024 at 4:24=E2=80=AFPM Neil Armstrong <neil.armstrong@linar=
o.org> wrote:
>
> Hi,
>
> On 04/01/2024 14:01, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > During last year's Linux Plumbers we had several discussions centered
> > around the need to power-on PCI devices before they can be detected on
> > the bus.
> >
> > The consensus during the conference was that we need to introduce a
> > class of "PCI slot drivers" that would handle the power-sequencing.
> >
> > After some additional brain-storming with Manivannan and the realizatio=
n
> > that the DT maintainers won't like adding any "fake" nodes not
> > representing actual devices, we decided to reuse the existing
> > infrastructure provided by the PCIe port drivers.
> >
> > The general idea is to instantiate platform devices for child nodes of
> > the PCIe port DT node. For those nodes for which a power-sequencing
> > driver exists, we bind it and let it probe. The driver then triggers a
> > rescan of the PCI bus with the aim of detecting the now powered-on
> > device. The device will consume the same DT node as the platform,
> > power-sequencing device. We use device links to make the latter become
> > the parent of the former.
> >
> > The main advantage of this approach is not modifying the existing DT in
> > any way and especially not adding any "fake" platform devices.
>
> I've successfully tested this serie for the WCN7850 Wifi/BT combo onboard=
 chip
> present on the SM8550-QRD and SM8650-QRD boards and it works just fine.
>
> Here's a branch with the wcn7850 vreg table added to the pwrseq driver,
> and the DT changes:
> https://git.codelinaro.org/neil.armstrong/linux/-/commits/topic/sm8x50/wc=
n7850-wifi-pwrseq/?ref_type=3Dheads

Thanks, I'll integrate them into v2.

Bart

