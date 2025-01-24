Return-Path: <devicetree+bounces-140738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ED7A1B369
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 11:21:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D15E16D503
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 10:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A76451DB148;
	Fri, 24 Jan 2025 10:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9B89+1H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DFA613D520;
	Fri, 24 Jan 2025 10:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737714066; cv=none; b=C5oNgDSqN9qGErdJqw1H9zAZ5UGzJa9FuUWLkuPuctiosajkbfOFjutj5iyC3tqnPvOocFKITCS1tUY8Lra0Tbr1oJ2oaBfLJVsua5BCYwp1A5Tj3ya6VEUzb8vULG0v26K5Zp0MjcvKxF4Pc6TNE4KMDAITVcLvNyv8VQhk5xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737714066; c=relaxed/simple;
	bh=1rxi/IQFlqsCoGaYN4R4JXonbt8cWgjyvBPnXzr8SOc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lLRzIRboLoV4WzMaO/pq/12HQq4sTmNSVw8F0UWLHZEQWFUdFiKycnvpQp51U8hnIz/Q+eIA6yx36njZUbqCLRbLizy5dDb4pl0x4yVwmSo0Hfrq+iBIfOwswJBbtBMgwUOkrxSlrrZeyb/4L56DYoYC7Z+9yQ29rvPycA7GMf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9B89+1H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71B10C4CED2;
	Fri, 24 Jan 2025 10:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737714065;
	bh=1rxi/IQFlqsCoGaYN4R4JXonbt8cWgjyvBPnXzr8SOc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c9B89+1HAsf6XleKtnR0iRfZeUjw82iVnl2pDygJDF/EbvlmUJG5n2gdLbIlZPAET
	 PYjnl+1k1X9jNR+/mC9b+3CGhXWb3ptRjjZApW1F/KNbZ7J8pCXsbRN3DvVDtKmldm
	 QxjjIb9zfEU21WNePhsnAsANpXS9/K7luGGE7G0OTqaApBVwVBYkVSsusMctfOimPh
	 PsD+0DzTPfcelGqZeG4VRKw+HkM784WmpVT7g+BEJ3VR7XoTswYwITGRiJdetmYfgu
	 XmCOD+plmtdyCzuYmYcvMgBQgFRJ9lak0n1MD/QjImM3bRXgdSZnTzD8W5/QDa1Iju
	 z/uqPD1EpEv+Q==
Date: Fri, 24 Jan 2025 11:21:00 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Quentin Schulz <quentin.schulz@cherry.de>,
	Quentin Schulz <foss+kernel@0leil.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: minimal support for Pre-ICT
 tester adapter for RK3588 Jaguar + add overlay tests
Message-ID: <Z5NpjAUFK_cMIWLj@ryzen>
References: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <6dd64754-fe72-4288-9724-b3cdaf193b3b@cherry.de>
 <Z5EY6uMmDCgfOzGO@ryzen>
 <3324197.aV6nBDHxoP@diego>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3324197.aV6nBDHxoP@diego>

On Thu, Jan 23, 2025 at 03:13:01PM +0100, Heiko Stübner wrote:
> Am Mittwoch, 22. Januar 2025, 17:12:26 CET schrieb Niklas Cassel:
> > On Wed, Jan 22, 2025 at 04:38:16PM +0100, Quentin Schulz wrote:
> > > So essentially, if SPL_ATF_NO_PLATFORM_PARAM is selected (the default for
> > > RK356x, RK3588, forced on on RK3308, enabled for the majority of RK3399
> > > boards, enabled for all RK3328 boards) the DT won't be passed to TF-A so no
> > > issue in terms of size on that side.
> > > If it is not selected, for TF-A < 2.4 (released 20201117, 4 years ago), a
> > > DTB bigger than 64KiB will crash TF-A.
> > > If it is not selected, for TF-A >= 2.4, a DTB bigger than 128KiB will result
> > > in TF-A not being able to read the DTB (for Rockchip, that means not being
> > > able to derive the UART settings (controller and baudrate) to use, and will
> > > use the compile-time default instead).
> > 
> > Not everyone is using binary blobs from Rockchip.
> > On my rock5b (rk3588), I'm building the bootloader using buildroot,
> > which is using upstream TrustedFirmware-A (v2.12).
> > 
> > 
> > > In short, I don't know where to go with that additional piece of
> > > information, but this is a bit bigger than simply moving things around and
> > > adding compile-time tests for overlay application.
> > 
> > This is significant information indeed.
> 
> I guess the question is, can this hurt existing devices?
> 
> As Quentin mentioned, this only affects DTs that get handed over from
> U-Boot to TF-A (and maybe OP-TEE).
> 
> So the whole range of things loading their DT from extlinux.conf or
> whatever are not really affected.
> 
> 
> DTs U-Boot can hand over are 2 types,
> (1) built from within u-boot and
> (2) stored somewhere centrally (SPI flash).
> 
> 
> Case (1) is again not affected, as U-Boot (and other bootloaders) may
> very well sync the DTS files, but generally not the build-system, so if
> U-Boot (or any other bootloader) creates DTBs with symbols is completely
> their own choice.
> 
> 
> And for case (2) I see the manufacturer being responsible. Having the DT
> in central storage makes it somewhat part of a "bios"-level in the hirarchy
> and the general guarantee is that new software _will work_ with older DTs,
> but the other way around is more a nice to have (old SW with new DTB).
> 
> So if some manufacturer has a centrally located DTB this does not matter
> until they upgrade, and when that happens I do expect testing to happen
> at the manufacturers side, before rolling out a "bios update"

Personally, I'm all for letting the kernel build the DTBs with symbols.

(I have a patch that I keep rebasing on my tree only for that purpose.
Sure, I could modify my build scripts to build the DTB separately,
but with this patch, I do not need to do anything since the kernel
builds the DTBs already.)

Other platforms, e.g. TI already build many boards with symbols:
https://github.com/torvalds/linux/blob/v6.13/arch/arm64/boot/dts/ti/Makefile#L242-L261


You seems to have been against enabling symbols before:
https://lore.kernel.org/linux-rockchip/171941553475.921128.9467465539299233735.b4-ty@sntech.de/
https://lore.kernel.org/linux-rockchip/1952472.6tgchFWduM@diego/

But if you have changed you mind, and you are no longer concerned about
doing so, then in my own self-interest I'm all for it :)


Kind regards,
Niklas

