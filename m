Return-Path: <devicetree+bounces-81026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD84791B15A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 23:18:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A2CD1C20C9E
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 21:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F326C131E41;
	Thu, 27 Jun 2024 21:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="iBrZRhn6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0435D1A08AE
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 21:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719523075; cv=none; b=YMLUMB8HMLov5gHMXZF1x/4TtoRQNLXXibslh5q6z32Do3djkMCkezS28hoEB6aO+/rp53pzYUitcqlnQGDQiGKdppH4P+yBXGlIx9Ifv3Ns3P9LkT2b9Z5V1WqawWN0tzv13hhIsnyrGaEnoqZgZRIqWZ+P4DbstgTuoeB+8Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719523075; c=relaxed/simple;
	bh=E5x8SPF0o7XVjxRg+/VGBTN0NJl1wamCDzYvuZISHAY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KHE6QLtu8U0YnnTKbMFc0BRsWbuIK+5bozLHt889Upss8g1M7yhSck9N4cKCRbwerh7pA1leWQMENhTvX52T13DwdTiOmWHLjjpfS7a+0rgvrSsTiCNFke2Nea3P0gZ/OBHKLrrq4lklAI1Hx5ZBQHoNLPyqbzE2R/zZWkmjkOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=iBrZRhn6; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1719523064;
 bh=rPE+9z//tyfsDsGC0Vy2GcWOo7+pR6Ob+6/gM+fr390=;
 b=iBrZRhn6S1X72EfwpHyazeggUag0Simvv4eS1pVIMF1f1TeLZDe6HouYEF82rYa8cykQtmAKC
 9yx9KzGCrizFWsflyIlihZL+HI8ix3zixIziuNOTcdfSgKXJLUGPqUhivXM1Ri5JtfnLJkHLHlm
 OlNrS5v56RrpickA+lco9kjT8SVJ55S1FvfFCXxHmC1FwJID9SP6xHcr6ZcsjSV5Uu3k4yNfOWr
 rHvqy6kS8UpTqdjb/MH9vZDq3DMJ4isgv+GPLzqfpBNDIXE158n56Hqmn0Y8T2YMX6YSCjtQj1Y
 ZkeLo2ESD5fJpgbEiirpv5AVVEnvYzNZ4QNwhpCBiwPA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 0/2] arm64: dts: rockchip: Add Radxa ROCK 3B
Date: Thu, 27 Jun 2024 21:17:29 +0000
Message-ID: <20240627211737.1985549-1-jonas@kwiboo.se>
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
 149.28.215.223
X-ForwardEmail-ID: 667dd6f8392543b4ce9ac5db

This series adds initial support for the Radxa ROCK 3B board.

The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
version based on the RK3568 SoC and an industrial version based on the
RK3568J SoC.

Schematic for ROCK 3B can be found at:
https://dl.radxa.com/rock3/docs/hw/3b/Radxa_ROCK_3B_V1.51_SCH.pdf

Changes in v3:
- Rename led node and move led pinctrl
- Add cap-mmc-highspeed to sdhci node

Changes in v2:
- Drop rk809 dt-bindings patches, replaced by series at [1]
- Use regulator-.* nodename for fixed regulators
- Drop rockchip,mic-in-differential prop
- Shorten Ethernet phy reset-deassert-us to 50 ms
- Fix pcie pinctrl
- Add keep-power-in-suspend to sdmmc2
- Collect a-b tag

[1] https://lore.kernel.org/all/20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ROCK 3B
  arm64: dts: rockchip: Add Radxa ROCK 3B

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 781 ++++++++++++++++++
 3 files changed, 787 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts

-- 
2.45.2


