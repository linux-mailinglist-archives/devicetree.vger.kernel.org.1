Return-Path: <devicetree+bounces-207667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E346EB3034D
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 22:00:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A11E5AA1868
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 20:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E2C25B31C;
	Thu, 21 Aug 2025 20:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="jS+BWXoc"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E95A2749C7
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 20:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755806427; cv=none; b=I9OPPmaFHY/iwa1EKdP6gDGNWrO926cBCUMA//6EagQtHTB7Xv8qU0ykMNMjZK/P79Gr0OXs/TiiLn7NUp+uIClu0d6g0N6mIpziOdRUVUqyBTCZDRkB0A7izFUJOLGmaD54mdyck0XLoXfHIxARIZE+4L1PUliYX4+8d66GqZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755806427; c=relaxed/simple;
	bh=r0gXAtCV7EUCFkV5gjbF2aQx3aCD44zbAzyaUi6as9o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fp/jKWRUOkyK5vQZO/81+CcDcKwJ20pI/U/UQpGIuFseWNkf9eBjN2z3LPEfsrtUc7Q7a0Qw7C/0NlbdbzrmpedI97WxS8D7f+msHx8A1rc8nS2ysX/qQYEFaQ5HlluQwd4TRlBB7eVlqQdmMld83fxh7/7pGWqTVogILp0T1wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=jS+BWXoc; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LEW2I1czzyMeSYLfep8ZMRopXKRwX2OobVyqzpp69zA=; b=jS+BWXocQtJe2lsrRpis+FI719
	Yq2WuUIGnfIs8pxCZrjqDBhbhqygL7Wb7fbzdGNoK6Fk++4O2W/0YBat8PmYlhqs/9RwtgCNGtXqu
	9RvMIc+3o88b6G3mQ1lG7UZw7v7xr4Glx5R+W7uzyeMoDMaJ2p3toSenoLLdIFOhbj1xhLLpRaOb1
	z+E6f6zCIjtSnLCo2VJVWSwTMbUGmUi63iQNL1L1povm7BTH2E9GzhXNgWpTUOkBHJNcOkMx8L7c4
	znFhOeLEc4bhqVZerWfO/44/lWexEaxwYji3Ix3yuLeVpF8nQIdnOZYcDuH0VkB75Og2iz+mZ/ZTx
	+oh5wVqw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:40740)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1upBSQ-000000001au-1ESV;
	Thu, 21 Aug 2025 21:00:22 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1upBSO-000000001MS-2U9R;
	Thu, 21 Aug 2025 21:00:20 +0100
Date: Thu, 21 Aug 2025 21:00:20 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Gregory Clement <gregory.clement@bootlin.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v2] ARM64: dts: mcbin: fix SATA ports on Macchiatobin
Message-ID: <aKd61N0AptNzYc0Z@shell.armlinux.org.uk>
References: <E1up9Jw-00BbOE-VC@rmk-PC.armlinux.org.uk>
 <aKdgHGElBEyHeP67@shell.armlinux.org.uk>
 <A598C273-6EEA-4F86-8E5E-A07F80295AA6@public-files.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <A598C273-6EEA-4F86-8E5E-A07F80295AA6@public-files.de>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Thu, Aug 21, 2025 at 08:20:07PM +0200, Frank Wunderlich wrote:
> Am 21. August 2025 20:06:20 MESZ schrieb "Russell King (Oracle)" <linux@armlinux.org.uk>:
> >On Thu, Aug 21, 2025 at 06:43:28PM +0100, Russell King (Oracle) wrote:
> >> Booting 6.16 on the Macchiatobin, I discover that I can no longer
> >> access my disks, and thus the userspace boot fails. The cause appears
> >> to be that one of the SATA controllers doesn't have any ports:
> >> 
> >> [    1.190312] ahci f4540000.sata: supply ahci not found, using dummy regulator
> >> [    1.196255] ahci f4540000.sata: supply phy not found, using dummy regulator
> >> [    1.202026] ahci f4540000.sata: No port enabled
> >> 
> >> This is as a result of the blamed commit below which added a default
> >> disabled status to the .dtsi, but didn't properly update the mcbin
> >> dtsi file. Fix this regression.
> >> 
> >> Fixes: 30023876aef4 ("arm64: dts: marvell: only enable complete sata nodes")
> >> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> >
> >Frank,
> >
> >I think this is also similarly broken by your patch:
> >
> >arch/arm64/boot/dts/marvell/armada-8040-db.dts
> >
> >as you've updated the ports on one SATA controller but not the other
> >in the same way as you omitted the second controller on mcbin.
> >
> >I'd also question this:
> >
> >arch/arm64/boot/dts/marvell/cn9132-clearfog.dts
> >
> >as you updated the other cn9132, but not this one which was introduced
> >in 6.11, and your change was in 6.13. Please can you look at both of
> >these and send appropriate fixes?
> >
> >Thanks.
> >
> 
> Hi,
> 
> I sent it at least twice..maybe this new was added in between.

Nope. You patched Macchiatobin badly - you failed to use grep to find
all the sites that you needed to update.

$ grep -rA4 sata-port@ arch/arm64/boot/dts/marvell

would've shown you where you need to patch.

The timeline here is:

- I added support for Macchiatobin in November 2018. There was no need
  to describe the ports at that point.

- Miquel Raynal updated the description in July 2019 to add the
  sata-port nodes for each of the _three_ ports that are present on
  the hardware.

- You patched the file in January 2025, only touching the cp0_sata0
  device, ignoring the cp1_sata0 description below it.

So no, it has not been added since, it was always there.

> But i have no marvell board for testing so i cannot verify my changes
> are correct.

It will only show up if one has a platform that has disks connected
to all three SATA connectors, otherwise it's lost in the kernel boot
log noise.

The only way to do this is to take care, use grep to find all the
sites that need to be updated, make the changes, and then check again
using grep that you have indeed got all the necessary sites.

> I only tried to fix binding errors.

I have to say that this is the root of the problem - while it may
seem helpful to fix warnings etc one sees, it is only helpful if they
are done carefully and with utmost care to avoid the attempt causing
a regression.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

