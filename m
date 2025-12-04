Return-Path: <devicetree+bounces-244429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E97CA4CDC
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 18:49:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DFBBD302D674
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 17:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29DCF3612F2;
	Thu,  4 Dec 2025 17:49:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 17.mo584.mail-out.ovh.net (17.mo584.mail-out.ovh.net [46.105.41.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C1C35FF76
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 17:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.41.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764870557; cv=none; b=MoE+lS+DefYGKFNuXh/znCYc66lxoVpLQNEPSmg2ycJNpvJfoFCtCfE9NYtNY0W/Ov21S9MFckSx93lVtacl5SeWp2+7W6n1XPl+8yK54y5uDDyPavRT3Ipi9ZPH10IWwqeB4q3nvIsDoXD/MVr/vf2Pd8U/MJmg08AU2FN1nOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764870557; c=relaxed/simple;
	bh=WpIiSH4GxU7onEE+2ezX9gvDAfdCzI+wz8TInd5GTu0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=RdZ9RDwz98ALLEeV3YU2NrJCfY7iLx7EZWg12X388dm34IojBU9Qu7/4L5YbW4hYeUMNvhO7pMRDatTjFULT0TmUXJoZizUuhz9iLGSNkAvtnOErcoCtjQDthGZgQFp1YNf40vznQqDe8aMG/AchEAY7SJf6G1jOGtZgDu0BrAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bp.renesas.com; spf=fail smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=46.105.41.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bp.renesas.com
Received: from director6.ghost.mail-out.ovh.net (unknown [10.110.37.191])
	by mo584.mail-out.ovh.net (Postfix) with ESMTP id 4dMg4j56qWz8QPc
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 16:31:33 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-mkpf7 (unknown [10.111.182.250])
	by director6.ghost.mail-out.ovh.net (Postfix) with ESMTPS id B198E802DF;
	Thu,  4 Dec 2025 16:31:31 +0000 (UTC)
Received: from labcsmart.com ([37.59.142.99])
	by ghost-submission-7d8d68f679-mkpf7 with ESMTPSA
	id GduLDmO3MWnQjQQATXHgnQ
	(envelope-from <john.madieu.xa@bp.renesas.com>); Thu, 04 Dec 2025 16:31:31 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-99G003ce1f1467-d897-4cfe-b3a4-acac0f5cccc0,
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
Date: Thu,  4 Dec 2025 16:31:19 +0000
Message-Id: <20251204163122.3032995-1-john.madieu.xa@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13214968683322836357
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTFOYzd0u1tNIc5d1riAAD2SoA/rdbCRt2LqIsB4pVCHc9rrIYG6guZEVgyAXXl5qDEbDm5DIpC0OrCuxFdfXi0y49xplqCwDslxZfmG8AsZNeX+aPUxcaNxfHrUme5Ifwd7HskEkA5JpoPc3SYZyku6YrH4qiWo0bhMuvhkFiMsKV/q0vWmA7rgdl6EEEm+16ZrRiPZN0AwgkeBQlkc7/obc+uSAZg5JJolwLZSrXcfBUW6gc5R+pVGtyHvalKubb3uEDI10AY1883y3oDkXlAQLG3vlc3e/xhtkSHPKHNAsHH90Su1rXzwwdYA4vpLWfceOUXdT96WXrg9Ekt+rK1eRFICJPp6BAKZpMp/Kyupl8brn5roxWrdQKH4kKviqNzu+R9iNv+eK9wCwb32m08kCeeayedkXGTZC6cRKS67uU9ttq/v3L+ap7dZxhliEJURsfKQHMOsbhphcDhGw26/VzUVf/hUg1mLgA5nqfo13mkLIfDpjIY0FZZIvnzuf26SLmko8W70q8L4C2ClXWrFUDuhnxlhTGqBIqIpiUow2zIcJ2T1T0eO1pqsaugxZ2UBwA+m2Bcexj5nzAK9nUbPgh2w/4d3QtBn9uDvqMIGf8me0u+asnuE5UVLliNuYZjG9rMN5SxTuZCv47Q0r9NhCnH5YKFnjvVmfk8BaKM4og

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


