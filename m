Return-Path: <devicetree+bounces-244494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D555CA574B
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 22:25:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AB49E3005D2B
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 21:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF2272C21C0;
	Thu,  4 Dec 2025 21:25:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 11.mo581.mail-out.ovh.net (11.mo581.mail-out.ovh.net [87.98.173.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C79D2C1590
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 21:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=87.98.173.157
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764883535; cv=none; b=ClaWk3AlMRJk7HqDlM8kSbMBsmPtWoYZsop4zU77We0SORodi80cRqUbs973XqLzMvehqF9Vb46X3U+giu+v4eQU4jG6cU/pqiQ0B8+bfwZngotO2OH8WDOZBdD/t3Pz2Oav6WxUoQmaT++AWO9JROPk8CzKhEiAoeZyKu6C0ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764883535; c=relaxed/simple;
	bh=WpIiSH4GxU7onEE+2ezX9gvDAfdCzI+wz8TInd5GTu0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MJ5YdCAaMKSLm6gqyrSDWiInkE6ApGWLWYfGwstr8ykERAA3v8LspBS+ciLCfjpZ01716sFMVB6VP16vvKqIDLqevkH5isTs3tW9Yn+kWPsuF56986FvKmJm/olE6cnQZXSEQKxhfxi6MWN0Ysdjf2AlhDK5salb2Iufye+/BAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bp.renesas.com; spf=fail smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=87.98.173.157
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bp.renesas.com
Received: from director10.ghost.mail-out.ovh.net (unknown [10.110.0.129])
	by mo581.mail-out.ovh.net (Postfix) with ESMTP id 4dMgDT5dSwz6TGN
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 16:38:17 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-m4nfg (unknown [10.111.174.111])
	by director10.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 5E190C4796;
	Thu,  4 Dec 2025 16:38:16 +0000 (UTC)
Received: from labcsmart.com ([37.59.142.114])
	by ghost-submission-7d8d68f679-m4nfg with ESMTPSA
	id naCeNve4MWmh+AYArq+dVg
	(envelope-from <john.madieu.xa@bp.renesas.com>); Thu, 04 Dec 2025 16:38:16 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-114S008dea8ec6f-3573-4234-b91e-57f82739fe4c,
                    E90FA267686E4F2ED65044873A5FD8D85CF2A6B0) smtp.auth=john.madieu@labcsmart.com
X-OVh-ClientIp:141.94.163.193
From: John Madieu <john.madieu.xa@bp.renesas.com>
To: prabhakar.mahadev-lad.rj@bp.renesas.com,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be
Cc: biju.das.jz@bp.renesas.com,
	claudiu.beznea@tuxon.dev,
	linux@armlinux.org.uk,
	magnus.damm@gmail.com,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	netdev@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	John Madieu <john.madieu.xa@bp.renesas.com>
Subject: [PATCH net-next 0/3]  net: stmmac: add physical port identification support
Date: Thu,  4 Dec 2025 16:37:26 +0000
Message-Id: <20251204163729.3036329-1-john.madieu.xa@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13328684574918870405
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTF0g3R1pdQ6JLW75+mTBMFpIdpDzonyTfcnxVjUvtlRne6WFvO7QcVphjo3Xa9L2ro/D3yhhzJtc1dfPWja+6BCm1dEuB/2aTBXeKb11fPLLcNr7WgrUiSnUVGskVo7wSZo1kEpwEJ3OeosKSnIPHuezU4mhVIVpLFWLP+s9PVZOXmzmayuD7fbemwm7J6Vl6fTZMyvtDSASIdtIRrh6QhZs8p8lX/f/c7Fl6ZDOj9oLvRh/iLUDTQFV3XqFl6bvFcJxSpsCvT7/PXlrMHklHos/J2hGQPxAH/ucC2BVOt1U5GtUn/5StnFDm7GSQoMkqwsL8cQ4WP9Mmk80Wy6/yKRS1GiOtD4Ag6hyKi1NSF7Ca6lOihUrWyAgEI22hN0LkAsp4+Pw2WYyJgTl5ETIuZ4M3UqJ6IiJYk12yz6p9CeiJgctOqEegXxqE27wuw3qcns76zIKwps7Utls8ljU8o3AQ+cGROJcLQoeoW+z8TtDPcZzAGMON5KsVP6BowvT5/2K9f4IZxZ3DD3OFkauEAaUHduA9w9oSUN+ngCvfN+U8+N2+J9+Are4nnAiiTEKYVd/CcQWoqYpxkeBsvkLHYGvCYQmUk9O4zuMXMisGfbOFpeA8q7DOpS2MMLRxj2qFJN4GOhIxfNqf8d38FDsnY9q05qKuj/UlZoOfSMIPWLKw

This series adds physical port identification support to the stmmac driver,
enabling userspace to query hardware-stable identifiers for network interfaces
via ndo_get_phys_port_id() and ndo_get_phys_port_name().

On systems with multiple ethernet controllers sharing the same driver,
physical port identification provides stable identifiers that persist
across reboots and are independent of interface enumeration order.
This is particularly useful for predictable network interface naming
and for correlating interfaces with physical connectors.

The implementation follows a two-tier approach:

1. Generic stmmac support: Default implementations use the permanent MAC
   address as port ID and bus_id for port naming. This provides immediate
   benefit for all stmmac-based platforms.

2. Glue driver override: Platform drivers can provide custom callbacks
   for hardware-specific identification schemes. The Renesas GBETH driver
   implements this to support device tree-based port identification,
   addressing cases where hardware lacks unique identification registers.

The Renesas implementation constructs an 8-byte port identifier from:
- Permanent MAC address (if available) or Renesas OUI (74:90:50) as fallback
- Port index from device tree property or ethernet alias


John Madieu (3):
  net: stmmac: add physical port identification support
  dt-bindings: net: renesas-gbeth: Add port-id property
  net: stmmac: dwmac-renesas-gbeth: add physical port identification

 .../bindings/net/renesas,rzv2h-gbeth.yaml     | 19 +++++++
 .../stmicro/stmmac/dwmac-renesas-gbeth.c      | 56 +++++++++++++++++++
 .../net/ethernet/stmicro/stmmac/stmmac_main.c | 54 ++++++++++++++++++
 include/linux/stmmac.h                        |  5 ++
 4 files changed, 134 insertions(+)

-- 
2.25.1


