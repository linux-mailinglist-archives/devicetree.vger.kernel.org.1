Return-Path: <devicetree+bounces-155919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A54FA58935
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 00:26:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BE4B16A62C
	for <lists+devicetree@lfdr.de>; Sun,  9 Mar 2025 23:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3509D221D82;
	Sun,  9 Mar 2025 23:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="Q4KxOKij"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A29D81CAA6C
	for <devicetree@vger.kernel.org>; Sun,  9 Mar 2025 23:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741562802; cv=none; b=f8V6UAVpXquP6OSnfCOPeznsy/i8/0Ba+AU8ATStxGhsHCJbk2mHSwbfK+tyQdBYdP2jRoiSkjmJaBqsj0N2OIVqfLv1U2j9GLXXaNhzAsaAeyxTDBKn6s3/mcntIUm0DCvQP3qX1z6fWeBu78cgs+T2hrsreCYs7LE0wvu9b+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741562802; c=relaxed/simple;
	bh=j7Z5Qzs6jmLSIxRpTXZU/UrFx0eI8lwin+V2Ei+u8+c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZqdYTNk7+/Um2a3Q3cmOZqURbFDRfCdpTr7qr2jvfTuWnmDQqpMXP6EWYeoUxXJYqjnP+YPz238wt5MaFCstKnKcQ/NPtVmKugALszjhcP8KpdGAE1JjKmxxCRZVDXPN6xbnuUjVx7KWKKBcpd1JtXCVQWYOeukrQYxp6kyojRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=Q4KxOKij; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1741562793;
 bh=uhqn9V7B8sVTHcezMkHZ/uQLEm9iylzgvIMWhThJmFw=;
 b=Q4KxOKijbNE8Y0yNvTHK/3Yf03RwbaapDoWk9/fycTuZNa3OsHjCh9WGT+RJUrSMU1w2Dvfrt
 mNijYNhGyi3e5O9puSMeojNWnSjCViCZ4FvjBUI1B5ncP3YbIe2eLFw92MJaykpb8rOucKP0YjO
 1F4PXalIJ85Su7CdJC7bSeVcXQkkDvmlJQOzfZ0fOxUYXi4NqbkwZo/W+0gwVJg9WLVHxsWJnTx
 Y1ObnDNSDjTTi5CgLN/h9Zfcqm3c0EXHKhe57+JzB/oJNaO2rh3CyIUeKNf6XsQ8aONzbLf+aTz
 kw44kxpZxXNF+VVNLVbx4VpUECt1UWiBGnoAkpQBQ4Lw==
X-Forward-Email-ID: 67ce23a55209992d7c670e59
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Wu <david.wu@rock-chips.com>,
	Yao Zi <ziyao@disroot.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/5] net: stmmac: dwmac-rk: Add GMAC support for RK3528
Date: Sun,  9 Mar 2025 23:26:10 +0000
Message-ID: <20250309232622.1498084-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Rockchip RK3528 has two Ethernet controllers, one 100/10 MAC to be
used with the integrated PHY and a second 1000/100/10 MAC to be used
with an external Ethernet PHY.

This series add initial support for the Ethernet controllers found in
RK3528 and initial support to power up/down the integrated PHY.

This series depends on v2 of the "net: stmmac: dwmac-rk: Validate GRF
and peripheral GRF during probe" [1] cleanup series.


Changes in v2:
- Restrict the minItems: 4 change to rockchip,rk3528-gmac
- Add initial support to power up/down the integrated PHY in RK3528
- Split device tree changes into a separate series

[1] https://lore.kernel.org/r/20250308213720.2517944-1-jonas@kwiboo.se/

David Wu (1):
  net: stmmac: dwmac-rk: Add GMAC support for RK3528

Jonas Karlman (4):
  dt-bindings: net: rockchip-dwmac: Add compatible string for RK3528
  net: stmmac: dwmac-rk: Move integrated_phy_powerup/down functions
  net: stmmac: dwmac-rk: Add integrated_phy_powerdown operation
  net: stmmac: dwmac-rk: Add initial support for RK3528 integrated PHY

 .../bindings/net/rockchip-dwmac.yaml          |  16 +-
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 277 ++++++++++++++----
 2 files changed, 242 insertions(+), 51 deletions(-)

-- 
2.48.1


