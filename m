Return-Path: <devicetree+bounces-243855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B6548C9DD40
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 06:55:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 611E734A5EC
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 05:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71FE1288C2C;
	Wed,  3 Dec 2025 05:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Wuy1YbS0"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FFC274B44;
	Wed,  3 Dec 2025 05:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764741342; cv=none; b=AYuIOkqb//VLl4Vyp2V+/YDhy9HlTaZgwMAzHwMn5Dnya6WNrmz3XqF2/YIEna94Hfd+d3JmxON0Do9agioYvbP/N/9l1riqx4fD+Yk75kxYBKsjbBSZtdfhE/uZDTNs8Q1+Q4P/vBVy8fMgVTGszvxuXKDnqvbyISb84guCNPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764741342; c=relaxed/simple;
	bh=Zt1X1IcZPRAdEgh00iL8e6/dAz/J6p6qgR5VZMG7S4w=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=L2Uv0jHrG6jPAOiRGvpsaaMaZZEI8P9blbK13sETobbDk2MBXnrblomSKT00ZSzMm3a6up4sL7fP7b0j3WK03SqlirFZe49niOQecUn1w8jnqtB1Myg8xH6w8pSI7W0dPiaJS1NCKKp+FI2inEPGNOAfM41btROt6BZmufwMCr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Wuy1YbS0; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1764741331;
	bh=Zt1X1IcZPRAdEgh00iL8e6/dAz/J6p6qgR5VZMG7S4w=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Wuy1YbS0Wa5ljm3DHFmlc6wSh1Mw9H59CYdGUMrhUfSqSXtQ26sbz9vuECfFgBW5g
	 qFXss1OOAQc4nKjr2VuU1G5KaLodBe2J5Rk7POyVMXMmjDRrl/BGJCw40eitHomkmz
	 tEQsvAVWA8WC36VVzCfWBTDBCLI2iJqw5wlKrPCPMKpEeCOrD80K0G3LPbyT14QfXV
	 mWFv3LBwDF0MF6JSNtctvhWKaB8C3QTbQuTvnocx1aPsNBs6IDae2AUnEKgYjjS22u
	 /irKXOvwFVkwP9inl2tyqZmRaZV3omq4Ou5AEo22mmOLbdI/51ofTykz30jxSDDy4X
	 Z5ja2MpHpnKIg==
Received: from [192.168.68.115] (unknown [180.150.112.216])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id F03137B6A2;
	Wed,  3 Dec 2025 13:55:30 +0800 (AWST)
Message-ID: <64349026443d6178487db34233d24478821a1ca1.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2] dt: aspeed: clemente: move hdd_led to its own
 gpio-leds group
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: alex.ts.wang@fii-foxconn.com, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel
 Stanley <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	george.kw.lee@fii-foxconn.com
Date: Wed, 03 Dec 2025 16:25:29 +1030
In-Reply-To: <20251127-leo-dts-add-shunt-resistor-v2-1-c77dfbfb826c@fii-foxconn.com>
References: 
	<20251127-leo-dts-add-shunt-resistor-v2-1-c77dfbfb826c@fii-foxconn.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Thu, 2025-11-27 at 17:44 +0800, Alex Wang via B4 Relay wrote:
> From: Alex Wang <alex.ts.wang@fii-foxconn.com>
>=20
> The gpio-leds driver requires all GPIOs in a group to be available;
> if any GPIO in the group is not available the whole group will not be
> created. The hdd_led GPIO is only present after standby power is
> enabled, which can prevent other LEDs in the same group from being
> created and blocks properly setting 'bmc_ready_noled'.
>=20
> Move the 'hdd_led' node into a separate gpio-leds group so that other
> LEDs are not blocked and the 'bmc_ready_noled' flag can be set
> correctly.
>=20
> Signed-off-by: Alex Wang <alex.ts.wang@fii-foxconn.com>

I've applied this, however, I fixed the subject so it has the usual
'ARM: dts: aspeed:' prefix, and added the following Fixes tag:

Fixes: b5dd16228216 ("ARM: dts: aspeed: clemente: Add HDD LED GPIO")

Andrew

