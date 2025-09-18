Return-Path: <devicetree+bounces-204278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B10B24D11
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 17:18:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52667189091C
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 15:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24292F659E;
	Wed, 13 Aug 2025 15:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="u3E8TZj8"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF8B1BCA0E;
	Wed, 13 Aug 2025 15:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755097978; cv=none; b=myuwIMgaKUJ/uTjBCJr4xXvnjpAq5YjVo4SIqeCiUJ/M688AK1vKlC83ra9MTD6+7TdxiOAU2zmOh9o3VfGAPNuAFCZ9i+pqcp8hiY4BRqsI42sY8ZjeTn2z75Iuz5TOStMFqpt82X25GjZ0f7Zs4I0X/UMB0/9jERRDiWgH30s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755097978; c=relaxed/simple;
	bh=z0nf7nEe5UmaN9hhZAnvfuPeleKckGUCNgev9gRMPlQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NRIjb/qKwrE/fw/CyclAOoEDxT3h/iMnciN4QO1x0mvIDIFaPnXHU13yf9ktmYCQCrOScIpCAoBVfIji6pze0LTVK81eD8/rKkW/Vgp8sQGeSogyCZZlYPtYAXXWMjbUAGpB4jO/ZHvjSRe/yo8Sz22I0Z6Yehem9S6aWLApWNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=u3E8TZj8; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0MR5T/hYqkDcwtTShdWjbf89ggneYNcFMBTM7A8bZyQ=; b=u3E8TZj8BCALAXtWNYOZqfhkw1
	cVibrwPJIj9GaRoSLvXFyJ9Cmr4V62gFGMwCPmzV54apr0vKhsWCA113sW+yaYxxbCHzlJkooNKf4
	HV8b3oyR5bB+gaD5RSjl3KOK6fxxVMbuw2WjIwt7ioxXsxG9P+P/3++k1Fu2+FjhJF+zQ1yAFq9tD
	MjqjmTuF8qHsLds0r2a0I34tm3W50qv4LyemyMt838zZfZfRRHJqj7e8Sobx5DOICPGs3cizAi7Bn
	7q5/KtycVIrEM7HyAf8kA/wmZTJwLyFuu9JFw0j2qJcAxoIuqXxuH3OiSCO3LTLb9JWH6m38sHRwF
	mWKxFRBQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:37712)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1umD9g-0006th-1R;
	Wed, 13 Aug 2025 16:12:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.96)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1umD9c-0005rJ-2X;
	Wed, 13 Aug 2025 16:12:40 +0100
Date: Wed, 13 Aug 2025 16:12:40 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej@kernel.org>,
	Samuel Holland <samuel@sholland.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH net-next v2 06/10] arm64: dts: allwinner: a527:
 cubie-a5e: Add ethernet PHY reset setting
Message-ID: <aJyraGJ3JbvfGfEw@shell.armlinux.org.uk>
References: <20250813145540.2577789-1-wens@kernel.org>
 <20250813145540.2577789-7-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813145540.2577789-7-wens@kernel.org>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>

On Wed, Aug 13, 2025 at 10:55:36PM +0800, Chen-Yu Tsai wrote:
> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts b/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> index 70d439bc845c..d4cee2222104 100644
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a527-cubie-a5e.dts
> @@ -94,6 +94,9 @@ &mdio0 {
>  	ext_rgmii_phy: ethernet-phy@1 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
>  		reg = <1>;
> +		reset-gpios = <&pio 7 8 GPIO_ACTIVE_LOW>; /* PH8 */
> +		reset-assert-us = <10000>;
> +		reset-deassert-us = <150000>;

Please verify that kexec works with this, as if the calling kernel
places the PHY in reset and then kexec's, and the reset remains
asserted, the PHY will not be detected.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

