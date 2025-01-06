Return-Path: <devicetree+bounces-135917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EF5A0303B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:11:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDBA31886425
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 19:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FA451DFDBE;
	Mon,  6 Jan 2025 19:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="wMkwTlOA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E6A1DF983;
	Mon,  6 Jan 2025 19:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736190656; cv=none; b=QC0CL7z3YRVzduaRu5Zbb0d8Pmfs14MF/CjWMNMY8Nm1sbOHfQFQrEa8+mlwWK50IQ1YCeZfJNHj2+0o8ZRy8VOg5+JjP7rxEyw8f6DxSxmltNw0r3P1kFJfA8fN68hdgrD0feHDfZai7IhYZRxcnbejyYST551n0hJmNpB7j/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736190656; c=relaxed/simple;
	bh=eWI2w4kZIKItWJFqtABsMZBReAEf/IfcxbXkswKKkBE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MNLUpCAcMWOp2s3eZhrDGUhDX0DVNSrbx7H+XAYm5/GCSnHtUX4R2+dqc7kHYYSZSBq2M62SxAJRAKOatRS2qrNzs7VnksWP3RIPn1wSCe2d22sMKMd2imUtiB0tUx0ZWv9Mx6Vu8lXcooAi5hN3XHeiZL5SfLFEmdRn+QEyGmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=wMkwTlOA; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding:In-Reply-To:References;
	bh=g+7UfoPF3qmmcXZAVXeXLOUoflzmC+w8EwZzm4k7Dco=;
	b=wMkwTlOAFoicuHfXX/tKnp4EGL3+yEc1W+4Cx9bKb+t/HelaITe2UJ+vTigZWSXAlzO0uvlU3EvBfDNQX8m+D2b65V1lWXMkvFen87jHaVfgPU1C0IA1ex1fS8uOzWEwyPJj8oP9omYZWqTxhjKpz9ya3e5OxkkyNOujcK1j2y4=
Received: from 854af3ed5e24.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPA
	; Mon, 6 Jan 2025 20:10:39 +0100
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/4] dt-bindings: arm: sunxi: Add NetCube Systems Kumquat board
Date: Mon,  6 Jan 2025 19:07:00 +0000
Message-Id: <20250106190703.4015-3-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106190703.4015-1-lukas.schmid@netcube.li>
References: <20250106190703.4015-1-lukas.schmid@netcube.li>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NetCube Systems Kumquat is an Embedded Controller based
on the Allwinner V3s SoC. It is intended for Smart Home or
Industrial automation without the need for a traditional PLC

Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 046536d02706..f536cdd2c1a6 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -589,6 +589,11 @@ properties:
           - const: emlid,neutis-n5h3
           - const: allwinner,sun8i-h3
 
+      - description: NetCube Systems Kumquat
+        items:
+          - const: netcube,kumquat
+          - const: allwinner,sun8i-v3s
+
       - description: NextThing Co. CHIP
         items:
           - const: nextthing,chip
-- 
2.47.1



