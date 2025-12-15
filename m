Return-Path: <devicetree+bounces-246790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F144CBFEE3
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:29:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0209D305F7DC
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24C2328616;
	Mon, 15 Dec 2025 21:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h88sXrst"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CACAF327BFC;
	Mon, 15 Dec 2025 21:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765833940; cv=none; b=VUiE/kqeKkCL2iqkw2ahAOi27QI7dmNQzCcV48m8LKVVL2Yu/vJ2tWoLwYHh8Fw9q42GZ5Y3KlYvFFuZ2XCkF7ubexUd5rM632jEyr29n0JfPcUMm8GWfipLqUY4IaTSUBfDZ98TtUt0w8LftuQEUpTCrZTSxA6Mh/g4UFgeaMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765833940; c=relaxed/simple;
	bh=J9wdd5tpF3UGdR3WSIUx11uFdRHcuMOXGN8AZOmtX70=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Srz+aaQkZ0iENnXvssIcR6g2RCdJ+b89HwWyVWIgitWlnDqCdPn/hOAAgHiZ2Iy0EvzazwDXHXvs7pRZ6HzSlTuHwpGbb+OgTBYlXiV/viWnE33WVFBtbu5Hqtbd0eFqPLfHJF9xcirAb45cJi8oBYYUKZCwmOWRjLU/KTVtLiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h88sXrst; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8071AC4CEF5;
	Mon, 15 Dec 2025 21:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765833940;
	bh=J9wdd5tpF3UGdR3WSIUx11uFdRHcuMOXGN8AZOmtX70=;
	h=From:To:Cc:Subject:Date:From;
	b=h88sXrstIvkb0QF3HZUIWenomgwQwElgWLwI8kD+KdzTxYKwfOi2MxA5vfOseNR1x
	 dUwMWmSc03FLPOd2FZf35dNtySGbEguoBG+ljkTZrTd3g3nrMR1k9qjb/ajtFKjUB7
	 gbDr1I9gE+wxEfTbi5OQfuGL4gTNjVt/2Gbj9iF9BFIlG9GoujQrspZH6zDUmcSFTx
	 +MWisW0cARvNE2aSXBFz+yBma+obJTY1NpfRU5gbrr7laauqVUO/xyyIsSmNeoDR6N
	 wl8N78B5qkvB/hmFiPPAIl6Rtwo2XZTrG/ZGfo+dLOVErgNSYfUf0NWj4uZ3bS104R
	 N0zP9Iux0Ifrw==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: trivial-devices: Add socionext,uniphier-smpctrl
Date: Mon, 15 Dec 2025 15:25:32 -0600
Message-ID: <20251215212532.3318546-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "socionext,uniphier-smpctrl" binding is just a "compatible" and
"reg" entry, so add it to trivial-devices.yaml.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index d0f7dbf15d6f..1b356cb674d2 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -414,6 +414,8 @@ properties:
           - smsc,emc6d103
             # Temperature sensor with integrated fan control
           - smsc,emc6d103s
+            # Socionext Uniphier SMP control registers
+          - socionext,uniphier-smpctrl
             # SparkFun Qwiic Joystick (COM-15168) with i2c interface
           - sparkfun,qwiic-joystick
             # Sierra Wireless mangOH Green SPI IoT interface
-- 
2.51.0


