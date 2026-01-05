Return-Path: <devicetree+bounces-251662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5588CCF5630
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 20:32:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B646302E853
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 19:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD2A27E1A1;
	Mon,  5 Jan 2026 19:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys3AGcdx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0654813FEE;
	Mon,  5 Jan 2026 19:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767641562; cv=none; b=c3f8skMBi3QrWNMVB8XnNpjq0XUeSLeefH91SeRHPMLXDLNkIjuJRloFi9PMDhZdBJc2Ov6qB+qCcZejFrCOjGzd1RCtm8qnYV0/afjayWwcmGe8UYbGwFMXfTLTMCC9EccPxBqfdq8XpPmWB1+mBLiP2XnI714brmHPxJGiPxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767641562; c=relaxed/simple;
	bh=sRtr1e9Jf97ZH16WgkB5lDqI9kVF06XBN9Bt46UFCHo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kU7T2B2csUgdsCK7RSHNBrSN+NNqEh1vrM0lJWmCLC2PpMpYnwFdtgBm9vPUGb65/m+liUaSjY5Zlx7+IrFOwrmz9oly9Uu5dyyS4usJiZQihq1ECXdRQifG2ug0b3whzZ3QBIJJwH7m7+o2fhtym0q3X9zzO/xXrqA1yA5UNE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys3AGcdx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 932CEC116D0;
	Mon,  5 Jan 2026 19:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767641561;
	bh=sRtr1e9Jf97ZH16WgkB5lDqI9kVF06XBN9Bt46UFCHo=;
	h=From:To:Cc:Subject:Date:From;
	b=Ys3AGcdxpTbzEZvrLgRX3f87by04HRXpBhE7Em2avmCKPqg/7sNHGLnAM9RZElQnL
	 PxXTRv9VYcEZ9hTH8R40XtVeuxRhzyQuw+kTwGnVfbnOXu96JNWHEcqVH54yOegn+P
	 sWvG7V0sh0OaGrgoxdCa3/U1XDo0eg9OauI7u6REtArmRVsY5x6zyH1ohUksBnsiRG
	 16a6FVfPOn66XN5ZURL46pR9QrS9D3TgU1VONa4US76/mJubwUBYAVasCN0KqHX7NZ
	 gdYndLDGU5mYSAF4oSy7TpYLhc720AU+cNcEVtSHgplGx11VfOyupcbVigb6cavLE3
	 jxHqSpz+rFmog==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Patrick Venture <venture@google.com>,
	Nancy Yuen <yuenn@google.com>,
	Benjamin Fair <benjaminfair@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: nuvoton: Add missing "device_type" property on memory node
Date: Mon,  5 Jan 2026 13:32:31 -0600
Message-ID: <20260105193232.3167128-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"device_type" is required for memory nodes, but is missing on Nuvoton
npcm845-evb.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
index 2638ee1c3846..5edf5d13342d 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts
@@ -17,6 +17,7 @@ chosen {
 	};
 
 	memory@0 {
+		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x40000000>;
 	};
 
-- 
2.51.0


