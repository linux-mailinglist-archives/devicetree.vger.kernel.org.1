Return-Path: <devicetree+bounces-7382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9733C7C041E
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:10:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C85071C20BAB
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:10:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F44738DF6;
	Tue, 10 Oct 2023 19:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="0MGOSos9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920EE30FAC
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:09:59 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46B5793;
	Tue, 10 Oct 2023 12:09:57 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 34C2486BAC;
	Tue, 10 Oct 2023 21:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1696964991;
	bh=I4f7Dc6dnDKz6zHFLKzAB/fW4xuy6lQF9NKmsn74fB8=;
	h=From:To:Cc:Subject:Date:From;
	b=0MGOSos9l8x8dJLs3E3bbVH+Ry9mAJ+SGWz/L0AuebUjbjeuLOW1JuRyE106JCSvG
	 /zMWg/9Z6Zik8YdA7+j4DShUg18ml/Zd1ymcgg04A/REHl2JrZg4X7D6rnERuUqfya
	 tz8rYp6/Nr1V0/CBgmg0Q/E4d2pJnv85F0fqHJpME7SGU8aGLWdcgqDDIRgw4mMwB9
	 jTW2qH7zbAQwgRVgjwxzgl0e8tmU8Q/QOEjOhEU3DL1IUwtxb01NyvGhaj8IZG8eXS
	 /4MYcTLsbe4jGnQRUf6yTyWszWSUoxfqNG4WmTT3cILGujjeYwQ10HxFfQNiTvyBvp
	 RUULqGCho7LNw==
From: Marek Vasut <marex@denx.de>
To: linux-i2c@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: at24: add ST M24C32-D Additional Write lockable page
Date: Tue, 10 Oct 2023 21:09:25 +0200
Message-Id: <20231010190926.57674-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The ST M24C32-D behaves as a regular M24C32, except for the -D variant
which uses up another I2C address for Additional Write lockable page.
This page is 32 Bytes long and can contain additional data. Document
compatible string for it, so users can describe that page in DT. Note
that users still have to describe the main M24C32 area separately as
that is on separate I2C address from this page.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-i2c@vger.kernel.org
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index 98139489d4b5c..7be127e9b2507 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -67,6 +67,8 @@ properties:
                   pattern: cs16$
               - items:
                   pattern: c32$
+              - items:
+                  pattern: c32d-wl$
               - items:
                   pattern: cs32$
               - items:
-- 
2.40.1


