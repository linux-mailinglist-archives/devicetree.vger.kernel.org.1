Return-Path: <devicetree+bounces-251227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C47CF045B
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 19:57:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 636CC3017F01
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 18:57:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E673D30C358;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFblRkXw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC809274671;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767466662; cv=none; b=UinzkG+r6zw0x6G7bFYwg/0ndAO6GfUX6w2b8M/gFa8QgREHEa0zLVnRZhcZDAQbeSbklYtdfZedx/Wdq8SESfNon6vgr91oaZl06QvyIp0VUVMut5nkun5OwBRJbqwcuw9rnZXBixtgNzWx31V+Jgzj5jE6+zkNdj+kR/XRXgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767466662; c=relaxed/simple;
	bh=79m/nJ/QDMP8KLr5bX+4nacC2eKgzRySRWsaV7zH+GM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kfqdDs8UcUomp0ueJIr60FSVpHa/qvpEm3bsp2aSFdhrADZ+7d83eQsyURAdydWgSsdButl7P/7LVGe4N/5HBzI6G2gCYhmVZozu4z5HnniUIldIiVMtYM63poFUgjXfbusngEnXO2eY5E4zAoD997Bnpwkb/mg9fXkLTRt3G8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFblRkXw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4BDD9C113D0;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767466662;
	bh=79m/nJ/QDMP8KLr5bX+4nacC2eKgzRySRWsaV7zH+GM=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=qFblRkXwKvNrauVIYruUzKIkXE5Z9rjuvRYR+oXJ0tDHFoYyOtyhWubXF+gS+2Ri5
	 tuJReFhQOAv4ypBR9IshOyJpWmU23qiwaGSmWW0wtwRzM7Bvwylo6TudYT146NAx2J
	 PwAAQvjE3w32AuyZMUYkNf4q3NFQI9AhC4r2TM5mLaTc2kPzvjyRgbfah7aI3to5+U
	 Ubx4RRfmHm1PIt+eoQBQ4fw51lYZm+KKJBqbYdi0FhSYYjwFwG0sMFL1y+plfzV9Qd
	 WCeTPvSXb6YoViikdNafFNGo09Bq/FKWbiC44HyfNRH/W/teCJsI3zZWzNmxwHbRpE
	 23WyW+4lgKfZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32024FC6182;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Subject: [PATCH v2 0/5] PowerPC: A few cleanups in MPC83xx devicetrees
Date: Sat, 03 Jan 2026 19:54:04 +0100
Message-Id: <20260103-mpc83xx-cleanup-v2-0-b2a13c0a0d63@posteo.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAMxlWWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHQUlJIzE
 vPSU3UzU4B8JSMDIzMDQwND3dyCZAvjigrd5JzUxLzSAl2TlFSLlDQjS4Nkc1MloK6CotS0zAq
 widGxtbUAsAtLrmEAAAA=
X-Change-ID: 20260101-mpc83xx-cleanup-4de8df290c75
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Madhavan Srinivasan <maddy@linux.ibm.com>, 
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767466660; l=1655;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=79m/nJ/QDMP8KLr5bX+4nacC2eKgzRySRWsaV7zH+GM=;
 b=4uOPvJj2DCAbQMXQnEmxLy/rrOrQ91EW1qu20Q340P7+2tkitZyITztORk1/v/mZ+jrLVcWvS
 SOvnF2zbdoCBJr1qVEjChBmg7Hr+jxKp/4KWsbdUA6G6ZbvepQAeBYe
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

This series contains a few cleanups for mpc8315erdb.dts and other
PowerPC devicetrees, which are hopefully uncontroversial.

Some of the patches were previously part of another, larger series,
titled "powerpc: MPC83xx cleanup and LANCOM NWAPP2 board", but that
series became too unwieldy to carry on. For this reason, this series
starts at version 2.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
J. Neuschäfer (5):
      powerpc: dts: mpc8313erdb: Use IRQ_TYPE_* macros
      powerpc: dts: mpc8315erdb: Use IRQ_TYPE_* macros
      powerpc: dts: mpc8315erdb: Rename LED nodes to comply with schema
      powerpc: dts: mpc8315erdb: Add missing #cells properties to SPI bus
      powerpc: dts: mpc83xx: Add unit addresses to /memory

 arch/powerpc/boot/dts/asp834x-redboot.dts |   2 +-
 arch/powerpc/boot/dts/mpc8308_p1m.dts     |   2 +-
 arch/powerpc/boot/dts/mpc8308rdb.dts      |   2 +-
 arch/powerpc/boot/dts/mpc8313erdb.dts     |  61 ++++++++-------
 arch/powerpc/boot/dts/mpc8315erdb.dts     | 119 ++++++++++++++++--------------
 arch/powerpc/boot/dts/mpc832x_rdb.dts     |   2 +-
 arch/powerpc/boot/dts/mpc8349emitx.dts    |   2 +-
 arch/powerpc/boot/dts/mpc8349emitxgp.dts  |   2 +-
 arch/powerpc/boot/dts/mpc8377_rdb.dts     |   2 +-
 arch/powerpc/boot/dts/mpc8377_wlan.dts    |   2 +-
 arch/powerpc/boot/dts/mpc8378_rdb.dts     |   2 +-
 arch/powerpc/boot/dts/mpc8379_rdb.dts     |   2 +-
 12 files changed, 109 insertions(+), 91 deletions(-)
---
base-commit: d3f2d8e7de622d2a2d4283cb545e51745d87f0c5
change-id: 20260101-mpc83xx-cleanup-4de8df290c75

Best regards,
-- 
J. Neuschäfer <j.ne@posteo.net>



