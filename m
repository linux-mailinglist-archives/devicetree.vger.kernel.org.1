Return-Path: <devicetree+bounces-292022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IF+ARil82kQ5gEAu9opvQ
	(envelope-from <devicetree+bounces-292022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 20:53:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CBD4A72CD
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 20:53:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9B1A5302F0C9
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2026 18:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E03213D8908;
	Thu, 30 Apr 2026 18:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8A54/OD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5D433CE92;
	Thu, 30 Apr 2026 18:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777575137; cv=none; b=hTQuMokdl5CLgJryj3A9P26l1P2InW07hj6oR35uxiOByjB6tX5sCYxv8ivzS3ivHKr6fkRpr/KtWEeta5uKKLKci93BQq8KJVQm7TDmJCqTnm3eIp+4wJjkWFak4FTu4K4ymPVRy4xTRxdKKce8bU99IjP5SFCXggiAXBSgt6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777575137; c=relaxed/simple;
	bh=7ryAeRblcPWnwSjPRvoFAvAgofVV8hhRtulzzlp5ePw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FKr3UuiFaThC0QQuQRChTw3Jz5jSuvqygCrwavftoJa6kpqp4RSsQ3MWg9qKNgx6Mh3z0dZ7mY8PiOo0bk8NIXTgxa3Vfzme8Uf0+4Z3oHHmT88oTNmvtdO/FB37Xk9WnDxsMQ0EyxuCnNHZYFgxPXVY5tt8YH9ynwUA5QCExuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8A54/OD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68A79C2BCB3;
	Thu, 30 Apr 2026 18:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777575137;
	bh=7ryAeRblcPWnwSjPRvoFAvAgofVV8hhRtulzzlp5ePw=;
	h=From:To:Cc:Subject:Date:From;
	b=G8A54/ODPxbJlb3id7uBBZqmtwkcT+Bhb99lBx3MVW0+qYf4ug9I5TcmSTAUTxrqi
	 RE7V+zQTuKzBDLtv5d3SbJL1mXJu7/ybSRJClEiFq8EVNfHwtHccUeV2j1iCxeUKEY
	 FbH5WSdsllKyFblIJ/2xaMl0ZFrIb1Nlw9vvnz2RGEYSTwxlMbpiVgHJRNMOrHflY9
	 O0e9x/MtPOW1BIGc+gZapX/sQRiz34b33C2FzR9V1QHNl2bD5uwW80lRZJHuviJAEN
	 gwherCHmJqB1yR/ICu9dITjOGb8Gph3MY+3yFqVLRzXoCs3ZsFCOQFExiNrwNanF5C
	 d4h1WM0S/0KUQ==
From: Conor Dooley <conor@kernel.org>
To: spacemit@lists.linux.dev
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Vivian Wang <wangruikang@iscas.ac.cn>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dts: spacemit: set console baud rate on bpif3
Date: Thu, 30 Apr 2026 19:52:12 +0100
Message-ID: <20260430-reword-overstep-3be08b7eab25@spud>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1222; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=ZzIyf8kNpSShxQake71q8Bn//zWKDFH9gBDY8/gGuwk=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJmfl9yJzI3N0Hpmfu5hlL/d5g81aqerzMwlPmieYrx3R 0nmxceNHaUsDGJcDLJiiiyJt/tapNb/cdnh3PMWZg4rE8gQBi5OAZjIZQZGhjeVuUWKdt9SMqrd VU7MNbL3lX97Ovv3plPxbLPVfvtMZ2D4H7dqzTfpTfds9p068CRtpoNx2/K5Xr21b29z5h2Renb DgREA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 01CBD4A72CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-292022-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,iscas.ac.cn:email,microchip.com:email,infradead.org:email]

From: Conor Dooley <conor.dooley@microchip.com>

Because the default console's baud rate is not set, defconfig kernels do
not have any serial output on this platform. Set the baud rate to
115200, matching what is used by U-Boot etc on this platform.

Suggested-by: Vivian Wang <wangruikang@iscas.ac.cn>
Fixes: d60d57ab6b2a8 ("riscv: dts: spacemit: add Banana Pi BPI-F3 board device tree")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
CC: Yixun Lan <dlan@kernel.org>
CC: devicetree@vger.kernel.org
CC: linux-riscv@lists.infradead.org
CC: spacemit@lists.linux.dev
CC: linux-kernel@vger.kernel.org
---
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 5790d927b93db..333ac8ebf3f51 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -19,7 +19,7 @@ aliases {
 	};
 
 	chosen {
-		stdout-path = "serial0";
+		stdout-path = "serial0:115200n8";
 	};
 
 	leds {
-- 
2.53.0


