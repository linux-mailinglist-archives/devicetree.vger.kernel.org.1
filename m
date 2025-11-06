Return-Path: <devicetree+bounces-235579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA880C3A029
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 11:04:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 254AA426067
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 09:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1759530F930;
	Thu,  6 Nov 2025 09:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="yX+mw0YY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A29930F812
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 09:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762422802; cv=none; b=kah7gBsdL1PFF3RM2cvnxOuT5SA8aUcjtLot7gpQYoVoMzwuh/bi5zzhX5rsspUXLUTo5xfD/XzfdCWNjde1Lx3kgRr8MWjPgKRwsQq4xfA+jaG2Httd89nze/SJbPPijBjjY7L3/zQCnHPlCM2XCOzq3hoK2FEMv93uQ4HOQNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762422802; c=relaxed/simple;
	bh=N4gdAIjGWxxVJdRrTQ/TDeMEBNndKgzj5Pz6LBK5c3U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Nn3etM+IglkWO+jX/UqQT/j717laXIJ18ecd1HfMsEuwd3gG45XCOYhAegLzqhlgf5wJpUcSYzsJcZoOUWcI0s7qWdslJKSu5v24rQltKqLxi2HEWo9TtLvD0aFFb1M42DXg/VZMYLtPOBoixrvWeCHOmxxQ61vVGIE9bAgqsX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=yX+mw0YY; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-592ff1d80feso762614e87.2
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 01:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1762422797; x=1763027597; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I+8daSNDhd8lCt1K2wrPTUKlaXsPe2T2RLhKmIvnqVQ=;
        b=yX+mw0YYFPOTgc8GfGwpdbFkSZYXsAYZlefjKKw0sscN6FDJryqCuFep07C4O06unQ
         DXPMRtYbGnIGNrTveyvcY3AE3PDoe5ovfnrFZ5AvXBvo6iuwYvOBbqBhEZGvplm8RBPa
         pGj8pOvSqCh3MkoLvvJMkgSDCrbNH4j4OUoXUiePWNjVzLO0YPQEftrRWL5g7K1L7OAP
         uVrGSkr9mT/Rh1THyfiQQW+kpOWAVSLf8g7qTxb+g98VAD/Fd2Ij2Jp7KU+734GEzTYo
         3IuIv+Pno1zwBvu0Fm3ozggoWhT4+Bzwz9wQG7Ch80iT/76NlKh0X1OL9ryhYQGHImqs
         FdKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762422797; x=1763027597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I+8daSNDhd8lCt1K2wrPTUKlaXsPe2T2RLhKmIvnqVQ=;
        b=rqt4GlhEtYGQCku2CfE6VSsZ84PdSlm0kiff0cirt/pLsldlK/dHRI2W/LfA5+Clkd
         o0HME4QnlhJVxi59nwBXRe8GYhGcyaZcqSmsjo4lWwfhGfYnwpbenJDHX3P9Rrosgmhr
         2j9a2ZvpHnTNqQ41EAnBQ6yn2G7Ffh17U6z4pAI984uuZoXhO59n0tdboG3IUIIY4VNB
         baggTySmVL0pmuHNuKwSNcpZfb26hyedOtNtOhNIanTxW7mu9RGhi4prEVi/si26Q127
         ppyGtv6ocrLPetjf0ABjo5OTwKNKq/UyVY2fgJjXmAB4DyxTBlwg7TOy6AZJhZ6B8B6L
         kYaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsh0mBR6Wk2yMz6PiDrIOVLyivfX1P669bL8k0QB1EyyAneCj/Kj2SXqbBiwx+dOk9VPxQxFBqfPuO@vger.kernel.org
X-Gm-Message-State: AOJu0YwPFmT/yCcFN/W76qS0lNjtJTyped4a7U+MWriUX+LbuqnaJwsk
	4j6dZtLJ0mp3SoJqCBaGO8gmySfSfaBP5XztlD+wZDrezg1q07lHuE2ewlpL11qIZ0NWiU9YFHQ
	FP2k+SYx6iacf8KVUfsP+3/xswQijE+AqyZ/3xuxXHg==
