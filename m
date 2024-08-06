Return-Path: <devicetree+bounces-91497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E849498C8
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 22:06:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 891881C217B8
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 20:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E8F0129A7E;
	Tue,  6 Aug 2024 20:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="viv2J3mj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615EC7E110
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 20:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722974776; cv=none; b=MVhrxmeJWCRFBxxIa/55X2bWPLYQaqYKJm8MuTxSnJfwrNBLmZmJjJ4mGEhipUZpsK6whj4rwhQ394LfUZX8FI4b4jKLHPL9sP26mcJUPfHENTETL3/OD5oD9EyMc2vMpUMMBDsGOizJR1azVZ1AixL1zlnWJmf/vvrOv+iudoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722974776; c=relaxed/simple;
	bh=yQ0Giu6ZLYVh/LdTs+T3ZUjf0YBIJKRB4yekea9RufM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F/u7CvbFWOU1hgEDtytpEmSG+DhVz8EgdnwbkiiE6qrfiiirzwG3SeK+DIKYjUvEMdYsy6VbuRR+/VEwp5c2dpzIurWWQJKoyqf74FH/yOf8YOaLyK+p/ET29arquS4YmwAxqBFVja0nmSQ+rIVTEd4RlBZW+rNSQYXCQ8Rcrho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=viv2J3mj; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ef7fef3ccfso11944421fa.3
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 13:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1722974772; x=1723579572; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qihk0Nf6L1RJUimkyU5cI4Ujv7ORPdsY3hk78Fc0UME=;
        b=viv2J3mjVRY4K7f6bzPA2MoZVIU7KxEo/mP9ZW5qFQK+qEealwlYiZlkMmEdnStn5s
         hjDlsQy65dwwsxYXz1wTrgoC6lLSiKbgp5fa4BDQjTVHTJNwVNrnSjX+6emwYQ4qLAy/
         zjfD0I+dqvXdoLmQXD526J3YWmGWW2fvpM0tM2bhH4m+CKczgx0kF+913V2Q+reELXYG
         JZ50ZMWFp0ce1BU2O8SorRKt18wOBARRbexO73nHfQNs8MDmeq+SH0DvZtnEUY8yYeSi
         hiW8unr1+CzKUb3JvIYRnWWWklle+AV7z5brSmtN4xmU+3Ny9XQHgue621aUXNJF88pA
         F6Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722974772; x=1723579572;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qihk0Nf6L1RJUimkyU5cI4Ujv7ORPdsY3hk78Fc0UME=;
        b=phkg+q9Vdxk+6ncYgAwk9j+oolPBuuUowyeS7886pRyfRcIZThprCivoD0ronMMSWC
         VLKsVHv3jaeQ6xZLlXP/EJG1CEWwNEwTz50ULHSZRsNwpwGPJbrMBNGNGZfpVJYBXO86
         nGJaRTzqOs806OEUFqX2MmLQCwh5en0JpZoIadkwliSfniMeq3ZGkEhw9frS8QhFuh4S
         XMUSwQKkUMdGtXybjKbWRK0Uq5HryBd5IYn/os5PkZJy8aeQR8Ow0aRt/LSCZhvGbOSh
         vOiKiaCNcaUWfIWNagwxSWGTAVANF/LCF7TJvlAXCG9RT7im60aHgVSZQ+MKWQE3zS4b
         zLiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCLuunHd+2kNlrn3Wo+onLIAYWfOzriER+BgX975gQq9xjlGZbwCGQ55GIpzP698X9HzADp4UlbtSuLSj8zT6fJ+zKdR4NcBv6dA==
X-Gm-Message-State: AOJu0YxM5bIFjeXDOmIsugBrikuiohUHXu9Wt3sNjI2vv/C5EIOFuozK
	ieCSza+92a5wTuIathyS4OSAz19GvRLwB0JLGmFH/zPuJfETp6GgSsJFZvJQ6mJuNNGSBXQa+nk
	YTsiiKhTcfZDe66m6O2g9ep5jVWZDlr9rH+rQSQ==
X-Google-Smtp-Source: AGHT+IFP7XQq6yFQZWCucBvitOmg1bLISrkcsDvqOEgO7fLkeug1MfJiguAhwxWA1ITFyBJJVj9DcL+Xi7dAcrBSaO0=
X-Received: by 2002:a05:6512:2389:b0:52f:cce4:51f3 with SMTP id
 2adb3069b0e04-530bb3bd8abmr11750075e87.44.1722974772149; Tue, 06 Aug 2024
 13:06:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240803-qps615-v2-4-9560b7c71369@quicinc.com> <20240806190702.GA72614@bhelgaas>
