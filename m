Return-Path: <devicetree+bounces-251230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C39C9CF046E
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 19:57:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9731C3020360
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 18:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1106630CDAE;
	Sat,  3 Jan 2026 18:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNdgvt5N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0482F60A1;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767466662; cv=none; b=gbXxSjEOBVI5uj36BS/gmUn5hHnDAUaZj6LfL742ml3gP6LTuvrN0tLVIUpvY6z3EOlZekQ0tiCUNTdwobHtOryrEgxd9+JG4wAPs/lxjHHMozlXfmNiPIIeG/zzLU/fm4Vl+IzmB8jMdY6p/YBudEJK+IUGXeScLJckyzq5ZFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767466662; c=relaxed/simple;
	bh=b6pLrsI/UwhsykmnJymez4U5jn32qFK8+QM/sJu1Q/I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dCrfXuBgxupDgk5FgU9MBg6LFI4q5k8MoM8wBHukgoIog9Mu5fixkhXY9LJLcG4Tb6yW6nYopd1F2cqxeniZHEo6EJ9Km5aH07Sd5z1oLOjHNOkbLt9FR2KZvZL1aKEY+hmeq+5Jc7w0xjVRQsy0Fr9Bjb2O++nxZL18UXYH50U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNdgvt5N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E55C19425;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767466662;
	bh=b6pLrsI/UwhsykmnJymez4U5jn32qFK8+QM/sJu1Q/I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=GNdgvt5NDSHiTVaFA3yt324A7X9/rj0XIXVcKjIPoI/WqMMT02pEQDmaKEe3p5gKY
	 q8o3kDzAvUEw0lMv7C7pAFLcjZosikhguK80hWPN+rkKFly0FZ9hNE4S9MSCx+Qoh8
	 FmSe3DKfTpWnO5pHE/ZH3G+yM9Ml+iTfxq9qJ9kJFNk0IemVvq2XiE/U4ak2lJorjn
	 z3lriRsu3eMDJWSKCy0Y/2pJqncIvPA3HgVcNk0mxetFaVGdEQ3e5F30L4+LURQoRX
	 NZAB1/4ZQ/CIDoQSf7La1rp6EsTLryuUwfgvChih3zi+TsqlRWKOQp/gEnmiyor8uV
	 oie/s4rfbJ/Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CE5DFC6189;
	Sat,  3 Jan 2026 18:57:42 +0000 (UTC)
From: =?utf-8?q?J=2E_Neusch=C3=A4fer_via_B4_Relay?= <devnull+j.ne.posteo.net@kernel.org>
Date: Sat, 03 Jan 2026 19:54:08 +0100
Subject: [PATCH v2 4/5] powerpc: dts: mpc8315erdb: Add missing #cells
 properties to SPI bus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260103-mpc83xx-cleanup-v2-4-b2a13c0a0d63@posteo.net>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767466660; l=659;
 i=j.ne@posteo.net; s=20240329; h=from:subject:message-id;
 bh=SOxgRreTN2XiGdnaxGDo2anyzlxFEzi5vS5RNGSUBZ4=;
 b=yHhCNJ6v87inFMoThz8AU2jQGUlfWK2+s+IXPq6W8fqn0A6PxJ5xbLuRjGRvxEElkUQ2uRF5n
 L5CNvbF6njrB2l+HfR2WNxEnS9NN8ppBDehI2MBzDy0m5mK+GPXFoy4
X-Developer-Key: i=j.ne@posteo.net; a=ed25519;
 pk=NIe0bK42wNaX/C4bi6ezm7NJK0IQE+8MKBm7igFMIS4=
X-Endpoint-Received: by B4 Relay for j.ne@posteo.net/20240329 with
 auth_id=156
X-Original-From: =?utf-8?q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
Reply-To: j.ne@posteo.net

From: "J. Neuschäfer" <j.ne@posteo.net>

These properties are required by the spi-controller binding.

Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
---
 arch/powerpc/boot/dts/mpc8315erdb.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/powerpc/boot/dts/mpc8315erdb.dts b/arch/powerpc/boot/dts/mpc8315erdb.dts
index f4938a7292b9c8..0b087180e1815f 100644
--- a/arch/powerpc/boot/dts/mpc8315erdb.dts
+++ b/arch/powerpc/boot/dts/mpc8315erdb.dts
@@ -135,6 +135,8 @@ spi@7000 {
 			reg = <0x7000 0x1000>;
 			interrupts = <16 IRQ_TYPE_LEVEL_LOW>;
 			interrupt-parent = <&ipic>;
+			#address-cells = <1>;
+			#size-cells = <0>;
 			mode = "cpu";
 		};
 

-- 
2.51.0



