Return-Path: <devicetree+bounces-239441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F911C64DFD
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:30:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0043B4E29C3
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB7442F290A;
	Mon, 17 Nov 2025 15:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxnqSItU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3DE52727ED;
	Mon, 17 Nov 2025 15:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763393408; cv=none; b=ktCJ+Vm4bcfse3lIpEpnIlxcxA6f5fS9FtFaemDGr5TzCkU5QYCPyTaarPsCC3gi3lirojz4E3Sgp1ncu/l51j1/vxBPAeRzSpdRKn7vRrK/vbMlxWRI6j991HbcM8iNGdTTVSqsjmmA7zEwf70BEX4xRYfS/zXpV8Qk9IGFjJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763393408; c=relaxed/simple;
	bh=NXDSR6umU8a9vB338fxPgJsPJ5ZbizTgt4fXoyw5HlU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sJyLJcEnnpBkXGqIk0FhD8qvWEtIOto7KySOJL2eeyep1Cy8czbZI/jincgupY0xZ58AlX3SfBWntJxJhhoUQsD23f4pK9pIgxg8LGIxE0VWZJ1fZUDG4TffaM3DnlKfVrI3MKAAU+BcjtamU0q7HfjfHUmVArEWgekJ/7BvYTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxnqSItU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC573C19424;
	Mon, 17 Nov 2025 15:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763393406;
	bh=NXDSR6umU8a9vB338fxPgJsPJ5ZbizTgt4fXoyw5HlU=;
	h=From:To:Cc:Subject:Date:From;
	b=DxnqSItUjdT1gWTHmU6qdQIXrFpYxVT1/nTkIMYZzE9DCwJ4zPtl2Os/lD5IgT4iC
	 A4X/WM/XhmhbwMLFj5Z1AJBXU4GI2slU25yLbG78ZZn+l43PnrCyxktU2mdVIKZGMm
	 m30j4072f5HTj1IskPNQoVa3DwOijnsJPfzDVLBhIg2u2kyJ/TzVdDosXH1yV1dxHd
	 d5D/dePxWWKnybmbnPTOgvb6R94ZpalWZbw6hc3U2aHN3s7oMHlZ6+giH9tYJ+wHXs
	 OOpTt0yd+mmmZFtZApV3qJ5wxSghCwECPuS6mWdlnFty6vBDOYcacYg60l5IfmD2jO
	 ZJztt3G2gtmzg==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v1] dt-bindings: timer: sifive,clint: add pic64gx compatibility
Date: Mon, 17 Nov 2025 15:29:54 +0000
Message-ID: <20251117-sadly-scrap-4671550cd78d@spud>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1434; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=jVGCo2PwmaIFmt25VfSAX5mcMLxJOF6mINCMWhpY8yY=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnS9gUztbumzbu0vORF0LsTEw7wVPNL7b3591VudQ7zI buF/ytWdpSyMIhxMciKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAiKxIY/pmoXTrstaFbSKon kfXS74RVNh72d9ee1TnYwVvotdPzcC8jQ+P0RwKOeapztVZKL/hgGvgiRv/Q23mtlWGPk81cNuS w8gMA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

As mention in sifive,clint.yaml, a specific compatible should be used
for pic64gx, so here it is.

Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Daniel Lezcano <daniel.lezcano@linaro.org>
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
CC: linux-kernel@vger.kernel.org
CC: devicetree@vger.kernel.org
CC: linux-riscv@lists.infradead.org

 Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index d85a1a088b35..f0b7b9d2f46d 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -31,6 +31,7 @@ properties:
           - enum:
               - canaan,k210-clint       # Canaan Kendryte K210
               - eswin,eic7700-clint     # ESWIN EIC7700
+              - microchip,pic64gx-clint # Microchip PIC64GX
               - sifive,fu540-c000-clint # SiFive FU540
               - spacemit,k1-clint       # SpacemiT K1
               - starfive,jh7100-clint   # StarFive JH7100
-- 
2.51.0


