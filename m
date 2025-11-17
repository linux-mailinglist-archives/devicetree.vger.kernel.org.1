Return-Path: <devicetree+bounces-239440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF51C64E06
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:30:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0171434A0BE
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A1AE335560;
	Mon, 17 Nov 2025 15:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NupxwpXU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E3D2459E5;
	Mon, 17 Nov 2025 15:27:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763393275; cv=none; b=a0tHtCJNWE/d3Xa9IwCWjKTSegA9LjsHyEf0SKY/jZO027fmLLhGP9hd9htdGE04DvX8v/SJUyFBlmqUdlH7wrXgbyCqiqntXy9MnVXo955N85SqUqzEGirBKTD+JYJGbtvC0xUbXCsUThF7WQjhUKg9SOVv6xLAmjuMPv5p138=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763393275; c=relaxed/simple;
	bh=XFDVtRf2dMtnXChbfMlAQOSupgvm0o+20uGF7F280SY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CfJb5oFLSYzCCkWHPCQQcV/Ojk5WBE4RoD+TnxJ4Kxs20A01PxkQP8vGNpYj7kynkKjIDPFETFMNl4rThlslWsm89GU0+fcv3919B7fnrep7aOY5KBSJj7xM0A1KW6LO9QokRczUnZUpzwMUFlIg8tAJbgaREY3CQ6627t3fXCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NupxwpXU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D328CC4CEF1;
	Mon, 17 Nov 2025 15:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763393274;
	bh=XFDVtRf2dMtnXChbfMlAQOSupgvm0o+20uGF7F280SY=;
	h=From:To:Cc:Subject:Date:From;
	b=NupxwpXUwCsda4Fdwn7X7Vjt5zK0uy51eh6KomuAiAFfCoeB9pZngMO1i+WvO09h4
	 BIYVxBUcgjqslkP14jr02ix211SK5zM1exSGcX8beR/oB8jQgsAhhNCx5cxEfJjwhP
	 KStS0TF+8z10zUqq/Td12gD6boU4IyPcW6RaPQ8U5GGP7Z7ZUdYHGiIsCeXgm1wE7p
	 WW81pVLr4/n9p+KkZwhumzbNEOlCjtTSzoM4qE9kVah4NpYq6G3C2/r2aDgnj0Ja+4
	 Cw6B35nNB8b9qxSxqtm5+4wzgwKXWlW7CZpviZ50D4/XISvBdxDXORyedJQVUE7yTd
	 kEDVmW6iMmf4g==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v1] dt-bindings: interrupt-controller: sifive,plic: Add pic64gx compatibility
Date: Mon, 17 Nov 2025 15:27:36 +0000
Message-ID: <20251117-evict-corridor-5efe40101eea@spud>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1348; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=AAavUHU+kBNL6KIcRm/Gg3Eg3Y0+OFfa4VUJWSUbQt0=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnSds9Ond1e7PvdxXtDv8HTZ6fMA+7Pa26bP82h6/3uN zMe9LBUdpSyMIhxMciKKbIk3u5rkVr/x2WHc89bmDmsTCBDGLg4BWAiK/wZGT4zC3i99lvsrBkg vHyltsfiZ/l51vxdh9PSzkxx2b9njQvD/wLGh+Z2GVwC54LdPDOf3vl9iOVZkYVMaXPl5KMX7ge vZwQA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

As mention in sifive,plic-1.0.0.yaml, a specific compatible should be used
for pic64gx, so here it is.

Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
CC: linux-kernel@vger.kernel.org
CC: devicetree@vger.kernel.org
CC: linux-riscv@lists.infradead.org

 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index f683d696909b..3bc0ae9ea70b 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -60,6 +60,7 @@ properties:
           - enum:
               - canaan,k210-plic
               - eswin,eic7700-plic
+              - microchip,pic64gx-plic
               - sifive,fu540-c000-plic
               - spacemit,k1-plic
               - starfive,jh7100-plic
-- 
2.51.0


