Return-Path: <devicetree+bounces-244419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEFECA4A54
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 18:01:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 832843091639
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 16:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 197062F49E5;
	Thu,  4 Dec 2025 16:55:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from 3.mo576.mail-out.ovh.net (3.mo576.mail-out.ovh.net [188.165.52.203])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F052ECD14
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 16:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.52.203
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764867332; cv=none; b=ooVjWgl0XA04D6zgvuYvYf1NVT7LtqVFjQphlOBp1fF1iVMgrtxcY73YJYvxEOWphL2vpPIfZ31ADxjQDF12e1GFopoIcdJ9eXYWantjxl9GxYmMS85G7ayjfcAOV15K1NcgNZjqbCotOgu1HYb5wgSMb4WLsh6GHKxLfMuUUdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764867332; c=relaxed/simple;
	bh=YgsFnZuDSq0GL2hrNLtRnqJd46AcXwGsEsQYq7gDQkc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TSNftlP0OTgez6Xbq73LZSKxKsn3pNwWaDrVkQ/8m0qe2RwoA94yyP9UuyALMkakaGmXQ0fFNQJ1KVnLRIPRx/dqAgi79eY4RcMgRUHxNjmIfkxQgFl5Cuq+v8FccMNL5MlevW3KSHQnV6hLIB1BwJ6fIDIwlC26yXHatl5SMaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bp.renesas.com; spf=fail smtp.mailfrom=bp.renesas.com; arc=none smtp.client-ip=188.165.52.203
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=bp.renesas.com
Received: from director10.ghost.mail-out.ovh.net (unknown [10.110.58.120])
	by mo576.mail-out.ovh.net (Postfix) with ESMTP id 4dMgDY0JVXz60Pf
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 16:38:21 +0000 (UTC)
Received: from ghost-submission-7d8d68f679-m4nfg (unknown [10.111.174.111])
	by director10.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 04E91C0F78;
	Thu,  4 Dec 2025 16:38:18 +0000 (UTC)
Received: from labcsmart.com ([37.59.142.114])
	by ghost-submission-7d8d68f679-m4nfg with ESMTPSA
	id naCeNve4MWmh+AYArq+dVg:T3
	(envelope-from <john.madieu.xa@bp.renesas.com>); Thu, 04 Dec 2025 16:38:18 +0000
Authentication-Results:garm.ovh; auth=pass (GARM-114S008793e570e-a212-4f79-af68-c8066b7fc938,
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
Subject: [PATCH net-next 2/3] dt-bindings: net: renesas-gbeth: Add port-id property
Date: Thu,  4 Dec 2025 16:37:28 +0000
Message-Id: <20251204163729.3036329-3-john.madieu.xa@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251204163729.3036329-1-john.madieu.xa@bp.renesas.com>
References: <20251204163729.3036329-1-john.madieu.xa@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13329247523704702341
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTFCbmu7CODxj2k349o555Vm8dsOPxMYesnscz9qYgs5WmZ/NmPtO8H3hdYa0s9TwEtyvYoQlsacygOO8E4F+XA7vTjkdx6fnJDoRsWs6SNp43imA8viHy93Qf2HHutVbqGsEiJ6qwKPrGMg6DuGF1/pf6Ds5Mwa2C4swwU2JZFOVPP+uEbtB6XMr3TpcYkgOPnxGguTWugNDjoKpPH9DQMtxtlIKiJM+ugjNoVuPNYzsSI25qeYovLw48ZpmTIMaHhsEdZy1ItU0vTp/PA9vJx01XOwGsu04x8kl0cOaTddlwoLY1b7YKkYvLQ63oNtPqfJtAGF+0VWqqTqRXaC3VnxOictc3tt279JmXIg1ObE3vt8726HpNNLEjNKh7ewaasdo1vTY+7Xp9mf233tmfwl4X48YpslCqdQz9v/lkASUIn8q0Si8odIgtzzk+kXoyx5i62dxosddc8BCNsHXnl0G85/+ScovB49C3GOmeB+O5EXD1a6MGbhUmglyGjHowb+cVFoCUoVWjLP5Y9HKmCA3ZnagyXA/o7mf5Kg9gpGfTnILmrNMWuhrD9GUrD/JKQH1jOTijVXXNmmzFbslDlXBXO+7gC8Z5eHQnoLbuuDtbRG5SaaEXWt4q5b9v829vo4tYZMhpKkdZjSlNCCBIXJxcZ1F5NPuvixozLKMSJS6w

Add optional port-id property to identify ethernet ports on RZ/V2H
SoCs. The hardware doesn't provide unique identification registers
for multiple ethernet instances, so this property allows explicit
port identification from the device tree.

Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
---
 .../bindings/net/renesas,rzv2h-gbeth.yaml     | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
index bd53ab300f500..bb59c6a925d3f 100644
--- a/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,rzv2h-gbeth.yaml
@@ -117,6 +117,23 @@ properties:
           - description: AXI power-on system reset
           - description: AHB reset
 
+  renesas,port-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Optional unique port identifier for this ethernet interface.
+      Used for physical port identification (phys_port_id, phys_port_name).
+      If not specified, the ethernet alias index is used as fallback.
+    minimum: 0
+    maximum: 255
+
+  renesas,port-name:
+    $ref: /schemas/types.yaml#/definitions/string
+    description:
+      Optional custom name for the physical port. Used by
+      ndo_get_phys_port_name() for interface naming.
+      If not specified, "p<N>" format is used where N is the port-id
+      or ethernet alias index.
+
   pcs-handle:
     description:
       phandle pointing to a PCS sub-node compatible with
@@ -230,6 +247,8 @@ examples:
         snps,txpbl = <32>;
         snps,rxpbl = <32>;
         phy-handle = <&phy0>;
+        renesas,port-id = <0>;
+        renesas,port-name = "mgmt";
 
         stmmac_axi_setup: stmmac-axi-config {
             snps,lpi_en;
-- 
2.25.1


