Return-Path: <devicetree+bounces-80487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAD1919AE7
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 01:03:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4B9B1F21582
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 23:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D35191499;
	Wed, 26 Jun 2024 23:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="AKURvvPl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [167.172.40.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F56B146584
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 23:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.172.40.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719443023; cv=none; b=OTYuR6j7/Ao968GQFyYqIdHZ702/+0bFUvuiMxtuoYp4k58JQuhT44nKiDQ9S4uKDh00jGt22l+J409vHQ3nP7CqjD+FJrYwkfk1HBForxcqEWrKI3yUm0rnNjagajakER1yeX2CmDL/ohl0vDb/tpQgCbpRxV/CLFsYenoxMbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719443023; c=relaxed/simple;
	bh=v6iRVIwuV0puHJdFo8AcZ4c3a9mtgsjiS9TLkPRCJm8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nBIkkOVqKNniVNWmlRbzhw4vnnsVWFlI7q159NI4iMvPg0QcPYW2r5a5d9mkRVnK2uQXTwEpRuohM25Aj93dHVOHZHaYi0SxxQpjgqYlgHZiBt9aNEe/5vK32QtF7JxtrNdk94VNq0vJzr0/SOjLXheFiEamzfU0YPAt8t4qlxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=AKURvvPl; arc=none smtp.client-ip=167.172.40.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1719443011;
 bh=Ns5MRvRqNf6D/zytSCYrgSid41h9o+UGCT0zdmgcVTk=;
 b=AKURvvPlKet4HcO+StBN2auO6lDBReL8aeGUaZ4gybg0ee8Ck5KDYaVwNbJWB2K8yMZlyHn2m
 FesxppwhRsfm9ew/y8fgisjdD9Ulc3jBJOXSzpv7Jxuc+A5TjBTrZ055YfNIQa3nR2rtDl3OxG3
 72v0un292B0VptwS83DwD1baUowqMOND5TYxVSDnY5dGgHLb00uNCKp24xiYLdmez63rHruIvWP
 iHx5+d7x05Wq9BN8ie7xsWMMkzbQy5qxEkXaS74J12mPhJpyjRzZGRkr7Vi2l65hAYUeTfKBhao
 TVvBFHN5BWw56zMps20K0hmK0QOhRSqIK5oPUSTvXJ1A==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add Xunlong Orange Pi 3B
Date: Wed, 26 Jun 2024 23:03:10 +0000
Message-ID: <20240626230319.1425316-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 667c9e3dc59a3ae6af4b1610

This series adds initial support for the Xunlong Orange Pi 3B board.

The Xunlong Orange Pi 3B is a single-board computer based on the
Rockchip RK3566 SoC.

Schematic for Orange Pi 3B can be downloaded from:
http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-3B.html

Changes in v2:
- Add DT for v2.1 hw revision, rename initial DT to v1.1:
  - Ethernet phy io voltage: 3v3 (v1.1) / 1v8 (v2.1)
  - Etherent reset gpios: GPIO3_C2 (v1.1) / GPIO4_C4 (v2.1)
  - WiFi/BT: CDW-20U5622 (v1.1) / AP6256 (v2.1)
- Rename led node and move led pinctrl props
- Use regulator-.* nodename for fixed regulators
- Drop rockchip,mic-in-differential prop
- Add cap-mmc-highspeed to sdhci node
- Add no-mmc and no-sd to sdmmc1 node

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Xunlong Orange Pi 3B
  arm64: dts: rockchip: Add Xunlong Orange Pi 3B

 .../devicetree/bindings/arm/rockchip.yaml     |   8 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-orangepi-3b-v1.1.dts  |  29 +
 .../dts/rockchip/rk3566-orangepi-3b-v2.1.dts  |  70 ++
 .../boot/dts/rockchip/rk3566-orangepi-3b.dtsi | 678 ++++++++++++++++++
 5 files changed, 787 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v2.1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi

-- 
2.45.2


