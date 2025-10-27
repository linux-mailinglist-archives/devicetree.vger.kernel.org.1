Return-Path: <devicetree+bounces-231523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 870F7C0DC5D
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:02:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 019DE34CF04
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1437A26FDA6;
	Mon, 27 Oct 2025 13:00:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8613D263F32
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761570009; cv=none; b=Cd3CGCVdWsLF5oXx9OOWLp9Bs0VFIO0H5HTRmC0Yi+JbbCkJ6LAu4+D0O+befOxhnL4ppBI+GVAzeO4jR960u62wExBYigIqrrN0LnavozfwQGcncHNEQrzhCUoCMa7v+ORjwdTNGjUu5LqMzA4rDYwFqWN5ZEo+1smT0WI8F5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761570009; c=relaxed/simple;
	bh=bwESskb9ZqdlwJb+BKR+lDbeJG3koqiFva6ys/hs5kU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=roLz0sZoetHEfBlEpASTBNzn1BxIicvuyUmYi8hBHSG2VTvnLYG2D1emIoSKchqxDtr5BW0OBhqvbswFjsqakCQv2IsnNlfLtUG4MtB28J01mxu7+3nKcYp+oonnqIi0A9/zSV6wiRLSjk0/kQQJlWk5dDsrhVc+GyQB5nD6zUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-654ed784e42so1240469eaf.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:00:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761570006; x=1762174806;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yOYdLIvACytBpVHjrdATGnV0/c7ZzUCpXjvbRDnZ37c=;
        b=OewVYuBKX+8dJnJ3pF7A6PUc7i0FiELUbklppSemFHfdJJIUpKDR7V7FKTe2Px+IIK
         r2+KVFW8BgmwveXEPZCt9TSSS3Uo28sNrXCDy1T4g8fTgdrPXNdtJsC6n2et1BxkYqqC
         PEEoodVBNxzIPdoTb3q0qXUX3+cA5UQrjNvAWKQ/9jiIOvAKjs6JEw7PDUGJryb5ZnAL
         zz55ErTeaHp/ONmH1D37umF31Eq96bn5bNfWqEVr7cjy/hlHa3p+0e9fkeJ0osavfsaq
         KVSTa0pKGGy5g25hq/K1G8afFIDLsgDvyjpHX1N2WQ6kEgP3Cub6naAlXb2+GulWWsdP
         v8lQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlIcaKz4dSrFXR/nrf+n3pbh269q/E+6TNCK7AoNYhoyyQF1NXOHLivN4PEYIPEWjNkaLpw5Bir962@vger.kernel.org
X-Gm-Message-State: AOJu0YwnahF4bOkiPeA7lVZn+F9Pr38Ef48yXajdJSW+rPXj9u9VGEFa
	lJLpl/dDfGVyTwn3P2ZS82COOWe0g41WQleUXzkNB7l5nlzn/qHH0jCJj9mTXpgd
X-Gm-Gg: ASbGncut4ombWro2FnEdB0BgCaMyxq1pKdNYn3f3zOjW3dK2VBR0Imxa/Ia0Ypy+wgE
	GXK0UY3oq65uIatwo44xAt2Xwqe9KPhI79A5MPCIf5vAwO+HxXWsmM3XgRYentsRosy7HyjXkt2
	8w8Ch2OeqTrjP8EhDBVdqM+k0ilquPXQYXoQFhF/DMWCPYPmWgcpfbINxpyRg79Rs6l79RGNEyU
	/LJnyHIn51WESVt0jIXX/FqKp8ofPeXmCr76JnAP0SUsa0aovdNldxv/mRZQwmC/bB+efwiBqEU
	6LIUp94oI3UwcFLPbqykhMjfnuI199hdudqvzqW15WiuBeWDwF2fyIeZxbaqHrybpbQUQ5sU4VT
	ACKljHVkpFHUVWaHA57Uf1GgTOLtohJ+GIBKIxBxL375lPKTnJb3UqwCv8gpeisQX04cmor6rf2
	c0Z0vX4RXrID13OfW89sx1/AawEKCGa9Nzi7f8RYLt4vDoDSRT
