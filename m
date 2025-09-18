Return-Path: <devicetree+bounces-218775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 411B7B83EC5
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:54:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4D864818F5
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 09:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BD9C2D8DCF;
	Thu, 18 Sep 2025 09:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WSIodTy7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A59A280A5A
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758189282; cv=none; b=m8kmuGX+pCXzvp3Axv0fuHcJf3BcAazUs7GoGCl1q0p9jOAu3owWAS3wAQPeD7YiutkYy1hRc4SYvHtUevDdnMB2kwxUj0kfqfYpuuKq7/KOKIRwhNWi6r//WXdvXCzW24lLUkL7sJKlob3ZAAxvA0Y4xZb60FsfPeyY6Vhy1KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758189282; c=relaxed/simple;
	bh=HvpH/we1i8j6YDiaciJy38Drhc0hF4JJPv6YA9NqLZQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=enGmXhjInbry05gTSTwU8eNt+Vz2IHMfoO/PegYdTcHJIMrPlNaA6ts0/1jyLbLPvFdFZcrXcPufQPzCjP19sgmQzpdz40DId4Oa9dgSmZEip43vxMs4GhPkgIsf8bBkqW8SbMwnKva5h3QOQn0wbOJsPnjWyzVC4t5J+bC5S+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WSIodTy7; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-628f29d68ecso1370191a12.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758189279; x=1758794079; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3uhf87DrC/GqYd1AzAwWRkEB5wkIeXkNvqHSQcwwy4Q=;
        b=WSIodTy7iljYjesgsd6VPAkcROQzsgZ21/VGGHsoiRHyTWb5zCr1Iyfj+hfhTF8jZU
         8YIyVi8SXNvVO9xjIzBkfaOCiOAe600uuckRekGwOAiOtM/RqjWimK5929zZmDek7lfc
         iRn3vg5RsqZj3XPT2D9oQ8oZ0saHPhxL+LKdJ1EmdDOvRztrynueKcLBkec/9kAUVflY
         5Ns1DtCvxmK2PiVD/7oyDuo3gd+4bmJqQCcnouqYoekAvQ6/1nWJAXSru6KXgrLbLIEC
         FrFu9FyHwpqGrM2XEOvfNCTEQqLL6TOd6aep1pKJVOw1L0UG2UyRjg2I8ZP4MI0fjQWT
         ly6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758189279; x=1758794079;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3uhf87DrC/GqYd1AzAwWRkEB5wkIeXkNvqHSQcwwy4Q=;
        b=bxr6O5nwIPyYVm0XI7jUdSwNS2P5QhT6cstf3M/1ByGn8TiYND7ibOor3eqWicU53o
         PY25D0f5CklLIKU7U2byA2XdC9a4De4N5AjkTqv5WFM8uTxYe5D1Vs1Ecet+/2OaGO+O
         14Ax+Fv0kvddRH5GWU36Lq02m4n0Dj96rG+7e7T34hK6WNstmZTiK+jYU5dxLP11hjGD
         o8gLzECVM8GZ2uUZYbCLQBghe3TFglh3L8x+vaDjWmsI/gQ26d5fAYz7M34BdzjmZsok
         B8eU5o0u2qOj73UA+ebHrkUIoJOQZWcs7i3teFry9FAL5QHwGJnDba53LDVL5g9OZh7S
         VrcA==
X-Forwarded-Encrypted: i=1; AJvYcCU5Gam2hq/JSSy8PomiLHGv2MxMPzjWHOdZsYiWq7X9dwW/docHjv0+Vd+klORyp7rQLsVIKR6p5Dzk@vger.kernel.org
X-Gm-Message-State: AOJu0YyeHgZ4q1Fp26/TKL7lSoCBGFt67BeaAg7JvzfAxoW8k1XrEhpU
	fGziZf/t3R5uQL4iy9mEOJYHJUZycJhscTVyIZkD5x0V1RBux/0GfrUktiEaFa92NRJzGhlZ46i
	ucpaa8YDLPIUEAU4U41X/O9PjoNEQC5hV804UBtz5qA==
X-Gm-Gg: ASbGncvNr2AaAu112b2vygOdHBPCTi/0EH+9Wm2Rhtr6Wzyfu7OHgtJo0BBLlJrty0A
	BeSouT9J6bHyZW4IlcSc0UHneQxCnjhGYsjTDHNa8NCnuJTaOJ5xjmr6YXpB3RT5TYUhicjvSg2
	krsafgZlxFiSu7sZHF6Sy7vv046s/OgnpBdC6Bx+IQGI3KQtAz8EbML7YbhhEBeyHXX8YXAm269
	eJaypxKQk63BaZVmVyi4hDW2kkUW199rDA/bzSSYSG6JlhDc6jA
