Return-Path: <devicetree+bounces-253696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A61D10A11
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 06:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 318A8305E345
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 05:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7514630F7F8;
	Mon, 12 Jan 2026 05:34:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo13.lge.com (lgeamrelo13.lge.com [156.147.23.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F2430EF89
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768196097; cv=none; b=JPuGL4PwkCdKyhUtzqj0uv7maiSHzIpjPmovnzaq9nsk6zuUj2Hp/jGshsbGrI0+cXl97C8RWhHdEM4JrWfYS//38/0BmkrS0Yz1zA6vBT3MeVp8MqVqzkFHvyCwimTA7+vFNeQrNCW2pFyhalpsOGSbX8+4FOls19ZZG+FFxSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768196097; c=relaxed/simple;
	bh=2QgIEKxkBhg5zc/bmm096qFn8fdHzDdz+Ay0JJ+jiyU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F3c2U0HE4qRm5rUxxKdW+edKWSDlRc5vGgtnBPIAv7CKmYLYnSuz5zPO+X4ZK8HbKsZoTfbzLUqL2G+4V1+udsAtblnNbUjTMlwWm4hH7km+xQqg0z+ViaR4eGHJJ04po4XCxZb74hSHTBkQh16T3LOqZXK2WQpJhXBNr1tSFUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgemrelse6q.lge.com) (156.147.1.121)
	by 156.147.23.53 with ESMTP; 12 Jan 2026 14:34:47 +0900
X-Original-SENDERIP: 156.147.1.121
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO localhost.localdomain) (10.178.31.97)
	by 156.147.1.121 with ESMTP; 12 Jan 2026 14:34:47 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
From: Chanho Min <chanho.min@lge.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Kael D'Alcamo <dev@kael-k.io>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: Chanho Min <chanho.min@lge.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2 v3] dt-bindings: arm: lg: Add compatible for LG1215 SoC and reference board
Date: Mon, 12 Jan 2026 14:34:20 +0900
Message-Id: <20260112053421.3185738-2-chanho.min@lge.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260112053421.3185738-1-chanho.min@lge.com>
References: <20260112053421.3185738-1-chanho.min@lge.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible strings for the LG1215 SoC and its reference board
(lg,lg1215 and lg,lg1215-ref).

This SoC is the next SoC following the LG1313 series, developed
by LG Electronics.

Signed-off-by: Chanho Min <chanho.min@lge.com>
---
 Documentation/devicetree/bindings/arm/lge.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/lge.yaml b/Documentation/devicetree/bindings/arm/lge.yaml
index d983ef7fcbd6..0d0661470eaa 100644
--- a/Documentation/devicetree/bindings/arm/lge.yaml
+++ b/Documentation/devicetree/bindings/arm/lge.yaml
@@ -24,5 +24,10 @@ properties:
           - const: lge,lg1313-ref
           - const: lge,lg1313
 
+      - description: Boards with LG1215 SoC
+        items:
+          - const: lg,lg1215-ref
+          - const: lg,lg1215
+
 additionalProperties: true
 ...
-- 
2.34.1


