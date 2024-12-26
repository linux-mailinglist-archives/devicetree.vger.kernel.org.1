Return-Path: <devicetree+bounces-134169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B85269FCD86
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 21:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D15D163027
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 20:10:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A471614831C;
	Thu, 26 Dec 2024 20:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="zksnfj9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40BE42AA1
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 20:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735243809; cv=none; b=D3nCAb0U0+bBSaxERUhp/bFHxbWnwsxCITn3iNneAfcUWq+f49gFOA1mCFPSzNg7EHmJ7OSiN+ddUb/r/4WrhMxcShwixTc0XALGnTHtWBb5fPKoT8DhRcrKLipDvoNC/xNDLU/LULanJKCZ91LZw98zNpfvSOV4lQxfX1Q2E2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735243809; c=relaxed/simple;
	bh=uc/EWK544SMM+WzyxvSoFPHw3v8MxPlgP+HTTWU4zrM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oC8J+0edPwaOlOL9HLpBELpTKT1GptRgw7J13smoNNlowZi9VS5pSRTxOiGQ8POULeG4gDmGMxOrhiojbQb1Z/flK+dwA34nPHo+mzwQ4lhLCrTsXNQ/Vmx667N8e5QRSMXHgSXYWI7QnIWZTlOVEu2pMD8TCbtsULDRDA+ydjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=zksnfj9Q; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uHADjZWdw1Z80SAwttCPxxV6YOm9qJgtYyMVsffjvCI=; b=zksnfj9QozQvXiGmR2GECQ7zAl
	0loT5RaZMAEbvYP6vpxMI0mZGboIXloa7UDtzZunpIoyEhkY7cNmybiPWrDENyQpx2kzAjFztTYfc
	Ruefs4RqBFgMzqt5hvsPCDdy+g7osrd/6emnKWmk9Z6OFB6yR1mSWuH+DLAKO3/A4ADabsNUVp0VQ
	P8yW3nHc1omD9KNlULUJjtra6fB771DckkT2d+960JZYBveuyTuhtLBl6WdzT//bJuIpNyV9/PBzL
	7buacJE/E0O/hSVFgzS5FqVO1LJCxM0LcPorggtEJQiTp6L6HQWmk3gS2V0rmeJPu9KMyLhCkrpr+
	i0JbxA3Q==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQuBI-0007A9-7q; Thu, 26 Dec 2024 21:10:04 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add HDMI1 node to rk3588
Date: Thu, 26 Dec 2024 21:10:03 +0100
Message-ID: <7380278.lOV4Wx5bFT@diego>
In-Reply-To: <20241226173530.37037-1-jagan@edgeble.ai>
References: <20241226173530.37037-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jagan,

Am Donnerstag, 26. Dezember 2024, 18:35:29 CET schrieb Jagan Teki:
> HDMI1 Output is available RK3588 (not for RK3588S).
> 
> Add support for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Cristian already has a series open, adding hdmi1 support [0].

Also please note the dependency note on the hdptxphy 0+1 handling
patch series.


Heiko

[0] https://lore.kernel.org/linux-rockchip/20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com/




