Return-Path: <devicetree+bounces-116312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3679B2870
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:11:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 905921C21380
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 07:11:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 787AF190468;
	Mon, 28 Oct 2024 07:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xs7FcSkJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2796318FDDA
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 07:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730099488; cv=none; b=QVAWryAaPCBVM/f7EPH43Vf+rHMz30R0uoi0tP/INMcvjESu8d858Pc6b2TFm0Uf6MB+tQdz056meJaeiuxvAySmBnimaWNAmiTMnA3EOo51HLBdb6ds2ATNp0DlUm1U+XQuZMESRgDdRfg4msf+1PeNaFWePvpM45EQ4i8yrMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730099488; c=relaxed/simple;
	bh=aHpLAYxTlMEVHnv2ecw60I7dlQNyB6DdFCFqSwpslz4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PR43vzsWJg1Hu0uWFnTtrFstKCfch0m+DsE6/Dg0fNHiVvCfUVlPaarEn7rv19RcioQkt2rESBvOaMNjr6YyqLHxUY2bj7IXqXRDW7Wisg2MrKTtnfWVDkgGCiqH+hJYITluRdJwZq1OfncxSJsW97beamhWxKkGgqYuXEyiB9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xs7FcSkJ; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539d9fffea1so3652450e87.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 00:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730099484; x=1730704284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ULhAbr6+HaJtI9Ia2hfBJx7q7nYh/124R4mEk9Ita7U=;
        b=xs7FcSkJ3iF//R6RTA/Qv5CqRl47BSc/rqkjYkn64+dXHcJXTyDC/l+BRnGrtSLC11
         9SGD60Ok12cs79Qvw/ZyeQa6b3HLRsNTtNEqTqqRRkAiVJCBc+9XaG6+oKXzQDXfE5rI
         ZwCiMmJuhBG8/qvs0h00AiN/VtTZTtVUU5uMBf5D6XurPSdNx6fPOnolufT8ETjzzcEf
         606UenIiyjd7UTdaNk6na9mloNYhdkC2KY0N+K0ijOsO+TVYa9zjgvps2Jlh0DFm+XpJ
         DoeChvj/HWFNC/AvweRDb8NtS9pcz16zXDd7CjXUbje/PB9ehr9y/WixGcUFbIzNbFFZ
         jYow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730099484; x=1730704284;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ULhAbr6+HaJtI9Ia2hfBJx7q7nYh/124R4mEk9Ita7U=;
        b=o2//n7Jg+kHt1cIJ6rGfgmZWdsVxzqTdZ2qhxtRkRNv5QeJvtJcK/kGXPZ2eeiloBW
         30Xeo+t9yR4kASJZt7Qei1UwJp5hb1mB47la4W7Pd0edrq4DuuZhINoUnA+SX0vm6Q3E
         jxtHB/rSdKVHH/iuzuI7XmO0gtshaxiD1QWXR4hnPiSSZvPUmejDtwM5BjzZUNQn2gtQ
         DlLrQ+WzCPNrvwQdzE7cL5DwfbJMZEoqsbbQOEi67HnFFsBy+gyzWKuYhLZ5N1zUtkFd
         EHBVbrlhgZKLtQC2tigssdx4Onb2i+MK4MuPAUaixnIj+ZmFeTV40+JPRCGMPMbtqald
         +bcw==
X-Forwarded-Encrypted: i=1; AJvYcCUQIogYuNABOgtELQ1Hn1ciQJTGKRpYMPeZMOjhWN+XE4rVTm3pEGxhyYVvkRr8UdnQaQ54SFXdkAZP@vger.kernel.org
X-Gm-Message-State: AOJu0YzTxRxcQ+m/g9GzJs+/2QjSEowPawff+MFtTjD7zYJs8Ife6yth
	E51Id7xcMWQAv2bzXiC2CbbWRS0OlmlpEfz9K994h9G6WrVaZjBe+Ji8jUWt6Y4=
X-Google-Smtp-Source: AGHT+IGbdENREQEKPa2RMHYjdoBxo4u7k9A3sGOl3vRkVI04r6XfieN6bxSDI1V5Rhnbmxtn43WARA==
X-Received: by 2002:a05:6512:3405:b0:539:fcb7:8d53 with SMTP id 2adb3069b0e04-53b34c5fa2cmr2771839e87.46.1730099483949;
        Mon, 28 Oct 2024 00:11:23 -0700 (PDT)
Received: from axelh-ThinkPad-T450s.home (lfbn-nic-1-251-169.w2-15.abo.wanadoo.fr. [2.15.94.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b3c236sm8615383f8f.35.2024.10.28.00.11.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 00:11:23 -0700 (PDT)
From: ahaslam@baylibre.com
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Axel Haslam <ahaslam@baylibre.com>
Subject: [PATCH 1/6] dt-bindings: iio: dac: ad5791: Add optional reset, clr and ldac gpios
Date: Mon, 28 Oct 2024 08:11:13 +0100
Message-Id: <20241028071118.699951-2-ahaslam@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028071118.699951-1-ahaslam@baylibre.com>
References: <20241028071118.699951-1-ahaslam@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Axel Haslam <ahaslam@baylibre.com>

Depending on board layout, the ad57xx may need control of reset, clear,
and ldac pins by the host driver. Add optional bindings for these gpios.

Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
---
 .../devicetree/bindings/iio/dac/adi,ad5791.yaml   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml
index c81285d84db7..fe664378c966 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml
@@ -31,6 +31,17 @@ properties:
       gain of two configuration.
     type: boolean
 
+  reset-gpios:
+    maxItems: 1
+
+  clear-gpios:
+    maxItems: 1
+
+  ldac-gpios:
+    description:
+      LDAC pin to be used as a hardware trigger to update the DAC channels.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -44,6 +55,7 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     spi {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -53,6 +65,9 @@ examples:
             reg = <0>;
             vss-supply = <&dac_vss>;
             vdd-supply = <&dac_vdd>;
+            reset-gpios = <&gpio_bd 16 GPIO_ACTIVE_LOW>;
+            clear-gpios = <&gpio_bd 17 GPIO_ACTIVE_LOW>;
+            ldac-gpios = <&gpio_bd 18 GPIO_ACTIVE_HIGH>;
         };
     };
 ...
-- 
2.34.1


