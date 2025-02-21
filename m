Return-Path: <devicetree+bounces-149179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 328FBA3E9DA
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 02:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C14571784B3
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 01:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7EBF487A5;
	Fri, 21 Feb 2025 01:22:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8650F3D3B8
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 01:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740100972; cv=none; b=YD2cI76cK7y5HYrLcNdhqQ4k0sbkZtiS5l559I2a/NK/ifQm6wnBLGoS/h/95k2XkbWZsJZLnNYFz7ekzEE9LeBOwD4KVI2/f3yFV0Vt0Cf/7ITOkHbLxYBf+p032Nfwl2MyQSgnuiVsK3Kpjksa544FXrX54KX7f06daJMHeLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740100972; c=relaxed/simple;
	bh=U+6Jp8W8uWdW+9lFtNK/ic07v/3AhAubY0PIRb/7zRs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L8YgQpjKQKf1XqPeSmsQHV/iFGKmKQ/s7CaDh1d7NKyfmxop3XUPh1ZizS9o7t63KVZDRg12Bu6YbrD/36cpuPR3OVOrwkom9Hjra4fhHTZEUz+GAHv9YvFsfyoP44wONtdxG7iPgsXkHU10pEL8V56qXKgWGgHuBHyieihRtP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9B4E1C01;
	Thu, 20 Feb 2025 17:23:07 -0800 (PST)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 78A483F59E;
	Thu, 20 Feb 2025 17:22:48 -0800 (PST)
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
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add YuzukiHD name
Date: Fri, 21 Feb 2025 01:20:36 +0000
Message-ID: <20250221012038.13706-2-andre.przywara@arm.com>
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

YuzukiHD provides Open Source Hardware designs, and also offers
ready-made builds of them: https://github.com/YuzukiHD

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5079ca6ce1d1e..8c0991e002ee8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1737,6 +1737,8 @@ patternProperties:
     description: Shenzhen Yashi Changhua Intelligent Technology Co., Ltd.
   "^ysoft,.*":
     description: Y Soft Corporation a.s.
+  "^yuzukihd,.*":
+    description: YuzukiHD Open Source Hardware
   "^zarlink,.*":
     description: Zarlink Semiconductor
   "^zealz,.*":
-- 
2.46.3


