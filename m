Return-Path: <devicetree+bounces-232632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D2DC19880
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:58:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ACF323548A0
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE899329C5E;
	Wed, 29 Oct 2025 09:58:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311122F6596
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761731899; cv=none; b=X/aM/QoUbPOE4kta38Koqn1LB1F06xKVyluRL4k4shfuj3CU1CqN4MH+5PzQ1JBZzwx0G7KhOl5CME3BOU/3LL1mXQsO04BVH+56SBbzOXlUWRzWUFl/auL7ynba5Cq37tG24tcQaMKB4Lm8SATQPNgmcdyIzpfWUZQoA8z2dm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761731899; c=relaxed/simple;
	bh=WFpySCPpyBEuYY1GGmOmu9SMBn1hRDK+TPw/QGcBR+Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q5xPd3OZHujJ5SGqYaES3uaj3ngJb7i8VnLzSwC3gvr9d1sOA6w6KuDgaMF57E0lG0Rh0yvkWktHtPRutSQsMHqJpa3vWFu5lMoIFa+NfQqqvp965haRoGB8TxWqVFoyAfCNxmHRLGcDBGOYDRR0LbFhvDRzN3UdYXT2FnuYWx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-87c1f61ba98so101842626d6.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:58:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761731897; x=1762336697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tdMmTEVXmrdUQVal1cKnxdF6jTyKX4No0foVL6qsIc0=;
        b=NKCjpXgfPIPyvw10V/6PZMYjXvU0E6OPZeBv/0G1rjLgaxjcHYJsBShznPl3SkBOWS
         g9TCtXByr+/vxtey7h0zluSxi1+OOai5AC6EJrLZMRi29iAyRTpJlpYAnQmzP0qcFDLx
         ZPK93YWzW1USSeV6G5XnM9cx1XAlFEvr0lWmH7YWS65ehU8k+TxpwBrLExWiNDu4/KyF
         /Z5WAmfHHvkWpF5NLndbjZCQRpSx4hIHetUjphLG2wqS69/1h0z2OBRY269Cn92tRFEJ
         iUudFu2MqKH6UYJLudtZ8ML844R2pPH6tix6zNZ6HWuy0PNfpYzaK9uda80QD3cm4kn2
         ZluA==
X-Forwarded-Encrypted: i=1; AJvYcCXF0Y/2tkD+W+l76zhZlrZwIjLmUz3SkMV57xUPpIonGk0libhJg8oNkd6dtA7NPEmOJRUSvTSmnLyE@vger.kernel.org
X-Gm-Message-State: AOJu0YwKPQYvAwf6/jLfxZYNc70LL0zOdnvpaOFdXVDBok6UNsa/tQbm
	SB/6JQO2rgBM2f66j/OAGnVoKe9cfChA5fofyHnNmGBPjb+QWAQwuGCASoyyW1JV
X-Gm-Gg: ASbGncvSy5Uj7T75k4sB7IubhXzoTQYMijK8tfzm06FJ9ZOIFR7L4uVm40k9ZCZh6iH
	Fcx2BHLmx13xLYiEltkuaIpYNQUH2Hc5xvbcE2ifGHfv6GQ1QBhPCtew2jc9XzIbfDviCdd1vlu
	tbxh12mYXtrqF5Wf5Hi5eYL3udOgxPUb1FKk8FP0/2Ja7DPHUGhRknZa4rIJjS2EeG2pYc9Bse/
	VIT/rkUejlBiKLxp1VXAeWnR553z68Jb9jU/1gvV6jjyyLrrQRfLnclDAVgt+2J68HJLnuehpfZ
	AxIvTYTNPvu2B9IiONnbpBLk35AUV7AiYGiO9z2zUbHC5IRzLV6GnQ4ygr7n0j5XajfXX4r1466
	aAuIE/HQNo+TUsAfppDtn8AhWYnxQLgwefFevObpctSmgPd7PghXMT0kXGzJDG+kOBb2rqoMtUi
	3h25Qfv1/PNGijB+ZxWr8oMcexRogR6/gtKv+icA==
X-Google-Smtp-Source: AGHT+IFMLfQTD67nb+QNoq1zyORisDLSdAwFvZMU6Z98s7WptJfETG6RwaRRcx3GL2knVUeMxsSjJw==
X-Received: by 2002:a05:6214:19e2:b0:87d:f74d:28c6 with SMTP id 6a1803df08f44-88009be5633mr25271036d6.42.1761731896842;
        Wed, 29 Oct 2025 02:58:16 -0700 (PDT)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com. [209.85.219.48])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc49a9d92sm96315796d6.51.2025.10.29.02.58.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:58:16 -0700 (PDT)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-791fd6bffbaso88477486d6.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:58:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUp4LL1Hr1J+EYPHEESf8cLSlTfv7JGM1XzpWNCQ7zFzirPomSEr6GJ23ao8UJUEgvd4cIIQjssswib@vger.kernel.org
