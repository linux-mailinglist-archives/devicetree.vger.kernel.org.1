Return-Path: <devicetree+bounces-16843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA117EFF30
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 12:17:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A75F1C20841
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 11:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B1BED2E5;
	Sat, 18 Nov 2023 11:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=emailprofi.seznam.cz header.i=@emailprofi.seznam.cz header.b="pMMkFr3s"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 77 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 18 Nov 2023 03:16:55 PST
Received: from mxb-1-934.seznam.cz (mxb-1-934.seznam.cz [IPv6:2a02:598:128:8a00::1000:934])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D954CD4B
	for <devicetree@vger.kernel.org>; Sat, 18 Nov 2023 03:16:55 -0800 (PST)
Received: from email.seznam.cz
	by smtpc-mxb-85c69f7c66-b565f
	(smtpc-mxb-85c69f7c66-b565f [2a02:598:128:8a00::1000:934])
	id 4277323459e5bfe046928bb6;
	Sat, 18 Nov 2023 12:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emailprofi.seznam.cz; s=szn20221014; t=1700306211;
	bh=7+0uis/USFXV801JqESvRGsUE6GI9L5Qr49gTML5oqE=;
	h=Received:From:To:Cc:Subject:Date:Message-ID:X-Mailer:In-Reply-To:
	 References:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=pMMkFr3sSHD06tmWltbD2eSBe4kOsNGCXG+pV95MKKcpw6EQNtvmEBtJV97iSa5Uw
	 0t6RcLDl6a5TESg3/yzlt1FRQxrMzLNaggzlylCcjocYq+C2KEaflmnu0KGDbQPfEB
	 IoelYiPeVOX4DfcPbuOJgKO71axdyjdWpZiSXutOfZbzdaMmA64jqD5yDS4JgppP76
	 ycTehkw020CbmpGEvWryHc+mPuMEsYC5m9SNLdCxUnN11z+HelMSKPuocXiDbkxgS8
	 RmJOsZFGx1Et60prFC4Fl51dphQ1Sh/5N66PtIgjTuXuFG4kLnvXHSXKiqIqex4hhU
	 IrS+la43vmLGw==
Received: from localhost (88.146.114.74.pe3ny.net [88.146.114.74])
	by smtpd-relay-79cfdc7465-xx994 (smtpd/2.0.15) with ESMTPA
	id 96baf776-0fb3-4545-a22d-73aadd6d80db;
	Sat, 18 Nov 2023 12:15:01 +0100
From: =?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: devicetree@vger.kernel.org,
	=?UTF-8?q?Pavel=20L=C3=B6bl?= <pavel@loebl.cz>
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: Add Banana Pi P2 Zero v1.1
Date: Sat, 18 Nov 2023 12:14:17 +0100
Message-ID: <20231118111418.979681-2-pavel@loebl.cz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231118111418.979681-1-pavel@loebl.cz>
References: <20231118111418.979681-1-pavel@loebl.cz>
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
index 11c5ce941dd7..f3c0511cc133 100644
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
2.42.0