In-Reply-To: <20240806190702.GA72614@bhelgaas>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 6 Aug 2024 22:06:00 +0200
Message-ID: <CAMRc=Mc3J_CRHSsU1ZowJxrx6V3Uici6iuJtTfR63Wt3xLrqAg@mail.gmail.com>
Subject: Re: [PATCH v2 4/8] PCI: Change the parent to correctly represent pcie hierarchy
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, cros-qcom-dts-watchers@chromium.org, 
	Jingoo Han <jingoohan1@gmail.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, andersson@kernel.org, 
	quic_vbadigan@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 6, 2024 at 9:07=E2=80=AFPM Bjorn Helgaas <helgaas@kernel.org> w=
rote:
>
> On Sat, Aug 03, 2024 at 08:52:50AM +0530, Krishna chaitanya chundru wrote=
:
> > Currently the pwrctl driver is child of pci-pci bridge driver,
> > this will cause issue when suspend resume is introduced in the pwr
> > control driver. If the supply is removed to the endpoint in the
> > power control driver then the config space access by the
> > pci-pci bridge driver can cause issues like Timeouts.
>
> If "pci-pci bridge driver" refers to portdrv, please use "portdrv" to
> avoid confusion.
>
> Can you be a little more specific about config accesses by the bridge
> driver?  Generally portdrv wouldn't touch devices below the bridge.
> It sounds like you've tripped over something here, so you probably
> have an example of a timeout.
>
> s/pcie/PCIe/ in subject, although it'd be nice if the whole subject
> could be a little more specific.  I don't think pwrctl is directly
> part of the PCIe hierarchy, so I don't quite understand what you're
> saying there.
>
> > For this reason change the parent to controller from pci-pci bridge.
> >
> > Fixes: 4565d2652a37 ("PCI/pwrctl: Add PCI power control core code")
>
> Will need an ack from Bartosz, of course, since he added this.  Moved
> from cc: to to: list to make sure he sees this.
>

I would drop the Fixes tag altogether. This is a change in
implementation but it doesn't really fix a bug or regression.

Other than that: please feel free to add

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

I will also review the pwrctl part of the series shortly.

Bart

> > Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> > ---
> >  drivers/pci/bus.c         | 3 ++-
> >  drivers/pci/pwrctl/core.c | 9 ++++++++-
> >  2 files changed, 10 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
> > index 55c853686051..15b42f0f588f 100644
> > --- a/drivers/pci/bus.c
> > +++ b/drivers/pci/bus.c
> > @@ -328,6 +328,7 @@ void __weak pcibios_bus_add_device(struct pci_dev *=
pdev) { }
> >   */
> >  void pci_bus_add_device(struct pci_dev *dev)
> >  {
> > +     struct pci_host_bridge *host =3D pci_find_host_bridge(dev->bus);
> >       struct device_node *dn =3D dev->dev.of_node;
> >       int retval;
> >
> > @@ -352,7 +353,7 @@ void pci_bus_add_device(struct pci_dev *dev)
> >
> >       if (dev_of_node(&dev->dev) && pci_is_bridge(dev)) {
> >               retval =3D of_platform_populate(dev_of_node(&dev->dev), N=
ULL, NULL,
> > -                                           &dev->dev);
> > +                                           host->dev.parent);
>
> I'm not sure host->dev.parent is always valid.  There are
> pci_create_root_bus() callers that supply a NULL parent pointer.
>
> >               if (retval)
> >                       pci_err(dev, "failed to populate child OF nodes (=
%d)\n",
> >                               retval);
> > diff --git a/drivers/pci/pwrctl/core.c b/drivers/pci/pwrctl/core.c
> > index feca26ad2f6a..4f2ffa0b0a5f 100644
> > --- a/drivers/pci/pwrctl/core.c
> > +++ b/drivers/pci/pwrctl/core.c
> > @@ -11,6 +11,8 @@
> >  #include <linux/property.h>
> >  #include <linux/slab.h>
> >
> > +#include "../pci.h"
> > +
> >  static int pci_pwrctl_notify(struct notifier_block *nb, unsigned long =
action,
> >                            void *data)
> >  {
> > @@ -64,18 +66,23 @@ static int pci_pwrctl_notify(struct notifier_block =
*nb, unsigned long action,
> >   */
> >  int pci_pwrctl_device_set_ready(struct pci_pwrctl *pwrctl)
> >  {
> > +     struct pci_bus *bus;
> >       int ret;
> >
> >       if (!pwrctl->dev)
> >               return -ENODEV;
> >
> > +     bus =3D pci_find_bus(of_get_pci_domain_nr(pwrctl->dev->parent->of=
_node), 0);
> > +     if (!bus)
> > +             return -ENODEV;
> > +
> >       pwrctl->nb.notifier_call =3D pci_pwrctl_notify;
> >       ret =3D bus_register_notifier(&pci_bus_type, &pwrctl->nb);
> >       if (ret)
> >               return ret;
> >
> >       pci_lock_rescan_remove();
> > -     pci_rescan_bus(to_pci_dev(pwrctl->dev->parent)->bus);
> > +     pci_rescan_bus(bus);
> >       pci_unlock_rescan_remove();
> >
> >       return 0;
> >
> > --
> > 2.34.1
> >

