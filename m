Return-Path: <devicetree+bounces-285545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6G5iBQzk1Wm2+wcAu9opvQ
	(envelope-from <devicetree+bounces-285545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 07:13:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDF73B7198
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 07:13:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F35593045A98
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 05:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0311D3537E2;
	Wed,  8 Apr 2026 05:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isSyVd7r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40A570830;
	Wed,  8 Apr 2026 05:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775624878; cv=none; b=sBr9+ohbzQgpenbMM7VXDM2hGu36kzRTNiU9v3kdrHoHE4yq1WUYdIy9Au+1LU9IhlUsu6Xh2qYMoxV+V0A7OJcPaEzG1kmNiH+YquY2tb2iASa+QoyxWDKl0gf6wI7I23/eokiPvFfWKED6F6tmGmyu98PdSFkz3kmBxECu6Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775624878; c=relaxed/simple;
	bh=bZ3QCtjblCVSujDtyBNvrogUn9jUpEJIT1QFEhb35A0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=fsAwfSZb8WQCjWP0WkqkGXMlztGqR+JoYFyl/lRjwscqy3CAkApOroPn1Ts6nZDudO3713vmMuMdMf97m9rlgfSaaDDzZ9eu0HETvrahK6nHrToav8y+T438cV3APabSoBbTkbVk9KXpz/eyB435TJWqVABNx0wVukDbvYfaRyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isSyVd7r; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80E47C19425;
	Wed,  8 Apr 2026 05:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775624878;
	bh=bZ3QCtjblCVSujDtyBNvrogUn9jUpEJIT1QFEhb35A0=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=isSyVd7rrddG6wGTfYjWHZRjyWdnlvKknk+a6B506fV8orxBuDi7PUol5Gm73aCMl
	 cFAgd/e7ZbEw+MT1dHfNoTjm2R4/zDsd2nvGb4JQghF5cy3HyOnBC2QdqPgPDueir5
	 MqfWefomgObMfAqprdRCZBn80ty3VlicA/eX83DZ8roJa8KNY+/niLZeJQCihiq4bJ
	 1sgAUgIsBYx8oWl0cISm+mquL2agP08p1Cbb00SOqoBQDwzA75DRis0YqafA7C5ele
	 rY74ClWmqDGc1SneuDPmngsV5z9SxZdGxDCnuz188VlnD5SP/2HxqDVH6xq92RBnok
	 2GfgwRX/Z6l4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5AAFD5F61;
	Wed,  8 Apr 2026 05:07:58 +0000 (UTC)
From: =?utf-8?q?Ale=C5=A1_Pe=C4=8Dnik_via_B4_Relay?= <devnull+ales.pecnik.skylabs.si@kernel.org>
Date: Wed, 08 Apr 2026 07:07:34 +0200
Subject: [PATCH] clk: microchip: mpfs-ccc: fix out-of-bounds write
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260408-mpfs-clk-oob-write-v1-1-8b3b387f2a6f@skylabs.si>
X-B4-Tracking: v=1; b=H4sIAJXi1WkC/yXMSw6DMAwA0asgr2spjfioXKXqIhgDppSgmBYkx
 N0JZfkWMxsoB2GFMtkg8E9U/BhxvyVAnRtbRqmjwRqbm9QU+JkaRRre6H2FS5CZ0RlieriMrE0
 hhlPgRtb/9Pm6rN+qZ5rPE+z7AU8ki+J2AAAA
X-Change-ID: 20260407-mpfs-clk-oob-write-a0cec9a5c224
To: Conor Dooley <conor.dooley@microchip.com>, 
 Daire McNamara <daire.mcnamara@microchip.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Ale=C5=A1_Pe=C4=8Dnik?= <ales.pecnik@skylabs.si>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775624877; l=2632;
 i=ales.pecnik@skylabs.si; s=20260407; h=from:subject:message-id;
 bh=SF/Vt/vUfapCwcVHEGcraGJRNd6XQ/SLekhb7sh36tU=;
 b=mZYW6b3jCXNt5JzizDtunxJUPc0743ZKiJZy/8bxVMavCx/EPR63Rb1U6/ud20LdVEKDKQsAd
 Fn09rQJ65lOBiQmiYkTDZJ9IIsF076kkmyUwQwO77mbeUctGL/44CEc
X-Developer-Key: i=ales.pecnik@skylabs.si; a=ed25519;
 pk=TOE7w9RMxEE5vdFXO1rqqYmQkLKHAP39+87kI2Q5Lrg=
X-Endpoint-Received: by B4 Relay for ales.pecnik@skylabs.si/20260407 with
 auth_id=724
X-Original-From: =?utf-8?q?Ale=C5=A1_Pe=C4=8Dnik?= <ales.pecnik@skylabs.si>
Reply-To: ales.pecnik@skylabs.si
X-Spamd-Result: default: False [-0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285545-lists,devicetree=lfdr.de,ales.pecnik.skylabs.si];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	HAS_REPLYTO(0.00)[ales.pecnik@skylabs.si];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,skylabs.si:email,skylabs.si:replyto,skylabs.si:mid]
X-Rspamd-Queue-Id: 6BDF73B7198
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Aleš Pečnik <ales.pecnik@skylabs.si>

