Return-Path: <devicetree+bounces-220590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B47ACB97F64
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 03:00:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 518B87A77C7
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 00:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608EB1F4613;
	Wed, 24 Sep 2025 01:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kyl/oBaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6ABF6F305
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 01:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758675623; cv=none; b=ScKS5Jq87GKASp97CFod5MVfWsAFrnZmSufbcH+iuHcqbXKyAcfFJ+APEENjXDYDn45AdQ9edPwdvF+cJu27VN9+GE39qWAKWaWLRs93cQJS2SbrAhuOQ03XNpFHqQ8X24rSE0Z22NXj6hWxRtftOEL3dfeGFAFbyQZ5qSmB+Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758675623; c=relaxed/simple;
	bh=DXsKgwytsc7GVyepMCnh11OqJnoVKmtE41xnl47jDi8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fy/3Je4DJ48CYTvz0uRGIMynVrvj8kbQUrqE9wLyh8kq9Fy5OhDtj9/dnNS7Jyorasd5+U/r/LYvAERGi4HLc9DOwUvA40egwlsGgawd5OyrbgN1cdfY/hP19PHGDBNmbXX/+ifmfi4erC35Yf4Kvqgq4aVNEG2bG/b6Rx9xbxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kyl/oBaL; arc=none smtp.client-ip=209.85.160.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4d21a3da5d8so22674651cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 18:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758675620; x=1759280420; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hZsVlg5OxPMiXZWZO+qrLbc/alKsBFgcyv9irh3N5VY=;
        b=kyl/oBaL9JbMaYiOWayEFn2zIeFKykcXa1M9YEFGf10HSyvixGtvD/1eGSvA9pE0VV
         epOCnOr3iIyINmKio4BhC0LOe30sYTY9o42P75uYjV1nfQO+xfEtDmElROE9jP2LWIsr
         o1MEfseBoS/6knJRE6cFUyNCGMe3KqCIa0dbAiK/txW3EPcO9xdafDXlo7Jg5In1u2Lm
         q8HWQg8I0SkxX6hH8O7frt/yZ7pMJfpj1tB9YT1UIvwyrxjrNTLnKKJZi0uq/mv0xbBr
         r35SeyIjJFhywsYHk/Tzbl9OeKwvz9isQYxDbi1EecROJ2OoTh1pfxF1Mt2sNfVRyTvj
         tjZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758675620; x=1759280420;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hZsVlg5OxPMiXZWZO+qrLbc/alKsBFgcyv9irh3N5VY=;
        b=Cv1p8oAM+En9Nm4zv7Ug1ZgENy/o5uk3WS9VmYocFO8ho+gfSMpanzK93Wf2MN7Qk6
         k9q9nSSSU23yl0C7l8BzI1oqAJQ7k9t5bmRLr0ZvpSbvsGn5G/JN55WuCyNYjOtHHQ/0
         hiUFCmTIoDFiZaVSVrZnK+XZn99OulYT4YgewBX1b0u0+uc0tkau5ljVtdvnXszvhoOW
         0wIjeq7meWYO0eyYSsGrAhg6++TOTbYxJRsn18mXiyJMM9ycSLvq5p4JlfMtDcF8g7yX
         QfFkAh/GEo6d+dTTlwwyU4RbNTo2gQ8Em2wzcpVI6jiYlwIpl/f91K6dVdiGh//DLTD9
         PFaA==
X-Forwarded-Encrypted: i=1; AJvYcCWMPeU0LA8TSD0K5MKZ0fITVSN3FvGEWoZ/uCIVXAD1mVsXeVgfN+B2n7FsB9yAtoVJN6AoYTFLrWw/@vger.kernel.org
X-Gm-Message-State: AOJu0YzpXOyBZz1N0wHKbhbtAdnRXmmK1n8gOdVomIoYDq91l69MFIW/
	fWe57JKcR8geMfIDobuD5ELPcpRfMThC61Gu3mXEu4zKN0ffmMFODikbZ5O72wUgGjJZoQM/3zT
	veyHs90a/XFifYTKpP1U1IKbxGQfx6bs=
X-Gm-Gg: ASbGncsrbCiDDqSMzv3cS4n3VU49+3NcyObWLnqTnGakNBBnSaJm0UHtx0TeSV5u7wW
	PXyc79asmIF4cWogZsnXMlzCgCTh71cbqpdB8iYjUH6wfS53j4xKTVvnBBoGYhRJFYUtqgnG/Rv
	pBDS86pABHL6nVwSEBbvdQAbDHvA+smDsrFJhAJEZRKGivnubkNutrl6cCkXqUmv+Pwo423T9oP
	ois96z/GhJjLL6g9ZuuLb+Z63nxBSK6Ov/JCjWrbg==
X-Google-Smtp-Source: AGHT+IFU+HdxW/LEWFydKq5uIjzjnXTJNktogq3srwO5gahMvnvKX0l6y5Tq5+EvCdygt2yb/FL6Q+goFczk6oDSGcI=
X-Received: by 2002:a05:622a:1905:b0:4d8:67fb:4180 with SMTP id
 d75a77b69052e-4d867fb4421mr7701411cf.8.1758675620385; Tue, 23 Sep 2025
 18:00:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917101828.2589069-1-peteryin.openbmc@gmail.com> <393411916e94245a9f3628c41ebee34c3dd95a98.camel@codeconstruct.com.au>
In-Reply-To: <393411916e94245a9f3628c41ebee34c3dd95a98.camel@codeconstruct.com.au>
From: Peter Yin <peteryin.openbmc@gmail.com>
Date: Wed, 24 Sep 2025 09:00:08 +0800
X-Gm-Features: AS18NWCngewRu6_z1rC1usvMWn-hg2wKnEFU7JU8elKMaPgAwRFUKF7tF2eGoqo
Message-ID: <CAPSyxFQ1O-trBv9AQAn8nrh47zVAX9GLFovbpcy=_5Va6rDUcg@mail.gmail.com>
Subject: Re: [PATCH v1 0/4] Revise Meta(Facebook) Harma BMC(AST2600)
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Andrew Jeffery <andrew@codeconstruct.com.au> =E6=96=BC 2025=E5=B9=B49=E6=9C=
=8822=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8A=E5=8D=8811:31=E5=AF=AB=E9=81=93=
=EF=BC=9A
>
> Hi Peter,
>
> On Wed, 2025-09-17 at 18:18 +0800, Peter Yin wrote:
> > Summary:
> > Revise linux device tree entry related to Meta(Facebook) Harma
> > specific devices connected to BMC(AST2600) SoC.
> >
> > follow-up:
> > https://lore.kernel.org/all/3a65d568540e9ca43d3bfc24cfe5f72d2bb12b3b.ca=
mel@codeconstruct.com.au/
> >
> > v1
> >   - Patch 0001 - add new line between the child nodes
> >   - Patch 0002 - use power-monitor instead of power-sensor
> >   - Patch 0003 - dd sq52206 power monitor device
> >   - Patch 0004 - dd retimer sgpio
> >
> > Base: tags/v6.17-rc3-39-g07d9df80082b
>
> Can you please rebase this on the aspeed/arm/dt branch of
>
> https://git.kernel.org/pub/scm/linux/kernel/git/bmc/linux.git
>
> Patch 2/4 fails to apply.
>
> Cheers,
>
> Andrew

I will fix it in the next version.

