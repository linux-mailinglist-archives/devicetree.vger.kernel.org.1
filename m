Return-Path: <devicetree+bounces-31089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4C3829E95
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 17:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42D6F1C212B2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 16:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A687B4CB55;
	Wed, 10 Jan 2024 16:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="O/O01Pjz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E11C4CDE1
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 16:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-4b716ccf47fso829671e0c.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 08:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1704904023; x=1705508823; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uB53QA0E7F+IhblD19yUURwvGBMy4pSNNv3aj7aRQ8=;
        b=O/O01PjzdBA0CMwQh6BnBjoqZZTOQ6ncSWNIHlFtZ+Gj745Ech4CipC6PSpbfurRcM
         Z0euVyZuW4FgFjufAW4VRUB//m7Z1C/QF5h5hwqoNJ4M6UcO+aDkPZ7gA8HvDiMdXTaS
         cCs2n/XO6jMVttyHaUkmW9xjJK0pLmhEipXuo/SUSNBWMBCcO901yZbZCrPIfO9dvS5C
         yh/278g8Exy//M0VWusCqml4q1whH1jtZC5qvlRYOhq7C7szWj3U0mp3q+I6pRriCbGr
         LFZ8wGhBrQo/1rmsXcLFVxKnzVroAW6kq5+T5TqMeMg+i0HGMlrKWIUnJQmv2KHKaxLE
         oTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704904023; x=1705508823;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7uB53QA0E7F+IhblD19yUURwvGBMy4pSNNv3aj7aRQ8=;
        b=FNZvYyxCZ0bAYzoUklY40PQDuDnz/u2FRDMxQqnkw7lVV9ApcCrbo6oJ30qKMtM4oa
         tGDiljIhOyKTnv0FrI4Dvd6+mJdEANv4o5aHEFhl8zH1DiPvVaDEB7wkWyNJ43lV+eyf
         cJFtwVaP2eA5PFFRII3jLcrAgdvnLrv48i42LdSADQW31adwuVptoyeiruJKwFauEtmI
         07xEq0Wy/ic40ojnAIA2WkaJyDbI5Hki3dJZUcRcr05nm8oCFD0LfMWGjtbgKJdLTUPu
         0L6QNqQnyPwzZOzExlzNEnu/MDD2i7l4sFI5gy0KkZzI++D07SMFn4TCCLuCSMHHWA0C
         8yew==
X-Gm-Message-State: AOJu0Yw08ZUKld65JnIhxLJN3xwdFtaJ4zKuliqVjytE/u6EH3XpWxgl
	Ssj5kdbkq/bzI2omLIdbSXjefHflAuFJ56tlEIo1BSS5+yNkHg==
X-Google-Smtp-Source: AGHT+IG/6gqAtxJZLTTUV4O4tvffOZMmP4epLvYL4XaS5IigP6LYO/TVheroyq15hW5HpD2+n4VCIuSdCWqd7g4P8XE=
X-Received: by 2002:a05:6122:270c:b0:4b6:aeb7:3f1d with SMTP id
 ej12-20020a056122270c00b004b6aeb73f1dmr611316vkb.9.1704904023230; Wed, 10 Jan
 2024 08:27:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240104130123.37115-1-brgl@bgdev.pl> <20240104130123.37115-4-brgl@bgdev.pl>
 <20240109144327.GA10780@wunner.de> <CAMRc=MdXO6c6asvRSn_Z8-oFS48hroT+dazGKB6WWY1_Zu7f1Q@mail.gmail.com>
 <20240110132853.GA6860@wunner.de>
In-Reply-To: <20240110132853.GA6860@wunner.de>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 10 Jan 2024 17:26:52 +0100
Message-ID: <CAMRc=MdBSAb_kEO2r7r-vwLuRAEv7pMODOMtZoCCRAd=zsQb_w@mail.gmail.com>
Subject: Re: [RFC 3/9] PCI/portdrv: create platform devices for child OF nodes
To: Lukas Wunner <lukas@wunner.de>
Cc: Kalle Valo <kvalo@kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
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

On Wed, Jan 10, 2024 at 2:28=E2=80=AFPM Lukas Wunner <lukas@wunner.de> wrot=
e:
>
> On Wed, Jan 10, 2024 at 01:55:18PM +0100, Bartosz Golaszewski wrote:
> > On Tue, Jan 9, 2024 at 3:43???PM Lukas Wunner <lukas@wunner.de> wrote:
> > > On Thu, Jan 04, 2024 at 02:01:17PM +0100, Bartosz Golaszewski wrote:
> > > > In order to introduce PCIe power-sequencing, we need to create plat=
form
> > > > devices for child nodes of the port driver node. They will get matc=
hed
> > > > against the pwrseq drivers (if one exists) and then the actuak PCIe
> > > > device will reuse the node once it's detected on the bus.
> > > [...]
> > > > --- a/drivers/pci/pcie/portdrv.c
> > > > +++ b/drivers/pci/pcie/portdrv.c
> > > > @@ -715,7 +716,7 @@ static int pcie_portdrv_probe(struct pci_dev *d=
ev,
> > > >               pm_runtime_allow(&dev->dev);
> > > >       }
> > > >
> > > > -     return 0;
> > > > +     return devm_of_platform_populate(&dev->dev);
> > > >  }
> > >
> > > I think this belongs in of_pci_make_dev_node(), portdrv seems totally
> > > the wrong place.  Note that you're currently calling this for RCECs
> > > (Root Complex Event Collectors) as well, which is likely not what
> > > you want.
> > >
> >
> > of_pci_make_dev_node() is only called when the relevant PCI device is
> > instantiated which doesn't happen until it's powered-up and scanned -
> > precisely the problem I'm trying to address.
>
> No, of_pci_make_dev_node() is called *before* device_attach(),
> i.e. before portdrv has even probed.  So it seems this should
> work perfectly well for your use case.
>

Seems like the following must be true but isn't in my case (from
pci_bus_add_device()):

    if (pci_is_bridge(dev))
        of_pci_make_dev_node(dev);

Shouldn't it evaluate to true for ports?

Bartosz

[snip]