X-Google-Smtp-Source: AGHT+IENtF6lnfOAQM5DxMIC8QzM4+UNjhkWK0Z13BT3fR4qqNy+517Je9W2sW3CmkJoe95RouiiTw==
X-Received: by 2002:a05:6870:2106:b0:3d3:ce01:1779 with SMTP id 586e51a60fabf-3d3ce011e36mr1574679fac.38.1761570006208;
        Mon, 27 Oct 2025 06:00:06 -0700 (PDT)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com. [209.85.210.48])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3d1e2d24eb1sm2413590fac.12.2025.10.27.06.00.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 06:00:05 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7c2816c0495so3322925a34.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:00:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWjOOOKUaKM/tmi6FPbkvSxJmvAz1dVEnKjj8YVUneowF2S8kcViwlWLE2sM5YiNQ7pFJd9UOeAaAkP@vger.kernel.org
X-Received: by 2002:a05:6102:26d4:b0:522:86ea:42c with SMTP id
 ada2fe7eead31-5d7dd5a64c5mr10674902137.11.1761569636629; Mon, 27 Oct 2025
 05:53:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022070543.1169173-1-ryan_chen@aspeedtech.com>
 <20251022070543.1169173-5-ryan_chen@aspeedtech.com> <b5441728-06a7-44ea-8876-3a9fc3cf55be@app.fastmail.com>
 <TY2PPF5CB9A1BE626A2F0F6307461D8F64BF2F0A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
 <6a97fbb4-19c2-4ffa-9c73-26aea02c27e4@app.fastmail.com> <TY2PPF5CB9A1BE6CF8336D211641A18E2DEF2F1A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
 <71df9bdf-53b2-45e2-a9e3-5b00a556f957@lunn.ch> <TY2PPF5CB9A1BE6F3E95C7FD61CF4F90ECAF2FEA@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
 <fdbc471f-514e-4521-b7a1-dcf6127d64ff@lunn.ch> <TY2PPF5CB9A1BE6DD93D0F397C961D5CB5AF2FCA@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
 <01573262-69a8-44cf-ae02-2e9842c59dde@lunn.ch>
In-Reply-To: <01573262-69a8-44cf-ae02-2e9842c59dde@lunn.ch>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Oct 2025 13:53:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXAOPemhTjdJqminXhi+1+Dsc5rN1GLqAUcfF3ZyphRoQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnc0FKdJRTj1IhXsyeFKk3WmW431oeoaAfsizI36RwwOH6YiF14-6GD61A
Message-ID: <CAMuHMdXAOPemhTjdJqminXhi+1+Dsc5rN1GLqAUcfF3ZyphRoQ@mail.gmail.com>
Subject: Re: [PATCH v6 4/6] arm64: dts: aspeed: Add initial AST2700 SoC device tree
To: Andrew Lunn <andrew@lunn.ch>
Cc: Ryan Chen <ryan_chen@aspeedtech.com>, Arnd Bergmann <arnd@arndb.de>, 
	BMC-SW <BMC-SW@aspeedtech.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Lee Jones <lee@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, Nishanth Menon <nm@ti.com>, 
	=?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>, 
	Taniya Das <quic_tdas@quicinc.com>, 
	"Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Eric Biggers <ebiggers@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Andrew,

On Mon, 27 Oct 2025 at 13:01, Andrew Lunn <andrew@lunn.ch> wrote:
> On Mon, Oct 27, 2025 at 02:42:01AM +0000, Ryan Chen wrote:
> > > Subject: Re: [PATCH v6 4/6] arm64: dts: aspeed: Add initial AST2700 SoC device
> > > tree
> > >
> > > > SoC0, referred to as the CPU die, contains a dual-core Cortex-A35
> > > > cluster and two Cortex-M4 cores, along with its own clock/reset
> > > > domains and high-speed peripheral set.
> > >
> > > > SoC1, referred to as the I/O die, contains the Boot MCU and its own
> > > > clock/reset domains and low-speed peripheral set, and is responsible
> > > > for system boot and control functions.
> > >
> > > So is the same .dtsi file shared by both systems?
> >
> > This .dtsi represents the Cortex-A35 view only and is not shared
> > with the Cortex-M4 or the Boot MCU side, since they are separate
> > 32-bit and 64-bit systems running independent firmware.
>
> DT describes the hardware. The .dtsi file could be shared, you just
> need different status = <>; lines in the dtb blob.
>
> > > How do you partition devices
> > > so each CPU cluster knows it has exclusive access to which peripherals?
> >
> > Before the system is fully brought up, Boot MCU configure hardware
> > controllers handle the resource partitioning to ensure exclusive access.
>
> Are you saying it modifies the .dtb blob and changes some status =
> "okay"; to "disabled";?

"reserved" is the appropriate status value for that.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