Issue was allocated array size for clk_data.
When clocks are being registered their index is taken from defines in
dt-bindings. The last 2 clocks had their index outside of allocated range.
Two defines (CLK_CCC_DLL0, CLK_CCC_DLL1) were not used and skipped over
which was not taken into account when allocating the array.

This patch is minimal change to resolve the issue.

Issue was found using KASAN when debugging unrelated xdma driver issue.
Consequently fixing this issue also resolved xdma driver issue.

Related dmesg output:
[    0.290703] BUG: KASAN: slab-out-of-bounds in mpfs_ccc_register_outputs.constprop.0+0xd0/0x1fa
[    0.290984] Write of size 8 at addr ffffffe7be6e3ca8 by task swapper/0/1
[    0.291253] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 6.1.43-linux4microchip+fpga-2023.09 #1
[    0.291482] Hardware name: Skylabs HPC (DT)
[    0.291611] Call Trace:
...
[    0.292999] [<ffffffff808508c8>] mpfs_ccc_register_outputs.constprop.0+0xd0/0x1fa
[    0.293245] [<ffffffff80850b66>] mpfs_ccc_probe+0x174/0x30e
[    0.293437] [<ffffffff808d4af2>] platform_probe+0x74/0xba
...

Fixes: d39fb172760e ("clk: microchip: add PolarFire SoC fabric clock support")
Signed-off-by: Aleš Pečnik <ales.pecnik@skylabs.si>
---
 drivers/clk/microchip/clk-mpfs-ccc.c             | 3 +--
 include/dt-bindings/clock/microchip,mpfs-clock.h | 2 ++
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/microchip/clk-mpfs-ccc.c b/drivers/clk/microchip/clk-mpfs-ccc.c
index 3a3ea2d142f8..71fbb6265ea4 100644
--- a/drivers/clk/microchip/clk-mpfs-ccc.c
+++ b/drivers/clk/microchip/clk-mpfs-ccc.c
@@ -234,8 +234,7 @@ static int mpfs_ccc_probe(struct platform_device *pdev)
 	unsigned int num_clks;
 	int ret;
 
-	num_clks = ARRAY_SIZE(mpfs_ccc_pll_clks) + ARRAY_SIZE(mpfs_ccc_pll0out_clks) +
-		   ARRAY_SIZE(mpfs_ccc_pll1out_clks);
+	num_clks = CLK_CCC_NUM;
 
 	clk_data = devm_kzalloc(&pdev->dev, struct_size(clk_data, hw_data.hws, num_clks),
 				GFP_KERNEL);
diff --git a/include/dt-bindings/clock/microchip,mpfs-clock.h b/include/dt-bindings/clock/microchip,mpfs-clock.h
index b52f19a2b480..8d53f2b81a54 100644
--- a/include/dt-bindings/clock/microchip,mpfs-clock.h
+++ b/include/dt-bindings/clock/microchip,mpfs-clock.h
@@ -73,4 +73,6 @@
 #define CLK_CCC_DLL1_OUT0	14
 #define CLK_CCC_DLL1_OUT1	15
 
+#define CLK_CCC_NUM		16
+
 #endif	/* _DT_BINDINGS_CLK_MICROCHIP_MPFS_H_ */

---
base-commit: bfe62a454542cfad3379f6ef5680b125f41e20f4
change-id: 20260407-mpfs-clk-oob-write-a0cec9a5c224

Best regards,
--  
Aleš Pečnik <ales.pecnik@skylabs.si>



