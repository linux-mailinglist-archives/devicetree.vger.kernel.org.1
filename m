Return-Path: <devicetree+bounces-28822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E81B81F866
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 13:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3EDEDB23DB8
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 12:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4183D521;
	Thu, 28 Dec 2023 12:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LkHzgZxh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87EDEAF3
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 12:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40d5d898162so11775985e9.3
        for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 04:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703768296; x=1704373096; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XX8RT8/KwRnpjqmauq2VuiREugBeuTfdnmzmXRQSLkY=;
        b=LkHzgZxhMS7RFnaXfOWocaAkiaPopljttZfgzA4qZ0DTYCGY9z6Ci15SSTFHnLhmiL
         ZXHCT+0V/k91HeKo0SLYciIqVLfG98glh6w+nqt4E8GK0NRGM9FbFwPthVe2Bwka7lnv
         Nv0AEiY//J5AjXORjw81TXD/cKhm4jFOW+Snn1CoK5F5C9scRXLbp80Nw+b3ikQMRLEL
         EZ3W9agXdnpQ9SrM+UxS+h/g95XkPbvO3IldMkeL4j2Tb75wUt/hp2D9X6tmUENqFuSC
         QpwlAj0Dt4pgN32yAE2+GiKp0XqaxGyPJnMIQtoeXkAsatPSGLDdAsmPpL/DL9IALzN5
         Q18g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703768296; x=1704373096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XX8RT8/KwRnpjqmauq2VuiREugBeuTfdnmzmXRQSLkY=;
        b=MLaSy2Och0hgMTeOa3As4zQ2IKtHDVJ21LfCT1YQ01u/3TkADqgAw03c6AHYi0a6Bi
         RakRPGldBZ5MMP5sg0L02vEFPXcY1/pu0Kp05Hjr+2sRoplCqUsaS2wvEEvyjxQ4ssT7
         z28ruXcSL0jbYABlXO3dDJSgg7PUVeRjOreIERFxKYUSUBIjrCE/z2wl+IrCKP5kCsf3
         oVykWqNboAzJTqu6xbun0QRDoHoRtK3LqnzFTRqET7yE74EUxffD5Bg0Shx+QgYLX6qK
         OySG2ERTJZQYhM5FcxC6/1txjdoQ7swK8qxAF0TFj3kyK2pkSy2ee6SOVue2FgRBaltr
         6zow==
X-Gm-Message-State: AOJu0Ywokg4JRoaYVGbeFHR1jo4/C88py5K0ocGqmdxCQMVcUtNqScko
	3uaubDeCGpFlvi5vSFC+CbJ3y5Hp+H5O/Q==
X-Google-Smtp-Source: AGHT+IEqHso+KU0TXJoWGdwqMKaajVLMSvd+/nBs9vEkdpDVBsUvd/aUEZUWWnBCnEZtLsrpzQL1bA==
X-Received: by 2002:a05:600c:4f83:b0:40d:5d82:d0f4 with SMTP id n3-20020a05600c4f8300b0040d5d82d0f4mr1363489wmq.61.1703768296198;
        Thu, 28 Dec 2023 04:58:16 -0800 (PST)
Received: from ta2.c.googlers.com.com (216.131.76.34.bc.googleusercontent.com. [34.76.131.216])
        by smtp.gmail.com with ESMTPSA id h9-20020a05600c350900b0040d5aca25f1sm8615807wmq.17.2023.12.28.04.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 04:58:15 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	conor+dt@kernel.org,
	andi.shyti@kernel.org,
	alim.akhtar@samsung.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	arnd@arndb.de,
	semen.protsenko@linaro.org
Cc: andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-serial@vger.kernel.org,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v2 06/12] tty: serial: samsung: add gs101 earlycon support
Date: Thu, 28 Dec 2023 12:57:59 +0000
Message-ID: <20231228125805.661725-7-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231228125805.661725-1-tudor.ambarus@linaro.org>
References: <20231228125805.661725-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The entire bus (PERIC) on which the GS101 serial resides only allows
32-bit register accesses. The reg-io-width dt property is disallowed
for the "google,gs101-uart" compatible and instead the iotype is
inferred from the compatible. Always set UPIO_MEM32 iotype for the
gs101 earlycon.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
v2: update commit message

 drivers/tty/serial/samsung_tty.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 938127179acf..2fbaaf0e756b 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -2812,6 +2812,17 @@ OF_EARLYCON_DECLARE(exynos4210, "samsung,exynos4210-uart",
 OF_EARLYCON_DECLARE(artpec8, "axis,artpec8-uart",
 			s5pv210_early_console_setup);
 
+static int __init gs101_early_console_setup(struct earlycon_device *device,
+					    const char *opt)
+{
+	/* gs101 always expects MMIO32 register accesses. */
+	device->port.iotype = UPIO_MEM32;
+
+	return s5pv210_early_console_setup(device, opt);
+}
+
+OF_EARLYCON_DECLARE(gs101, "google,gs101-uart", gs101_early_console_setup);
+
 /* Apple S5L */
 static int __init apple_s5l_early_console_setup(struct earlycon_device *device,
 						const char *opt)
-- 
2.43.0.472.g3155946c3a-goog


