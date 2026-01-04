Return-Path: <devicetree+bounces-251314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3F2CF13FF
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 20:16:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4190E3024137
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 19:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF39D315761;
	Sun,  4 Jan 2026 19:15:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="EsiJ7jJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E542C2E7621;
	Sun,  4 Jan 2026 19:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767554114; cv=none; b=mxGdEJtS91cP3qr9U+m8TJ21JrPi+8oImGmXNZh61DX4BKlAV0MxEleZOGTu+FQKRJNBxdKw78P+IR2kPSlIYmntx3A1h67NaLUvtX+xIwNoBn+uyhUTlctHb6UB9/qyNglI9FBVgZfkatujV6jK5Jqgc3U7dCR9HVeAqeX6bPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767554114; c=relaxed/simple;
	bh=fZrHYq5w1NOXNHHJRp/gOQSWdrOS8R2t6ITRhR5fZQo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CHCmH+OokM9rgihvWCQZbnwqy7LqlJCJVML7JdT1F0ZslBcyONjLjjKsrywjRJaCNz4G2VzEVuP5Qq29t/hF6T6sOHqg8CZ1nwzGS1pzu1ekw99z3iAx56/bQM/DgmkAp+2m/gNM4sFSp/eMwwko3gWUC1s7X8ISsmWK4w7oDto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=EsiJ7jJ/; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=7ZAirxahpgyv2z35ClKFg4ev2ynFZjLlATTEemx6ato=; b=EsiJ7jJ/tuLDK01ZIsxeQ5cnsK
	Y6EEPxutmQ9g7Rtnrc12qw6o9aqlnhbu++6BuSeKPFJbbcLYaG7ngIP0uBaaTkarMmsIJ4BUxPIek
	gIZdounEOlpZTS+TL7IDNCWSfGF5rOys7dVhhQtIzCXOqMIvg8FeY7Evt3iy2L9o62lHxczuRoY3X
	rS2kkpzef+301nIIJaritT4FOuvP3613TlVnJlMlQZ+GGIAj/kfsJhiIQEZ9wbZ35xhRQOeNPhwjq
	6n22EtS2QAED37EwR4Zph9nhXUZWKDH1F7siXFSuhDEjMumjAAOcRcCwO4IOUO906t4UOEWoFoPHx
	6xABJIOA==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcTZ9-0012Mf-Iq; Sun, 04 Jan 2026 20:15:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	uwe@kleine-koenig.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Support for QNAP TS133 variant
Date: Sun,  4 Jan 2026 20:14:43 +0100
Message-ID: <20260104191448.2693309-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds support for the TS133 variant of the NAS series.

It turns out this variant is build around the RK3566 instead of RK3568
as all the other are. This is "fixable" by not including the
soc dtsi in the board files and not in the shared tsx33 dtsi.

While adding the devicetree I also realized that some things are
wrong in the common dtsi:
- the shared sata controller for all variants is sata2
- the TS133 does not have a "copy-key"


The specific mcu-compatible of course needs the mfd series from [0]
to be merged first.

[0] https://lore.kernel.org/linux-devicetree/20260104173310.2685852-1-heiko@sntech.de/


Heiko Stuebner (5):
  arm64: dts: rockchip: Move SoC include to individual QNAP TSx33 boards
  arm64: dts: rockchip: Fix the common combophy + SATA on QNAP TSx33
    devices
  arm64: dts: rockchip: Move copy-key to TSx33 board files
  dt-bindings: arm: rockchip: add TS133 to RK356x-based QNAP NAS devices
  arm64: dts: rockchip: Add TS133 variant of the QNAP NAS series

 .../devicetree/bindings/arm/rockchip.yaml     | 14 ++--
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3566-qnap-ts133.dts   | 71 +++++++++++++++++++
 .../boot/dts/rockchip/rk3568-qnap-ts233.dts   | 18 ++++-
 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 18 ++++-
 .../boot/dts/rockchip/rk3568-qnap-tsx33.dtsi  | 21 ++----
 6 files changed, 118 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-qnap-ts133.dts

-- 
2.47.2


