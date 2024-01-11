Return-Path: <devicetree+bounces-31383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F3A82AFD2
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 14:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9C611F22D4D
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 13:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70FDB1802D;
	Thu, 11 Jan 2024 13:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="abaWSxhN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48371179B4;
	Thu, 11 Jan 2024 13:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 9A5A560886;
	Thu, 11 Jan 2024 13:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1704980305;
	bh=FCnnqcyu0Q8FralNfsk9nn3nMle859yb2J4QpnmTM3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=abaWSxhNhxpoNodu/kEyx1hIfdRWkYYtpEScylEcamSB1cQUaEcE379mWOQmM8vTz
	 g1IIzZzgwUh0+qE9E65G6C0hb7SgsNekb6mZdXBS5bEg3xtFOCHD9s/z8Ycqzoeg+W
	 hb8/DBpXXL9AdFbnL05jT3k03ymaGT4UF5bhvlH8mXHl64VlF33WIgR8QRFqg8/6qe
	 6gHH0xxn9Nn4hglRJgwOXBhFpVQzdwS8ugCO5AGhiOvz1vXA90Q3DE/KgvrGTNsIQ5
	 WXsJgi7Kd5oYTqEkQxRfHe9p5e7884rc9dm3omMjqA9448XUyPDQ41aBhw8yu8n/H6
	 Et3aG4RssZVSQ==
Date: Thu, 11 Jan 2024 15:38:04 +0200
From: Tony Lindgren <tony@atomide.com>
To: Nishanth Menon <nm@ti.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 11/16] arm64: dts: ti: k3-pinctrl: Add MIT license along
 with GPL-2.0
Message-ID: <20240111133804.GI5185@atomide.com>
References: <20240110140903.4090946-1-nm@ti.com>
 <20240110140903.4090946-12-nm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110140903.4090946-12-nm@ti.com>

* Nishanth Menon <nm@ti.com> [700101 02:00]:
> Modify license to include dual licensing as GPL-2.0-only OR MIT
> license for SoC and TI evm device tree files. This allows for Linux
> kernel device tree to be used in other Operating System ecosystems
> such as Zephyr or FreeBSD.
> 
> While at this, update the GPL-2.0 to be GPL-2.0-only to be in sync
> with latest SPDX conventions (GPL-2.0 is deprecated).
> 
> While at this, update the TI copyright year to sync with current year
> to indicate license change.

Acked-by: Tony Lindgren <tony@atomide.com>

