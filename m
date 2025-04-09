Return-Path: <devicetree+bounces-164964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11947A8306A
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 21:22:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EBD93A9531
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A998C1E835D;
	Wed,  9 Apr 2025 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="OOh8qPm+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B81831E520A
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 19:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744226543; cv=none; b=GrwNSqL7emNJuEI3sdNKvDNdB/cst0mMHJiJ9iFj94knv2jELXb8O5aLdLvzwNNs7m0KyyzUg00pjs0o514yJG9C6mRmonu1OYOJ/6yPIKG/Q11eoGiQXPyXP73OvWCZK6c14pXh+38cd1Cy6y1f5MV89kCXflUFlX1kTdheW1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744226543; c=relaxed/simple;
	bh=Y2ilGHMUTXCya8rzOvmKtYifGjbu9RYpGCgzY3UBtUU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TiUwrgdfGV3+V2aH8HrEFuautRKb3cCiNX+3NxFRqmZ5X+nCpTl8uSYmisNneNxW1PZ73POciF+595lJbDIj0xpRxaI8kcdr+xMKatVLale6e+t06zUhzV1XHh1tpM86N494seHsEaBxQh3SbaJ2eb1d+KbmGqUgqOsZVGFYsfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=OOh8qPm+; arc=none smtp.client-ip=209.85.166.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-85b3f92c8dfso3163239f.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 12:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744226541; x=1744831341; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HNl26J3HRC4XsI0NsNHSQT2PLx01D+6pAV6deX3HHJI=;
        b=OOh8qPm+gkBB5ONASPmYgWUk7rIRRWcuu7szi2KIo7zL1XpyN3WXyaZzUcvPcZPU75
         /W0VEEfCaPUyFuEkD/41Z8vxA9Thh5yRhqeoC/lxCojgRMWptqrfJv4iiYVh53pcg1FC
         +hEXY8p/ji6Lrp0pH2V/4j5kxiCYwGXrATfIOVTw2MSNVPK4plgAvGB/9mUv35rqbcHJ
         4DkG5gxM9xNm5mFQApzf0Ayra1feJPARhYCVKuZr7tflKgXiZB4Qo3tldGOtf6o+vOWY
         EURl2c1IrTyS8iP4cU4eMqx3MJ2G8z+2WouZTLn+DInbQgaG6xd4u+1DuK4+9vPKsQZS
         PwCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744226541; x=1744831341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HNl26J3HRC4XsI0NsNHSQT2PLx01D+6pAV6deX3HHJI=;
        b=SsB7BXB4LufWmWDSuL1AQMa7Op/gCS+SSOT2sYM8MQBsVeQSeeDXIJyFUFiOG9dwZ5
         YucBATMiGQORahIiDMZUeI4SsuZmfj/rCSa8wgfsCWlwRoszXMS8iZEfUElU00Ho+h8M
         oMNxpRp20oOt07N4sRg+2/NNiKjZI60tB1vS3Eu71nnXUiO8YzrrmTkQeDdgIs8p7p+w
         US60ksKfZv8igKhbPL0jWDg4sUoh/vGSAG9lGZCek5TGUhdrsJoUD3foASB+7epVyu3a
         sHWFr1cQyQHyL3hfQ+DlUkRHRAq4vQWYF5/j80LO/mrvqAoTpJQb03sqrwgeuLjtGht5
         1PRw==
X-Forwarded-Encrypted: i=1; AJvYcCUtqxrB161xAfg1N/ofX+rD7XEWva+lFlqloMDAoqHK0vJWWSNiByTOXOq3V755pcIyyAPe237JsbZB@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu4wD8pvtADxEUZq6/sVGu489cxN2PmNFjyYk+rtpkIoEey6iA
	98ZCU8bDEWY3LjnHrxuo2pWumO/Kvt3IvkM0aThErvpipGj+v1VVlsKX/giu3/k=
X-Gm-Gg: ASbGncteH3zMPeRfNhb5Vju6uIbLu3Wtbt0N5j9zGFpZJXDD08NWwKuDQs+/EVJFLzf
	PE4aHjw0GtsaqfG9vmuGO4pmLD15q/MM5TJBt2JfFvFr0olrKpH8GpGfztr23X0qws1XZWoIbmE
	eXHlnWtxjSDJDtAfdcU2mNgMOS0lPEIQCXHQ1GV1x7g8I0LN1YpXsBGHC66i8Q5uO1npwxRoAgo
	neLVki0pMon92MV+qrRZrmsiOXxuO6p0nr7JBF5J328Vl9srAFEWlJOcq4lmCSnoF6zkjHwNhTE
	DRlHDr4PIN/gFzG8MxXncdbZPXtqaW/f86HlBPTSLGqYYXm9zAHniL/D15eY9vYCScRCXaKEPJP
	c8I3EyiUoSQPAiCalHiTuU5Fw
X-Google-Smtp-Source: AGHT+IHad8+4ZGmSEydVvWi93B5NhjlEAMlDrR2UwaWJMa/MsGHo4UvOCZSyheMgn+3uP3r9HQq5+Q==
X-Received: by 2002:a05:6602:7210:b0:85b:4319:2a2a with SMTP id ca18e2360f4ac-8616ed25080mr12867839f.6.1744226540652;
        Wed, 09 Apr 2025 12:22:20 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf81bcsm373459173.10.2025.04.09.12.22.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 12:22:20 -0700 (PDT)
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
Subject: [PATCH v2 2/2] serial: 8250_of: add support for an optional bus clock
Date: Wed,  9 Apr 2025 14:22:12 -0500
Message-ID: <20250409192213.1130181-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250409192213.1130181-1-elder@riscstar.com>
References: <20250409192213.1130181-1-elder@riscstar.com>
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
v2: Update logic to more check for the optional bus clock first

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


