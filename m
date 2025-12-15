Return-Path: <devicetree+bounces-246804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5309CBFF2E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:35:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 375B03014583
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F44832A3D4;
	Mon, 15 Dec 2025 21:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLc2GHJv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482BE30AD11;
	Mon, 15 Dec 2025 21:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834229; cv=none; b=RfQPFpYWa9YdIDX1hTB9DfkXcv+oXPpzuJ5RqySCNy0/xdqPCgwYOryVQuVCZzSCsz7/29NVTAqYHYmqhrAcGKXT77aL2KK/A/ONwt6bbnxKign9bDtGbXv5CfNhfHlVf96C0IyG7FS54ziK7ilr6LdBb8XZJYoEK8sevT7YJxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834229; c=relaxed/simple;
	bh=CrgPu0plMXLmrnLAcuh4XDVEnwJ+nVeUShY/6oynE/Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=T3nLsAFpCpcWzLjDVfj6ColR69XVqs/lV42mofGt5BAG2u43Or4sTZXlucSOQ3FNo8ibJrY1uGywqpcqIRze37QrQSccyC0Dz6r3TF9iTHhfWc0FSCXARN/aMmWbPI0r88YMLuOnQP5jCYRLC6b86Qw7DgMmEgPw+7qpNXI+QLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLc2GHJv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EE08C4CEF5;
	Mon, 15 Dec 2025 21:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765834228;
	bh=CrgPu0plMXLmrnLAcuh4XDVEnwJ+nVeUShY/6oynE/Q=;
	h=From:To:Cc:Subject:Date:From;
	b=JLc2GHJvCVpWibVzRkpwjgjichzDIKiUd7lw/U2mmIeCO8R2XyL0zdZcoGFtZm84a
	 bsL/4uxi40BVJ9GSdxSJtHcR7i3YZPcy2vFhHYVQbpEgT6QwRAMCjJ0+uC0qMpu7zd
	 90ZLF/Zkz/peZduG+g7DMfcHFS/qaI9i0qQtRcMViOyiu6BFbElLf/mUUc6IK65Kke
	 z5LHYNpZDVKoBiUT0ZlqTRlrvkFAfAQtYuSna26ugF0/z6l0X6mwAZqrqlNSbpLdm3
	 H6Weld3VEGGJ8TfHSx3ifl37N8H03EBsqVuiVA3Io7K/X8rxuMa92GBSeimmrnK/wA
	 82vsYdt/HgZpg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Robert Richter <rric@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Drop obsolete brcm,vulcan-soc binding
Date: Mon, 15 Dec 2025 15:30:21 -0600
Message-ID: <20251215213022.3325133-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Cavium ThunderX2 aka Broadcom Vulcan doesn't use DT, but ACPI, so drop
the SoC binding.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/arm/bcm/brcm,vulcan-soc.yaml     | 24 -------------------
 1 file changed, 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
deleted file mode 100644
index 3f441352fbf0..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,vulcan-soc.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/arm/bcm/brcm,vulcan-soc.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Broadcom Vulcan
-
-maintainers:
-  - Robert Richter <rrichter@marvell.com>
-
-properties:
-  $nodename:
-    const: '/'
-  compatible:
-    items:
-      - enum:
-          - brcm,vulcan-eval
-          - cavium,thunderx2-cn9900
-      - const: brcm,vulcan-soc
-
-additionalProperties: true
-
-...
-- 
2.51.0


