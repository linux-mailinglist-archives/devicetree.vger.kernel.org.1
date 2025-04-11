Return-Path: <devicetree+bounces-166020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB0AA86235
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 17:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E07E23BB3A6
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4FB214A93;
	Fri, 11 Apr 2025 15:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WEAWQd6A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7AD210185
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 15:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744386269; cv=none; b=D7DRbpOBl8PV3selJr3tBaIQ65ZmPZ8VKhxzEtu2Tms06+sGyq+xWLkKbaL5/gImDMZYjOJy21EUuG2r7ZPJhk+/UGhExCoOGqrp89RTBMK/DZpzIRGzuHZnoaZIWQnUEHMqL6XFqGhffEIKtHaj85f4gixXLXibvUANnk6qzBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744386269; c=relaxed/simple;
	bh=ucvbVh/yXALhRLORxO86EDtcUDjhXV2k7FhsHq1IhHU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iPRb/y8sq5gGdnXi8IVLv7Mo5xNkXm1MKoiq8SjRvDR3N6KodGBaIw2AKlD2Ads2o2H/G9gaSk6sk/Pv5RyF850YWJelTBllh9LdczTFJvnTBqFOlmmKorqiaQdG1jG+6APz5YdGM+HbFe89y+eKbBS3c2JIDe3dkrC5g/+VFuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WEAWQd6A; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3d43c972616so6327565ab.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744386267; x=1744991067; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0+No0irtswkb42oZgjOuCr5NaquvvHMgg0F5193JRX8=;
        b=WEAWQd6AlZmwszqpr2FdMHOqU8RG330klxdCeKbWOQZ57QkTE7ddQSawMK/9di0qCb
         jrYKhLPt/GL7IkodueJqF7EEf1Ak9KJpVD5Su8U+O+xTx2dJs7HP86tt8SvhdFwQsRTx
         JjD3/Gjp/wSLWWIy81VlYvqLWYhSU2mrKBLz2Tn+86LmC+jXzHxjwBAoTa9RIjS8fGSj
         G/Wfzpvfvzo0GfVSPHOgNGHMPMtOwifcrzrh7jAoqwGBe+xGzu4LyvnPll0MIrd3+Dbd
         V7xHvmPqzW5zy8fhUhcy7Y0DfJkjuk9314SZ3oF2CItb9ZLYpo6WnKl0NuwY7WuEH2Ki
         sgAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744386267; x=1744991067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+No0irtswkb42oZgjOuCr5NaquvvHMgg0F5193JRX8=;
        b=fB9dqJAlxukwdacxwec1jymcvAzIGFmb0qduBi7q6X523uFJCpcH5QNwTyxyZdloC4
         FgwVdBeajXm3J3jsc8LNJCgFzDrcH+fCEAoRbUROwEXjDkQ2AvyGc0lixFU/q8ceeRuD
         aFCoHF+H+beTBC3ShteBeK+HWI5czywB9hud7IsRT6x1EhjtVWBVI9bLO0L6a1Gf/+MK
         tgXs6woIwd6Z9pZe4yjfabYnOVmm0zBgZES4tik8Z9mKET7WNZUDXP9qHww/ZszvgHAg
         ZDUOcEWqieI6QRthRcC6KEw4P3u1TGImMG6fCd0HYPFLjZGskjfpT9RwIGTeRhF+61qJ
         7GBg==
X-Forwarded-Encrypted: i=1; AJvYcCXWslBgJyy8mjLE9H/uwrR2avOB9WU2/Wa95erlx2GanxFe0vpgcQk0S19Wwl9mJ6ihJ3pboZOMMlDZ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywez0vn4BXbIpxaeHquz8693r7PRJdprneB/4uGZqVsXBg36MU/
	MIjpQGT1vKmbA2ARbCLq/3ID0yBePyO7Q9Smwh+0S9lzNEdBprddDmTws9CaRNc=
X-Gm-Gg: ASbGncveNMTNTn1IW9d08w5C1+enH1dRn9K0hOtsgODjPhC6DbP8Et2mjX5e/U3VNya
	hpL6+Mh01IbuhBHtuwmE85sIGqz8qpndjCBkv9mrX85THTCxUbxJmyQwH4t040znUaFzyQL8z5e
	DlBSrfXNoaY4imu3bvbeCawC/iARda6llmi+nKdgARWH/4vQcpHIIEQkryeHnvLL9fZtUipyeEn
	y5YDmZzUDM1sMqGXaX7JJorr122JKuRc60dKG2iovtiFKQ0SyRphQEz2f+wqOl8HRpGBzi+aGTQ
	uJgt4DTAot1NphcRvS9MbMNhq4mjuNgHhLD4dUXaZ5Bv3CZJFCF3CqRJXWvfFQujycm8ytz8av1
	vSu+47IGtX37Xnw==
X-Google-Smtp-Source: AGHT+IFHmGeALO9Wp+63MrFrWPOF/pQKiCJFNH3pXYWduOMBqvBFciOLd/8MEHS0nwfjD94ZFGolaQ==
X-Received: by 2002:a92:1304:0:b0:3d3:d08d:d526 with SMTP id e9e14a558f8ab-3d7e4d0c549mr59399825ab.11.1744386267024;
        Fri, 11 Apr 2025 08:44:27 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf812dsm1276326173.18.2025.04.11.08.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 08:44:26 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	benjamin.larsson@genexis.eu,
	bastien.curutchet@bootlin.com,
	andriy.shevchenko@linux.intel.com,
	u.kleine-koenig@baylibre.com,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	linux-serial@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] serial: 8250_of: add support for an optional bus clock
Date: Fri, 11 Apr 2025 10:44:17 -0500
Message-ID: <20250411154419.1379529-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250411154419.1379529-1-elder@riscstar.com>
References: <20250411154419.1379529-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT UART requires a bus clock to be enabled, in addition to
it's "normal" core clock.  Look up the optional bus clock by name,
and if that's found, look up the core clock using the name "core".

Supplying a bus clock is optional.  If no bus clock is needed, the
the first/only clock is used for the core clock.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/tty/serial/8250/8250_of.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_of.c b/drivers/tty/serial/8250/8250_of.c
index 11c860ea80f60..a90a5462aa72a 100644
--- a/drivers/tty/serial/8250/8250_of.c
+++ b/drivers/tty/serial/8250/8250_of.c
@@ -123,7 +123,16 @@ static int of_platform_serial_setup(struct platform_device *ofdev,
 
 	/* Get clk rate through clk driver if present */
 	if (!port->uartclk) {
-		info->clk = devm_clk_get_enabled(dev, NULL);
+		struct clk *bus_clk;
+
+		bus_clk = devm_clk_get_optional_enabled(dev, "bus");
+		if (IS_ERR(bus_clk)) {
+			ret = dev_err_probe(dev, PTR_ERR(bus_clk), "failed to get bus clock\n");
+			goto err_pmruntime;
+		}
+
+		/* If the bus clock is required, core clock must be named */
+		info->clk = devm_clk_get_enabled(dev, bus_clk ? "core" : NULL);
 		if (IS_ERR(info->clk)) {
 			ret = dev_err_probe(dev, PTR_ERR(info->clk), "failed to get clock\n");
 			goto err_pmruntime;
-- 
2.45.2


