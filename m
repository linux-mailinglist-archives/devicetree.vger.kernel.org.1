Return-Path: <devicetree+bounces-94371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9289553B4
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 01:14:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E492C1C216D8
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 23:14:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F4C145B39;
	Fri, 16 Aug 2024 23:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lixom-net.20230601.gappssmtp.com header.i=@lixom-net.20230601.gappssmtp.com header.b="10MusjK7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9B7145A19
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 23:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723850080; cv=none; b=f3Zl2foAXW/S7tnvvsgD1QNkYf9qW/d6oto1ZHKr3lzemuJ+4M0w10SleBDqUQdu91ZB76iWgrBMV7mfXyXuZXX4p8QNcFjhzM3HxPoUXpeBOa318M6K8a6IEqNPqeCSJJyUnHptPYi5nQ3vbGWPYuwG11BKzkIaD+pu/JAt644=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723850080; c=relaxed/simple;
	bh=CqGF+vIIR37/TO1jmzSxW7Ztfy1Ee1V06lXhLznk3pU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L4oKU45yS8jkb6QSpRXrsJrs7KZqA7d6nd38q2inWCjtg9fs0QrthaXYwEw3USstXal19dZ1R2hJKIwSPyIB9fiwcSG4p8pT4c4MeHHv1xq6aREBYR5eBYGZ6ktIIPwF8KejAY4DXid9BnAD0Tk3x29/3TeZ7w8csPEf5bEe9Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lixom.net; spf=none smtp.mailfrom=lixom.net; dkim=pass (2048-bit key) header.d=lixom-net.20230601.gappssmtp.com header.i=@lixom-net.20230601.gappssmtp.com header.b=10MusjK7; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=lixom.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=lixom.net
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-450059a25b9so23802301cf.0
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 16:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20230601.gappssmtp.com; s=20230601; t=1723850078; x=1724454878; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ueNzYl5S7O1PRoMwwd5P/GZe77RoSlXmg5l4LsdO/TU=;
        b=10MusjK7VPy78wF7+m6RiXOuxGPP4Dr02hzW4PBEsIcTmwLrI9XXV4UDB23J4AnmBm
         +MUXzcyhg1irerW2d8vKrR3AYLJJlfBw0ssUZe92d9IzA7SEiTHyvCYRwx3aAHpyGQQC
         sP1UoUhyEJvqf6IAS67EgFmthp6UTaQEdjxCiPs5X2K86NtdoMV5gbv2shxQsWoNKY1Y
         3poLS7A3vtI4lvSPvTLPeolDsIXA/PRN0GftAaJK3pSDjVoCPJHcGAkP/zdti85y0wtQ
         jUyFpZ1vc91qLU03X9SH33vv9uLkBW4UxjjWEtedhH/6qnf69+GyEeYsKMNbf3HveiVN
         gEQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723850078; x=1724454878;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ueNzYl5S7O1PRoMwwd5P/GZe77RoSlXmg5l4LsdO/TU=;
        b=PNvkMyBlrTI6LZy1Bt+2d+ejJQ5Xd1h/9DLD/we3Xvn00dUjMIjgcDtLTMNql1J6f5
         5/OcJUVFOiR6mAt6MKY4fRV1JlC4SlHD7yegBO5o69XzzFeHkfoR91mKcLorzQ8rQWpD
         kkVwZ3E6iIOGQZNcvPkKgqhRQA61nNTXfnySrVtBHK317eCtvW07//qMdzsRnX5qI3tm
         ZFTbhTK3Gu8vg58zc+zppqdXP4+Pgg/4/XKGpbIRs2KbY5rXeKlSmc6efltcXsPFY6mr
         f8aDUfFlIZk/t7apiniyJWjAPWSgUX+B/M41g12RsZ7cB6aoBW/xvDKN/gwfoTgdxIW4
         S7nw==
X-Forwarded-Encrypted: i=1; AJvYcCWoBFUn8SNcxI50SedC6YtHgaSFkHOeD1Ywz8NMWwr0mPMYCVwUPAUZKEHS35Iody777BmoS5AKZjxaEMTyy2ypswf4txa/y+u1zg==
X-Gm-Message-State: AOJu0YxDmyNzPDwWi61BEujEeKm9vKdrHHCwHmVaxmcgl+1Fn7ns/L5G
	Unq1ehr+EKMgv2p61IYVqtbpUIkKz5n8RnDt3Cs63rnhBGx4IbuHK3o6mzMnSawPb+Xc6tvAW0y
	oAJHlWOhcq+U3oX6nf89z0TpilRZfbXWQ2tiinIrdsMywwNZo
X-Google-Smtp-Source: AGHT+IF49VekPZCw/4NwZB0RcuzNygPEhsTRH8TcXdf45Xfzx0CgPlfWgMUjL+tdTNoBeYol1xBY8xm7kkQpO93mfF4=
X-Received: by 2002:a05:622a:14d:b0:44f:ff65:97be with SMTP id
 d75a77b69052e-4536787bea2mr152143891cf.14.1723850077946; Fri, 16 Aug 2024
 16:14:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <Zr+H3gHZ/B7zTKBW@lizhi-Precision-Tower-5810> <20240816181500.GA69082@bhelgaas>
 <Zr+lslEn4cfBJ0A3@lizhi-Precision-Tower-5810>
