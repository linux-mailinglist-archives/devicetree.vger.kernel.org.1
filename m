Return-Path: <devicetree+bounces-110654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE3C99B593
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 16:40:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08C7EB21CA7
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4734719922E;
	Sat, 12 Oct 2024 14:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uHURsS6v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841AD19597F
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 14:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728744024; cv=none; b=aOZ9St4HItTsYX+5uVPqA6PXKOTk05A4I2Tm66MQVvjZUXQi/bpGL2xsXH6kPa3QQmp8R9CTqLnrMfs84VZ5r7Q8iXEk+YtZIy754WGzg5vg6+ZXVlXmenGorgiFHx22n4v5O9rC6u32STdPb4nl9XmtcjXUFVRdmGfRmYbSN7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728744024; c=relaxed/simple;
	bh=raNMV7XctJIbSEmg1aR+IsRod9wfbi2q0jEtotc1h3A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Icup92td+SPoeKlFZ/u9UFdsGy71TRGzbv+YauI9d25Zy7MQ4kAsea62eNCtVDhc4lqk8JfHy4wB3CqJ+RnQnRd7eQ9M7SNQwUx9509Cdt8f5vHSvUBd0WjN7nMv2nwHOej6HmNiu/x/lhYjFJagV8GbLfcsbpaCr+7F0lgUKRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uHURsS6v; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a86e9db75b9so445119566b.1
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 07:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728744021; x=1729348821; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ULCkiQ8VoXo6ciE6Elqk4HCN1p6ytUWA5waL2W1UArY=;
        b=uHURsS6v2tEGk+6UMqxWafuAshLNmmtAQevKrUrrSQ8uN/tztD6rK77VtEiuhmDI+P
         fZpyWj2skQjN0xS4AkEzkO22qffNt449sSXWSuBC3vUCSktSA7NSTSLsTCaKu0/biwwK
         zARWQIjeg53jIQkUeDHKwecPjKKw6Qx1+Rk1Aeg4zLDHSdnZVaCaiBe60wH//D0bmUOm
         zgMH7lZHZid97xBmFuC6II1eE6JSA80wlI3sZttNYnGJdkKzeO17SxsdMNIWX4wmc3q4
         9CeQW/eIhVt2xpakzThVGHvk7mjrbYk70N8795m4jTqkBVk+X2tkPlMCQIAGue35Tpei
         jqrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728744021; x=1729348821;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ULCkiQ8VoXo6ciE6Elqk4HCN1p6ytUWA5waL2W1UArY=;
        b=cGaOG7Qpi9VtbqmgwdAjrQ7cEcpBRGqcXbb/4rP316Nh/JkujLNxrbG9cTs9eV0UGa
         5BnlJYIKaBdkZPKQC1M0AJBe8cSKAU4f7iWsge9MUF7v050IPjbPrzhRiMW/JQR1okzb
         7nmHgXKA6Zzt9H5wsnC9dSEX7HxQZ5Amg0DPiN8QBYHRTH5dTAlM5aFQboAdxIl7z2qy
         P3UzjpcXqCBnEgmfDXyCi5+QLqhiCQZRCghy6NixDKkrTzbnrvQpm1/32zhkYZYK0v/T
         zkUGkVZDMPxj2te9I/6UJ9aBnT3ouErQLVjIva+pPT77iCSva7gn/T+a3Yv2I2IFU1rG
         PcNg==
X-Forwarded-Encrypted: i=1; AJvYcCVCo2G6P58nQmo0ZVsRsFMLMHHt2410i5xBNyWA8pEu/+YeVHAZwPygl7WcbD4p2zhhA38tQilO98YQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzykLNVGCoU4TLfNVpo6RA2YE+cK6n1YEwZRstvBFbdGRRWCc8z
	kC6A6clyAMDddjeluhOKbMRkecoOhHEWDhxTNGMO78LcTmro+jwAA65vjCpedqw=
X-Google-Smtp-Source: AGHT+IGWlpkwYPvczR/HmMNrTZLwB3u77RjG+9e11crQIzq8pDrWM2fLtcRa72Csddc7F8rgokMxAA==
X-Received: by 2002:a17:907:9489:b0:a99:e98f:e73d with SMTP id a640c23a62f3a-a99e9900010mr139675266b.37.1728744020855;
        Sat, 12 Oct 2024 07:40:20 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80dcd55sm332162666b.173.2024.10.12.07.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 07:40:20 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Sat, 12 Oct 2024 16:39:29 +0200
Subject: [PATCH v3 3/6] arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241012-topic-am62-partialio-v6-12-b4-v3-3-f7c6c2739681@baylibre.com>
References: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
In-Reply-To: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1051; i=msp@baylibre.com;
 h=from:subject:message-id; bh=raNMV7XctJIbSEmg1aR+IsRod9wfbi2q0jEtotc1h3A=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNK5umxevT6yTL1ugqjsyZ/d/gXll499jDv17/NM91mRA
 g/81Q/v6ShlYRDjYJAVU2S5+2Hhuzq56wsi1j1yhJnDygQyhIGLUwAmciyI4b+Xjcjhd2Hbfn+Y
 YHWNQa/HelKKjP3cHhmW5P9ZJz6kbHvO8L+yxdmtIUVko07zn7THwmUHvl0PeBMcwM21vePLNi+
 zw3wA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

WKUP_EN is a flag to enable pin wakeup. Any activity will wakeup the SoC
in that case.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-pinctrl.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-pinctrl.h b/arch/arm64/boot/dts/ti/k3-pinctrl.h
index 22b8d73cfd3264735ddf91874e60a0c5fc7ade5b..dd4d53e8420a1d671e04a70d4af8b0ea1b75b2b2 100644
--- a/arch/arm64/boot/dts/ti/k3-pinctrl.h
+++ b/arch/arm64/boot/dts/ti/k3-pinctrl.h
@@ -12,6 +12,7 @@
 #define PULLTYPESEL_SHIFT	(17)
 #define RXACTIVE_SHIFT		(18)
 #define DEBOUNCE_SHIFT		(11)
+#define WKUP_EN_SHIFT		(29)
 
 #define PULL_DISABLE		(1 << PULLUDEN_SHIFT)
 #define PULL_ENABLE		(0 << PULLUDEN_SHIFT)
@@ -38,6 +39,8 @@
 #define PIN_DEBOUNCE_CONF5	(5 << DEBOUNCE_SHIFT)
 #define PIN_DEBOUNCE_CONF6	(6 << DEBOUNCE_SHIFT)
 
+#define WKUP_EN			(1 << WKUP_EN_SHIFT)
+
 /* Default mux configuration for gpio-ranges to use with pinctrl */
 #define PIN_GPIO_RANGE_IOPAD	(PIN_INPUT | 7)
 

-- 
2.45.2


