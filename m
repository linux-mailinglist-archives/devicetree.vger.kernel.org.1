Return-Path: <devicetree+bounces-255264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 879DED21AAF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:55:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BAB030380EE
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B5038B98D;
	Wed, 14 Jan 2026 22:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ULLpnZ13"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BB8350293
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:55:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768431312; cv=none; b=fzXiohpFwp2njvcCuIiKsoNu0YxZHdmKE9RCCvir26OVxvfuUfX2AsnYWjWGDkS3P9fk+At5127wsXpUQUcsN7T+yfyiYlRbDqxu/OAgSl0P4TtOtYBxrHZtLeDHu25ekz/YMtUg37rwawt9plloWWP3xOQmFTYk2ijYKWUZOKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768431312; c=relaxed/simple;
	bh=V1py82AjhxEE3vmI27KtbVxIIIMpzO9ROtiUPz6KBIM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CT/r+DhTUYomY/s/lNaLfrXxRX/nBjEdCriNOiwzYS9/RMiK8/viXqboeHurzqmnE9W4YgYLx/Jd3NTCFhv/fl9Y4Td+jpc5TxvWuJHCym7IJhSUIk3oEHh7M++gEibQlv/D5DpqDtoyh49/b0TEQLD6H29V/Vt/cMYC2ISKeeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ULLpnZ13; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-79018a412edso2869567b3.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768431308; x=1769036108; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R3aA2X7iGQsnnel6fRLVe4SLr2+v2d/5zouhV3Vlqcs=;
        b=ULLpnZ13u0uAWoBNOyx2pQX7xk573XQRxshqnkDODrBfdlOGHdBLeiGjQUMMJ7e0MT
         yaxOaIMTKucIcX4OfsR6gfN1eFNdXT1pWQSb1rBy3+hTxxs8BpHH9ujUcKvWGon++zOc
         frasvVhgblBEFDQvNS4s+VdZbgKRWfLOdyvLVXZKdXMyjGooin++rQelFJ+Ai0cyIWdj
         3nXmWjRLOcdLlDhMrPX1xyFazfSpsNB1YbCdAwXXgzGP0dxA0Aj6b1/FYPc28C0wygDL
         gFBm5ONEJLhsh0on5iB1eim+lHgZygUTwvX5PlvB8Fv7BYrr1aiO4p1zyYFyQKfiKHOu
         f66w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768431308; x=1769036108;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R3aA2X7iGQsnnel6fRLVe4SLr2+v2d/5zouhV3Vlqcs=;
        b=TuRuKX057M5J8b8GSdCtgmFAakNaWMR7VaGaH8AHbgSNZ26lOEgdXcLErGyqWuppbY
         gFYp/hXI4EQUgGfLmfT0260IizscLakNVKSGiYviqX9/6rsSSDC7CgSj8DymB9jX/0Zk
         30EprnA5ribc4fyKf/7TZ4DfNSv52cJO11/xeaRgPThGtO+aGeXYUZz/XdsUJ/TQeSI7
         LNpOmV9MSbIPX9DiQ04xJJtcn0Xk1vOtDKnzeoULQs7gAiIPhJNFigpeTDD927BXfqJL
         bY+0RTfph2FK8SF1LWhYcCVpaG2pP7OLK9FW+kW7vzn9rrlbsj46RJULCLEmknXXJVdz
         mnBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrdHhYPs2RMPOnTCrvRLoe5eh9bDnjqMq4ihSeSCjryl4KedhSRIx0BxxqQORGmbmU+dpf4ejV5g8y@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz4byq6qiJdZ4WTcQK4LXMFCNKWQg07t3jrn7o6/s9cx2QM7xy
	9uAVGy8NRSbgxHsrgmGjXt3nz8ChRl3YQ7SVGvRG3RJQeaUthHZIUvSLfopkQ8387zH0pvtVICG
	vx+RuUGY7k6V4YNSTWeiWgMQxwi4F2z+RDgLEC0spFg==
