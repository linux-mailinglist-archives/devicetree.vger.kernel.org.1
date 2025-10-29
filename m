Return-Path: <devicetree+bounces-232629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AF8C19824
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:56:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 210123A575F
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AAB32D24BF;
	Wed, 29 Oct 2025 09:52:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8512C20C48A
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761731540; cv=none; b=cKVf0QoQKlry2ZPViK9llYEGPc8KYM2AHTc0zeuGo5fqNAn+4/pBUADdF10zV+vOxa3fDI+UNk2Kcyep9KSpET7goS3CdU+7bmyS4trGKz7d8+P4+kaxmdgNzsgK+hPdbkOsr09LiRZAOr7jQbk9je6gqTbswUKiW+AuLeePgjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761731540; c=relaxed/simple;
	bh=6umXQY7PxYDhxCFHBGVvm62ZCKDd9XvEuaC2neC8JOQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M47BXdn2LaD1kWycv1bKgM0rsPzgRiDS0Zb0NkOg+t+S05rKNTLGaIQHojaued+4lEjJgvVsslGOdBTRBhRxuL20esrn5TcTMnIOXOhdhincXmfj5k1qrJSyn59VhmCrflV1L9C6PFbuPINR7TJu5lqG61XT5JHkGI8wo3+zWaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-55716c1ffeeso1965884e0c.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:52:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761731537; x=1762336337;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dn3HJmw1LqF1sl88KtOEIxVUxtlj7baFmpOOANtcNAA=;
        b=SXwgJEuT4gqhlhy4BIcEABh2S/2MGeETztDC64mwluZrQfCycySrvPn3ydXy9edOo+
         xmhNtpEQPWccd6B8LOTmoIP/3ITVEF//sRd13yQXHO9ghWNCj7Bb6YYwgVQCfREQhsMW
         RWX8LMEWJfrsaVCBovICSacpmCjwibPtr/DEbOKz7eqVRqJBEMfiI/LVBSvS6TWA8Qzx
         ogRD7WdxcYJJjMyGQ0ME7PIzbUp0Ap9dyj7gqsAHm8zRjqUMu6rlyA/LCSIYeY/WE8ru
         pPhDRQgMiAsj5KGmM2ZrAN25tU8txYxIZnU6QqcIX2+jlYSZjR0jd6PNL2N1XR2zZnM+
         boJg==
X-Forwarded-Encrypted: i=1; AJvYcCUGoQIF9QswI2jmOItp775QXFEJOSz8Bz5PmprW4U8XxGJqaEL+SbnAFCkXb5ZyrCKcY0OoBZaZUe9Z@vger.kernel.org
X-Gm-Message-State: AOJu0YwkiC0/CWvgbYff+3MaJoXkG2lfkkY5cNOUXyhxZBPbkvgTdu7y
	LdEw3x0/RHmxqGZEFllUEb1BRmv/xxYLprIOLcZiZInnNu6ub5hdB3jTecH9C2q2
X-Gm-Gg: ASbGncv8smEpg+MB6PhHc6muuzmheOgHQcFcQt3KH+C7FqRLl3NnwzlaHMVULn/uD48
	OUw0OVWIRsJabdoJS8luMh33sohORA4Mk7AslW75mOnatiVurwPpssN9cwfmXYF7AoXfhpu5+wN
	RDeUUxTOkIYgxM1Jes7nLUu84U365PhhSOG2ijF8DY8CTz8BqUc7sX962pRds0L8sJGMvKzdu6M
	zGSV6Oy6w9PeXqeTleClnmD+/8u19qo1lQrB45iMq31xMe1+Bmc6U35prYQKmgckhrTzM9G5S9Y
	Zr9Ko3/FOeAQEbGhR76sQaeh4+71vjx8WRUsTjDQAFwo+B9rus4ggbeZ0cnGyVjcMzZd8Ry/5tD
	AqGxvI2QtQ+403kXSGuEIz0DN6TIPgQ7LYfHD3vJMjSD7wfmG9Y1BaEgnmotBQOhXo9P26Mx/+u
	qGEX8HzuRGegLWAxOZ3dVg0Yz+U1f0Jq6/PM2+Tuu8nvwrwJlN
