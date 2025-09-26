Return-Path: <devicetree+bounces-221917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A49ABA4166
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 16:18:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B220174E97
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 14:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 632771B87C9;
	Fri, 26 Sep 2025 14:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1uB84gY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3CD199E94
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758896294; cv=none; b=Lar/3z/BlxzFhdFx2c6chCa9HT/UdyopmCdIgCxO9NrUSCa6dnwXI1A9gHD4rDUjJbq0xxUmS2ZY4eNO7rjHnlxmE8t7mfiVk2zunIBP7uaiE3IYNAPAVLvLhB9eVvpEmXbyEW2T6ZkG1cm04TprBzwOhI4zG0uZkFwKKqW5ArE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758896294; c=relaxed/simple;
	bh=ovRK5c7wZT8POELugcGy2OQZLq61t1b/lN/zUBC5q+I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tRDticZVD4+LqGYqFEHGQ6+1HTsxIcKc1nLltji8J52lO1xhOlITVaLS7XSafnk3bf3lLdQesBawkqbF3IPBmqDrKbYE0+kXd286YWW94o12lSZzothWUjCyrJdsiGyDtjxmF8YQ4iJyTdOjgkaio37eqYcOJkWM3QrRVc/ucLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1uB84gY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D99FCC2BC86
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 14:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758896293;
	bh=ovRK5c7wZT8POELugcGy2OQZLq61t1b/lN/zUBC5q+I=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=q1uB84gYsGTyrhgMURnnoz/CFNt2sCxD4dWKUs3bJOVFnrYZ3TaIx9Rkn3j/Mg2M1
	 H50v2Na3Xzu2hEnVjEvrkf/ffT3I11EsoXUIS7MT+GufDf4my3ukfT4pbWN+oLZdwC
	 8P3YSgRwGDR9cjhLdY49zuVBoNQw4GgEwo5VI7uJ87stnyf2Feyfg/1vV0EEF000AD
	 efxUpkEIC2xgVKffpnlbAgD+8L8M78MLG7pOScwL3BrewpwZekvWWzp4lTIWo3Nvkd
	 1Irkaoim6AThnLjYOAgLN9OQ+bhDyTT3936Wudh3I6Fv/YsVXDoM56SqaAwdceJf7n
	 hfBL4Bdf/esEg==
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-62fa0653cd1so3326836a12.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:18:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWpsrw4eu3+Nk7DXM3iUHlLfYKYzC37fNB5PkgeM4O2fV9ltfC1Pw9d/Ys9N9D001/NwtrLWosm78Uv@vger.kernel.org
X-Gm-Message-State: AOJu0YzbvVjk4bZAMGlftTJGgGVpHTuGuI7wye4AEbrKB/iX18qfQQms
	3u7U+ci89CVP6IbncwXjcriLKi3EoedEq047B0H9UV2NRVi4wq78lPazZRASrOeKgeWs4eArkqD
	xPmc8T4RtOlALmnDKfurTBS1BxjcOlA==
X-Google-Smtp-Source: AGHT+IE5CRm41wAWa2CrClw2VSy83ReWu352foMXpDkXsta+N2WvoCGKuTDsi9qX3wkbts1/ms47yyeQSn9EBlyrs5E=
X-Received: by 2002:aa7:da45:0:b0:62f:97ab:6062 with SMTP id
 4fb4d7f45d1cf-6349fa942c5mr5046024a12.32.1758896292321; Fri, 26 Sep 2025
 07:18:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAL_JsqJMibSgsEFeUvHswVy6zsHMn7ZXkpbhch06oQxPY9NocQ@mail.gmail.com>
 <20250925191520.GA2175949@bhelgaas>
In-Reply-To: <20250925191520.GA2175949@bhelgaas>
From: Rob Herring <robh@kernel.org>
Date: Fri, 26 Sep 2025 09:18:00 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq++S5C+9xFsXBJyaRfS5uO_2c+VtCMKJfRg2_ERHyRAgQ@mail.gmail.com>
X-Gm-Features: AS18NWAk7P-VFFKYhli2Rr8XOPLqBnC-mvDYbm-Fwop3vyyqN_Q7TWJokqE9yg8
Message-ID: <CAL_Jsq++S5C+9xFsXBJyaRfS5uO_2c+VtCMKJfRg2_ERHyRAgQ@mail.gmail.com>
Subject: Re: [PATCH 2/3 v2] PCI: s32g: Add initial PCIe support (RC)
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vincent Guittot <vincent.guittot@linaro.org>, chester62515@gmail.com, mbrugger@suse.com, 
	ghennadi.procopciuc@oss.nxp.com, s32@nxp.com, bhelgaas@google.com, 
	jingoohan1@gmail.com, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	mani@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	Ionut.Vicovan@nxp.com, larisa.grigore@nxp.com, Ghennadi.Procopciuc@nxp.com, 
	ciprianmarian.costea@nxp.com, bogdan.hamciuc@nxp.com, Frank.li@nxp.com, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	cassel@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 25, 2025 at 2:15=E2=80=AFPM Bjorn Helgaas <helgaas@kernel.org> =
wrote:
>
> On Mon, Sep 22, 2025 at 09:52:21AM -0500, Rob Herring wrote:
> > On Fri, Sep 19, 2025 at 10:58=E2=80=AFAM Vincent Guittot
> > > Add initial support of the PCIe controller for S32G Soc family. Only
> > > host mode is supported.
>
> > > +++ b/drivers/pci/controller/dwc/Kconfig
> > > @@ -255,6 +255,17 @@ config PCIE_TEGRA194_EP
> > >           in order to enable device-specific features PCIE_TEGRA194_E=
P must be
> > >           selected. This uses the DesignWare core.
> > >
> > > +config PCIE_S32G
> > > +       bool "NXP S32G PCIe controller (host mode)"
> > > +       depends on ARCH_S32 || (OF && COMPILE_TEST)
> >
> > Why the OF dependency? All the DT API should be available with !CONFIG_=
OF.
>
> We have lots of similar OF dependencies.  Do we really want it to be
> possible to build a non-working driver in the !COMPILE_TEST case?

We do. IMO, they should all be removed. The only real purpose it
serves is hiding drivers on non-OF architectures. But the whole point
of COMPILE_TEST is to *not* hide things. (CONFIG_IOMEM dependencies
are similar and really only hide drivers on UML.)

>
> Maybe we should retain the OF dependency but only for !COMPILE_TEST,
> like this:
>
>   config PCIE_S32G
>          depends on (ARCH_S32 && OF) || COMPILE_TEST

That's completely redundant because ARCH_S32 is only enabled on ARM
which selects OF.

Rob

