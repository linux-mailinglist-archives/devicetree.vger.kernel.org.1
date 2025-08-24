Return-Path: <devicetree+bounces-208616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AB0B32DE0
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 09:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B693C3BE9FE
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 07:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5177072602;
	Sun, 24 Aug 2025 07:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="OHYVko0V"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBF2393DC5
	for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 07:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756019282; cv=none; b=Iy0pe6jY5Uf0Dlw0uN+f5ctyJZ/a6MKNifruLBoA2kg+wNwtTKz1he6S3/MJXm6hK03XD8+rV+FGqhpFRWPMo9EXnpFhNaoGPuJLtGlvCdIpY4jlCv3Stlsu2kxu+OZqyxFp9+GdKwEYK9ictvjTCUY/U1PqH1KV2gLPekzk4qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756019282; c=relaxed/simple;
	bh=2YUkLtmbihhQ1nExGaz28eL/RQwKnI5tEJkPvpCOdcc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OV8jwh7RCpNaBSjzNKMC2Aw3LpJ/DqrGqYp4YWsXXWXCCwjAjdzso4T9BINCiJ1Ucmz18B13OexwP+7F6avOlpzbip1ICyXNo2c9uKDtqLYv07YNmN3jV0VW4SszElRehHKAs0+829mRKKFX4dshT2CgXokDg7Z+6oIUvWnHL+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=OHYVko0V; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HtiKJv/Y5OZYZLw+XrUHuMx2sdh2NKHMX5ykW3UdaY0=; b=OHYVko0Va9SwkRsggxfy+Vt+vE
	6dw2jekzg41QyaAwq5D4LG4N7+1U4EVfrjfj+IZn73SwgRlOEYdwaZYkdx5D574SWm3S2NBNg62jr
	HJ1nsWw0csydHuWgz/lA9x2tSws2wqgNpGOc45MQ/8CU69iV1dAwhSaGKNS/SANo9wzLV6XbSy/GE
	8lrf7IbYiIVTV+PbJYFT8eBhT74+TUmSvTQeSEhjknlrZqMFuPw2d2+DvOKds3cX97wgYXXDcRHQF
	K3bWazDWdrnkCxHGaOnyFIaOnKCOWh7ILyk8HKhQfHSCWTxFiroHLLKixhGoHoU4f5TCpzfWqGuah
	8xa8QcvA==;
Received: from [212.111.254.164] (helo=phil.aerolan.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uq4pa-0002Oo-VS; Sun, 24 Aug 2025 09:07:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: kylepzak@projectinitiative.io
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588s-rock-5a: Add green power LED
Date: Sun, 24 Aug 2025 09:07:51 +0200
Message-ID: <175601920181.3425909.2234398602548147657.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <175565703702.6.15498212790604388615.862782045@projectinitiative.io>
References: <175565703702.6.15498212790604388615.862782045@projectinitiative.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 19 Aug 2025 21:30:12 -0500, kylepzak@projectinitiative.io wrote:
> The Radxa ROCK 5A board includes a green power LED that is defined in
> the vendor device tree but is missing from the upstream kernel DTS file.
> 
> This causes the LED to be uncontrollable from the operating system, as no
> entry is created for it under /sys/class/leds.
> 
> This patch adds the missing node to the leds block, creating a
> "green:power" device and allowing the LED to be controlled by the kernel.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588s-rock-5a: Add green power LED
      commit: 5487086c4dad869af0eeca0ee24d1ba5fe382b3c

moved the "power-led" node behind the "io-led" node,
please sort nodes alphabetically in future patches :-) .


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

