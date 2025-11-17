Return-Path: <devicetree+bounces-239416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0E9C64A25
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 15:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9792B4EB591
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9589E3346AA;
	Mon, 17 Nov 2025 14:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkAariby"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4D9334367;
	Mon, 17 Nov 2025 14:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763389298; cv=none; b=oTiLBm1x6F8EaicOK241wPLL6kYEDZ+Svcb6lqHhldaJnhRl+0uhMWyX7euYS0Q+UpffsBoUOekUk/RFQhEWJfQkcS06Us47GSS/J8InqxA1Cq4CPg6eCCflkeKz1XKco1+NToyjlCI4C2EbGDRjEs/VlJRMkxqV890E8eDF+zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763389298; c=relaxed/simple;
	bh=4Mi+LgMXubEexFptn3rownVulQBg1tOQnyFmAt9y8i0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LCFx/2rdlROew027wZVnQtZIHEJTo8mDON25F1z1XeikcWuGXnvHSEKtgH7hHABehQx9b4DZCsfPfvlWe3hl08C7H/ZT5UYsPWvVya1CuAiehvzzMf9zv6ZNleM93aMsKPb60qSUyPbhH4tGNJP2Lj8Lf8Byyuctb6UCC1EBInU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkAariby; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 065FAC4AF09;
	Mon, 17 Nov 2025 14:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763389298;
	bh=4Mi+LgMXubEexFptn3rownVulQBg1tOQnyFmAt9y8i0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IkAaribyinSaMIZyProghQx0volGag6ODmeAGY6kwEI/CZgMGuhZ7IntFfu/9tXYY
	 TifCFkka+wMw3MQ+Cpk7s5yLPQGStdJkkqrdEXpM+p6sQ5z6nE6yguYLl2dKt7C0o8
	 4SzDJd97uM2dfyNZVDQf+dzpVlAkE2iR+ZMiXLLhMEQUWbEM9V8ZJq7IOecPtSjHdd
	 FMu8erZXIMZF/I6BeOg3EM3QOTMzbQWG0kZwz/4FUUGGAd3Vm8Dz1UTBDTblveb1j4
	 5vQtxWDc6S6umkbHxKMhiE6Qahxy/iaIAR7ehNZCmF5gUBD4581Mz9OgoYNA0RgqmJ
	 Ux6UIyTSjbg9g==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Subject: [PATCH v1 2/3] dt-bindings: soc: microchip: mpfs-sys-controller: Add pic64gx compatibility
Date: Mon, 17 Nov 2025 14:21:21 +0000
Message-ID: <20251117-enrich-tricycle-aad89e430b0c@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-mashing-cursor-6e965a77ce6a@spud>
References: <20251117-mashing-cursor-6e965a77ce6a@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1153; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=VsLhTgDg3A12xD5nur7r374Z89j1K8foRtnpWti1HhM=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnS+nEdOofm1erYW9u2XT6oczPzNf+x3qZbMRy8BRZRa XcuzH3RUcrCIMbFICumyJJ4u69Fav0flx3OPW9h5rAygQxh4OIUgIks82VkWB5mpBA8iWtf5f1H MQJPdjXcirvbsm3NuXsnei41btyUeZbhf9qLWeYn5vyd3XjtI+PLzlen9yxYeVFinu+TljWLvsz z8+EHAA==
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

pic64gx is not compatible with mpfs because due to the lack of FPGA
functionality some features are disabled. Notably, anything to do with
FPGA fabric contents is not supported.

Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/soc/microchip/microchip,mpfs-sys-controller.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml
index a3fa04f3a1bd..6cebc19db4f5 100644
--- a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml
+++ b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs-sys-controller.yaml
@@ -24,7 +24,9 @@ properties:
     maxItems: 1
 
   compatible:
-    const: microchip,mpfs-sys-controller
+    enum:
+      - microchip,mpfs-sys-controller
+      - microchip,pic64gx-sys-controller
 
   microchip,bitstream-flash:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.51.0