X-Gm-Gg: AY/fxX7OtYBC579dT1m85RskkYH6Xyn0eo2gUjAiQfRVsb8P222Id2i5vCCfGG5Bift
	/7wH3ERPpFP9Na7Tkkblu45z9lY+7xY2w90hYpRxz+wRLoeGyU7Big4tjqVCPnZwSJyl0zV5jYP
	OAORq+e1lC+gmA0vZK5VXhOICmR46lqmJ//tIJrBh5vk597j2atPXOj1JVvxmAYl4qPl2Uy3usQ
	TnU2hfYCYVCTfomOaTvzufe979Xi9JIcpgFVSrh/MWU7PvdUqvu8pLhgNim8UCySrJBI3NdBRuo
	XFR+SE5CK8VugqMilUxPnZxdTDbslxuXk4wrPw==
X-Received: by 2002:a05:690e:b8d:b0:644:77bb:5705 with SMTP id
 956f58d0204a3-64903b55ebbmr2982962d50.77.1768431307959; Wed, 14 Jan 2026
 14:55:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113-adding-b-dtsi-v1-0-22d6e55d19df@riscstar.com>
 <20260113-adding-b-dtsi-v1-2-22d6e55d19df@riscstar.com> <20260113075339-GYA25466@gentoo.org>
 <CAH1PCMarzrZJ072iyAQthB-i-LHFCSJ+tZLx6HcWiVcUrQeafw@mail.gmail.com> <20260114-evergreen-gluten-b1c8558e7684@spud>
In-Reply-To: <20260114-evergreen-gluten-b1c8558e7684@spud>
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 06:54:57 +0800
X-Gm-Features: AZwV_Qhkxzj_Y9cwaD4tSP0GMlfoxTMZyhjGCrw4ED-TcUztP4RUDmlAh8THzag
Message-ID: <CAH1PCMZAEwO4Vg=TdZ9SR1uwm3OOw_y79iCRC+E+SZiVRNtp+w@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: dts: Add "b" ISA extension to existing devicetrees
To: Conor Dooley <conor@kernel.org>
Cc: Yixun Lan <dlan@gentoo.org>, Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Conor Dooley <conor.dooley@microchip.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Junhui Liu <junhui.liu@pigmoral.tech>, linux-doc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 15, 2026 at 4:42=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Wed, Jan 14, 2026 at 10:33:34AM +0800, Guodong Xu wrote:
> > Hi, Conor, Yixun
> >
> > On Tue, Jan 13, 2026 at 3:53=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wro=
te:
> > >
> > > Hi Guodong,
> > >
> > >
> > > On 15:45 Tue 13 Jan     , Guodong Xu wrote:
> > > > "b" is ratified (Apr/2024) much later than its components zba/zbb/z=
bs
> > > > (Jun/2021). With "b" added into riscv/extensions.yaml, a dependency
> > > > checking rule is now enforced, which requires that when zba, zbb, a=
nd zbs
> > > > are all specified, "b" must be added as well. Failing to do this wi=
ll
> > > > cause dtbs_check schema check warnings.
> > > >
> > > > According to uabi.rst, as a single-letter extension, "b" should be =
added
> > > > after "c" in canonical order.
> > > >
> > > > Update existing devicetree files to conform to this rule. Line bala=
ncing
> > > > is performed where needed to improve readability.
> > > >
> > > > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > > > ---
> > > >  arch/riscv/boot/dts/anlogic/dr1v90.dtsi     |   5 +-
> > > >  arch/riscv/boot/dts/sophgo/sg2044-cpus.dtsi | 256 ++++++++++++++--=
------------
> > > >  arch/riscv/boot/dts/spacemit/k1.dtsi        |  32 ++--
> > > >  3 files changed, 147 insertions(+), 146 deletions(-)
> > > please have separated patch for different SoCs, so they can go via
> >
> > Understand your concern.
> >
> > > their own SoC tree.. thanks
> >
> > Conor, is it possible to take this as one patch instead?
> >
> > It fixes the same dtbs_check warnings from riscv/extensions.yaml across=
 three
> > SoCs. Keeping them together maintains readability and clear tracking, I=
MHO.
> >
> > Happy to split if needed, but wanted to check first.
>
> I'd rather you split it, sorry.

Sure, will do.
Thank you both.

BR
Guodong Xu