X-Received: by 2002:a05:6102:d87:b0:5d5:f6ae:390a with SMTP id
 ada2fe7eead31-5db906e1ea2mr632557137.40.1761731454123; Wed, 29 Oct 2025
 02:50:54 -0700 (PDT)
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
 <01573262-69a8-44cf-ae02-2e9842c59dde@lunn.ch> <TY2PPF5CB9A1BE665D988A413B8BCD5CA27F2FAA@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
 <7c0c966b-c45f-47ad-9243-b945036a9bd2@app.fastmail.com>
In-Reply-To: <7c0c966b-c45f-47ad-9243-b945036a9bd2@app.fastmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 10:50:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVueyxmATwS_EnqBBPtX-O0bw6Ubnj-Dey8wN=pEvo_zA@mail.gmail.com>
X-Gm-Features: AWmQ_blS6idckwhpIjkOWHP0NGDWxrc7vZpSwkjlsFZQOSpuaInPPIOtTjyVPpU
Message-ID: <CAMuHMdVueyxmATwS_EnqBBPtX-O0bw6Ubnj-Dey8wN=pEvo_zA@mail.gmail.com>
Subject: Re: [PATCH v6 4/6] arm64: dts: aspeed: Add initial AST2700 SoC device tree
To: Arnd Bergmann <arnd@arndb.de>
Cc: Ryan Chen <ryan_chen@aspeedtech.com>, Andrew Lunn <andrew@lunn.ch>, 
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

Hi Arnd,

On Wed, 29 Oct 2025 at 08:26, Arnd Bergmann <arnd@arndb.de> wrote:
> On Wed, Oct 29, 2025, at 03:31, Ryan Chen wrote:
> >> Subject: Re: [PATCH v6 4/6] arm64: dts: aspeed: Add initial AST2700 SoC device
> >> tree
> >>
> >> On Mon, Oct 27, 2025 at 02:42:01AM +0000, Ryan Chen wrote:
> >> > > Subject: Re: [PATCH v6 4/6] arm64: dts: aspeed: Add initial AST2700
> >> > > SoC device tree
> >> > >
> >> > > > SoC0, referred to as the CPU die, contains a dual-core Cortex-A35
> >> > > > cluster and two Cortex-M4 cores, along with its own clock/reset
> >> > > > domains and high-speed peripheral set.
> >> > >
> >> > > > SoC1, referred to as the I/O die, contains the Boot MCU and its
> >> > > > own clock/reset domains and low-speed peripheral set, and is
> >> > > > responsible for system boot and control functions.
> >> > >
> >> > > So is the same .dtsi file shared by both systems?
> >> >
> >> > This .dtsi represents the Cortex-A35 view only and is not shared with
> >> > the Cortex-M4 or the Boot MCU side, since they are separate 32-bit and
> >> > 64-bit systems running independent firmware.
> >>
> >> DT describes the hardware. The .dtsi file could be shared, you just need
> >> different status = <>; lines in the dtb blob.
> >
> > Could you please share an example of a .dtsi that is shared between
> > different CPU architectures?
>
> I can think of three that are shared between arm and riscv, with both
> able to boot Linux using a variation of the same device tree, with
> the .dtsi file being included from the respective other side:
>
> arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
> arch/arm/boot/dts/allwinner/sun8i-t113s.dtsi
> arch/arm64/boot/dts/sophgo/sg2000.dtsi
>
> All of these however use the same basic physical address layout
> as seen from the two CPUs, with only the set of on-chip devices
> being slightly different, such as using the native irqchip
> instance per CPU.

I can't speak for the last two ones, but the first one is not what Ryan
is looking for, as r9a07g043 has either an ARM (r9a07g043u) or a
RISC-V (r9a07g043f) CPU core, not both.

> In the AST2700 design, even though we have both Cortex-A35 (64-bit)
> > and Cortex-M4 (32-bit) cores, each runs in a distinct address space
> > and sees a different memory map.
>
> This is similar to the Cortex-M4 on i.MX7D. This is supported by
> the Linux code, but I don't see the corresponding dts file for it now,
> it may have never been merged.

The keyword here is "System DT", where you have a single file describing
the whole SoC. From this, separate DTS files are generated that
describe the view for the application CPU core, real-time CPU core,
control CPU core, etc...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