X-Gm-Gg: ASbGnctKAXsf6+bINSvSB3I9MmubFeyqG1vt4DeQFp5QqDRj9Q7QAgErxZzcv3MwRq8
	h8TUcjuZcMJ0xAM9x+5VRVMvFP80sqY2Cg+gAhMciLJwgCoo9RL6tkPmUWoq7IYbK1DRYTv6Un5
	3n2UCcjvaRdXlifznPzJpoAtjM5DWeuAvSSFhj+k1wiIIk6Ps2xfHslQ9u21884K2sPfTZUdxNM
	paNGIQuZn9H9P9FrGo6efNX+F92Fk91aKKu5iXvc6LeM8QVw12JoxRb7HcNF65zDFWMSgqrIFxB
	VhACkAUW225FcOLDSwyQX51gsw==
X-Google-Smtp-Source: AGHT+IHz/5foCKSm3S9RfxluGx4ispy4/FNi/RkKhEaxDVuTO2V4C8WM/HWqTc8S86iGy7YIhRyz7B1MEYUoV8eOsQA=
X-Received: by 2002:a05:6512:61b3:b0:55f:701f:933 with SMTP id
 2adb3069b0e04-5943d7dd53emr1995534e87.41.1762422797277; Thu, 06 Nov 2025
 01:53:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105-pci-m2-v1-0-84b5f1f1e5e8@oss.qualcomm.com>
 <20251105-pci-m2-v1-4-84b5f1f1e5e8@oss.qualcomm.com> <CAMRc=McB4Zk8WuSPL=7+7kX4RJbdFBNReWZyiFnH8vfVx3DxAg@mail.gmail.com>
 <tc2r2mme4wtre7vb7xj22vz55pks4fbdabyl62mgutyhcjxnlx@qn4jvx3jqhie>
In-Reply-To: <tc2r2mme4wtre7vb7xj22vz55pks4fbdabyl62mgutyhcjxnlx@qn4jvx3jqhie>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 6 Nov 2025 10:53:05 +0100
X-Gm-Features: AWmQ_blH3MiJVFlUuNcpfEa7K-SsRQSsEcKjg_SUhi3TbJQz3x1oYieu6QgbyHI
Message-ID: <CAMRc=McDYL_B+hFtLekevtB2XpUkaMN1dsDNeefvR+ppj4whFg@mail.gmail.com>
Subject: Re: [PATCH 4/4] power: sequencing: Add the Power Sequencing driver
 for the PCIe M.2 connectors
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 6:46=E2=80=AFPM Manivannan Sadhasivam <mani@kernel.o=
rg> wrote:
>
> On Wed, Nov 05, 2025 at 05:21:46PM +0100, Bartosz Golaszewski wrote:
> > On Wed, Nov 5, 2025 at 10:17=E2=80=AFAM Manivannan Sadhasivam
> > <manivannan.sadhasivam@oss.qualcomm.com> wrote:
> > >
> > > This driver is used to control the PCIe M.2 connectors of different
> > > Mechanical Keys attached to the host machines and supporting differen=
t
> > > interfaces like PCIe/SATA, USB/UART etc...
> > >
> > > Currently, this driver supports only the Mechanical Key M connectors =
with
> > > PCIe interface. The driver also only supports driving the mandatory 3=
.3v
> > > and optional 1.8v power supplies. The optional signals of the Key M
> > > connectors are not currently supported.
> > >
> >
> > I'm assuming you followed some of the examples from the existing WCN
> > power sequencing driver. Not all of them are good or matching this
> > one, please see below.
> >
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualc=
omm.com>
> > > ---
> > >  MAINTAINERS                               |   7 ++
> > >  drivers/power/sequencing/Kconfig          |   8 ++
> > >  drivers/power/sequencing/Makefile         |   1 +
> > >  drivers/power/sequencing/pwrseq-pcie-m2.c | 138 ++++++++++++++++++++=
++++++++++
> > >  4 files changed, 154 insertions(+)
> > >
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 46126ce2f968e4f9260263f1574ee29f5ff0de1c..9b3f689d1f50c62afa377=
2a0c6802f99a98ac2de 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -20474,6 +20474,13 @@ F:     Documentation/driver-api/pwrseq.rst
> > >  F:     drivers/power/sequencing/
> > >  F:     include/linux/pwrseq/
> > >
> > > +PCIE M.2 POWER SEQUENCING
> > > +M:     Manivannan Sadhasivam <mani@kernel.org>
> > > +L:     linux-pci@vger.kernel.org
> > > +S:     Maintained
> > > +F:     Documentation/devicetree/bindings/connector/pcie-m2-m-connect=
or.yaml
> > > +F:     drivers/power/sequencing/pwrseq-pcie-m2.c
> > > +
> > >  POWER STATE COORDINATION INTERFACE (PSCI)
> > >  M:     Mark Rutland <mark.rutland@arm.com>
> > >  M:     Lorenzo Pieralisi <lpieralisi@kernel.org>
> > > diff --git a/drivers/power/sequencing/Kconfig b/drivers/power/sequenc=
ing/Kconfig
> > > index 280f92beb5d0ed524e67a28d1c5dd264bbd6c87e..f5fff84566ba463b55d3c=
d0c07db34c82f9f1e31 100644
> > > --- a/drivers/power/sequencing/Kconfig
> > > +++ b/drivers/power/sequencing/Kconfig
> > > @@ -35,4 +35,12 @@ config POWER_SEQUENCING_TH1520_GPU
> > >           GPU. This driver handles the complex clock and reset sequen=
ce
> > >           required to power on the Imagination BXM GPU on this platfo=
rm.
> > >
> > > +config POWER_SEQUENCING_PCIE_M2
> > > +       tristate "PCIe M.2 connector power sequencing driver"
> > > +       depends on OF || COMPILE_TEST
> >
> > The OF dependency in the WCN driver is there because we're doing some
> > phandle parsing and inspecting the parent-child relationships of the
> > associated nodes. It doesn't look like you need it here. On the other
> > hand, if you add more logic to the match() callback, this may come
> > into play.
> >
>
> For sure the driver will build fine for !CONFIG_OF, but it is not going t=
o work.
> And for the build coverage, COMPILE_TEST is already present. Maybe I was =
wrong
> to enforce functional dependency in Kconfig.
>

