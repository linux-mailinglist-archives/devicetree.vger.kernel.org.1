Return-Path: <devicetree+bounces-141540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A40A212DD
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 21:06:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68FFE16499F
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 20:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51CEB1EEA2A;
	Tue, 28 Jan 2025 20:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="Xl8uQlTR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDB81DFDA2;
	Tue, 28 Jan 2025 20:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738094739; cv=none; b=gJeRU87OEFjE1xBxlrpOGzOdnxfrEFbIn1WIlStZeJXOdXSzZLc7D71RG64mmgCh2IMrfuYfbOCGjKrl7n0oAoZqFRa/Ud/dHi3b5QBMeQ6Zd1jWlL6VYL4kmfoy+ZYGJsJnx9I/cDKW96lgWyKxTyRHv9FcFev7a6Od8SJ2qF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738094739; c=relaxed/simple;
	bh=InoRUYkTbcYQ+vP4+GqLM2Ee+VA2ASPW5As7qkgLHFY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JAA2lna5LaHq2XzrtJmdgon/aifmKUb/1eWHRkDtm+5ukDkB8tw9i1yY0SCT4KlFUet2stRdfRkw5rDsdpzvm3l0TY2NACCwjZUeIQ1YdI1Q0yz0ecJc70wQn4YrX3j2JKGLjs04iXn8wT63IldT7i48HiG3CX8E10H1ceo0T4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=Xl8uQlTR; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding:In-Reply-To:References;
	bh=w+M8tkGYZnAzssMSrKjwe9AXXmu2ZiWoPOQS5vB+XAE=;
	b=Xl8uQlTRz4BySqW6eXXUH12lKZ1CLx1V4HGEZtqSuS+I80+zrefD/+hcaoGIilJNpHpfmc5W+YWXEVShm08FmEGU5JRah+wzBV823oEPunLlvoQ6TVaGIqvZeCBwTubVCR4pUuknmUdXQHmEgXKcXpsNDSwD5VFk0nISn3ORcV8=
Received: from lukas-hpz440workstation.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPSA
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256)
	; Tue, 28 Jan 2025 21:05:15 +0100
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 2/4] dt-bindings: arm: sunxi: Add NetCube Systems Kumquat board
Date: Tue, 28 Jan 2025 21:03:51 +0100
Message-Id: <20250128200355.1948997-3-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250128200355.1948997-1-lukas.schmid@netcube.li>
References: <20250128200355.1948997-1-lukas.schmid@netcube.li>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NetCube Systems Kumquat is an Embedded Controller based on the
Allwinner V3s SoC. It is intended for Smart Home or Industrial automation
without the need for a traditional PLC

Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
2.39.5



