Return-Path: <devicetree+bounces-246796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC46CBFF3A
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 22:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9F4D33005023
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 21:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0063D31D371;
	Mon, 15 Dec 2025 21:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFjaieZf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1E730C611;
	Mon, 15 Dec 2025 21:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834026; cv=none; b=DaxI9tyGosauR0F4qhFEj3gAk+X6gcCrXiWfknzZuSXrstWXaTcvT9+O1VBq/LrL6dWWr2GGE6I8H9bRVCickC0pr0yuXAIh1lIwd374BiokqHkT7wkTOX4PwrcIknGNUKScUiGICas3bt2CXt2nIYXpVkYVkzG6gOJxsnWB78U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834026; c=relaxed/simple;
	bh=ksO7t38lHNhsA2pzzobpl6s+Z69+v/dzbkND9pR8gN4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=BSzDgGlHLaQaX0YoyQSU5c7iFQiED+sMwC04gYhomSrXugX5PJxpaBso/hNX0EY4cpEl97K02adVKvNrpvze03MSzeIDWFdTtAnzRJwe54BcuMI3PBH5kDcmpvvjGZrOJWbse0P1vAoKQNnM7Vg5eTt6vPe7UcsprNVC25Qm2mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFjaieZf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88BDDC4CEF5;
	Mon, 15 Dec 2025 21:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765834026;
	bh=ksO7t38lHNhsA2pzzobpl6s+Z69+v/dzbkND9pR8gN4=;
	h=From:To:Cc:Subject:Date:From;
	b=oFjaieZf5e2XHuOqzdwVYbvycw+ge2R0jF1QOMKdAkV+s2YNgyHAi5+XA0ZgQi3Fw
	 JtQlscIa2D12MTvsnGBxVanJZRi4jpCbVrIjKSRPztFFoI9oOOhfIUHTYFEaCvUVWN
	 C/x8st5nzeJwFlCJADf3yc1jR9yF3t9oBgUOQB+t5nLICg03Yd8K9YbxVIEfosKR0e
	 OigtU8Ie90RFCnshKgXHjxaZZ8weRhizWVSGGvs1XEJbF1CdSP0+Wywxf6jVhxZjkh
	 n6YeEGjt/MrHBMbt97NdkCbfMsBXB4l2LbqV/L+NFxtDGS+FRIM6v1XXkSURK/aM28
	 YAqm1NWbrIIoQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: bus: stm32mp25-rifsc: Allow 2 size cells
Date: Mon, 15 Dec 2025 15:26:59 -0600
Message-ID: <20251215212700.3320634-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are users already with 2 size cells, and there's no reason to not
support that.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml b/Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml
index 4d19917ad2c3..c6280c8c54a3 100644
--- a/Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml
+++ b/Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml
@@ -54,7 +54,7 @@ properties:
     const: 1
 
   "#size-cells":
-    const: 1
+    enum: [ 1, 2 ]
 
   ranges: true
 
-- 
2.51.0


