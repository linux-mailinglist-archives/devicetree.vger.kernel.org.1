Return-Path: <devicetree+bounces-239235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9650C62D43
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:01:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CBCA3B3CE4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFFE531A7F3;
	Mon, 17 Nov 2025 07:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="Dz4vBZcH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA09230E0C2;
	Mon, 17 Nov 2025 07:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763366380; cv=none; b=XZffqxX8wl7/D1Zu3f4GgmU7ADrFEvsy4jb0YMCZSJ2NaWmY28Z9T7gsDgaiHN29GccTKN3fMZ1Spi13s9pBO+UbyhsJ+GeZHnkYXhYfq/A31deV8Rqiyb3L6e9QT05kbKCOtGQgRVLkRt20SZQ1IzyxEStfai+3tOMI4fqhnWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763366380; c=relaxed/simple;
	bh=F0On2AxnwukTMdo3GHAKcHzdYrNlJ2C6iF5rLLl3ktU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HQu61QKuYBZ6ybtu/rb34SsoyPoFVr/YgTYFT02gGScmCY8nz+Y2TEN8z7evflSr+SaomACBTsbuAwsi89TpzT4HFzcmAh5eYtymCGfpUZNiJ4eKw4j3cTojiooJYlMNAiniX06G7cQmpIFLs3Yw73Z6qO3Kp2d/tS2dv/18lvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=Dz4vBZcH; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id 5E1961F916;
	Mon, 17 Nov 2025 08:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1763366369;
	bh=JOKJQ8JatjeRW06h90E4OMHQznLX3AwvG8sU+u8Odmo=; h=From:To:Subject;
	b=Dz4vBZcHiEHd9qMtWxfe1G8UEIUDIq4UEnTiHIx4DCzC5pEn9YGLaFymFI2BTPqHD
	 +GljSZ5JiDvk1meIcOJjajYVbpKOhEjTtN/omwQJIogNzlGgbmFAqvDf9afXx/QeIO
	 DCpxf1OPtdA24FwaM10h+NjDSSAatb5icHCBQpZAHkHlWHEOvyTCDQc6gXB0td2q/U
	 3xvGR0BeGEa9gxRy5+vPkuH32HybuPG6mfx9zTqvOsBUBpEizcTzuwrIppLSBUAtDm
	 ty7oI9mC7doDJrC6AmV35cnzhH8akbU7Qx/0LEHYC8Us04kORpyYQ/8hpPoM6Xj8kT
	 OwMdhXTwJPjGA==
Date: Mon, 17 Nov 2025 08:59:25 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Shawn Guo <shawnguo@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	"Kirill A. Shutemov" <kas@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Rick Edgecombe <rick.p.edgecombe@intel.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] arm64: dts: freescale: add Toradex SMARC iMX95
Message-ID: <20251117075925.GA13021@francesco-nb>
References: <20251111151618.70132-1-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251111151618.70132-1-francesco@dolcini.it>

Hello Shawn,

On Tue, Nov 11, 2025 at 04:16:12PM +0100, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> This series adds support for the Toradex SMARC iMX95 SoM and the
> Toradex SMARC Development Board.

I noticed you have not picked up this series, please let me know if you
expect any change on this.

Thanks,
Francesco


