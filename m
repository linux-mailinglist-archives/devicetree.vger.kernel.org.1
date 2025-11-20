Return-Path: <devicetree+bounces-240542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9150DC72990
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 08:30:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3E5814EB092
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 07:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FF153054DF;
	Thu, 20 Nov 2025 07:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lrXMQR4N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B344304BBD
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 07:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763623546; cv=none; b=DRAwbkhgYj33e5CPILCYTHqwE72cobTe+JzzZ4yMg7o3cFKM3SUnbhFWqzNgR/zVkIWMBaTnPIERVauaQKW9PEqxOFDRwEK0Oox0GeA5An8r4Y04EJH8PZscqaAcpMXvVyq0SRsOzr13FDkhZochx1//BDN/eEMrR5JHg52eP6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763623546; c=relaxed/simple;
	bh=0BBRzQKaztjou1FCEm1RF9AHtnEOkfEB1zV8sHnTWIM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bxt1nv+fIT8P0JPZZXuHtQRVJeuO/TJKQ7zYhHc+DaB6U7xvMMOTmjULW2byiOiuetaRzZ3oup8O1lyGwuyAUxj5iSaC9UAgG2wBgR8VXHCGHLVG/UjIoIDX5qQYJltZC8idQ1ghHXy9B/8VrrATXhrc+Mjxph6Oj9ToTjVjQcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lrXMQR4N; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-6431b0a1948so898453a12.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 23:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763623541; x=1764228341; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oiy3MCCnIY+ubzrtfzu9IxcBIzwVrHngBHadvGb6qFA=;
        b=lrXMQR4NtTqiw/qpi/NXGvr72xvHw2SY9NLMmzj/mrHa2zGI7xZbjybcyIcwzDVZwH
         cDN6NlMnrCjoJDazuRaaRI+ZgiGFsSDcn1NKypDtxjtV27/OefQC17G7ir7TI26IPaJV
         Di3q/GcaEo0pXeZWBeGnsCHdI3LUrXazvp1uLXas5cz8gy9YlVBCceO/d/t198eSuZ8t
         NtUPnbQ/rWn0hulyKyxA2Dec3iKjHZLIllf6JlA7M+EBm1KVT/3BmfQIRYD8/DNXOZGy
         YLkC6JhGbiKCehhwSjuLIwrXgkC8mo57FEX3ixxcmV0Mco6HPa84S1S2NmdyH9Fe39A8
         C6VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763623541; x=1764228341;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oiy3MCCnIY+ubzrtfzu9IxcBIzwVrHngBHadvGb6qFA=;
        b=CsH+ysKFK9lcY1p2K9Mpk83Koz5IDkhLTe8PDpo4RA0bXtKp9a0DChknDOtRovojYF
         47W9Rh/TYk7vYRbvk8NhrE4tBfveDqYCm3228KSvDPK6QdeWG3y++xK0D5SEb4PlszY7
         dNHEzJcBfs5O/QWkui9grpE4rmtIMI3wUAqOmULhonCnDRufPuDvFywPa+fD795Fhh80
         y0T0c6V6HMxW58oeMtJf1OFxM1Xbkg92GeLFtmupJWP+HWqDiMd0rkm0F5AbR2xsZZs+
         L+RogcOIkKu1BMDm9VR+Yx7y9jBadQX2E330nJotiFRDSH6T+p+vafUSNfU3wuoXhqF4
         S/Tg==
X-Forwarded-Encrypted: i=1; AJvYcCXi6gh4s/QJJE1cXS279z3cFqHCGz2nhafr6Ne/+g8yQpw6PeFKxy1Lno3ThggFjKGDFAOPP6ifyJ7j@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzd7/Gtx9AyXKnTlYZqr/Yq/d4qIGcHDZsW4+YK1qrAYWikV7r
	OpTrsHm1tH8oAglFxxk0G6bVHt8fgnA92mVbNSnJyZvxNNgkx6CycIH96UmSGJskkK2VA421AaS
	Fht53xkQIrh/jTL0krZ1JARP3vsARGdoJBZNWGV2tSA==
X-Gm-Gg: ASbGncv2HdhGrue7THMEKgmpTyDQtHDStwqW4CbSPW7YPXeadsBl3X2TXC9V5bfihay
	BGANbZe4Kl9kKolwp29BzcAox2YJ3HpeKahPMJSaZ8rEaPrB36OStkjzBthi6BQg75boFZB9d/r
	vEcGIXrzjvGGnqDdu7QDjfVdoBQKCFgYQXEVEeDHZkriryCmfW3W0jtT2aFLtNgihqJPXvG62Ln
	HBjpRReRlH4gO9fNyPHvG61X3EJc9cAxnxT75tasQB1FWrkBjYG+WKHs+5Jma8rsGm7J6YWROWp
	3FMGLF6uAXaUg0M4Br8zv0l+
