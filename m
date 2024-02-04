Return-Path: <devicetree+bounces-38382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 502DC848CA9
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 11:11:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7965A1C2125C
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 10:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7D2F1B59C;
	Sun,  4 Feb 2024 10:11:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B445A1B597
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 10:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707041472; cv=none; b=YqpoPECbLkbxXjo8gYCp66eXYf+6qIwMaylIXL0Y4PI/6BG+YC3van8ZrxJYHcx5QYS6UOVfv17xKEuddzUpBPR8F5UNLr5sJQrr3zxOK6H4US0Jj/Sve6fn3AZ8JFKsncIPAQbeX6vcosS5XrJ6nhtSrKhPRbqfuRueqd9e8ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707041472; c=relaxed/simple;
	bh=R6ocsFXVhG8At7szUf+PZC5kGJa3p2yevGq8BPKr3+A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Csf0mNMgqOJNcSLz/r2KRHlGkLrTHYfFBDvLZ0I4lxNuihMh1oXjjMbFd2me6WoihwhqF2E9RBLpSu8vFnndTFtL/h3cpNcRWcqTLCSVveHDlMIHl5zWUaimNCu23BQaqpXVqfncqozXYgNXoMzU0RGMGUVR+gvz5I0SxTNLkNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45BA1DA7;
	Sun,  4 Feb 2024 02:11:52 -0800 (PST)
Received: from e110479.fosdem.net (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CA023F762;
	Sun,  4 Feb 2024 02:11:07 -0800 (PST)
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
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v2 1/2] dt-bindings: arm: sunxi: document BananaPi M4 Berry board name
Date: Sun,  4 Feb 2024 11:10:53 +0100
Message-Id: <20240204101054.152012-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204101054.152012-1-andre.przywara@arm.com>
References: <20240204101054.152012-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Bananapi M4 Berry is a development board with the Allwinner H618 SoC.

Add the board/SoC compatible string pair to the list of known boards.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index dab7a248c88d..aa87c83124e2 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -136,6 +136,11 @@ properties:
           - const: sinovoip,bpi-m3
           - const: allwinner,sun8i-a83t
 
+      - description: BananaPi M4 Berry
+        items:
+          - const: sinovoip,bananapi-m4-berry
+          - const: allwinner,sun50i-h618
+
       - description: BananaPi M64
         items:
           - const: sinovoip,bananapi-m64
-- 
2.25.1


