Return-Path: <devicetree+bounces-37900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 561FB846B97
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 10:12:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7F7951C20BD4
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 09:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF25768F2;
	Fri,  2 Feb 2024 09:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qNRU3N07"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D28876023
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 09:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706865116; cv=none; b=fgiAoPWbGdjRem9SFmNYjbf/P6xME6aF2w9vOcgEfYZNXT3bbjUlNrJLnn4oJJ1n4KW/EwoV/hTWRhRFnt+CtiuvtkBGaSD4exAnkEBWzUyS7zjPrx678GXQPTlHPeabf2E+HsmuR2UK9NAT7GZBT/SE8WHkbAnEIvuJ6Berzzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706865116; c=relaxed/simple;
	bh=qSQ+bNWGVvEkBLVF3tPN3A8E/f85Onwr28touQiCfuI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UyvUPu0+c+B3coUVIccDMYfA7/iRC8EKik725g3FbIt8OyMMt4Lsjn7vo6F2LqAlKMsN9qZNmtBTUWKHmUiIZMi/x52slLZAUO7vDLSzOF6xBsxHp+ZfV5iZYJtWCLktFdUWp2lgdAeyiwlnL49i1vtoNZ/QJCmVzc7E98RQ4jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qNRU3N07; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-4bdc96cfe21so616659e0c.0
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 01:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706865114; x=1707469914; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dROtYGaO3nv6BoiEV+4GwfEN1YhQwW+mG4GWEhZs0oA=;
        b=qNRU3N076BYgXMqQkhQfddl/4NkZpFFDsaGGcK/ix+mUG4MmsVnU6ljd0/G1aU3QZV
         vsUplKmLQoESXc7xnRItWYEhMCSABpYrV+8tocoaP69e+gu96Rxp16X8FTBDxB/N49/x
         COQ5ubbFbPjplDIIMXuCsNFyzrClbvZTTDbIatKPAE7itYTM0Xq9jC8ar4BBmlPgbExy
         AYxUvkafBj4fWrv0I/3pmhj2GIKvDaeIQD0YDdNT9DJD2qoaLAzQsX5If4Ra8rkhkUN8
         Py0FpZWIJzIDK9hH87DzjFBuC9fX3mQGcPqARQ1YptqnGtLXRjEoWiOZpMtQC7tEoWzI
         Y7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706865114; x=1707469914;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dROtYGaO3nv6BoiEV+4GwfEN1YhQwW+mG4GWEhZs0oA=;
        b=gs6Q1EAE9cWq8462dV88kGSA3WKLHvItwWKn7F6/U3WadWvDfQ2uR5yWWVgjqagRJk
         PaKJ/DQxDPdMuIZAjAzW/RpPlD1xm50g5WQ9mXhewNKsIFxvLr6dc/II9ZW1VqeWyAfS
         JTu6ooiLuocha5GVqnT3FH/jqhx4nR7JeoN4xpi7hTEDaw1ZxM496Z01qfCbg6vRUB6X
         QGHbLaDv67mxjY6Gycqv2Bd3cLeb32gFqsboPiWB859GQeEWjm5rp8xQAtadReL24GI0
         PtpoigDV7aoK28DSXgV/9zMUjpaRxCfXmR3fa2i5iBhssS0lQOOUk/nXNaql3QURYA8z
         muUg==
X-Gm-Message-State: AOJu0Yz5aPyS4tMFRP839fjQXf3TCRDyRzaezrjTE2bqTfw7vgR5a0bn
	3Hzn7/tqkLZPa/XM1UXUABALKvagLacoQ8w10KBkEL0IbFReWMWNMQtt838gjLBomN9HEV6Q3OI
	M07ramHUtl06vx9iK/uO/0OtgySLk57QCJzJBgQ==
X-Google-Smtp-Source: AGHT+IEggfox9TaYYkDnQjtRUkVx/JuLWurtpykmnrQAcWjFZM0K4sMwZm4WFlzv0kMWZ4fdz5ytS7lu2Zk7UijDVzk=
X-Received: by 2002:a05:6122:4a06:b0:4c0:79e:6653 with SMTP id
 ez6-20020a0561224a0600b004c0079e6653mr3051788vkb.0.1706865113872; Fri, 02 Feb
 2024 01:11:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240201155532.49707-1-brgl@bgdev.pl> <20240201155532.49707-9-brgl@bgdev.pl>
 <7tbhdkqpl4iuaxmc73pje2nbbkarxxpgmabc7j4q26d2rhzrv5@ltu6niel5eb4>
In-Reply-To: <7tbhdkqpl4iuaxmc73pje2nbbkarxxpgmabc7j4q26d2rhzrv5@ltu6niel5eb4>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 2 Feb 2024 10:11:42 +0100
Message-ID: <CAMRc=Md1oTrVMjZRH+Ux3JJKYeficKMYh+8V7ZA=Xz_X1hNd1g@mail.gmail.com>
Subject: Re: [RFC 8/9] PCI/pwrctl: add PCI power control core code
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marcel Holtmann <marcel@holtmann.org>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Alex Elder <elder@linaro.org>, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, 
	Abel Vesa <abel.vesa@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, Lukas Wunner <lukas@wunner.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
	linux-pci@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 2, 2024 at 4:53=E2=80=AFAM Bjorn Andersson <andersson@kernel.or=
g> wrote:
>

[snip]

> > +
> > +static int pci_pwrctl_notify(struct notifier_block *nb, unsigned long =
action,
> > +                          void *data)
> > +{
> > +     struct pci_pwrctl *pwrctl =3D container_of(nb, struct pci_pwrctl,=
 nb);
> > +     struct device *dev =3D data;
> > +
> > +     if (dev_fwnode(dev) !=3D dev_fwnode(pwrctl->dev))
> > +             return NOTIFY_DONE;
> > +
> > +     switch (action) {
> > +     case BUS_NOTIFY_ADD_DEVICE:
> > +             device_set_of_node_from_dev(dev, pwrctl->dev);
>
> What happens if the bootloader left the power on, and the
> of_platform_populate() got probe deferred because the pwrseq wasn't
> ready, so this happens after pci_set_of_node() has been called?
>
> (I think dev->of_node will be put, then get and then node_reused
> assigned...but I'm not entirely sure)

That's exactly what will happen and the end result will be the same.

>
> > +             break;
> > +     case BUS_NOTIFY_BOUND_DRIVER:
> > +             pwrctl->link =3D device_link_add(dev, pwrctl->dev,
> > +                                            DL_FLAG_AUTOREMOVE_CONSUME=
R);
> > +             if (!pwrctl->link)
> > +                     dev_err(pwrctl->dev, "Failed to add device link\n=
");
> > +             break;
> > +     case BUS_NOTIFY_UNBOUND_DRIVER:
> > +             device_link_del(pwrctl->link);
>
> This might however become a NULL-pointer dereference, if dev was bound
> to its driver before the pci_pwrctl_notify() was registered for the
> pwrctl and then the PCI device is unbound.
>
> This would also happen if device_link_add() failed when the PCI device
> was bound...
>

Yes, I'll address it.

> > +             break;
> > +     }
> > +
> > +     return NOTIFY_DONE;
> > +}
> > +
> > +int pci_pwrctl_device_enable(struct pci_pwrctl *pwrctl)
>
> This function doesn't really "enable the device", looking at the example
> driver it's rather "device_enabled" than "device_enable"...
>

I was also thinking about pci_pwrctl_device_ready() or
pci_pwrctl_device_prepared().

Bart

[snip!]

