Return-Path: <devicetree+bounces-149180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F07A3E9DB
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 02:23:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F37C43B8FCB
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 01:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F7FA6088F;
	Fri, 21 Feb 2025 01:22:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AE283A8CB
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 01:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740100973; cv=none; b=XZ3SFn2NbUdhOh+2xwBw5iGM4+cTggj/E0nr63pteMySXZxTmnhVapyFD24NdOhfUD5Qf5xDrk2kH3C2sMJQyDzPYxQ/lVnZTtF5yxqpsy6lEHiAMod9q6ENuTEYqUo7h/mGy4c/65sh5N6Kdg62jC+xYwHku1Jd/+Lbkumk0EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740100973; c=relaxed/simple;
	bh=mTgyx21F4eX2+lE5uWmIJwp8ayf3OOlAUceKv1Kq/Xs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D+DhQZQw5isZWWPYmAQrmD+AtklAcrur2nAQoT3gKOW0wQfu1EMsPANEq4tdUjOHB5RCFXnilOBHmeGpFQpbxughYnUN8gziotYOjZC8x+E7DuLMwXUwkrphvKwQr4e5rTnzfpjrJBgO8KYR52o5xt562O/QQwKPe6HP/k6DXYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 784C01BA8;
	Thu, 20 Feb 2025 17:23:09 -0800 (PST)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 243903F59E;
	Thu, 20 Feb 2025 17:22:50 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: Add YuzukiHD Chameleon board name
Date: Fri, 21 Feb 2025 01:20:37 +0000
Message-ID: <20250221012038.13706-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.46.3
In-Reply-To: <20250221012038.13706-1-andre.przywara@arm.com>
References: <20250221012038.13706-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Chameleon is an Open Source hardware board designed by YuzkuiHD,
using the Allwinner H618 SoC: https://github.com/YuzukiHD/YuzukiChameleon

Add its compatible name to the list of valid board name.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 046536d02706f..7af28d4786b49 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -1076,4 +1076,9 @@ properties:
           - const: xunlong,orangepi-zero3
           - const: allwinner,sun50i-h618
 
+      - description: YuzukiHD Chameleon
+        items:
+          - const: yuzukihd,chameleon
+          - const: allwinner,sun50i-h618
+
 additionalProperties: true
-- 
2.46.3


