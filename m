Return-Path: <devicetree+bounces-22904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B65A8094CF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 22:40:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8A202820A6
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 21:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFE6840C9;
	Thu,  7 Dec 2023 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="vKruNvuT"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 729A51727;
	Thu,  7 Dec 2023 13:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=cHb2MmXIvwkbnnHzcw6cJDjztQsevODKkzVNn/O3NHA=; b=vKruNvuTa46KQACj0l4AdOG/mB
	ldZrQ4NjSze1gnS+qVrp675Roal2FKEQUijTvsJNd8ppMPx5bTnjvT/QNGKnMD9fGPVOR7nnAsFzQ
	C7ekhMIW5eyucghEIGxLj4mD45QhGQI24jiWRstGJchHbjFj+K0FdUhb76BFt6tnzTQg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rBM6d-002MMJ-Jj; Thu, 07 Dec 2023 22:40:27 +0100
Date: Thu, 7 Dec 2023 22:40:27 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: MD Danish Anwar <danishanwar@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Tero Kristo <kristo@kernel.org>, srk@ti.com, r-gunasekaran@ti.com
Subject: Re: [PATCH 3/3] arm64: dts: ti: k3-am642-evm: add overlay for icssg1
 2nd port
Message-ID: <fe6499b3-fbda-4e2d-9b5e-92cc60d3a79c@lunn.ch>
References: <20231207081917.340167-1-danishanwar@ti.com>
 <20231207081917.340167-4-danishanwar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231207081917.340167-4-danishanwar@ti.com>

> +	mdio-mux-2 {
> +		compatible = "mdio-mux-multiplexer";
> +		mux-controls = <&mdio_mux>;
> +		mdio-parent-bus = <&icssg1_mdio>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		mdio@0 {
> +			reg = <0x0>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			icssg1_phy2: ethernet-phy@3 {
> +				reg = <3>;
> +				tx-internal-delay-ps = <250>;
> +				rx-internal-delay-ps = <2000>;
> +			};
> +		};

That looks odd. A mux generally has > 1 mdio bus. Otherwise its not
really a mux.

And this mux hardware exists all the time right? So it should be in
the .dtsi file.

	Andrew

