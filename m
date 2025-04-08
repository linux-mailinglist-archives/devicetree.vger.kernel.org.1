Return-Path: <devicetree+bounces-164504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D24FEA8140A
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 19:52:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D07467BA8AE
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 17:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7F1423E227;
	Tue,  8 Apr 2025 17:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="tKaZUpN2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A9F23E329
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 17:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744134714; cv=none; b=PBb74vlsLcHPSUgbkAGzsgSqM3VoQrMX8fp27ftzVWwEDCUrMEgsw1Vork1t9HCANUSVSAHGgOyGSMcXGBrcvpnRmOwuAKYO/1kAJaCqyAGupSGR2PN61PL8yZCqBZvCZjHBDeZcr1Nl4h55sGf0olGuCToho377ccbxpiRg+gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744134714; c=relaxed/simple;
	bh=/sY8VZRyDUN73aeYaxmj2iwLb/0UKlQo0GxMqEzF4N4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tOXoPMxbDDpw6q2seaLVVkz3Wj9t5J0ctvG28Y15P6SbLsCe6Oou0i6iwcjsMZKidDBPuEucRA7rpI+RxG+TqzH3LFcDgo1Vcc5zASmKdkdCOr4gWzxbiQ2fcfx5YhyndffT/+wCzDcYT/Z9LKe4mG5FOb2KfJUoO7ajsu9fqvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=tKaZUpN2; arc=none smtp.client-ip=209.85.166.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-85b41281b50so155280239f.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 10:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744134712; x=1744739512; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2yOB0UUwMV+WIYBnQK7bXplxqRapyFX4EtLHZKV6hlY=;
        b=tKaZUpN2WAtn7gcYVg2bsR3D4kgLXPzUbCnn6ulJzIaNC95y9gmd8vb3Pwhe3q4/hH
         zIaD3WC0KqPnhV7R1uHx/lO0EqMMuBJEC1Or2OH64EXXa777S+ou+qVryRlWciPYVE4v
         hHuIKYh6GncizFka3Md7tOIIT3j9SqYpFUas+klrsoCKa/kv48Vu3yVj5cWiYFc/X+3v
         50v0XCMEA8m+YviBH8Dco/BaT2NF8jGVWRNPeqsGkY+1YMSSLIxqrP+gEld1FTlt2OkX
         8DZS5Z5FJbgEnYq5IC43KBjOtTEVeMdwh0Cb/R0o3i5HX+f/8yHKvkTmI/weE2/x2Frc
         QE9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744134712; x=1744739512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2yOB0UUwMV+WIYBnQK7bXplxqRapyFX4EtLHZKV6hlY=;
        b=RHdF2WnDMYKuRejtlR4XaysPpG8H7GMpKFSoSwEAwr+c/h6F3R5j3KfA82AwMwncKd
         yIaYuKb1b0uOBFXIxo4rY1AoE8nls12deOV189xaoX1EZ0xyZ33ifuWTwEbMcyowtyIg
         90ha/WiTnFk4TdsC2tmSPN/vXfNRpILNRyiWAFaXfBERADPuzSpc6JIniLbrRq5pD12H
         1FZ5jedehQH0NLsniQHQh4gqEbFrBPBqxJBoxjmdy0n/GPDjeMMXQPFHorx4feWUVkMX
         O+qeVUAquyhOwMoYGdYbkzT9Vx8dx/JOE4CUhhfWSIwPjUkotd1LSbHxGka3hXBNDWPi
         7WUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRyuEQcXItKGnzuUp6/Z2Mz1AVMNxds1YkkAto8h2P0XcXDzSsuZxh669H1u2AzoUq8XPtfqAYGOT6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4WT+9vFFFySrawWk9qL0LyKekwjBK3s0hZ03CEzAbOA6ZEeOp
	7dGWp2/x0mlMMxZTiVwN5HHPDvBoDsB2uiIcQCJ8yNcHGxGBqrCSYw4wyN5orpM=
