Return-Path: <devicetree+bounces-8930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF197CAA9C
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:58:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12CC8B20D7D
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E5E82869F;
	Mon, 16 Oct 2023 13:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="LqcDLSs4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F19C27721
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 13:58:43 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::227])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22DD4EB;
	Mon, 16 Oct 2023 06:58:41 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3565020005;
	Mon, 16 Oct 2023 13:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1697464720;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hy1Mu3fgGqWYCaplIaWzGyfL87iaK86z7WjJbhldhz4=;
	b=LqcDLSs4Aebaz0l9bSE4gQ47yDQW4SVjBTD83PE7JI4iS+KlAIos8Ldcncbo4GsYkTa7g7
	FJ8Hny9f5/9bYTjauGe6VTgfYt4I09GU4R1etVaZ3cuSkXe+NOAg9+sJTqaUAXEqmtbggL
	QyZ6tYxpfpFXdHP7wG0DfERxa7SpvAqaaKJVaSbIfCHpZv57G+8vCr728hDOe8MSD8owAf
	WrYyKuGwGdJ7z8+iMutawSr58UMblp5BH8iR0j4/Sl/7atNwoSWAKLOLYOxgz77QKscEHz
	I+oW7NEZJXOoCVuPR7FfKTR3vcf6dsIaH+sfUitjqHIubn7wPIthNp+dTwLTzQ==
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	laurent.pinchart@ideasonboard.com
Cc: linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com,
	maxime.chevallier@bootlin.com,
	paul.kocialkowski@bootlin.com,
	Mehdi Djait <mehdi.djait@bootlin.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/3] dt-bindings: vendor-prefixes: Add techwell vendor prefix
Date: Mon, 16 Oct 2023 15:58:31 +0200
Message-ID: <43fcbc231a9932e57cae413bd9b23c720863c608.1697463708.git.mehdi.djait@bootlin.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1697463708.git.mehdi.djait@bootlin.com>
References: <cover.1697463708.git.mehdi.djait@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: mehdi.djait@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add prefix for Techwell, Inc.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..08b74f725142 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1357,6 +1357,8 @@ patternProperties:
     description: Technologic Systems
   "^techstar,.*":
     description: Shenzhen Techstar Electronics Co., Ltd.
+  "^techwell,.*":
+    description: Techwell, Inc.
   "^teejet,.*":
     description: TeeJet
   "^teltonika,.*":
-- 
2.41.0