X-Google-Smtp-Source: AGHT+IE1zmv9oHlYf6BUBNOW+SUyz6ajjYN0b3+2pAlc66/NC3KjbbHlv5KbLza2QpbO9MoNOwx3daqo5CZgA0JV3IY=
X-Received: by 2002:a05:6402:2115:b0:62f:7968:e1ca with SMTP id
 4fb4d7f45d1cf-62f84798527mr4551388a12.38.1758189278612; Thu, 18 Sep 2025
 02:54:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <e236uncj7qradf34elkmd2c4wjogc6pfkobuu7muyoyb2hrrai@tta36jq5fzsr> <20250917212833.GA1873293@bhelgaas>
In-Reply-To: <20250917212833.GA1873293@bhelgaas>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 18 Sep 2025 11:54:26 +0200
X-Gm-Features: AS18NWDHkrQ8kASDtWOuxujVdqn0GrRUTOJ77F2So0WyDmX2EIKvc-v29xTUv-g
Message-ID: <CAKfTPtCizQ7nk3P4Dzi6uFewH5GcAnMakMt5=bK-Ykayp3t7XQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: pcie: Add the NXP PCIe controller
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Jingoo Han <jingoohan1@gmail.com>, chester62515@gmail.com, 
	mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com, s32@nxp.com, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, Ionut.Vicovan@nxp.com, 
	larisa.grigore@nxp.com, Ghennadi.Procopciuc@nxp.com, 
	ciprianmarian.costea@nxp.com, bogdan.hamciuc@nxp.com, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Sept 2025 at 23:28, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Wed, Sep 17, 2025 at 10:41:08PM +0530, Manivannan Sadhasivam wrote:
> > On Tue, Sep 16, 2025 at 09:23:13AM GMT, Bjorn Helgaas wrote:
> > > On Tue, Sep 16, 2025 at 10:10:31AM +0200, Vincent Guittot wrote:
> > > > On Sun, 14 Sept 2025 at 14:35, Vincent Guittot
> > > > <vincent.guittot@linaro.org> wrote:
> > > > > On Sat, 13 Sept 2025 at 00:50, Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > > > On Fri, Sep 12, 2025 at 04:14:33PM +0200, Vincent Guittot wrote:
> > > > > > > Describe the PCIe controller available on the S32G platforms.
> > >
> > > > > > > +                  num-lanes = <2>;
> > > > > > > +                  phys = <&serdes0 PHY_TYPE_PCIE 0 0>;
> > > > > >
> > > > > > num-lanes and phys are properties of a Root Port, not the host bridge.
> > > > > > Please put them in a separate stanza.  See this for details and
> > > > > > examples:
> > > > > >
> > > > > >   https://lore.kernel.org/linux-pci/20250625221653.GA1590146@bhelgaas/
> > > > >
> > > > > Ok, I'm going to have a look
> > > >
> > > > This driver relies on dw_pcie_host_init() to get common resources like
> > > > num-lane which doesn't look at childs to get num-lane.
> > > >
> > > > I have to keep num-lane in the pcie node. Having this in mind should I
> > > > keep phys as well as they are both linked ?
>
> > > Huh, that sounds like an issue in the DWC core.  Jingoo, Mani?
> > >
> > > dw_pcie_host_init() includes several things that assume a single Root
> > > Port: num_lanes, of_pci_get_equalization_presets(),
> > > dw_pcie_start_link() are all per-Root Port things.
> >
> > Yeah, it is a gap right now. We only recently started moving the DWC
> > platforms to per Root Port binding (like Qcom).
>
> Do you need num-lanes in the devicetree?
> dw_pcie_link_get_max_link_width() will read it from PCI_EXP_LNKCAP, so
> if that works maybe you can omit it from the binding?

num-lane is not mandatory but we can have 1 or 2 lanes so should be
able to restrict to only 1 lane for some platform
the "num-lanes = <2>;" in the example is wrong as we don't need it in
case of 2 lanes but only if we want to restrict to 1 lane

>
> If you do need num-lanes in the binding, maybe you could make a Root
> Port parser similar to mvebu_pcie_parse_port() or
> qcom_pcie_parse_port() that would get num-lanes, the PHY, and
> nxp,phy-mode from a Root Port node?
>
> Then all this would be in one place, and if you set ->num_lanes there
> it looks like the DWC core wouldn't do anything with it.

