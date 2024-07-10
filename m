Return-Path: <devicetree+bounces-84692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0104292D2CB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:30:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 323261C21A80
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 13:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBA29192B9C;
	Wed, 10 Jul 2024 13:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="EoPvlERg"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CFE192B85
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 13:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720618177; cv=none; b=sL6xR5rgswbJ4RsV5U+4Dbd5UuFpYKpLrI6NKTw1mTCFEPw+DuE8QlUTtsadQd8K+7BKctXJw1IMalVohu/lgggr0GzSxyiHLzq0XLSqG5Dn8xJF2HFQgQixM2RMsSB+GHGLkIB88OgtfDJijkwcRhKppeSI9zKlvvrzwFiNGRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720618177; c=relaxed/simple;
	bh=/tlTkmQT1UU6dF0ajHIWXLrQ9uXj7ZcwA0g9uo52GW8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZCUuS5baB8LNXi9EuHDioi7Rm0nQPq/j7KCKUJCZ2T+H+betcHtMk40wWmGi+k5GzDZYHAKWyh68f2Rn2KXrZK9xO+x6uuLwpuO9xvy/JfQ8RimQM8gX2epNpxAwXNXJQ7Kp+Gt68lu8+Gy7H8y+ZQXBxW7AJS5Ez5O+wahl3a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=EoPvlERg; arc=none smtp.client-ip=95.215.58.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720618171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kQvGNQXCeiBTKU15PX+2I2Ocw+0QTKnwDGP4dLx/c7Y=;
	b=EoPvlERgYzGZi+JJ7gFmd8Kk/71EDszDXteapmJLxVN5CFTXELY5xWm5lkLDQb5gD0KVzj
	ywwPYDyJVHB8vpcj+AQxxo2UxPC6UyvxnRFEITfIwoOdZ50ZPUo/EKruLXjjYCEUbd0gwp
	CHAxXiMc2MEZ5zA2y3TCxojSdDcCMw+nYqz+GibfzlRcisqwi2Fk/7Y1QDpUh+3ZW41C4i
	dEQON0nQQs56t0Qzf/zOmdBaX/YXn6JDebwpRiH4DIJ77aCpVqYCNQWA+emRdpzhC5/nlk
	466PzlUfhpkdkXgeJcy/jwWXADPxoptycDOjZN3eb6x+xdOJBajUZ0jK9/SdBw==
X-Envelope-To: knaerzche@gmail.com
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jbx6244@gmail.com
X-Envelope-To: wens@csie.org
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v3 0/2] sdmmc/sdio/emmc improvements for RK3328
Date: Wed, 10 Jul 2024 15:28:10 +0200
Message-ID: <20240710132830.14710-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This is a rebased resend of Alex Bee's prior patches which haven't been
merged even though there doesn't seem to be anything wrong with it.
These patches have been used in LibreELEC for years, which means I've
been using it for years on my Rock64 and I've also added it to my
latest 6.10-rc7 build and that worked fine too.

Link to v2:
https://lore.kernel.org/linux-rockchip/20210623145918.187018-1-knaerzche@gmail.com/

Alex Bee (2):
  arm64: dts: rockchip: Add sdmmc_ext for RK3328
  arm64: dts: rockchip: Add sdmmc/sdio/emmc reset controls for RK3328

 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)


base-commit: d79d713d602e8b32cf935ddfdf61769cb74ba1dc
-- 
2.45.2


