Return-Path: <devicetree+bounces-9994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D507CF4AE
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:06:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7AA01C20AD9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F80B1799F;
	Thu, 19 Oct 2023 10:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZyfXDo4b"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9A8168DB
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:06:50 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 210EC11D
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:06:49 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-407da05f05aso20985725e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 03:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697710007; x=1698314807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aNH+cUkvJq9kPceEcJ89sVVgm6IQTkIk2n1XM45Z5uk=;
        b=ZyfXDo4bVVMme0ghDUVYhhps+R2YkPljIBDykBKcbkqWKtGmB6hbasy0sMudL4o188
         xNv3i3SZLdGYvJ7qFRf8kYPIiccnpB4GcwPY+/YDmqKeMFeGZC9eHFuUnB/3F2Zy20FZ
         j++i4FbQfeJjIgMD1HWSOFgkN0nG1NnmeSIY0zMWok34drIKhjiasTd7zLU/mm9gK94u
         pztSvfTDVPIWM+R2rly4SmOeuMsaq/kAxMbYckbh3fQh9KKBVw/nULOF0/m1xonU9vKI
         9fbm0hflYtKbkMw0P8Brb2PyA+sKG+/RhNxZ6jQ/eiLNosTWS4bJ8aMLOdwqiX/bXTXE
         1JYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697710007; x=1698314807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aNH+cUkvJq9kPceEcJ89sVVgm6IQTkIk2n1XM45Z5uk=;
        b=Az5xfU3oxTJsLLyFA8SpdiJAo+cg4MzzEXl4bKxS7BRTIguO7iQUd1NaYB3EeW/DC3
         hn3x7Wm3ACsAOCLEmH8ty03U10fcwAW+HEggxbcFBXwA9weMd+bYDR1K9m5IDxy3syn6
         wGXIa6PKmE5gV/u5bp0GuZYLdMuHrrLQZiy9qQH5AqWKehxnZgJWwzhUu4dEypMP83mQ
         AwK+LzTzJ1iqhycYpic/ibeeO0cbAKHozUkTvN34EneMYluguaEMhazwtGPFGaAvkUsC
         haGQPtA40Trb6iTGzSHHB8JfMcdExSiD4kqrERiGxNPoLAONCsC8Znj6z6i3Mc/tzQli
         VuPg==
X-Gm-Message-State: AOJu0YwRktY+F7N50OLNH8zEI6x6MLMBuFLHo+FTAgORo8EOvnHG8L4j
	bXngUgWYgEP5sDiZXU8z/hebNQ==
X-Google-Smtp-Source: AGHT+IF0lSU8RSwWRVtoHZMhIoGDLuCWoohmt6sdGSIxzJpSj25BOHDGAY3DaA75D7bseTADxZLBWw==
X-Received: by 2002:adf:e80f:0:b0:32d:8872:aac8 with SMTP id o15-20020adfe80f000000b0032d8872aac8mr1164054wrm.31.1697710007466;
        Thu, 19 Oct 2023 03:06:47 -0700 (PDT)
Received: from salami.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id f14-20020a5d664e000000b0032d687fd9d0sm4169035wrw.19.2023.10.19.03.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 03:06:46 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: linux-kernel@vger.kernel.org
Cc: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] tty: serial: samsung: drop earlycon support for unsupported platforms
Date: Thu, 19 Oct 2023 11:06:38 +0100
Message-Id: <20231019100639.4026283-1-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Commit 1ea35b355722 ("ARM: s3c: remove s3c24xx specific hacks") removed
support here for several old platforms, but kept support for earlycon
for those same platforms.

As earlycon support for otherwise unsupported platforms doesn't seem to
be useful, just drop it as well.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/tty/serial/samsung_tty.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 6b8d4b4402e9..a74ecc78f4e0 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -2735,17 +2735,7 @@ static struct samsung_early_console_data s3c2410_early_console_data = {
 	.rxfifo_mask = S3C2410_UFSTAT_RXFULL | S3C2410_UFSTAT_RXMASK,
 };
 
-static int __init s3c2410_early_console_setup(struct earlycon_device *device,
-					      const char *opt)
-{
-	device->port.private_data = &s3c2410_early_console_data;
-	return samsung_early_console_setup(device, opt);
-}
-
-OF_EARLYCON_DECLARE(s3c2410, "samsung,s3c2410-uart",
-			s3c2410_early_console_setup);
-
-/* S3C2412, S3C2440, S3C64xx */
+/* S3C64xx */
 static struct samsung_early_console_data s3c2440_early_console_data = {
 	.txfull_mask = S3C2440_UFSTAT_TXFULL,
 	.rxfifo_mask = S3C2440_UFSTAT_RXFULL | S3C2440_UFSTAT_RXMASK,
@@ -2758,10 +2748,6 @@ static int __init s3c2440_early_console_setup(struct earlycon_device *device,
 	return samsung_early_console_setup(device, opt);
 }
 
-OF_EARLYCON_DECLARE(s3c2412, "samsung,s3c2412-uart",
-			s3c2440_early_console_setup);
-OF_EARLYCON_DECLARE(s3c2440, "samsung,s3c2440-uart",
-			s3c2440_early_console_setup);
 OF_EARLYCON_DECLARE(s3c6400, "samsung,s3c6400-uart",
 			s3c2440_early_console_setup);
 
-- 
2.40.1


