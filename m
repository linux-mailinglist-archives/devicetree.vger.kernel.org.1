Return-Path: <devicetree+bounces-174484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB02AAD625
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 08:33:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48430985522
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 06:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BDC0214813;
	Wed,  7 May 2025 06:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="V6f3LQ9R"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501C5211479
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746599546; cv=none; b=aX1xDbvgvV6oBmCKTabS7tf1in64fQrdYHiaHxc0Hlth9fZ19g10PXEjrA1xd7G7ozksthXNG+51USnJeH3ohgCVAw6KN0ZkPhbdbYfb2KFAtC3/FPmkmsyude6fqY1lEKQoLnQxBnIaeKMyAfwPvT8B0O50F+o2g9EH2H9i8hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746599546; c=relaxed/simple;
	bh=pQwZxWHeh1IWoTKVDUIvMk5q8p0aY4NYl0A59t/5Xzs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BRsg7N0pw0+meIP0iPEBMMgCbFjF3va4cJlAc8avS0NgjvGqxMRDlxXKIhgUgQ78s58IPXk89kYBGzKafv6wvrOPeyqt1858lFvlHEDk0TKftDV6hsOCNlOEOQdYyex1MqSFlP1hAZerHYgjgkvnMo1XGS67g1nQjwgdxUrlzn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=V6f3LQ9R; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=chmXwA64MAAzTh+Y3uuSjRyk0/eZPBPU5XbIWQeCSMw=; b=V6f3LQ9R9uxfhZ2w/mBMAE8m/w
	FlCr6+I3xzE6kTeN6IG2RmPb1Ibcc/7n0puf7RYyWeO1xQVuaaEtNu4mqWNG8S/pBRNs6KKMLvkjj
	3ZtbnI3nXhmxGCnAl2mu0baSDoz96hEPd3VGg64O0Q5slKYdYeiG9v9/cEsc5c8k43fwrx8g4rM0B
	MNaWkk4CYgxVxUfU3tDU5BkzYr1wZk3xoqelQvF4cCzZvcE1sO7pB+m3Dtqjzm2vgH33lMT0zkSpT
	yrouMwx6oJC0s7sbGYUawdbcf+5E4828BFVQZbpo3nfMBrrnic0D+I68a/Thb8MHiuIrQzVChP0xq
	tRramUNg==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uCYKB-0008As-Bd; Wed, 07 May 2025 08:32:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3566-rock3c
Date: Wed,  7 May 2025 08:32:01 +0200
Message-ID: <174659951055.1528016.5792676162591810152.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250506195702.593044-1-pbrobinson@gmail.com>
References: <20250506195702.593044-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 06 May 2025 20:56:55 +0100, Peter Robinson wrote:
> As described in the radxa_rock_3c_v1400_schematic.pdf, the SPI Flash's
> VCC connector is connected to VCCIO_FLASH and according to the
> that same schematic, that belongs to the VCC_1V8 power source.
> 
> This fixes the following warning:
> 
>   spi-nor spi4.0: supply vcc not found, using dummy regulator
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3566-rock3c
      commit: a706a593cb19796f31d3a888423ef1a71885ae72

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