In-Reply-To: <Zr+lslEn4cfBJ0A3@lizhi-Precision-Tower-5810>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 16 Aug 2024 16:14:27 -0700
Message-ID: <CAOesGMi9F2S4LP5pp0tR4Ax0uf3z5cOgG6UKB3r3hAmjrC9gFQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] MAINTAINERS: drop NXP LAYERSCAPE GEN4 CONTROLLER
To: Frank Li <Frank.li@nxp.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Zhiqiang.Hou@nxp.com, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 16, 2024 at 12:17=E2=80=AFPM Frank Li <Frank.li@nxp.com> wrote:
>
> On Fri, Aug 16, 2024 at 01:15:00PM -0500, Bjorn Helgaas wrote:
> > On Fri, Aug 16, 2024 at 01:09:50PM -0400, Frank Li wrote:
> > > On Fri, Aug 16, 2024 at 11:12:31AM +0530, Manivannan Sadhasivam wrote=
:
> > > > On Thu, Aug 15, 2024 at 03:15:52PM -0600, Rob Herring wrote:
> > > > > On Thu, Aug 15, 2024 at 9:53=E2=80=AFAM Manivannan Sadhasivam
> > > > > <manivannan.sadhasivam@linaro.org> wrote:
> > > > > > On Thu, Aug 08, 2024 at 12:02:17PM -0400, Frank Li wrote:
> > > > > > > LX2160 Rev1 use mobivel PCIe controller, but Rev2 switch to d=
esignware
> > > > > > > PCIe controller. Rev2 is mass production chip. Rev1 will not =
be maintained
> > > > > > > so drop maintainer information for that.
> > > > > >
> > > > > > Instead of suddenly removing the code and breaking users, you c=
an just mark the
> > > > > > driver as 'Obsolete' in MAINTAINERS. Then after some point of t=
ime, we could
> > > > > > hopefully remove.
> > > > >
> > > > > Is anyone really going to pay attention to that? It doesn't sound=
 like
> > > > > there's anyone to really care, and it is the company that made th=
e h/w
> > > > > asking to remove it. The only thing people use pre-production h/w=
 for
> > > > > once there's production h/w is as a dust collector.
> > > > >
> > > > > If anyone complains, it's simple enough to revert these patches.
> > > >
> > > > My comment was based on the fact that Bjorn was not comfortable in =
removing the
> > > > driver [1] unless no Rev1 boards are not in use and Frank said that=
 he was not
> > > > sure about that [2].
> > > >
> > > > But I think if Frank can atleast guarantee that the chip never made=
 into mass
> > > > production or shared with customers, then we can remove the driver =
IMO. But that
> > > > is up to the discretion of Bjorn.
> > >
> > > I think Bjorn's request is impossible task. Generally chip company se=
nd
> > > out some evaluted sample to parter, which use these sample to built u=
p
> > > some small quantity production. Chip company have not responsibility =
to
> > > call back this samples. There are always some reasons to drop mobivel=
 and
> > > switch designware, it may be caused by some IP issues which can't mat=
ch
> > > mass production's requirememnt. Such informaiton already removed from
> > > nxp.com. Only Rev2 left.
> >
> > If you're reasonably confident that nobody will notice the removal of
> > support for Rev1, we can include that in the commit log and just
> > remove it.
> >
> > The original commit log basically said "we don't want to support Rev1"
> > without any indication of where those parts went or whether anybody
> > might care about them.  But if Rev1 only went to partners for
> > evaluation and we don't expect end users to have them, I think it's
> > reasonable to say that and remove the code.
>
> Thanks, I just find 2020 Yang li try to drop dts part in below thread:
>
> https://lore.kernel.org/all/CAOesGMhz8PYNG_bgMX-6gka77k1hJOZUv6xqJRqATaJ6=
mFbk6A@mail.gmail.com/
>
> Olof Johansson raise concern about their HoneyComb.
>
> I added Olof Johansson in this thread. I think HoneyComb use evaluation
> chip to build some small quaitity boards.
>
> As my best knowledge, rev1 should have some big problem. I can't find any
> detail about these because rev1 informaion already cleanup totally. I don=
't
> prefer continue use risking rev1 chip.

I paid good money for my HoneyComb, and while it was an early system,
I certainly wouldn't expect it to stop working because some maintainer
is bored of supporting it. It's clearly been commercially sold as
systems.

Mind you, I can't remember last time I powered on my system any more,
since I mostly use the Ampere board or VMs on my Mac for ARM linux
work when needed, but that doesn't mean I want to send off the
HoneyComb to recycling.

Don't regress your users. Thanks.


-Olof

