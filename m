Return-Path: <devicetree+bounces-144093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF51A2CDAF
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:10:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23771168051
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D723F1B87E4;
	Fri,  7 Feb 2025 20:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZfuC9rmy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85381B4121
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738958977; cv=none; b=XK7PGYan4uI3pRK/D7lj4ESYVoyQGTWPjFDMeb1RzbS8mzGsLgg1Fj/EFbaghS0yrHY3znuVJYw08Ukfl3yZbG2Ml6vzJXDp6pIrnXkjeoC4K2/RV0rvayhi55lyLz8wL2L6Nc7910Uwuit7U6AbFy2+wdbznkQMGGAmS7Q0vyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738958977; c=relaxed/simple;
	bh=wIbk5mFn+xLWzifwyYYIf1Y11mKle1UlHYsEBuzuRpg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EHygzyhULOlRTAs7BhRfT3vxrFDY4c3gL/NIP7UzxtnsgniIgH8nuX1+4e8JbhI9u5StqiIqB4xWdPtNmLli6ZIwJziDEedEqLdCy4t5IK9x0cywuNRbauw330r8s1ufcBm2SxMSha514HLTrb2EIy2MNFsVMoHU56RhXXQnlHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZfuC9rmy; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5f4c111991bso1314256eaf.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738958975; x=1739563775; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wcwsH9FSGgvZx1I+Qt+xMirbqx1PZqy/STFkdwYNSkc=;
        b=ZfuC9rmyYw8HCnuaEvsFPnoMWV/OmVUiL8HlxJy+WoSxNZSDlRjvq5FNAMAtLe7158
         y+M6tzH8ihYLtD4ifvGCeBZjJkWQRJJsgJ+GCXqM38bELxRVBsXCjFwhjNeat3IjpqDI
         TjBAFlCIRB6VQ37gRUhX9ViCNIik+gLkRHgNdXOhwk0RGIruKOi6nnBPOta+fYMbddKT
         I/RPl8l7/BRKwTQN4c3SSW97Lk7i3qEISX2+gGCkzjEaIUR6mrrQk+zaYvPnyJBOfRMF
         imCzuqlDrwxrDOldm9ddDSyNVREveAdIPPTTNAJZ01TFlYvQkUkRdyP8Y/7o1OGNW13S
         T3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738958975; x=1739563775;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wcwsH9FSGgvZx1I+Qt+xMirbqx1PZqy/STFkdwYNSkc=;
        b=LifxdC6OC1noazOJ2unBEXDBpf5F+9KDv4Q1gLGpnbchsdbsrwPZoZJC/7WLW4PoPc
         Q/cwJWxDFEggYAsjglXFrRV2Wy/frC/XPAl3Mijtaxl7Wa1opKfvA/pbIuJJ0V5FYL/G
         4DrOidsMB+epyui+RuEHZcH4dBTrhmrrv3dqjI/CBN3A4E1zZB2TFD44nZ0Jw+58U/FW
         Yqalx56pUzwHI4CH0pNC8XK8CkfAUSKMqwEvNXGQM1Lm/KPk3/ukCm8mQZay8Tj3JoGt
         d2lsyGtcYnQ6b6ytI11nPpoxlU5c0AtnOb+APxgKPE+Np9cfII7Dy6zCPIyhKvIpTP99
         N4bA==
X-Forwarded-Encrypted: i=1; AJvYcCWqW2jrPgQDYWP5m8iipY1eR23UHePAu5W+4Yf6lcycFFaGgWMqhQ4m6tjpAfROG2bNklLG+MgqYe86@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg9GNLSAfFsb+BV9rj6r1tfkIozGCFukSFA1rGOAG/OP+lOa5x
	JZwjUMyNlcPzXPeyCO2zOerqoUcU4vNgP0qg0OWd1KU1KF6kUay0Y4kRuI4CJeU=
