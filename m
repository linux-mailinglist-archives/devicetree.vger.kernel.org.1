Return-Path: <devicetree+bounces-22903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 035CA8094BF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 22:38:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12DD31C210E0
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 21:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A541C58AA9;
	Thu,  7 Dec 2023 21:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="DC7XPaOI"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 517ED4222;
	Thu,  7 Dec 2023 13:34:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=wiHReeZSj80gq3iyvwbxbWSIAfXb873RuI3eHXEfPjI=; b=DC7XPaOIhaEHqWUl31JfcD3u04
	vQeVxBvH0UuFk3cITuvo++8WE9q1qNg0KzWOayk80U3YpjZB1SHM/Su3QWJZxXvrWhGx6qo/kk9no
	/bhy0+fqOfu4X9W+PXVxX0VUbbb78L1gI1J5kAM129XfUFMSnMqPm6PwyOm1wpXs5Aa8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rBM1D-002MG4-KI; Thu, 07 Dec 2023 22:34:51 +0100
Date: Thu, 7 Dec 2023 22:34:51 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: MD Danish Anwar <danishanwar@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Tero Kristo <kristo@kernel.org>, srk@ti.com, r-gunasekaran@ti.com
Subject: Re: [PATCH 2/3] arm64: dts: ti: k3-am642-evm: add ICSSG1 Ethernet
 support
Message-ID: <9e0067dd-4865-4afc-ba42-bda504459ad8@lunn.ch>
References: <20231207081917.340167-1-danishanwar@ti.com>
 <20231207081917.340167-3-danishanwar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231207081917.340167-3-danishanwar@ti.com>

> +&icssg1_mdio {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&icssg1_mdio1_pins_default>;
> +
> +	icssg1_phy1: ethernet-phy@0 {
> +		reg = <0xf>;

reg = 0xf, so this is ethernet-phy@f.

    Andrew

