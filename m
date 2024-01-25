Return-Path: <devicetree+bounces-35097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE3283C52F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:49:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 657F71F266AB
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F6F5DF32;
	Thu, 25 Jan 2024 14:49:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from andre.telenet-ops.be (andre.telenet-ops.be [195.130.132.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0419A6E2D4
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706194152; cv=none; b=Ydgq51v/o0LSEWk2VZs9tb2NeQh1v5zwHfEtz37chWRZfA1m8nL9rbM2WkM9rc9LzMsZ3LFrKdNBsmvM8vvjEwEaA7OgcoqFoq8/JFKEpAHi4IOd7WhKCQBjrMnIuF2y32alOUoGW2LDmZP6Y8ppSU97FqtZ3gk9h0lYLVjjBCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706194152; c=relaxed/simple;
	bh=doYO8Z4F+c9Uj5tLUWMforTrLhKJ1dne575sgoD7ncM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Z/2HSP15Yb+Ve2H0L8E03sJ8AsnSTMWZgtvbzkaA6fpqpL4ygCVkuR3U6wLtt2cxpNQsT24yBoWhs8evk92dTuy2TYWfzoNwX6NWOiwygOV0+n815SL/KAL2LYnJvxOZI6hdAdkydCypp0cCSV5zLqLgq9e7dql017zj7XKMhhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:bc9e:fcb8:8aa3:5dc0])
	by andre.telenet-ops.be with bizsmtp
	id f2p02B00P58agq2012p0G9; Thu, 25 Jan 2024 15:49:01 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT11W-00GUrw-I1;
	Thu, 25 Jan 2024 15:49:00 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT12K-00Flts-HB;
	Thu, 25 Jan 2024 15:49:00 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v2 1/9] dt-bindings: soc: renesas: Document R-Car V4H White Hawk Single
Date: Thu, 25 Jan 2024 15:48:51 +0100
Message-Id: <a44d990c962c8e0aac3b133eaa563f8c92b2ce29.1706192990.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1706192990.git.geert+renesas@glider.be>
References: <cover.1706192990.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible values for the Renesas R-Car V4H ES2.0
(R8A779G2) SoC and the Renesas White Hawk Single board.
The former is an updated version of R-Car V4H (R8A779G0).
The latter is a single-board integration of the Renesas White Hawk CPU
and Breakout board stack.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
v2:
  - Add Reviewed-by.
---
 Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index 16ca3ff7b1aea146..15b9dd52938996f4 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -348,6 +348,13 @@ properties:
               - renesas,white-hawk-cpu # White Hawk CPU board (RTP8A779G0ASKB0FC0SA000)
           - const: renesas,r8a779g0
 
+      - description: R-Car V4H (R8A779G2)
+        items:
+          - enum:
+              - renesas,white-hawk-single # White Hawk Single board (RTP8A779G2ASKB0F10SA001)
+          - const: renesas,r8a779g2
+          - const: renesas,r8a779g0
+
       - items:
           - enum:
               - renesas,white-hawk-breakout # White Hawk BreakOut board (RTP8A779G0ASKB0SB0SA000)
-- 
2.34.1


