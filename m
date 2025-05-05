Return-Path: <devicetree+bounces-173818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F91AAA99A2
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 18:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97C1D17D59B
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 16:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B946C26771B;
	Mon,  5 May 2025 16:48:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12B4425E476
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 16:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746463684; cv=none; b=Ei3sSTkMqBOOeEkf0YMK/4vFs3ZIe5WcVg85gzVffRCEl3OVSLlz+leLHjnJ5Anz1lETd1bD6awfmyWZdcbekIli4zuqzL0oNUpRvyqyPAH/X5pn7SHzsRgp5pOTrScaaPRx80z+7XV4+W50vN4QH1fJXkGZ4yw2pUgYqtcrlcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746463684; c=relaxed/simple;
	bh=d3nTEZwQe3cXL0KjTQ5FeB7cGZ4gCzcxP83h0e1KSlE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GwxwLvSSdaZNhcUCD9OOCAlwYUR4888x6RLur43QZyxlQmVht9qvJGvtqQlqDA4C/eODMSrsBnNz755qCV46FUnYLJcil/qlQV27beX5AUFRvJYYCbeDORejgVfXRCs2FTSHd+8rariCjx0NAPyZXVF7aFFK89wVhKDc0/EvWio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1AB71007;
	Mon,  5 May 2025 09:47:51 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C30483F673;
	Mon,  5 May 2025 09:47:59 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Cody Eksal <masterr3c0rd@epochal.quest>,
	Philippe Simons <simons.philippe@gmail.com>,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Liontron name
Date: Mon,  5 May 2025 17:47:27 +0100
Message-ID: <20250505164729.18175-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.46.3
In-Reply-To: <20250505164729.18175-1-andre.przywara@arm.com>
References: <20250505164729.18175-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Liontron is a company based in Shenzen, China, making industrial
development boards and embedded computers, mostly using Rockchip and
Allwinner SoCs.

Add their name to the list of vendors.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 411fd65e0bde9..580dfd62dc9ae 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -864,6 +864,8 @@ patternProperties:
     description: Linux-specific binding
   "^linx,.*":
     description: Linx Technologies
+  "^liontron,.*":
+    description: Shenzhen Liontron Technology Co., Ltd
   "^liteon,.*":
     description: LITE-ON Technology Corp.
   "^litex,.*":
-- 
2.46.3


