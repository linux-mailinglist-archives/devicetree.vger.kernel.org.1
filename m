Return-Path: <devicetree+bounces-207638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 760CAB301FF
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 20:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3097EAE0683
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FCC22FB60E;
	Thu, 21 Aug 2025 18:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="gyeHZKLK"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C422E7BC0
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:25:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755800728; cv=none; b=T1rHdia/m3X1sP1e05VAQb5I+OKcPFiUoTfSuuxjs5EUyaaM3Og6LtIKjXgUbAcZ0CRTSzCMBhLVd+bYuFOvbvFIkZebB6jw4bIbSZzjFVkOPYLrjAunBio1UZdGGuveZBWlAsdflHdGNyuPsRXacyJrbQgoV7kEJb40rw2rg7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755800728; c=relaxed/simple;
	bh=pbanxBcIBROCvtzp3uXDPx7b1osvFRO/HUsdht5IgvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MoOhRvsAusrLeHkFOQWaAIePn8s5zwoyLD6jcfTRBmPWWf3ZOy2ZHDYS+Xa936KKze+03cUIeWR656MP0zlWFddp5oqGAJbxEX7r5i39qBoeVoDe5TrIz/U8fs8AH9C0stWlnklxqnAb2ANuq28RSNcsvvQ94QXaqOWyrjxag3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=gyeHZKLK; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=BMkb1buTvlUfPqvdGmKnTZ6PYBXWNXgx6s2vhkMyY84=; b=gyeHZKLK5S2Dq4VaZyLTGgq+q9
	AnRcfuoZvy9rHNpDM1DSUzVP5zPgVOlItlZoAv2VgTdtI6pd9HXPoYTpfF/heAKCL2niw8sGjL8ht
	nVSbl3dIT0fx7o02PJW7oCl6+alHHUlNxD0PBr+hipbneDarsZqdTFl4BesNeTR4CD8Q=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1up9yT-005U9b-Sq; Thu, 21 Aug 2025 20:25:21 +0200
Date: Thu, 21 Aug 2025 20:25:21 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Gregory Clement <gregory.clement@bootlin.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH v2] ARM64: dts: mcbin: fix SATA ports on Macchiatobin
Message-ID: <4d7d6e91-7ebe-4efa-8c52-949004a20812@lunn.ch>
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

> Hi,
> 
> I sent it at least twice..maybe this new was added in between.
> But i have no marvell board for testing so i cannot verify my changes are correct.
> I only tried to fix binding errors.
> regards Frank

You might be able to use ./scripts/dtc/dtx_diff

Generate the DTB before the change and after, and they should be
identical if the disable in the dtsi is correctly re-enabled in the
.dts file.

It would be good to check all Marvell DT blobs, both arm and arm64.

     Andrew