X-Google-Smtp-Source: AGHT+IFAQcf4dBYNDEi3TsDPhv8jstrKlO8aZK1F8IULbrCW1q+UfabVpHtWcfiu1HcoO4gSrjXgCyaW6ykmeZfOoLs=
X-Received: by 2002:a05:6402:278d:b0:641:62bb:9c0 with SMTP id
 4fb4d7f45d1cf-645364652a8mr2343347a12.33.1763623541321; Wed, 19 Nov 2025
 23:25:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118160238.26265-1-vincent.guittot@linaro.org>
 <20251118160238.26265-4-vincent.guittot@linaro.org> <aRymVtJKtcydh3g5@lizhi-Precision-Tower-5810>
In-Reply-To: <aRymVtJKtcydh3g5@lizhi-Precision-Tower-5810>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 20 Nov 2025 08:25:30 +0100
X-Gm-Features: AWmQ_bms-sMetVoc9nOrTa8Xt52hfzy9ouUOYIu45ml1BzNFdlb7_KVvCi0dBPc
Message-ID: <CAKfTPtAhQJK1ezv3JF6FBK5ZBBWCWM0ADeg0SG2EG_2JjfzaMA@mail.gmail.com>
Subject: Re: [PATCH 3/4 v5] PCI: s32g: Add initial PCIe support (RC)
To: Frank Li <Frank.li@nxp.com>
Cc: chester62515@gmail.com, mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com, 
	s32@nxp.com, bhelgaas@google.com, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Ionut.Vicovan@nxp.com, larisa.grigore@nxp.com, 
	Ghennadi.Procopciuc@nxp.com, ciprianmarian.costea@nxp.com, 
	bogdan.hamciuc@nxp.com, linux-arm-kernel@lists.infradead.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, cassel@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 18 Nov 2025 at 18:01, Frank Li <Frank.li@nxp.com> wrote:
>
> On Tue, Nov 18, 2025 at 05:02:37PM +0100, Vincent Guittot wrote:
> > Add initial support of the PCIe controller for S32G Soc family. Only
> > host mode is supported.
> >
> > Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
> > Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
> > Co-developed-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
> > Signed-off-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
> > Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
> > Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  drivers/pci/controller/dwc/Kconfig            |  10 +
> >  drivers/pci/controller/dwc/Makefile           |   1 +
> >  .../pci/controller/dwc/pcie-nxp-s32g-regs.h   |  21 +
> >  drivers/pci/controller/dwc/pcie-nxp-s32g.c    | 391 ++++++++++++++++++
> >  4 files changed, 423 insertions(+)
> >  create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g-regs.h
> >  create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g.c
> >
> > diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> > index 349d4657393c..e276956c3fca 100644
> > --- a/drivers/pci/controller/dwc/Kconfig
> > +++ b/drivers/pci/controller/dwc/Kconfig
> > @@ -256,6 +256,16 @@ config PCIE_TEGRA194_EP
> >         in order to enable device-specific features PCIE_TEGRA194_EP must be
> >         selected. This uses the DesignWare core.
> >
> ...
> > +
> > +static int s32g_pcie_init(struct device *dev, struct s32g_pcie *s32g_pp)
> > +{
> > +     int ret;
> > +
> > +     s32g_pcie_disable_ltssm(s32g_pp);
> > +
> > +     ret = s32g_init_pcie_phy(s32g_pp);
> > +     if (ret)
> > +             return ret;
>
> Small nit:
>
> return s32g_init_pcie_phy(s32g_pp);

Yes

>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>

Thanks

> > +
> > +     return 0;
> > +}
> > +
> > +static void s32g_pcie_deinit(struct s32g_pcie *s32g_pp)
> > +{
> > +     s32g_pcie_disable_ltssm(s32g_pp);
> > +
> > +     s32g_deinit_pcie_phy(s32g_pp);
> > +}
> > +
> ...
> > +
> > +module_platform_driver(s32g_pcie_driver);
> > +
> > +MODULE_AUTHOR("Ionut Vicovan <Ionut.Vicovan@nxp.com>");
> > +MODULE_DESCRIPTION("NXP S32G PCIe Host controller driver");
> > +MODULE_LICENSE("GPL");
> > --
> > 2.43.0
> >

