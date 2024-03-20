Return-Path: <devicetree+bounces-51829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B737C880B15
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 07:13:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3B1A1C2100D
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 06:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4C9E1864A;
	Wed, 20 Mar 2024 06:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b="cwxcHNPF"
X-Original-To: devicetree@vger.kernel.org
Received: from mxb.seznam.cz (mxb.seznam.cz [77.75.78.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A533217576
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 06:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=77.75.78.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710915215; cv=none; b=ofrzShhG0XGoPDn7t1sBGvR3TjR2H12ctxJ2FuOeDZwm2yQjsZ4aDcx1l7jK/Ha7FYAXcM3txiBIr5NTxPofeEeZA6CkY42w+nngoTjW/XhIfrcvnPHXfiiqYD9bQcO1/UD1cXMa5YcINJxvGVRGEpi1AF7Ol0znHBLBFqs4RDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710915215; c=relaxed/simple;
	bh=/hadbW6XYktNujFodHupIXa4NlosxtxsJ4bSAkAtfgU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NJ5r36pMdIRGy/hecDhpldvcJvdJajtDKKk6elrgsw0nfN3pidt3NMdiJe8KOiHqCSj6ICYNu5slI5J6vDqHXSyHJ9oOhq/BLBrx1r/HmFY890llyHG4M5uooDJ1DZ+cd8md6Zx5CvDhiUbxu2Lx5twAX+JhZliPOszHqligd8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loebl.cz; spf=none smtp.mailfrom=loebl.cz; dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b=cwxcHNPF; arc=none smtp.client-ip=77.75.78.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loebl.cz
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=loebl.cz
Received: from email.seznam.cz
	by smtpc-mxb-f995f5b8f-mlt68
	(smtpc-mxb-f995f5b8f-mlt68 [2a02:598:128:8a00::1000:3e0])
	id 71ebeffb6a79622f750e5679;
	Wed, 20 Mar 2024 07:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emailprofi.seznam.cz; s=szn20221014; t=1710915185;
	bh=75wB2YArrDe6dfEflWqLIhQhtI8BwiFWEnbgmmRTyA0=;
	h=Received:From:To:Cc:Subject:Date:Message-ID:X-Mailer:In-Reply-To:
	 References:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=cwxcHNPFVzB3SgpKHGF53pTzEF4fmO3zSvWMd/ZnGXQQ0N2dGDp2eRBGgZGoV9vlZ
	 pO31TZ8GgxIeVo8DOAQKRZEjIKhenW84f57exN4iBYxQ5ReAzaTNCAGs/3my8mBxyt
	 O1sO8Bf5yRQQCJZ1+UZ+7WcQ689XFvuuR2M7QsuG8r1tUqMU9iHNiOzBaUdD6FiKKa
	 3dkMqA+SfyEJbODhlWzx91mblamvQx36Hy6EH3acu4NbnXhk4o05j60bgcORlla04T
	 8coGRTjhfbClVGeGqM2G4cfgukfNGytf4mfFIhZZN/r46xb77XMoDULA0G9upmlhfC
	 NWUqXcDwd73Bg==
Received: from localhost ([2a03:a900:1020:47::f71])
	by smtpd-relay-78cd484798-fng6k (szn-email-smtpd/2.0.18) with ESMTPA
	id ba155365-2065-4e04-b2a3-73fcebbe0e8b;
	Wed, 20 Mar 2024 07:13:01 +0100
From: =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH v2 2/3] dt-bindings: arm: sunxi: Add Banana Pi P2 Zero v1.1
Date: Wed, 20 Mar 2024 07:10:20 +0100
Message-ID: <20240320061027.4078852-2-pavel@loebl.cz>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240320001152.4077150-1-pavel@loebl.cz>
References: <20240320001152.4077150-1-pavel@loebl.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Document binding for Banana Pi P2 Zero v1.1.

Signed-off-by: Pavel Löbl <pavel@loebl.cz>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 09d835db6db5..6d247ad0a427 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -141,6 +141,12 @@ properties:
           - const: sinovoip,bananapi-m64
           - const: allwinner,sun50i-a64
 
+      - description: BananaPi P2 Zero v1.1
+        items:
+          - const: sinovoip,bananapi-p2-zero-v1.1
+          - const: sinovoip,bananapi-p2-zero
+          - const: allwinner,sun8i-h2-plus
+
       - description: BananaPro
         items:
           - const: lemaker,bananapro
-- 
2.39.2