X-Gm-Gg: ASbGncsAVaUrzttlCs8yz7HbdMW9Z+f+fFp7Jr6KCvzaNeOWS6trW1IaIkHHi84aeMN
	fwUR+DVzkUp2yIGcnPofUFRO+LQgH8/p/UqyTJTD/HdVSuqk9mR10oujpEem0koCdzXJNuiREdQ
	KVqgwAhjfN5eK8AbWW0VFxmjE57ffBWXjSU8PgvReGGkbPpX8ocPPRT6BOU/tLw5LysR7U1HhHR
	xaeY9+1wSvXkZQ1tQQuzVSSqQ2Alavrs2X3e7ZGUok/MGg1bDzuvU0WZTFU83RORGu27WzxjYQM
	4ME3Tq44uzmn5XzPFbGLOVazcrQBi/PT4Bq5/08uKNZ//8U=
X-Google-Smtp-Source: AGHT+IHnl7iHgGAFvK/NvYE6ivOshF430NsG1tgBvCko0JvmrNF+h8vllEgQRGyP15pnWXp6FnjKLA==
X-Received: by 2002:a4a:e654:0:b0:5fb:fe5a:6dd2 with SMTP id 006d021491bc7-5fc51ea2720mr6545559eaf.1.1738958974710;
        Fri, 07 Feb 2025 12:09:34 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fc544b08d4sm930387eaf.2.2025.02.07.12.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 12:09:33 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 07 Feb 2025 14:09:03 -0600
Subject: [PATCH v8 06/17] spi: dt-bindings: axi-spi-engine: add SPI offload
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-dlech-mainline-spi-engine-offload-2-v8-6-e48a489be48c@baylibre.com>
References: <20250207-dlech-mainline-spi-engine-offload-2-v8-0-e48a489be48c@baylibre.com>
In-Reply-To: <20250207-dlech-mainline-spi-engine-offload-2-v8-0-e48a489be48c@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2

The AXI SPI Engine has support for hardware offloading capabilities.
This includes a connection to a DMA controller for streaming RX or TX
data and a trigger input for starting execution of the SPI message
programmed in the offload. It is designed to support up to 32 offload
instances.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v7 changes: none

v6 changes:
* Drop type $ref for trigger-sources property since it is defined
  elsewhere now
* Undo v5 changes that limited the number of offloads to 1

v5 changes:
* Also document offload0-tx DMA names since the hardware can support
  that now.
* Limit the number of offloads to 1 for now since it would require
  significant hardware changes to actually support more than that.

v4 changes:
* Dropped #spi-offload-cells property.
* Changed subject line.

v3 changes:
* Added #spi-offload-cells property.
* Added properties for triggers and RX data stream connected to DMA.

v2 changes:
* This is basically a new patch. It partially replaces "dt-bindings:
  iio: offload: add binding for PWM/DMA triggered buffer".
* The controller no longer has an offloads object node and the
  spi-offloads property is now a standard SPI peripheral property.
---
 .../bindings/spi/adi,axi-spi-engine.yaml           | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
index d48faa42d025b07d72baa61f8946f42acbaf47dc..4b3828eda6cb4c5524570f00033b081a6e027b09 100644
--- a/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
+++ b/Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
@@ -41,6 +41,26 @@ properties:
       - const: s_axi_aclk
       - const: spi_clk
 
+  trigger-sources:
+    description:
+      An array of trigger source phandles for offload instances. The index in
+      the array corresponds to the offload instance number.
+    minItems: 1
+    maxItems: 32
+
+  dmas:
+    description:
+      DMA channels connected to the input or output stream interface of an
+      offload instance.
+    minItems: 1
+    maxItems: 32
+
+  dma-names:
+    items:
+      pattern: "^offload(?:[12]?[0-9]|3[01])-[tr]x$"
+    minItems: 1
+    maxItems: 32
+
 required:
   - compatible
   - reg
@@ -59,6 +79,10 @@ examples:
         clocks = <&clkc 15>, <&clkc 15>;
         clock-names = "s_axi_aclk", "spi_clk";
 
+        trigger-sources = <&trigger_clock>;
+        dmas = <&dma 0>;
+        dma-names = "offload0-rx";
+
         #address-cells = <1>;
         #size-cells = <0>;
 

-- 
2.43.0


