Return-Path: <devicetree+bounces-85255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6AA92F7AD
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 11:13:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9CFC1C22EC5
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 09:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43833146D7A;
	Fri, 12 Jul 2024 09:13:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78CFDD528;
	Fri, 12 Jul 2024 09:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720775617; cv=none; b=p7vrxKWaI7dzPbWQXBRppJfOiTIJfxSf3h5nVXa+ue+k/KmLVCgmXMPFbAOZdxFE1kOmaygLnFqXUaa7gvMZKqTp/GM62EgJwhQkgMJWZWmc00i6f+YGf2EXqxyf9F1tsqHh4bijSC7q790O8aNjVFr5+fS7FlAWiXcUB88Oqfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720775617; c=relaxed/simple;
	bh=YPMBT9Ah5xgPaDYSc0W5Pvqk3DmMxE9QvAvShd4xUZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IkjDNYLyG83GvCG5KjfO1q6+zGGsyFclezFqeiY8uJ+iaLeMncAe+9Xi+SHBKIBoT+zPRbV/j/O5qcLO2TxcqXIBciEd/xoiYYtvzQKh2cKHBV8aS5Ug4Z+TFM4jBveqC8iFkTMvZKPPJBEnuN0xumZQsp41OQHHM1xiaHMXz7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Date: Fri, 12 Jul 2024 09:13:23 +0000
From: Yixun Lan <dlan@gentoo.org>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-serial@vger.kernel.org,
	Jesse Taube <jesse@rivosinc.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Inochi Amaoto <inochiama@outlook.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Meng Zhang <zhangmeng.kevin@spacemit.com>,
	Meng Zhang <kevin.z.m@hotmail.com>, Yangyu Chen <cyy@cyyself.name>,
	Conor Dooley <conor.dooley@microchip.com>,
	Matthias Brugger <matthias.bgg@kernel.org>,
	Haylen Chu <heylenay@outlook.com>
Subject: Re: [PATCH v4 00/10] riscv: add initial support for SpacemiT K1
Message-ID: <20240712091323.GYA2136013.dlan.gentoo>
References: <20240709-k1-01-basic-dt-v4-0-ae5bb5e56aaf@gentoo.org>
 <20240711-zeppelin-property-aef2ee5fe999@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240711-zeppelin-property-aef2ee5fe999@spud>

Hi Conor:

On 17:08 Thu 11 Jul     , Conor Dooley wrote:
> On Tue, Jul 09, 2024 at 03:18:43AM +0000, Yixun Lan wrote:
> > SpacemiT K1 is an ideal chip for some new extension such as RISC-V Vector
> > 1.0 and Zicond evaluation now. Add initial support for it to allow more
> > people to participate in building drivers to mainline for it.
> > 
> > This kernel has been tested upon Banana Pi BPI-F3 board on vendor U-Boot
> > bootflow generated by Armbian SDK[1] and patched OpenSBI[2] to enable
> > Zicboz, which does not in the vendor dts on its U-Boot. Then successfully
> > booted to busybox on initrd with this log[3].
> > 
> > As previous discussion in patch v1[4], maintainer expect more basic drivers
> > ready before really merging it, which would be fine. For other follow-up patches, 
> > that are clk, pinctrl/gpio, reset.. My current goal would target at a headless
> > system including SD card, emmc, and ethernet.
> 
> This stuff is already too late for 6.11 as I already sent my PRs, so
understood, no worry, let's target 6.12, I will send an updated version
once next -rc1 tagged.

> there's no immediate rush. Is there any progress made on creating the
> clock or pinctrl drivers?
I'm working on pinctrl, probably will send an initial version next week
(ideally should include gpio/gpio-irq, or at least will push pinctrl part out..)

for clk, I think Haylen is working on this..
> 
> Cheers,
> Conor.



-- 
Yixun Lan (dlan)
Gentoo Linux Developer
GPG Key ID AABEFD55

