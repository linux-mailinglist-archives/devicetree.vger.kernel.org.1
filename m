Return-Path: <devicetree+bounces-207669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF4BB30583
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 22:31:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B902D188E969
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 20:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B3282C029C;
	Thu, 21 Aug 2025 20:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="C2KVTl9D"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648D52C029B
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 20:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755807082; cv=none; b=YNsHc9GIDPvkKXCqw9KQGS1qEffi+5psI6mAqLc82fLTJkuzfR2lPLLwG5vNkWPcSwjg5UjkhSsWCXcgdP8VEEH4PdQeABciVvXphQQO5WTww7R2iX90crB/QxCZr5CXGtAojYfWVNtQpjrpm9Ku/0IkX7DnyG+XDrw/+LqBB6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755807082; c=relaxed/simple;
	bh=YQGvu8WTmPCPzqWakZNI87hlIRMhqvvRz4WlHiv/L3E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZoRe9KZzuovXrd7QuZ1DH31OoXhCAUt/hGmf2p0KVFf+Ii8fkcqwokmfR2H+j1+OZVTcNwtd1xgu9FUtbs6YLvK/b4FQjM2Suu4aIFa+hrZQdPHCIC0OlXrup1eO/sjLKj7E3h0AQEE82vDVhT195/J7GLoe3y6klxiR2CcYiGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=C2KVTl9D; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=45/oL7TH5+TGvWd8PazpVpDzPuV3807fNqnSSyv5vlE=; b=C2KVTl9Dlq7FMvTgORUrh43h8q
	0gozHCii4BfC9lUpgox1CnoDP9nxCwjv0l/HrKnsAXnHyECWvWUprDtPOd8xfjQphKKE4LfDEsTg9
	9zkADyLw1XZXh9gyS8MFIjjkVVqDE/txbb9SSmOfDIuyUip1h+SC/04rVId9xR+51YPKKvG71qcJL
	SruIRj0e9JC4HAcjXKZ5LCydV1xrUuq5HqOihi4ZFJP4MVyo/8wHiRnWOqzj6UIDmZgJRqVPpc9bz
	hVklpy/uWsV5T8lJ8LQbLKhBkriq8wqAC0RZ6ZYYqYWs82jQp8XBQIFEZXA452ja7HUBv1RlpHZ4Q
	wx7U30qQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56772)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1upBcz-000000001bF-1JAE;
	Thu, 21 Aug 2025 21:11:17 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1upBcx-000000001NS-3Mk2;
	Thu, 21 Aug 2025 21:11:15 +0100
Date: Thu, 21 Aug 2025 21:11:15 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Gregory Clement <gregory.clement@bootlin.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v2] ARM64: dts: mcbin: fix SATA ports on Macchiatobin
Message-ID: <aKd9Y4pQ7pMFL3iY@shell.armlinux.org.uk>
References: <E1up9Jw-00BbOE-VC@rmk-PC.armlinux.org.uk>
 <aKdgHGElBEyHeP67@shell.armlinux.org.uk>
 <A598C273-6EEA-4F86-8E5E-A07F80295AA6@public-files.de>
 <4d7d6e91-7ebe-4efa-8c52-949004a20812@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4d7d6e91-7ebe-4efa-8c52-949004a20812@lunn.ch>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Thu, Aug 21, 2025 at 08:25:21PM +0200, Andrew Lunn wrote:
> > Hi,
> > 
> > I sent it at least twice..maybe this new was added in between.
> > But i have no marvell board for testing so i cannot verify my changes are correct.
> > I only tried to fix binding errors.
> > regards Frank
> 
> You might be able to use ./scripts/dtc/dtx_diff
> 
> Generate the DTB before the change and after, and they should be
> identical if the disable in the dtsi is correctly re-enabled in the
> .dts file.

I'm not sure that would help, because before Frank's patch, there were
no "status" properties in any of the sata-port nodes. After Frank's
patch, we end up with a mixture of "okay" and "disabled" depending
on whether the port is actually used - and the problem here is catching
all those that are actually being used on the hardware. In other words,
those notes that should have status = "okay" rather than status =
"disabled" added to them.

As I just stated, using grep:

$ grep -rA4 sata-port@ arch/arm64/boot/dts/marvell

is sufficient to find all the locations in the dts(i) files that have
a sata-port node defined, and in the context gives the rest of the
node properties, thus showing whether there is a status property present
or missing.

This is _exactly_ how I've identified that there are two more platforms
that are similarly broken.

This is not something that one can trivially check by doing a boot test
on platforms - I missed it despite booting the kernel on another
Macchiatobin as it's only a single kernel message amongst many that
says that something's wrong.

The only real way of doing this kind of change is to use grep and
similar to check that all sites have been caught.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

