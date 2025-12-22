Return-Path: <devicetree+bounces-248736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9130CCD554E
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:31:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 65DF53007D9A
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E091311C22;
	Mon, 22 Dec 2025 09:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="5f7el+Au"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CFB20E005;
	Mon, 22 Dec 2025 09:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766395869; cv=none; b=QsD8/mYDOxxNy98LRFM/kSL1J0cmJFMLcFFdKVSOR10bHEkFwhS1IfQNcYRLs1iANUC1BrpuVbQsxsXI9SGCI0sr7CkVYnxmh/zTONZSirxiOYrCF6PZoR8+VmcldmnQkv+tjL81D+6hLIk9DkAR12xM0oEbdvAtPtWqFPKxknM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766395869; c=relaxed/simple;
	bh=8mW98tAa7APdM5FRWGPCaK9YR8YhpXoFOGzE3CdDfm8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ctOGD1scJNBioeOHMw5S1ulj3aC0jLmUfN1BkXqSlK20mhTeAKYe7Cc8TYvzDlyWbthiLJEct1v6Ys4lwhR2Igz5D5fHTDAC+hug0VSRxscUca1ZhXs5fm+W8FX318u3l5OeFjnjEtJF2Gp4I8eeM2ozWoihIpW8XTtv+By3leQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=5f7el+Au; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=i0YQE5cIMQ8TuSN1tQuMtY/HpGiRBNZ+8oVm3GsMajU=; b=5f7el+Au+oY3EUW9T9yq+a5+yu
	P7p5Qb7ePDeVrVBRvhwxZf8Tc1WDgGr1h0K3L5O0Xz/riY7zjw/kcYgAIolhYGxjeDhpojGZsERbm
	I4OwMLKL5NzmJjnFJmX9o7yX72xzkxc4qf3kwj990i5acruwf2fdw9VhOLKREt0rmA7s=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vXcFY-000AAb-M0; Mon, 22 Dec 2025 10:30:44 +0100
Date: Mon, 22 Dec 2025 10:30:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Kyle Hsieh <kylehsieh1995@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
Message-ID: <c069b452-df22-4afa-bf6a-c48949f40ebc@lunn.ch>
References: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
 <20251222-ventura2_initial_dts-v1-2-1f06166c78a3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222-ventura2_initial_dts-v1-2-1f06166c78a3@gmail.com>

> +&mdio0 {
> +	status = "okay";
> +};
> +
> +&mac2 {
> +	status = "okay";
> +	phy-mode = "rmii";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_rmii3_default>;
> +	fixed-link {
> +		speed = <100>;
> +		full-duplex;
> +	};
> +};

That is an odd combination. You enable the MDIO bus, but don't have
any PHYs on it, no phandles pointing to it. And you have this
fixed-link. It makes me think you have an Ethernet switch on the bus,
and this connects to it?

    Andrew

