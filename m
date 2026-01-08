Return-Path: <devicetree+bounces-252648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9269AD01BCC
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 10:07:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 308AB3779EAF
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36473ACF1E;
	Thu,  8 Jan 2026 08:23:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo13.lge.com (lgeamrelo13.lge.com [156.147.23.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367F73ACEE6
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767860590; cv=none; b=Spe4Dsuzy6Pt9+DfBXqA4OaISh4cGAxuj9YLXsb3Cy3V8xRtP6hsYFVXWj5v4dEtRYfq0VnNsPCB+IC6pNbgFtZMa+XPtUnAGWCgZSlBQdR0Wp/ko1sCA950XFeRei0oA2RacXA8iIOkst4858CyJWeOhXYeMgu16xFbzgv2ZHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767860590; c=relaxed/simple;
	bh=WTQSPsUwskxTPU6AbtOs494USXGP0b4/aLc+tiGBlXw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=ngxzMz9XCRYPhgAoLdwGYsw3ZqtCZdgfxXIFOMh+ORJgTuTWQ90Wr3V8WdqD2hPIUlQUpEujAClyX0thnIGS5PkEpK2zuKQLC5hsi7JCQwjVlEIk/+mM95rea2gkv7n2Expetas+/a6ZYvlswcLywu7iAAZ+XQyZ4G5GC7eawqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgeamrelo04.lge.com) (156.147.1.127)
	by 156.147.23.53 with ESMTP; 8 Jan 2026 17:22:59 +0900
X-Original-SENDERIP: 156.147.1.127
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO localhost.localdomain) (10.178.31.96)
	by 156.147.1.127 with ESMTP; 8 Jan 2026 17:22:59 +0900
X-Original-SENDERIP: 10.178.31.96
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
	Gunho Lee <gunho.lee@lge.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: arm: lge: Add compatible for LG1215 SoC and reference board
Date: Thu,  8 Jan 2026 17:22:12 +0900
Message-Id: <20260108082213.6545-3-chanho.min@lge.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260108082213.6545-1-chanho.min@lge.com>
References: <20260108082213.6545-1-chanho.min@lge.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add compatible strings for the LG1215 SoC and its reference board
(lge,lg1215 and lge,lg1215-ref).

This SoC is the next SoC following the LG1313 series, developed
by LG Electronics.

Signed-off-by: Chanho Min <chanho.min@lge.com>
---
 Documentation/devicetree/bindings/arm/lge.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/lge.yaml b/Documentation/devicetree/bindings/arm/lge.yaml
index d983ef7fcbd6..25750047131b 100644
--- a/Documentation/devicetree/bindings/arm/lge.yaml
+++ b/Documentation/devicetree/bindings/arm/lge.yaml
@@ -24,5 +24,10 @@ properties:
           - const: lge,lg1313-ref
           - const: lge,lg1313
 
+      - description: Boards with LG1215 SoC
+        items:
+          - const: lge,lg1215-ref
+          - const: lge,lg1215
+
 additionalProperties: true
 ...

