Return-Path: <devicetree+bounces-126215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A9D9E08C6
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 17:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DE27280792
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F027319E970;
	Mon,  2 Dec 2024 16:38:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from riemann.telenet-ops.be (riemann.telenet-ops.be [195.130.137.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360CB12E7F
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.80
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733157487; cv=none; b=i06PTHCRksf5L9l9oGYAhF1cSFbaTaX3j/Rw1h9OOV4DyftzTnBE0e1ExECPbzG3fn7ytw0nXeyL+2qCFMP7UXDkJuI5yielt79VJAFA9lpNBLTj6rarvpt3uo8mgvUOiiigmu90ou7hDQbbITVwNqh6m8cERyarePXk7Bb7lok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733157487; c=relaxed/simple;
	bh=8hQjpiRxrY2RwgnJAWl8oZ7Q5rlWydofxkcc7yQXHSk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=S2Lc/A9J0zLyJA9sU+B4XLC52VHgYJFUYZXD6TSh4W5X9Tr65JHfkCfNTrpzElwhz6qTU3M05buJTAmrE2QzqjFtjvZzqbWlcfZmzINsZGuosiXy7brx7HCUk+QODHtTDyR9OsRGGNmzmFYwZE8RbKtqR6oNAthfvWtO0OfokaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
	by riemann.telenet-ops.be (Postfix) with ESMTPS id 4Y28Qm2ywmz4x0cV
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 17:30:24 +0100 (CET)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:17fe:4001:68cd:b1ae])
	by laurent.telenet-ops.be with cmsmtp
	id jsWE2D00j1yjZj401sWEem; Mon, 02 Dec 2024 17:30:16 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1tI9JO-0007uA-Ls;
	Mon, 02 Dec 2024 17:30:14 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1tI9JO-007PnO-JV;
	Mon, 02 Dec 2024 17:30:14 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/5] dt-bindings: soc: renesas: Move R8A779G0 White Hawk up
Date: Mon,  2 Dec 2024 17:30:07 +0100
Message-Id: <d553ef4b1f969f72e384f274d42ac7a62fe45fd4.1733156661.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1733156661.git.geert+renesas@glider.be>
References: <cover.1733156661.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move the R8A779G0-only White Hawk board stack section up, just below the
R8A779G0-only White Hawk CPU section, to improve sort order.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/soc/renesas/renesas.yaml     | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index b7acb65bdecd2a38..dab6667970325dcd 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -360,6 +360,12 @@ properties:
               - renesas,white-hawk-cpu # White Hawk CPU board (RTP8A779G0ASKB0FC0SA000)
           - const: renesas,r8a779g0
 
+      - items:
+          - enum:
+              - renesas,white-hawk-breakout # White Hawk BreakOut board (RTP8A779G0ASKB0SB0SA000)
+          - const: renesas,white-hawk-cpu
+          - const: renesas,r8a779g0
+
       - description: R-Car V4H (R8A779G2)
         items:
           - enum:
@@ -367,12 +373,6 @@ properties:
           - const: renesas,r8a779g2
           - const: renesas,r8a779g0
 
-      - items:
-          - enum:
-              - renesas,white-hawk-breakout # White Hawk BreakOut board (RTP8A779G0ASKB0SB0SA000)
-          - const: renesas,white-hawk-cpu
-          - const: renesas,r8a779g0
-
       - description: R-Car V4M (R8A779H0)
         items:
           - enum:
-- 
2.34.1


