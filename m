Return-Path: <devicetree+bounces-281360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eA96A799xWnw+QQAu9opvQ
	(envelope-from <devicetree+bounces-281360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 19:41:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FA933A4C2
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 19:41:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 251EA30844D4
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 18:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47ADA3A2577;
	Thu, 26 Mar 2026 18:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b="e9aQd6Dz"
X-Original-To: devicetree@vger.kernel.org
Received: from hall.aurel32.net (hall.aurel32.net [195.154.119.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD0639FCAD;
	Thu, 26 Mar 2026 18:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.154.119.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774550288; cv=none; b=flQn+dqWpUsvylLO7A/gcRNus80rqg47jEc1ug0srJsiikYXcghJ0zEwtscYo314BFqlV5uzbATJ7qQM0Vcqks2RCkwv00PgErwg/WfzLqLRr6aFZjQc2o1toMiG4IXOORxkanb4Y2SgICOQ8X2qhwr+nj/PfB/gZUqOoVkGBdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774550288; c=relaxed/simple;
	bh=Z5d+qisrCUqKR1bEaqfGKNaDzKxqIcu4biwQahRJmYM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mdsbUH9DyvoenLcFn2fkinkV8U1f1ZGqmCNXkFt4dSh/w3sQhqc+rW8+PwixNLNcsxss30c0ed4c48uBwKKap07Gd8fYJ5C7yzAzvVmIXc+6qkmS4YmfVbzJ4xSWtVgD4TZKWaL5NzSDmBxTwoh2LY2J6/MX1YaPrAD93czqalE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net; spf=pass smtp.mailfrom=aurel32.net; dkim=pass (2048-bit key) header.d=aurel32.net header.i=@aurel32.net header.b=e9aQd6Dz; arc=none smtp.client-ip=195.154.119.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aurel32.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aurel32.net
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=+KcrpH8cwpBflE8VQsFexd/Z08Riudm3og8OXJwlHKs=; b=e9aQd6DzTfCmxNpweipgrREW1l
	0UXaQu4R9x8fFWKS1BIIj9CQfmi3R2KaM6qU+uFNDy19x8Vy1x6oL0psyhdicFnl4PetlH/rcGsd3
	5bbphhjJUniMorY84mibFyR94ezf6t/9lQknfVW/qwhnNlmBOxAFSYNCqp/LA0sH2KfChIgh7PwlO
	ddEsDQ8FI1qJApvR+vNh2nt0enzH5f+u+Bh+r8H1+LNBoQVqCDbkQdtGa5adIHd90dSxYxIxx8rom
	nk3Wr57Y36Mqc+/30tC7GcOyhLGL19i96tTrkjbBXGOxdUJCQw1BPkZlE92TXVy4Sp7z9mn7pOYLF
	5q1unowQ==;
Received: from authenticated user
	by hall.aurel32.net with esmtpsa  (TLS1.3)  tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1w5pal-0000000GAjN-3tDk;
	Thu, 26 Mar 2026 19:38:03 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Yixun Lan <dlan@kernel.org>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	Javier Martinez Canillas <javierm@redhat.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-riscv@lists.infradead.org (open list:RISC-V SPACEMIT SoC Support),
	spacemit@lists.linux.dev (open list:RISC-V SPACEMIT SoC Support)
Subject: [PATCH v2 1/6] riscv: dts: spacemit: add LEDs for Milk-V Jupiter board
Date: Thu, 26 Mar 2026 19:35:29 +0100
Message-ID: <20260326183745.1370642-2-aurelien@aurel32.net>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260326183745.1370642-1-aurelien@aurel32.net>
References: <20260326183745.1370642-1-aurelien@aurel32.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[aurel32.net,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[aurel32.net:s=202004.hall];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-281360-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aurelien@aurel32.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[aurel32.net:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aurel32.net:dkim,aurel32.net:email,aurel32.net:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 79FA933A4C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Milk-V Jupiter board provides support for two LEDs through the front
panel header. The "Power LED" indicates the system is running, and the
"HDD LED" shows disk activity. Configure the corresponding LED triggers
accordingly.

Caveats:
- The LEDs are driven through a 4.7k series resistor, making them
  quite faint.
- The disk activity trigger requires a storage controller on the M.2 or
  PCIe interface. That said, it matches the purpose and the vendor
  kernel.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
---
 .../boot/dts/spacemit/k1-milkv-jupiter.dts      | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

v2:
 - Collect Reviewed-by:


diff --git a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
index 9959c8023ece0..3cd83c5924e4f 100644
--- a/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts
@@ -21,6 +21,23 @@ chosen {
 		stdout-path = "serial0";
 	};
 
+	leds {
+		compatible = "gpio-leds";
+
+		led1 {
+			label = "pwr-led";
+			gpios = <&gpio K1_GPIO(96) GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "default-on";
+			default-state = "on";
+		};
+
+		led2 {
+			label = "hdd-led";
+			gpios = <&gpio K1_GPIO(92) GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "disk-activity";
+		};
+	};
+
 	reg_dc_in: regulator-dc-in-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "dc_in_12v";
-- 
2.51.0