X-Google-Smtp-Source: AGHT+IEV8kK8Sg12Z1VaQHvicbVUHTF41mBOqfpW6AxwpXMtQQNjYKyCq6lSl8LZRQ9uTpkDsnHYiw==
X-Received: by 2002:a05:6123:2eb:b0:558:251:f0e8 with SMTP id 71dfb90a1353d-5581423c68cmr579802e0c.11.1761731537417;
        Wed, 29 Oct 2025 02:52:17 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557ddb08b9bsm5278705e0c.6.2025.10.29.02.52.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:52:17 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5d61f261ebfso3214479137.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:52:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVuoYc2dYhnW6zI8Kt9VYsgRciN5D520SLuIPAUD7gSvbsyOQICxLUz9hvSgZrVE/LfJ4pbFdk3sOLN@vger.kernel.org
X-Received: by 2002:a05:6102:942:b0:5d7:de89:ddd6 with SMTP id
 ada2fe7eead31-5db9057bad9mr557441137.1.1761731536861; Wed, 29 Oct 2025
 02:52:16 -0700 (PDT)
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
 <01573262-69a8-44cf-ae02-2e9842c59dde@lunn.ch> <CAMuHMdXAOPemhTjdJqminXhi+1+Dsc5rN1GLqAUcfF3ZyphRoQ@mail.gmail.com>
 <TY2PPF5CB9A1BE6D0FC241696E44EB1F463F2FAA@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
In-Reply-To: <TY2PPF5CB9A1BE6D0FC241696E44EB1F463F2FAA@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 10:52:05 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWKsyt_bXaJ=smtCaGst_5O2trQakxmaKp2K1Jzc=Y9uA@mail.gmail.com>
X-Gm-Features: AWmQ_bnPsVrgzrwpS4yuU54P6rGfuwJuhD3QhZm5C-G0nVGXJf4URRbbI7AGLcc
Message-ID: <CAMuHMdWKsyt_bXaJ=smtCaGst_5O2trQakxmaKp2K1Jzc=Y9uA@mail.gmail.com>
Subject: Re: [PATCH v6 4/6] arm64: dts: aspeed: Add initial AST2700 SoC device tree
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>, BMC-SW <BMC-SW@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Jeremy Kerr <jk@codeconstruct.com.au>, Lee Jones <lee@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
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
Content-Transfer-Encoding: quoted-printable

Hi Ryan,

On Wed, 29 Oct 2025 at 03:38, Ryan Chen <ryan_chen@aspeedtech.com> wrote:
> > Subject: Re: [PATCH v6 4/6] arm64: dts: aspeed: Add initial AST2700 SoC=
 device
> > On Mon, 27 Oct 2025 at 13:01, Andrew Lunn <andrew@lunn.ch> wrote:
> > > On Mon, Oct 27, 2025 at 02:42:01AM +0000, Ryan Chen wrote:
> > > > > Subject: Re: [PATCH v6 4/6] arm64: dts: aspeed: Add initial
> > > > > AST2700 SoC device tree
> > > > >
> > > > > > SoC0, referred to as the CPU die, contains a dual-core
> > > > > > Cortex-A35 cluster and two Cortex-M4 cores, along with its own
> > > > > > clock/reset domains and high-speed peripheral set.
> > > > >
> > > > > > SoC1, referred to as the I/O die, contains the Boot MCU and its
> > > > > > own clock/reset domains and low-speed peripheral set, and is
> > > > > > responsible for system boot and control functions.
> > > > >
> > > > > So is the same .dtsi file shared by both systems?
> > > >
> > > > This .dtsi represents the Cortex-A35 view only and is not shared
> > > > with the Cortex-M4 or the Boot MCU side, since they are separate
> > > > 32-bit and 64-bit systems running independent firmware.
> > >
> > > DT describes the hardware. The .dtsi file could be shared, you just
> > > need different status =3D <>; lines in the dtb blob.
> > >
> > > > > How do you partition devices
> > > > > so each CPU cluster knows it has exclusive access to which periph=
erals?
> > > >
> > > > Before the system is fully brought up, Boot MCU configure hardware
> > > > controllers handle the resource partitioning to ensure exclusive ac=
cess.
> > >
> > > Are you saying it modifies the .dtb blob and changes some status =3D
> > > "okay"; to "disabled";?
> >
> > "reserved" is the appropriate status value for that.
>
> Thanks for the clarification.
>
> Since the SoC-level .dtsi is shared by all users (potentially other platf=
orms),
> I don=E2=80=99t actually know in advance which peripherals will be assign=
ed to
> which CPU. For this reason, marking nodes as `status =3D "reserved"` in t=
he
> .dtsi might be misleading.

Sure, not in the SoC-specific .dtsi.

> I think it=E2=80=99s more appropriate to keep all peripherals as
> `status =3D "disabled"` in the common .dtsi, and let each board-level .dt=
s or
> firmware-specific DT decide whether a device should be `okay` or `reserve=
d`
> depending on the actual resource assignment.

Correct.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

