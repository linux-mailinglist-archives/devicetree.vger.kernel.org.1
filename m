Return-Path: <devicetree+bounces-38378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B74848C8E
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 10:44:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2698D282ED9
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 09:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8DF118E28;
	Sun,  4 Feb 2024 09:44:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1480718E3F
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 09:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707039864; cv=none; b=BIDBUTff0DpwBwQjLy2kHz9peK8beE5rRxNltecG6aW7WJnKd9c60GME1BAeRC341NTwJl24QPKcvKYssry0Hskk6jlMq48yZIELfIKeWx3Q4U8EAff2Y0Gvo4AfvKX4gnydV5h/6kDX4LRXFJP9xTbj8tAo8f6R+2e2iTYo1CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707039864; c=relaxed/simple;
	bh=VhWdI43b6GZGn7ydH8KLonE1ZoyuoLPCDlkFHFartaI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WVaXkN9l9rGEpPPWR7Eza7VJMax9LZCsVNln4XYBPLiyItWIy4jh5+mchArVP3o+ZDjVUG+jiaTB6tdLBlVKCizJivDDPYxouidsLC97gdgw95SABSRAB1Ytv4vAzHLEaqOkRLmb93xR3gssN5iTWmHSfnUfQdzweGgiwtCPPcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95DCA1FB;
	Sun,  4 Feb 2024 01:45:04 -0800 (PST)
Received: from e110479.fosdem.net (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C30DE3F738;
	Sun,  4 Feb 2024 01:44:19 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Nick Alilovic <nickalilovic@gmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: document Remix Mini PC name
Date: Sun,  4 Feb 2024 10:44:03 +0100
Message-Id: <20240204094404.149776-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204094404.149776-1-andre.przywara@arm.com>
References: <20240204094404.149776-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Jide Remix Mini PC is a mini computer that ships with the Remix OS
Android based system. The SoC is an Allwinner H64, which is very close,
if not identical to the Allwinner A64.

Add the board/SoC compatible string pair to the list of known boards.
There are some drivers that look explicitly for the A64 compatible name,
so retain this name to increase compatibility.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index a9d8e85565b8..dab7a248c88d 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -815,6 +815,12 @@ properties:
           - const: allwinner,r7-tv-dongle
           - const: allwinner,sun5i-a10s
 
+      - description: Remix Mini PC
+        items:
+          - const: jide,remix-mini-pc
+          - const: allwinner,sun50i-h64
+          - const: allwinner,sun50i-a64
+
       - description: RerVision H3-DVK
         items:
           - const: rervision,h3-dvk
-- 
2.25.1


