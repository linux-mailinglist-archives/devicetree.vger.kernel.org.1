Return-Path: <devicetree+bounces-253258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EECCDD08FC0
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 12:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF987304F151
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 11:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 926B533C197;
	Fri,  9 Jan 2026 11:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="WNSvGJ/+"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A5C1DBB3A;
	Fri,  9 Jan 2026 11:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767959060; cv=none; b=owi79WKJTteqqY0LQgxYj7Fer1Z61hlqgze5TPisEW/V+HT9dICLgFBrFgQLK2f8SsfOYy9RE6R6N1NvCPYhg/hMV1zRseW08po0eFpEp60c0+J64Ewiw2OPfnuzk4pB4BpLpTgcB1S91riVi5oYcYMh3qRo99N38OwLtf+WexY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767959060; c=relaxed/simple;
	bh=TtLlgylOkTFKzSw6a6/2PGbha2rjuDo428nB5/mFAMQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VHFjicPTSbvnDp2af7Xcc4ZRqvyETNU1uNxcmRrO3v98XeCykGf/2eFYuEWpF3x7+RzB9pVWYhr31Ym9wuMLsdxl3GAEDaDXUeOKCIUNmxTNUV53wxn5DR17N9gLqPs0CMZgAElbtC/asEdrshd4AsTRNxC8Mgk48wMK/kbSwjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=WNSvGJ/+; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767959050;
	bh=TtLlgylOkTFKzSw6a6/2PGbha2rjuDo428nB5/mFAMQ=;
	h=From:To:Cc:Subject:Date:From;
	b=WNSvGJ/+rRA+IXjIOw4SPhHbcUGrASMHQvw88vQzGgH/9SLqP0zMS9uzvdoY/vZ3W
	 s2E9BRy0XLBfwavE+whw9iGoPbR956iNJxyNGzhWhzqDVyCAbA/UngjgfEDEFqSZk8
	 rWB1qu9Zb7e5yXpcsPE8vbRFKk38nl6EuhXamBH/RXMQLZ2ynqMVzCdB+OXHUx43ln
	 7jhHolf6YmIx5/LS0PYAkR0k5LfFYg3GfLMhVN45DiEq/SxmEKYylbqFkRYZl88ESM
	 mf307Qx6km0NbnAUL/VICqiCi7V7B5Vg6ICa65CA5euVuzMKj6qK4NQVCjkqLpj/KU
	 YKdiTKImENVlQ==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 417F017E0FF0;
	Fri,  9 Jan 2026 12:44:10 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: lee@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sjoerd@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH] dt-bindings: mfd: syscon: Allow syscon compatible for mediatek,mt7981-topmisc
Date: Fri,  9 Jan 2026 12:43:56 +0100
Message-ID: <20260109114356.36454-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Commit a95419ff9f21 ("dt-bindings: mfd: syscon: Add mt7981-topmisc")
added the mediatek,mt7981-topmisc compatible to the `select` block
which is used only for compatibility with older dtschema, but did
not add it in the actual block allowing to specify the "syscon"
fallback compatible, which is required for such node to do anything
meaningful in the end.

Add the mediatek,mt7981-topmisc compatible in the right list to
allow specifing compatible = "mediatek,mt7981-topmisc", "syscon"
in the relevant devicetree node.

Fixes: a95419ff9f21 ("dt-bindings: mfd: syscon: Add mt7981-topmisc")
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 55efb83b1495..fa023959e791 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -195,6 +195,7 @@ properties:
               - mediatek,mt2701-pctl-a-syscfg
               - mediatek,mt2712-pctl-a-syscfg
               - mediatek,mt6397-pctl-pmic-syscfg
+              - mediatek,mt7981-topmisc
               - mediatek,mt7988-topmisc
               - mediatek,mt8135-pctl-a-syscfg
               - mediatek,mt8135-pctl-b-syscfg
-- 
2.52.0


