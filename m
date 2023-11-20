Return-Path: <devicetree+bounces-17104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DB47F1304
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 13:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 520B91C20B0E
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 12:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12A0219473;
	Mon, 20 Nov 2023 12:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=bewilderbeest.net header.i=@bewilderbeest.net header.b="TYCsvCuT"
X-Original-To: devicetree@vger.kernel.org
Received: from thorn.bewilderbeest.net (thorn.bewilderbeest.net [IPv6:2605:2700:0:5::4713:9cab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3C67CF;
	Mon, 20 Nov 2023 04:19:20 -0800 (PST)
Received: from hatter.bewilderbeest.net (unknown [IPv6:2602:61:7e5d:5300::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: zev)
	by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 4D9C34233;
	Mon, 20 Nov 2023 04:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
	s=thorn; t=1700482760;
	bh=1aUa7o/BC0htJKHgeWSCq6gSYea2/jxqsfoYPL/52mU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TYCsvCuTs5dj7kmd5aoYQHAhQ2AUd7X60pXAlkgSPIMiFC5KdB1XmLZ8au/KuVboA
	 eW6e6u1ZtbqQEFE12OPJ4ZlswONg0Aur7XsvEgt5hiwzOTOLOl6bgn7Nlp38Cf+SXO
	 n85lXK/FwCHxoEjrtbDuYuKSUttejBxHGRI5Ae/0=
From: Zev Weiss <zev@bewilderbeest.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Zev Weiss <zev@bewilderbeest.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: aspeed: document ASRock E3C256D4I
Date: Mon, 20 Nov 2023 04:19:03 -0800
Message-ID: <20231120121901.19817-5-zev@bewilderbeest.net>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231120121901.19817-4-zev@bewilderbeest.net>
References: <20231120121901.19817-4-zev@bewilderbeest.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document ASRock E3C256D4I board compatible.

Signed-off-by: Zev Weiss <zev@bewilderbeest.net>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 749ee54a3ff8..c330eba0e869 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -35,6 +35,7 @@ properties:
               - ampere,mtjade-bmc
               - aspeed,ast2500-evb
               - asrock,e3c246d4i-bmc
+              - asrock,e3c256d4i-bmc
               - asrock,romed8hm3-bmc
               - bytedance,g220a-bmc
               - facebook,cmm-bmc
-- 
2.42.0


