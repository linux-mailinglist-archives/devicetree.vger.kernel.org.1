Return-Path: <devicetree+bounces-277900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAS2K60nvGkxtgIAu9opvQ
	(envelope-from <devicetree+bounces-277900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:43:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 328AA2CF018
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:43:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4606E329E486
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:31:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EDCF3ED11F;
	Thu, 19 Mar 2026 16:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9/8cJxR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9533E869F;
	Thu, 19 Mar 2026 16:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937904; cv=none; b=peIu5pe9mL48EjkCkcfgE5VSDElE0G8UWXEcepglwKBTsXE91zIk7u2HlCfgUEVZ8A3xJ0s3stgGlYnCmMJz2nhxLK0HAAE5JuakTJJ7PNIaxT55LK1JmqAvV5YEI1zXgEfL57fXLmnZOMMyZkbawxMNKW1gSy4F94JTWsBlXmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937904; c=relaxed/simple;
	bh=S7U+CGJ0ya1Mnao17XGZKUpaHgyhCjhG54y3ICKnvxI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=stbJ99yj5rrmyVcakaoSzY/LDhE+VPkqOQPF1D/rvYhOQL7BM+tQfulgKAtUb1L+gNHetJvbxO6LOVZLK/ulp1ysenP3CJGcIYf8V8oPetDM4c6HhjaFFK1erIFtMrWUxfocINdBki6gQrijD/DDWIZ12j+zxnhQiXqG2MfxkgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9/8cJxR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9280C19425;
	Thu, 19 Mar 2026 16:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773937904;
	bh=S7U+CGJ0ya1Mnao17XGZKUpaHgyhCjhG54y3ICKnvxI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C9/8cJxR3VQGxMZxveGk7pIrjlJiJzEMSl6CcOxJIoL9IRThm+C5nj1WZze78M4S9
	 X+8joHd2QR7v6BLZghtWcUTgg/snBRrtGfFtWNVTYVhLoAWtgK1bS8C5znLp2Wk88i
	 QzPJSJ0xsDEXmWs9V9EIEmjsjS6jvD+xCTG6/p+5MNCVu2RNqs4ddurP0BvrC/hd7S
	 pI6+Ng0LFG0bvqY6+wMWjNuTW79Buk4i8NJiSi4bNZ64XHiUlu5P1H2UL948rL3zbJ
	 tII8LWiPse8/y550dyM4VReRfRUKPN2w1I+Wj9WbKp82VazQk3P+UsnP5akVSdARQX
	 XOiJkDA5k/ewA==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Valentina.FernandezAlanis@microchip.com,
	Brian.Burke@microchip.com,
	cyril.jean@microchip.com
Subject: [PATCH v1 1/5] riscv: dts: microchip: gpio controllers on mpfs need 2 interrupt cells
Date: Thu, 19 Mar 2026 16:31:15 +0000
Message-ID: <20260319-crushable-outhouse-e06ca969a01d@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260319-outsell-hypnotic-94b480408ad4@spud>
References: <20260319-outsell-hypnotic-94b480408ad4@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1518; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=4BeOAlsr/mIYH78dM9alCevkvmmBpV/vy1ewY+o5UiA=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJl7VK70f7Fdzf53+t1FHZxXp8yw9Tf/+rChbXaJ2NE2w ynfmW08OkpZGMS4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjCRXawMv5h0mbTU7nPXR+TX uwU96ZOtjRULuzz5Z0qtoYW5+9Gmo4wMf3ZsDVkgzsckJtpx0n12zRam9ZEMCxX0rKLXLDvY6rW LCQA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277900-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 328AA2CF018
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Conor Dooley <conor.dooley@microchip.com>

The platform has variable interrupt types for GPIO interrupts, in
addition to having multiple lines per GPIO controller. Two interrupt
cells are required.

Fixes: 528a5b1f2556d ("riscv: dts: microchip: add new peripherals to icicle kit device tree")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/mpfs.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index 5c2963e269b83..8cca84484b85d 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -473,7 +473,7 @@ gpio0: gpio@20120000 {
 			reg = <0x0 0x20120000 0x0 0x1000>;
 			interrupt-parent = <&plic>;
 			interrupt-controller;
-			#interrupt-cells = <1>;
+			#interrupt-cells = <2>;
 			clocks = <&clkcfg CLK_GPIO0>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -485,7 +485,7 @@ gpio1: gpio@20121000 {
 			reg = <0x0 0x20121000 0x0 0x1000>;
 			interrupt-parent = <&plic>;
 			interrupt-controller;
-			#interrupt-cells = <1>;
+			#interrupt-cells = <2>;
 			clocks = <&clkcfg CLK_GPIO1>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -497,7 +497,7 @@ gpio2: gpio@20122000 {
 			reg = <0x0 0x20122000 0x0 0x1000>;
 			interrupt-parent = <&plic>;
 			interrupt-controller;
-			#interrupt-cells = <1>;
+			#interrupt-cells = <2>;
 			clocks = <&clkcfg CLK_GPIO2>;
 			gpio-controller;
 			#gpio-cells = <2>;
-- 
2.51.0


