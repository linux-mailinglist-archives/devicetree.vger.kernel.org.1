Return-Path: <devicetree+bounces-207628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0EBB301B2
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 20:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE1BD3B7BBD
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0EBC3115B8;
	Thu, 21 Aug 2025 18:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="NbUsgwLr"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264841FE44D
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755799587; cv=none; b=auap3QoOS/MTm8PbYRJxMvV700OELhEmo+A9xSIEXqmcxM4B0vGM9argdyI060gcojzYXxP4OfmryzCwgFdflZqdqUlVfj6xf6MDQ3jiYhwKhPnevlOcyZMIbpG9CC7PbjcWAcPGPe1z75PXGSvQpT7hHpP5ntMmil4tic5W1bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755799587; c=relaxed/simple;
	bh=gXdkZCMbVit4H4f9IGUCeg5+UNllBn10G6K7Fmgx1Fg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KZfNYOZm3ap5VvbbDvyve7/o08usR4wMgD78SDtvVhTcQ9vDsUSmjH23o+T0C8xjIuw8jgZ+u7rYI5H4pCogGaY08cGtmH2/0re3xfbgjTaiowJ3PVl+2aC01MOm2g/QSMKtqSnd8RjzQQbWcOAThSV+FyOeQSUXHNsJAyzxUCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=NbUsgwLr; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vuQY2HuepKB5t5U67BTcopXXonRlXHtdLgfJBFihPDE=; b=NbUsgwLrQXI4L+IQKROV3GcfNQ
	FRXJpQOKFHvHUFbaIbQ5mFL3W1xFqWpuwAMC8aNcbfCieNjYu3ELpr6yZvCZPebQ2WXWklJLc2QMX
	W66uybxtg1x8qyNxxKMj95XPOBSNOIpdL/QXqc11JDuHI+p1NbqRez9VzrSk8IaYOC1fyNSTMczVu
	mHBuk5k9g7/xVFB8zljWpmXPhlo7KQD6iODCCGYNd2JOOa0XMcVajeFm083zTeb0uX3wIcxED2pEP
	D1qt+90d8L5VzPbwFFG+6KrgIIjzJ31wNj47bbTfwf6hylnvrb0aVrw8+ocKMMf9syXyjdZ6bEXsd
	GzkUit/w==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:38870)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1up9g7-000000001Tf-0XXn;
	Thu, 21 Aug 2025 19:06:23 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1up9g4-000000001Gr-27Qf;
	Thu, 21 Aug 2025 19:06:20 +0100
Date: Thu, 21 Aug 2025 19:06:20 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Gregory Clement <gregory.clement@bootlin.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v2] ARM64: dts: mcbin: fix SATA ports on Macchiatobin
Message-ID: <aKdgHGElBEyHeP67@shell.armlinux.org.uk>
References: <E1up9Jw-00BbOE-VC@rmk-PC.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1up9Jw-00BbOE-VC@rmk-PC.armlinux.org.uk>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Thu, Aug 21, 2025 at 06:43:28PM +0100, Russell King (Oracle) wrote:
> Booting 6.16 on the Macchiatobin, I discover that I can no longer
> access my disks, and thus the userspace boot fails. The cause appears
> to be that one of the SATA controllers doesn't have any ports:
> 
> [    1.190312] ahci f4540000.sata: supply ahci not found, using dummy regulator
> [    1.196255] ahci f4540000.sata: supply phy not found, using dummy regulator
> [    1.202026] ahci f4540000.sata: No port enabled
> 
> This is as a result of the blamed commit below which added a default
> disabled status to the .dtsi, but didn't properly update the mcbin
> dtsi file. Fix this regression.
> 
> Fixes: 30023876aef4 ("arm64: dts: marvell: only enable complete sata nodes")
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Frank,

I think this is also similarly broken by your patch:

arch/arm64/boot/dts/marvell/armada-8040-db.dts

as you've updated the ports on one SATA controller but not the other
in the same way as you omitted the second controller on mcbin.

I'd also question this:

arch/arm64/boot/dts/marvell/cn9132-clearfog.dts

as you updated the other cn9132, but not this one which was introduced
in 6.11, and your change was in 6.13. Please can you look at both of
these and send appropriate fixes?

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

