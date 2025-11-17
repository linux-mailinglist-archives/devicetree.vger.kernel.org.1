Return-Path: <devicetree+bounces-239451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3C9C64F0E
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:47:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 5B7B728E83
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AEA727F010;
	Mon, 17 Nov 2025 15:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ6C5Gbn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6200F2417C2;
	Mon, 17 Nov 2025 15:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763394440; cv=none; b=qVUo5aA5zAflSvowlF1tJn1/011Y3Kf7OX5q3I68eHq6c/fb4xFNIy3KgSwqaRaNmLKYmPdqLt4RR7Ri+DNVPxekbrK4RBsfI/mUFSa7avb8xmUCsS4H3sddhE5Y0poJmutLNYYkllDn0jkr0r4BcUX62zRTsrTE7ViYabYg+gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763394440; c=relaxed/simple;
	bh=tg9gK0lxKB9H8zuTyFMlLoS/1uKEOkcWEEEZpR43asw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Wi6Ids40O+1yO9bZgQ4ZjOn9QvypE52MkPt1yIpp8bqcAkMvG56uzotxFLSjV8LO5Rdxrc+vkrGZD5n8kth+iKdj8odZPjqYYKjAKfZRr/OjzGE1jAZoDnPhieA1E6sde70+JMjuDJiU+0qOqUnoCUsNaTlvQh4cjSThZhbKnmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ6C5Gbn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43FE0C4CEF1;
	Mon, 17 Nov 2025 15:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763394440;
	bh=tg9gK0lxKB9H8zuTyFMlLoS/1uKEOkcWEEEZpR43asw=;
	h=From:To:Cc:Subject:Date:From;
	b=kJ6C5GbnlPG5N4NUZ/BfBUiqxWdE6XButEywu1tdMISog6CK30g5tlLe9HwgYQp1j
	 X8DiQ9QA3hDGr2+YZWIBfkka2Pd0fymLI0Lgoq0jvSojNIBAwfKTP8QmLXgMQXcxpv
	 vB6Vx7LoCDEr0r0G077Nndq3LXP+breQI0+YTZP5/Yyg8kbQ5QGaaKMgriX9p4Sqco
	 WudSFLH6wV646Gbe06nsyhRdYL+P5h1iV7Ce/wv78pyqIkuIoyCs3A/bREpLcTnvEI
	 sBBjSIRuMvuuGyv0sHTIKDBk1KkEUpFd7vhgbFOlm1vUZ3HioMvIiGtUIYMlPFxDqr
	 Tli/MuSt4q9Eg==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: mbox: add pic64gx mailbox compatibility to mpfs mailbox
Date: Mon, 17 Nov 2025 15:46:54 +0000
Message-ID: <20251117-screen-appointee-837a7296ca91@spud>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1383; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=wkK3E7wkvLo+bKj8aySkKKfGGzrtQFTsPr86ROV7cyk=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnSzrn3amfOU1p392l/vat25h0Rvm0nnl1cyxLZ2bo0V PDQ6gMHO0pZGMS4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjARtcuMDOuYo5asvuTNuPpd q4XZw2iTr4f4t5ScOOhVKLX+S2P9z1qGf7rMBvGNN86H3DdRmc4aziFbONHJ61i+TgjvssRFvPO 3swEA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

pic64gx mailbox is compatible with mpfs mailbox, even if the mailbox
consumer is not - the underlying communication mechanism is the same.

Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Conor Dooley <conor.dooley@microchip.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: Jassi Brar <jassisinghbrar@gmail.com>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: linux-riscv@lists.infradead.org
CC: linux-kernel@vger.kernel.org
CC: devicetree@vger.kernel.org

 .../devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
index 1332aab9a888..5f2ec74c1b29 100644
--- a/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
+++ b/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
@@ -11,7 +11,11 @@ maintainers:
 
 properties:
   compatible:
-    const: microchip,mpfs-mailbox
+    oneOf:
+      - items:
+          - const: microchip,pic64gx-mailbox
+          - const: microchip,mpfs-mailbox
+      - const: microchip,mpfs-mailbox
 
   reg:
     oneOf:
-- 
2.51.0


