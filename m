Return-Path: <devicetree+bounces-254627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FFED1A290
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7B0D30A9F50
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7219FEED8;
	Tue, 13 Jan 2026 16:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZeWg//FZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E5A2609E3
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768320919; cv=none; b=QU2Bn2CKp8XitSBl5wdxrqnflGCWtuDEud+dv8G+HIMgQYilfctmVV3f/7I4nEYgT/bVbR6qWJ1GwY15eOPXLMywd4C26YB1H0CRQkviNxXrdPCz/6aL9k+/H3OcNMQA7XTNVImSMeCMWBJRJWGXXtcOrSyHDUXeEjROZ8hBigM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768320919; c=relaxed/simple;
	bh=FnV3NQEZpSrckq7ZRbBQNezPa9LjdzizI84I9YL8+Ts=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SnU2FMf+xzijgFTHQFxu0+tmaYZsKsgaa91tn+tp1dpA6ecbFXv6T6OVV7UhFmE+PcNqaKbh361zturYSzy/B8q23TA+tFVv3hOcO/m9B+iZqEsTkV0A67RNkTu+rqWLesrsR9BK1Hk7ZS2rB5FhuFi80UBGB7rcpeslprPZEyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZeWg//FZ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47d5e021a53so57848935e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768320916; x=1768925716; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6KrS+lv5lwDbRvbVFcdtMBkDtiHuhxyAyg1FHmuvd6Q=;
        b=ZeWg//FZIeQ5P5Q/HgM8xuUr9VaP0c++F2pn/qTYyZ6xPCAXlejHI6LudXakkiE1r/
         MWYPj/WBWKSnCDox77Wn06wfe+ds3IrFzaaYPDfNR+pNK08xZ58DBnuwtmYUhYRQ+Afs
         KCaE3xNX14mGn1AGIH3taswtS4MLJK2vE5sDAp6w0yZx7ZQywQg6SbnBRqsqQYb+odSd
         SxWVaHbnT9cSBVkaebPQaezhKrTzhCZo+32rtyFTOK6hNXrsMwVbjQhiZwPhJeswxxDV
         ASk21IRmEnWXtkSuGhhZiVX8F/F4x4ewQgXLnsoTRx++XakJ2WS8Fsrsy67A8hewUyMM
         uH6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768320916; x=1768925716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6KrS+lv5lwDbRvbVFcdtMBkDtiHuhxyAyg1FHmuvd6Q=;
        b=ACW7krc5/NzcpZoejZXxyqqw6pSKB9tDwvoW97uaWODtpkwVCV4ZWi43FacSE1B+Q1
         XVeUyH0u6rrIW2tIV5pTkv7c9eOE2sql+euWXk4K/PwpXb4wBRLZ57DfEMNU8wGuT18w
         IydnHPrzXPsHbOz7f8IPGpp/JVsetqqPnc6UJb4FdCWRv66fxf5tUurXs2Bau8GMMafH
         fshvS9Tg61qLD67hVJa9B0FHx4luCv6Zt3a3Gx0L2HAby196CGTKaIX21/oafYqR9DJw
         niJTOfGWmqDppV37U1h+u6JO8rmE+gdaziXLAWG1jqfkpuSKVFOWDOZBpqxn5jduW3D0
         TvFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUl0hBs1T/AqV1WKlK6zRFaDhrbeST4sD9qAZWnXez7y4lalMLqDeEB1goXVNafh9FKIxriul1h64FV@vger.kernel.org
X-Gm-Message-State: AOJu0YzAr3zjqOmlKGeQkfewt3HY7/s4S5LQXc109Gsfh2Lqz2paimbs
	hOZh1b5wvka+b/cKO3phvIc7AoeYfMfJnyvUUVLpdhluFxGWSxpXc/UN
X-Gm-Gg: AY/fxX4UUagt0l7iqi/P6hG6TSTaie3mtClzKLj1AheHEqitYSFXmqVIwffMT/0dPmu
	rM/nDh7NICmJHBD6WT2l33sxQB2pxXYJDUL10QdkAmp/yxB9wEkCz6A48GwS76Vv6uXhsBE2tvt
	Cy9N8X0ruewZBDlqgcPbmNyOPLnEL9W8QefKz2bygU2yfDlRkdb8jB+K8cViGuf/16B7Ic7enBI
	g7yWCpPtqDOqswJEjwALljyjWlSE3mUrWIIXcpy6ognbHKnnmb1WNs8upFDPhfZldPIY7PxEDf8
	rRXNqWCfIOg13dA+AfF1lBHDVO//Kg6aCIsjt0zuYgCUOujQDCNXwPGXzENUwmIXy3zej3zrDOp
	SBNIVexomCC8naABfJOg/hinbzd8nSO8baCxSQJKywsmnAAk1ayuQKm2uRt2MlVB90tvE47NE4J
	+nepwHyuqYlAI/XUfOG00ReaZVCOTgZ+unSW2cQhpmtd5c3RzYBc1YZglCKtHw74KF
X-Google-Smtp-Source: AGHT+IFY7anv3CNwWIMho0+cvlpNv8144HIzUKvGLCKenedti8elP6yPkg0qEPScLVQhzPLK3UPXeg==
X-Received: by 2002:a05:600c:83c9:b0:47b:e2a9:2bd9 with SMTP id 5b1f17b1804b1-47d84b3b719mr285114485e9.31.1768320915920;
        Tue, 13 Jan 2026 08:15:15 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dacd1sm44182976f8f.4.2026.01.13.08.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:15:13 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stafford Horne <shorne@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Bartosz Golaszewski <brgl@kernel.org>,
	linux-gpio@vger.kernel.org
Subject: [PATCH v4 2/6] gpio: mmio: Add compatible for opencores GPIO
Date: Tue, 13 Jan 2026 16:11:35 +0000
Message-ID: <20260113161152.3688309-3-shorne@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260113161152.3688309-1-shorne@gmail.com>
References: <20260113161152.3688309-1-shorne@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On FPGA Development boards with GPIOs the OpenRISC architecture uses the
opencores gpio verilog rtl.  This is compatible with the gpio-mmio.  Add
the compatible string to allow probing this driver from the devicetree.

Link: https://opencores.org/projects/gpio
Signed-off-by: Stafford Horne <shorne@gmail.com>
Reviewed-by: Linus Walleij <linusw@kernel.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Since v3:
 - Order this patch after the binding patch.
 - Add Reviewed-by's.
Since v2:
 - New patch

 drivers/gpio/gpio-mmio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-mmio.c b/drivers/gpio/gpio-mmio.c
index 5daf962b0323..edbcaad57d00 100644
--- a/drivers/gpio/gpio-mmio.c
+++ b/drivers/gpio/gpio-mmio.c
@@ -724,6 +724,7 @@ static const struct of_device_id gpio_mmio_of_match[] = {
 	{ .compatible = "wd,mbl-gpio" },
 	{ .compatible = "ni,169445-nand-gpio" },
 	{ .compatible = "intel,ixp4xx-expansion-bus-mmio-gpio" },
+	{ .compatible = "opencores,gpio" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, gpio_mmio_of_match);
-- 
2.51.0