Given what you said below for the regulator API, let's keep it as is.

> > > +
> > > +static int pwrseq_pcie_m2_match(struct pwrseq_device *pwrseq,
> > > +                                struct device *dev)
> > > +{
> > > +       return PWRSEQ_MATCH_OK;
> >
> > Eek! That will match any device we check. I'm not sure this is what
> > you want. Looking at the binding example, I assume struct device *
> > here will be the endpoint? If so, you should resolve it and confirm
> > it's the one referenced from the connector node.
> >
>
> I was expecting this question, so returned PWRSEQ_MATCH_OK on purpose. I =
feel it
> is redundant to have match callback that just does link resolution and ma=
tches
> the of_node of the caller. Can't we have a default match callback that do=
es just
> this?
>

To be clear: the above is certainly wrong. Any power sequencing
consumer would match against this device.

To answer your question: sure, there is nothing wrong with having a
default match callback but first: I'd like to see more than one user
before we generalize it, and second: it still needs some logic. What
is the relationship between the firmware nodes of dev and pwrseq here
exactly?

> > > +       if (!ctx->pdata)
> > > +               return dev_err_probe(dev, -ENODEV,
> > > +                                    "Failed to obtain platform data\=
n");
> > > +
> > > +       ret =3D of_regulator_bulk_get_all(dev, dev_of_node(dev), &ctx=
->regs);
> >
> > Same here, you already have the device, no need to get the regulators
> > through the OF node. Just use devm_regulator_bulk_get()
> >
>
> I used it on purpose. This is the only regulator API that just gets all
> regulators defined in the devicetree node without complaining. Here, 3.3v=
 is
> mandatory and 1.8v is optional. There could be other supplies in the futu=
re and
> I do not want to hardcode the supply names in the driver. IMO, the driver=
 should
> trust devicetree to supply enough supplies and it should just consume the=
m
> instead of doing validation. I proposed to add a devm_ variant for this, =
but
> Mark was against that idea.
>

What was the reason for being against it? Anyway: in that case, would
you mind adding a comment containing what you wrote here so that
people don't mindlessly try convert it to the regular variant in the
future?

Bart

