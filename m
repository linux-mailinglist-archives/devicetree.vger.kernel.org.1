Return-Path: <devicetree+bounces-170733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C0DA9C35F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:26:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F8E37AE2F0
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D970823816E;
	Fri, 25 Apr 2025 09:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="oWIYJ4sP"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E281E2367D1
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745573196; cv=none; b=lVhJHNEpjmkAnqXhIYp8MqV5lfWEM1g9wxzR2o/W9KY19HcocW8LbIVmyQnMNfh7xVkpL33Q5z1eyTgurtetLLeRJbO7hdxvx/nu5k1UjSGs3SswCklN4Aiyv/AhcstTP9OCqGK0IO7U0LeM0QtFgLlo6NIAhpymhrqffWcVQ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745573196; c=relaxed/simple;
	bh=NKsOygsDFjk/xYVp4zbBgAEBu/WNssPzm1S5Aq8AM8k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=vCZiVsrC88usJZFAg8HFvFMszHrT3oPEJ2TembcAS46OzPKA9Dz8TogGp5omyQDJjkiutsxaC+0QsBYdCiGTIoyUAsl8u0f3RzgWIyqmj/HAK5Z3C9layHRkvsl/X9IBcC7Ils/NpA5HdMsl77xFT1b/ITdqgi2UFrbQUKxaKWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=oWIYJ4sP; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1745573181;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qtgU1WOXpOKgLGgZrNJLTIThCMPkblkediAeOcnKwxc=;
	b=oWIYJ4sP2DQejiriCy+X853nBC07WvAU2/mW0mAkccyyiFTMK0Ndk3bYoDowxudxe+82kJ
	uHu9QtMrjKt6Pg97/+BA4FIpd6XL2T2nJRr0J3jCUBuSzKUMhBj9vHKwkFoZ/ubpXSTJ9/
	/20qn/eHopqpOOZdXID7eaWapvAEfjdX8qNu67Vh5likLF3e2ITcz/7CKqe3eKi775kIbX
	TiNgnVHZB5fHfs4KY/VM6Juk1lF6jLIZG9anh3imLgQNbG8FIWUWXZuBizvvXDgYjiTSxB
	UZtPPuMDNUr1TWP4SoiTtRhd+KdwiioNP62GrRkBp6b2nv6zyOCKOfFZO2EBLg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Dang Huynh <danct12@riseup.net>,
	Johan Jonker <jbx6244@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 0/4] Add vcc-supply to SPI flash on Pine64 devices + Rock 5B
Date: Fri, 25 Apr 2025 10:44:40 +0200
Message-ID: <20250425092601.56549-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The vcc-supply property was added to "jedec,spi-nor" binding in commit:
e7f4e924f46d ("dt-bindings: mtd: jedec,spi-nor: add optional vcc-supply")

which resulted in the following warning:
  spi-nor spiN.0: supply vcc not found, using dummy regulator

Fix that by specifying the vcc-supply property.

Diederik de Haas (4):
  arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3328-rock64
  arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3399-rockpro64
  arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3566-pinetab2
  arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3588-rock-5b

 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    | 1 +
 4 files changed, 4 insertions(+)

-- 
2.49.0


