Return-Path: <devicetree+bounces-140571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE3BA1A588
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 15:13:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 796301884886
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 14:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F1920F98A;
	Thu, 23 Jan 2025 14:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="PCE/eU1c"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993EC38F83;
	Thu, 23 Jan 2025 14:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737641602; cv=none; b=eBHVaTNawLg1iubjkxrCl++Pt5MLX40wFYoIwOkLAXUxyTVbazLYO8b6gxtiRypbLPebg3rwMpuyOzZOzL0r46/qso2GXYTek9Bb6U5+AIv5bhBuKGMTaGZgqLrZOamtHt+UxUmKvA76NxXH3YnEcyNvmx96HoWAtRcJ5CpTrzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737641602; c=relaxed/simple;
	bh=q8LmTJKOJQezaPFS6He6lElBi8erZyqZVVDeVrmDsyo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ce/EghGT+OoUGs7cT88BvhvrX0Ky4hYZHvvO9vTz5rZdn28UtJRc4GgnMkza4FPw0b9DS0jLCR0P5uoMAmOa7jq/0sjU8zgtK18ANVsvGht+e7V3i5YCwBVPJ2BxXi3WeV4naKJNxqsbt6XdPjInIQoPFPuJq1Cq788d1n8nRO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=PCE/eU1c; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=p45VRGSOINDkIe67fS7iMHwxgFxopSCi/AOBqXhbGmY=; b=PCE/eU1cR5E4izlRpAsI4T/9kB
	wMjBLLP7jpiRt5hRywPqLzFOP9znGs/41NBm8LY51kAtFu1U486ybynDSB+4bowYWKeroh/3Afxkr
	K8Bl7ANBbmj7RGQLiNgvCvqZbzgrDS/zfngZqNgpM6RCLJjSse87rIfBn52s5IZNUVox3/pNMwe5I
	Ql6wQhMndduKU4g9Xx85tx0if7cyxvZB0KgMQkIyhcTJ5yYtKACoVk7JhEk8eefjxrNgfvJRcOTGV
	8jGTwKL9UGV69qWAx8jEoYYGw5ULQB6gOpS62MZ8CKdtzQjwiPYO3OD2O46YAcuWUkiInIpSZzxYU
	Bewwg5HA==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1taxx8-0007CK-B4; Thu, 23 Jan 2025 15:13:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Niklas Cassel <cassel@kernel.org>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jagan Teki <jagan@edgeble.ai>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v2 0/3] arm64: dts: rockchip: minimal support for Pre-ICT tester
 adapter for RK3588 Jaguar + add overlay tests
Date: Thu, 23 Jan 2025 15:13:01 +0100
Message-ID: <3324197.aV6nBDHxoP@diego>
In-Reply-To: <Z5EY6uMmDCgfOzGO@ryzen>
References:
 <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <6dd64754-fe72-4288-9724-b3cdaf193b3b@cherry.de> <Z5EY6uMmDCgfOzGO@ryzen>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Mittwoch, 22. Januar 2025, 17:12:26 CET schrieb Niklas Cassel:
> On Wed, Jan 22, 2025 at 04:38:16PM +0100, Quentin Schulz wrote:
> > So essentially, if SPL_ATF_NO_PLATFORM_PARAM is selected (the default for
> > RK356x, RK3588, forced on on RK3308, enabled for the majority of RK3399
> > boards, enabled for all RK3328 boards) the DT won't be passed to TF-A so no
> > issue in terms of size on that side.
> > If it is not selected, for TF-A < 2.4 (released 20201117, 4 years ago), a
> > DTB bigger than 64KiB will crash TF-A.
> > If it is not selected, for TF-A >= 2.4, a DTB bigger than 128KiB will result
> > in TF-A not being able to read the DTB (for Rockchip, that means not being
> > able to derive the UART settings (controller and baudrate) to use, and will
> > use the compile-time default instead).
> 
> Not everyone is using binary blobs from Rockchip.
> On my rock5b (rk3588), I'm building the bootloader using buildroot,
> which is using upstream TrustedFirmware-A (v2.12).
> 
> 
> > In short, I don't know where to go with that additional piece of
> > information, but this is a bit bigger than simply moving things around and
> > adding compile-time tests for overlay application.
> 
> This is significant information indeed.

I guess the question is, can this hurt existing devices?

As Quentin mentioned, this only affects DTs that get handed over from
U-Boot to TF-A (and maybe OP-TEE).

So the whole range of things loading their DT from extlinux.conf or
whatever are not really affected.


DTs U-Boot can hand over are 2 types,
(1) built from within u-boot and
(2) stored somewhere centrally (SPI flash).


Case (1) is again not affected, as U-Boot (and other bootloaders) may
very well sync the DTS files, but generally not the build-system, so if
U-Boot (or any other bootloader) creates DTBs with symbols is completely
their own choice.


And for case (2) I see the manufacturer being responsible. Having the DT
in central storage makes it somewhat part of a "bios"-level in the hirarchy
and the general guarantee is that new software _will work_ with older DTs,
but the other way around is more a nice to have (old SW with new DTB).

So if some manufacturer has a centrally located DTB this does not matter
until they upgrade, and when that happens I do expect testing to happen
at the manufacturers side, before rolling out a "bios update"


Heiko



