Return-Path: <devicetree+bounces-7383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E82587C0420
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:10:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 261CF1C20CAF
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72AA83AC2A;
	Tue, 10 Oct 2023 19:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="i5EJ5pW6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427E938DEA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:09:59 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4756B94;
	Tue, 10 Oct 2023 12:09:57 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 1A58E86B74;
	Tue, 10 Oct 2023 21:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1696964991;
	bh=Q5nGLC812cVs9QIdCMSC4RAGrUm1dNZi2Pv8A9ffWGU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=i5EJ5pW6OpnLEzDsNdFA9m8BjnO2B9oFI82ZUOKNVtZWiTibaXle0XCf2/XR0zCbh
	 /DZIR87agoTObDTQF3Yg2mnrj4kSZoBt80iUp4Rrz4rFWsN+k/Kan3h4dsk3sgt0bj
	 Ouc57asca3c2pVKuZBADaP/1oyBKEq023R0Lh0MZOUR1qIL1FhloNtR9Bq+cyIlOTV
	 OO8To5utmKN/Fm9Ptnrnz1TWBOjIQNxB+uq2ibhGTg3b1TldeltEMvOQcfLvNMlxTm
	 PmwnOsAc83QBKI26Agan36UYv6WDmFsH79naF1/K9Aun9zBL7iXRmfSCjvX60c/IZp
	 QbnwmB2rr4VxA==
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
Subject: [PATCH 2/2] eeprom: at24: add ST M24C32-D Additional Write lockable page support
Date: Tue, 10 Oct 2023 21:09:26 +0200
Message-Id: <20231010190926.57674-2-marex@denx.de>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231010190926.57674-1-marex@denx.de>
References: <20231010190926.57674-1-marex@denx.de>
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
This page is 32 Bytes long and can contain additional data. Add entry
for it, so users can describe that page in DT. Note that users still
have to describe the main M24C32 area separately as that is on separate
I2C address from this page.

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
 drivers/misc/eeprom/at24.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/misc/eeprom/at24.c b/drivers/misc/eeprom/at24.c
index 7dfd7fdb423e6..616e63efc9864 100644
--- a/drivers/misc/eeprom/at24.c
+++ b/drivers/misc/eeprom/at24.c
@@ -191,6 +191,8 @@ AT24_CHIP_DATA(at24_data_24c16, 16384 / 8, 0);
 AT24_CHIP_DATA(at24_data_24cs16, 16,
 	AT24_FLAG_SERIAL | AT24_FLAG_READONLY);
 AT24_CHIP_DATA(at24_data_24c32, 32768 / 8, AT24_FLAG_ADDR16);
+/* M24C32-D Additional Write lockable page (M24C32-D order codes) */
+AT24_CHIP_DATA(at24_data_24c32d_wlp, 32, AT24_FLAG_ADDR16);
 AT24_CHIP_DATA(at24_data_24cs32, 16,
 	AT24_FLAG_ADDR16 | AT24_FLAG_SERIAL | AT24_FLAG_READONLY);
 AT24_CHIP_DATA(at24_data_24c64, 65536 / 8, AT24_FLAG_ADDR16);
@@ -222,6 +224,7 @@ static const struct i2c_device_id at24_ids[] = {
 	{ "24c16",	(kernel_ulong_t)&at24_data_24c16 },
 	{ "24cs16",	(kernel_ulong_t)&at24_data_24cs16 },
 	{ "24c32",	(kernel_ulong_t)&at24_data_24c32 },
+	{ "24c32d-wl",	(kernel_ulong_t)&at24_data_24c32d_wlp },
 	{ "24cs32",	(kernel_ulong_t)&at24_data_24cs32 },
 	{ "24c64",	(kernel_ulong_t)&at24_data_24c64 },
 	{ "24cs64",	(kernel_ulong_t)&at24_data_24cs64 },
@@ -252,6 +255,7 @@ static const struct of_device_id at24_of_match[] = {
 	{ .compatible = "atmel,24c16",		.data = &at24_data_24c16 },
 	{ .compatible = "atmel,24cs16",		.data = &at24_data_24cs16 },
 	{ .compatible = "atmel,24c32",		.data = &at24_data_24c32 },
+	{ .compatible = "atmel,24c32d-wl",	.data = &at24_data_24c32d_wlp },
 	{ .compatible = "atmel,24cs32",		.data = &at24_data_24cs32 },
 	{ .compatible = "atmel,24c64",		.data = &at24_data_24c64 },
 	{ .compatible = "atmel,24cs64",		.data = &at24_data_24cs64 },
-- 
2.40.1