X-Gm-Gg: ASbGncu7Uz91jJHSc8DzgbyeDPH7eDTKb2wsLBqTpm860h1C/3Ls74cv23mknG7Bdna
	JKqILE+kWBNhFq3clhulCz8ltgLzVOj7KVgONBm9thRonMAllSPvgggVxWK5YJYefQKcKavf2TT
	xvwBVA9iL5mc0GybfS7wQm2PAMvxvJaDzQF4d+y2lgNYg1w7t8LdxeJJdRN85H7/frZFdFoR3lp
	GfugoZoEW0+uekUt3o1xSmOdoXB3M9ya3BQ70p9zGTGW1DTaFhMoyY9+UP/m/V/oCZrqJERXqSf
	2zbVGr53n6hOsHU2p9WcF6X8mrl8GqwwdXKcWYtsivDdT/f2lp0gIPBKYGXobimyF9xCqQSjMV7
	VfcaASXkev7ViSfgAkQ==
X-Google-Smtp-Source: AGHT+IErYWFsepnZwUj7tm3UyMRvkOvbJ++wpmDSS1joM6vrWPeUFpUG7aRoEZk+WZVtDpCIid6RQg==
X-Received: by 2002:a05:6602:36c3:b0:85e:8c26:8e2d with SMTP id ca18e2360f4ac-861611a5b6amr10144839f.4.1744134712022;
        Tue, 08 Apr 2025 10:51:52 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f4f44e26fcsm595914173.120.2025.04.08.10.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 10:51:51 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] serial: 8250_of: add support for an optional bus clock
Date: Tue,  8 Apr 2025 12:51:43 -0500
Message-ID: <20250408175146.979557-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250408175146.979557-1-elder@riscstar.com>
References: <20250408175146.979557-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT UART requires a bus clock to be enabled, in addition to
it's "normal" core clock.  Look up the core clock by name, and if
that's found, look up the bus clock.  If named clocks are used, both
are required.

Supplying a bus clock is optional.  If no bus clock is needed, the clocks
aren't named and we only look up the first clock.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/tty/serial/8250/8250_of.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_of.c b/drivers/tty/serial/8250/8250_of.c
index 11c860ea80f60..0ffb9f2727b92 100644
--- a/drivers/tty/serial/8250/8250_of.c
+++ b/drivers/tty/serial/8250/8250_of.c
@@ -24,6 +24,7 @@
 
 struct of_serial_info {
 	struct clk *clk;
+	struct clk *bus_clk;
 	struct reset_control *rst;
 	int type;
 	int line;
@@ -123,14 +124,34 @@ static int of_platform_serial_setup(struct platform_device *ofdev,
 
 	/* Get clk rate through clk driver if present */
 	if (!port->uartclk) {
-		info->clk = devm_clk_get_enabled(dev, NULL);
+		info->clk = devm_clk_get_optional_enabled(dev, "core");
 		if (IS_ERR(info->clk)) {
-			ret = dev_err_probe(dev, PTR_ERR(info->clk), "failed to get clock\n");
+			ret = dev_err_probe(dev, PTR_ERR(info->clk),
+					    "failed to get core clock\n");
 			goto err_pmruntime;
 		}
 
+		/* If we got the core clock, look for a bus clock */
+		if (info->clk) {
+			info->bus_clk = devm_clk_get_enabled(dev, "bus");
+			if (IS_ERR(info->bus_clk)) {
+				ret = dev_err_probe(dev, PTR_ERR(info->bus_clk),
+					    "failed to get bus clock\n");
+				goto err_pmruntime;
+			}
+		} else {
+			/* Fall back to getting the one unnamed clock */
+			info->clk = devm_clk_get_enabled(dev, NULL);
+			if (IS_ERR(info->clk)) {
+				ret = dev_err_probe(dev, PTR_ERR(info->clk),
+						"failed to get clock\n");
+				goto err_pmruntime;
+			}
+		}
+
 		port->uartclk = clk_get_rate(info->clk);
 	}
+
 	/* If current-speed was set, then try not to change it. */
 	if (of_property_read_u32(np, "current-speed", &spd) == 0)
 		port->custom_divisor = port->uartclk / (16 * spd);
-- 
2.45.2


