Return-Path: <devicetree+bounces-40113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 448FC84F4C6
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:40:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 761631C21788
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 11:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75C5F2E651;
	Fri,  9 Feb 2024 11:40:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2E582E633
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 11:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707478829; cv=none; b=sLT+k67dg+WbKYHyGmN4qBQZZNSngomj7KvmBtYLGaEyCFBh0VYPseNGphikyFZ1c6CxibkWsxdZBaBtNajVeTDnjtWXty6WtHZ4ppqVh0vEjLIzM/WIVo0BP7itvp2Cg4qEFg26Lo3HMRdxrl0q5b9dbHlcPw6Y5t2udhTUTK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707478829; c=relaxed/simple;
	bh=xmBnVpuxpAAlgUB30fWHrky/1PrcYPdAs3mdMBIQg2g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aDtFKTxE1b/hhmLN7zYQdJ6KsRvMRKVbNyqQi7qTc8alYm4WuIraWA96UoNWPNWEdjLs+ePPKDGazWgosJR2+apkdxjQqLXdQgO1DJGCcw90m6vc1I4+4XlzOsgKXWCJQqNvPoHOHh0AtiQAeFbA8zwlLu57mtdfGRufQyEkcCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C00DFEC;
	Fri,  9 Feb 2024 03:41:08 -0800 (PST)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.100.28])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 049AC3F762;
	Fri,  9 Feb 2024 03:40:24 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add Jide
Date: Fri,  9 Feb 2024 11:40:16 +0000
Message-Id: <20240209114018.3580370-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240209114018.3580370-1-andre.przywara@arm.com>
References: <20240209114018.3580370-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Jide tech once create the Remix OS Android system, and shipped it on
some custom hardware. Add their name to the bindings.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1a0dc04f1db47..dfb834a9279f2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -719,6 +719,8 @@ patternProperties:
     description: JetHome (IP Sokolov P.A.)
   "^jianda,.*":
     description: Jiandangjing Technology Co., Ltd.
+  "^jide,.*":
+    description: Jide Tech
   "^joz,.*":
     description: JOZ BV
   "^kam,.*":
-- 
2.25.1


