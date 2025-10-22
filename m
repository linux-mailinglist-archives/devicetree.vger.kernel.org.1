Return-Path: <devicetree+bounces-229946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3A1BFDC82
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 20:11:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D24903A7368
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 18:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 036382EB86F;
	Wed, 22 Oct 2025 18:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVxtMUv9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC272E54BF;
	Wed, 22 Oct 2025 18:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761156709; cv=none; b=poyYnFDW7uvJPsgKJuZhC5DwjJvjN836c3oiPRzetcInOf65jIFfFetgmv0JkeoL0v4s0RfhJS0e0G4zzNSgnIE0cdHOKrwGIzlfY0BCWsMaBspFTukoHIFXuacVaiRNDvwhj9rKrTxpZJ3r19uTq6ajKERDnPXGAYNr+yhUp8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761156709; c=relaxed/simple;
	bh=N2eOzlvujMsk3qucMp5Ac8+IjYIna5iwIEB/WqMTFCk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WpQldIOnl+N/9qCdyJ9KPrdcdJhZ63Rdd52f9uQtviEAGQMsTygjZCiBsjBbmjr6u/JGyGg6PSzwmx76w3A0MKO3wlVBRdAEQ0NJIUnJV/Nu69f+OW8Q9/lio6fA160bovVHDXPTtsQy+Nw1xGiNp0A8UijA3JdyiH7hnNfdQmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVxtMUv9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F661C4CEE7;
	Wed, 22 Oct 2025 18:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761156709;
	bh=N2eOzlvujMsk3qucMp5Ac8+IjYIna5iwIEB/WqMTFCk=;
	h=From:To:Cc:Subject:Date:From;
	b=tVxtMUv94mGjfWJ8Dr3qOiiBL/uCIYMG5jvs/UWk6waZRxbZJaPHjsizDHvDgaXRC
	 NNAmg88XGduqUgAjy35mHAOhKuKonqzHWmxmhksRhMXWepoCE78Ld/pNYL3zB3ybos
	 gcnWvN76/hRXMV9VQwcHbacIVTNcP9D/SwhV39FOO/orC5Y74lN3PgJxGc4foXQuL9
	 AS4zDyIbjNB9sG4b4WIoXzoNJhqJIQqMCl9xnUjc2arlwerjP1S/Fw1T5qAO0uoGEh
	 sQfzqxGcCGgEDJJm0rDlqK/4wh0uURIqNtlckup3x2OEVKMJ3/CadU+76Gh4vvJknJ
	 deV2qek5HhyXA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chanho Min <chanho.min@lge.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Add missing LGE SoC platforms
Date: Wed, 22 Oct 2025 13:11:43 -0500
Message-ID: <20251022181144.4147944-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LGE LG131x SoCs have been in use for some time, but the root compatibles
have not been documented. Add them.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/arm/lge.yaml          | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/lge.yaml

diff --git a/Documentation/devicetree/bindings/arm/lge.yaml b/Documentation/devicetree/bindings/arm/lge.yaml
new file mode 100644
index 000000000000..d983ef7fcbd6
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/lge.yaml
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/lge.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LG Electronics SoC Platforms
+
+maintainers:
+  - Chanho Min <chanho.min@lge.com>
+
+properties:
+  $nodename:
+    const: "/"
+  compatible:
+    oneOf:
+      - description: Boards with LG1312 Soc
+        items:
+          - const: lge,lg1312-ref
+          - const: lge,lg1312
+
+      - description: Boards with LG1313 SoC
+        items:
+          - const: lge,lg1313-ref
+          - const: lge,lg1313
+
+additionalProperties: true
+...
-- 
2.51.0


