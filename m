Return-Path: <devicetree+bounces-239474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F17C654E4
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 18:04:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E6A58351810
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B04A2FFF88;
	Mon, 17 Nov 2025 16:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMR3Nkwz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B152FFFB7;
	Mon, 17 Nov 2025 16:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763398417; cv=none; b=U9LXy9QRAp6LqZySKKPDYeR36b05DZQAi5Mt9ZtWcd0r8/gN+Y5Hty5mPlIl9Ry627ggzgfEJBJLQESnkt43QFuLbH258ir7W47fvNB+QqLf94GVG16H3hE07GhhTgY9zcnkNt0K+vrKKF6nvfJmiur8szDbIrXnSOS8lr9+sxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763398417; c=relaxed/simple;
	bh=VfwwYyZqWowOItggqYS9MBc9xN4rjuwUcGHHtUNGlOw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g/mgcGWHYzEb2nQ98TlhnyPdzc7rKeiWtImADe+M22n0jcg8rxcfRBu6e8MyJltYNezz+LBdu6gfCzZEv/69J24KfYYCVr0KYHvoZy/IrAt89dXmt4l0ZOJQjaf34yYSitDl9V+jxLIfO3woNCQILeU1J4nzo/1LVjF6Up1n6QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMR3Nkwz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14A06C116B1;
	Mon, 17 Nov 2025 16:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763398416;
	bh=VfwwYyZqWowOItggqYS9MBc9xN4rjuwUcGHHtUNGlOw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qMR3NkwzgSb9fU3mW152kvulZSjapOke7BJ0tzKOHx8ZiIc/yMcin8wnjfkVizUbs
	 cdiEHsm9p3K18D9h4BLEpgI0KvvEQYJoeRDh2vfqWhtVtHwnjxtjm9vIHOkS/a+YqB
	 ZcoazKMhp2eYqGrahM4I4vbKQEOE5wBdxDSqsBVCnCkfi1aAtkErbbGfv4Cvv/Fxal
	 19PMVR8P+D9Xy6FB0zydlXoend/WOC2loR6KEEG5guvgk8XRWVEZ2xY8ICz4ZMlN8B
	 fIOrfH+S2YU16oo/Sl8lF7EIKbA0l1fUL3aYjD/sxWSUrL7tonbDMqoZELcu0+zfvV
	 6oN+h2373fMrA==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Subject: [PATCH v3 1/3] dt-bindings: riscv: microchip: document the PIC64GX curiosity kit
Date: Mon, 17 Nov 2025 16:53:22 +0000
Message-ID: <20251117-gliding-sixties-6d06ed7412d7@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-paprika-tipping-e7bb3e211d6f@spud>
References: <20251117-paprika-tipping-e7bb3e211d6f@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1482; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=ZSsBrvk2J+QWcy8FOSQPmxvkpcXnkkWM7WXrz+b5m0g=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnSQf9djzQc2TRD+64R34QJrzqNbE6sap/89k7v7B+71 ReK3oh+0VHKwiDGxSArpsiSeLuvRWr9H5cdzj1vYeawMoEMYeDiFICJiIQzMuwQEn2aW7lgu+nR jtzlz7LNVqgebNvzd6pqrPwGsY7Le9cwMjyeqMtS3v1pZs7vCWX/GqxUdnvbX6n5POfFiV6jmzv z/rICAA==
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>

Update devicetree bindings document with PIC64GX Curiosity Kit, known
by its "Curiosity-GX1000" product code.

Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/microchip.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/microchip.yaml b/Documentation/devicetree/bindings/riscv/microchip.yaml
index 381d6eb6672e..137a6f413430 100644
--- a/Documentation/devicetree/bindings/riscv/microchip.yaml
+++ b/Documentation/devicetree/bindings/riscv/microchip.yaml
@@ -4,14 +4,14 @@
 $id: http://devicetree.org/schemas/riscv/microchip.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Microchip PolarFire SoC-based boards
+title: Microchip SoC-based boards
 
 maintainers:
   - Conor Dooley <conor.dooley@microchip.com>
   - Daire McNamara <daire.mcnamara@microchip.com>
 
 description:
-  Microchip PolarFire SoC-based boards
+  Microchip SoC-based boards
 
 properties:
   $nodename:
@@ -46,6 +46,9 @@ properties:
               - microchip,mpfs-sev-kit
               - sundance,polarberry
           - const: microchip,mpfs
+      - items:
+          - const: microchip,pic64gx-curiosity-kit
+          - const: microchip,pic64gx
 
 additionalProperties: true
 
-- 
2.51.0


