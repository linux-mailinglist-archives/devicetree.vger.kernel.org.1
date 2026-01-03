Return-Path: <devicetree+bounces-251229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA77CF046B
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 19:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3838E301D5A5
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 18:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E8FB30C62B;
	Sat,  3 Jan 2026 18:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWymTSqz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F652F5A13;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767466662; cv=none; b=qF93MFbR4SX7uBEGEcxKpla76ru/VEMyM5QXWOLLZny5aDUau5IvPZpuUiOneP/6kAS94XQlQkBoNzjVaYSyS+ODU/KbAoNbK2jXYRpIx1Mzhm6rp5qUa1/Jx4jjuG2fWumensjDQ6/qXCqEvUi3TxfkAAtJNDcIGYdC2+G05H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767466662; c=relaxed/simple;
	bh=qYFS2rlOpk9olbd80sCn3U0gRL4PIsZ3YtXzt7AFweM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=en93OQd4Y1kdh0Hvd04Uk0slY0LJmxbZJ5AB4tF8K6VMwpND4IRLpPO0laCpNyS5P3JYX7kd9O9zc5P2l3ut3beo/nId5lGK4hEWzSQ1ohhEIEfibPlyIG6l76ipnsYfznvvsUQ+jO5hglPZr8tB4Yyye7G/PFAYTDnX963ytAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWymTSqz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4D2C19422;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767466662;
	bh=qYFS2rlOpk9olbd80sCn3U0gRL4PIsZ3YtXzt7AFweM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sWymTSqzYR0XoAWnKIRD95d3g8WIrOVNbTzl1jFGy45L3DRZsxCGD24Hb3IDw3BK8
	 CagA+prO2yhhOES9nUhieMsPp6+q26yVMfuuDp4a3mCWIWrVrWYioBQNIXFC1uLX8N
	 Y1dDqo7xmDw1nPOnNPMWKwEKVEdoHGPCXbZvqVkHHWnfa+4uvQOTq73vntqnJ9ldc6
	 uuFH+ya+QmQyAICmQpoCseopTNFSBH97xLxQNY7AQWDNcpZWYntsw2rvprZlTsNz8W
	 TXM/uDZEM4NQWWFLSugFvPIwPXVTJOk+dZWDZfbM9O+DRKX8nhdk0ndAEy341oin77
	 B9sP0InWBLvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F627FC618A;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Sat, 03 Jan 2026 19:54:07 +0100
Subject: [PATCH v2 3/5] powerpc: dts: mpc8315erdb: Rename LED nodes to
 comply with schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260103-mpc83xx-cleanup-v2-3-b2a13c0a0d63@posteo.net>
References: <20260103-mpc83xx-cleanup-v2-0-b2a13c0a0d63@posteo.net>
In-Reply-To: <20260103-mpc83xx-cleanup-v2-0-b2a13c0a0d63@posteo.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767466660; l=775;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=+puBlr+iszGhT8EEZ37X0Zo4jHGzrX+grKkdaghOCjU=;
 b=G9mH27yMmR07rQUU5RgrqmcRweVRcGx6DotKo8WMyvnjXbH3hS3dK6vUC8XalsxiRd81+LkmG
 VnPYnRFFon9CHP4MJ3DTJLhAtGE+HqqoLzAmTC0jWyxrnssYYRLX03G
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

From: "J. Neuschäfer" <j.ne@posteo.net>

The leds-gpio.yaml schema requires that GPIO LED nodes contain "led",
and preferably start with "led-"

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/mpc8315erdb.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/boot/dts/mpc8315erdb.dts b/arch/powerpc/boot/dts/mpc8315erdb.dts
index 1957b6687b2987..f4938a7292b9c8 100644
--- a/arch/powerpc/boot/dts/mpc8315erdb.dts
+++ b/arch/powerpc/boot/dts/mpc8315erdb.dts
@@ -478,12 +478,12 @@ pcie@0 {
 	leds {
 		compatible = "gpio-leds";
 
-		pwr {
+		led-pwr {
 			gpios = <&mcu_pio 0 0>;
 			default-state = "on";
 		};
 
-		hdd {
+		led-hdd {
 			gpios = <&mcu_pio 1 0>;
 			linux,default-trigger = "disk-activity";
 		};

-- 
2.51.0



