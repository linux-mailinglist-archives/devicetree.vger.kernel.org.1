Return-Path: <devicetree+bounces-248374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DE0CD1FAF
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 22:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7CE6F303F5F8
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 21:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8519F346A08;
	Fri, 19 Dec 2025 21:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VZwytgSd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858E3446C9
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 21:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766180016; cv=none; b=HCjOWo9uPXcRyNvS2+cKYVviye+EMhvpfOoB/Xb4QitWGzrTfJYHMRUfFIZUdaDBy8RgG/4ndrxAmBQThewTCruZbcvnLn7Jr8uNF0Dd7oSpzXIa0QJeslZtYxPrz5+vP2aOHNdFZIMrHeGVjqDdQU3LvUnSkB8YX47P8ZPbrCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766180016; c=relaxed/simple;
	bh=HF+bpVOoavKKEiID/RQ+Z83xMg2SKTxpfDjYlJ/W1Xc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rcTh340C432+sOYEfiO9HR5QiUl1p4j5jn7Jm3q57ifuobXtn1NY5xIGIhYUC6CiPTrKt06+W3WPY7ahXd+c/4K8w0M4iC4fK9Oa1Dqux5Le1c+kDKbsFGpHOPXqk8RLz210VkDc09rZTMP6AIUUsgJWlPV3SpwlfmDyyqpsfKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VZwytgSd; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7caf5314847so1438486a34.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1766180012; x=1766784812; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ne4Oc3piCV35xap5V5Dxt0Rd9if75XR+emO/qCvC+Q0=;
        b=VZwytgSdqbdqi4fWcqWhvq5PMxlklNBPWvGygLp/ifYE+VwqNxgdoKWsMe0LRjvNH3
         6mfx5OOCTK4/qE17vMnHKo/d1c4EsmjeyfWI/z6a6kQ+Un+qDOuWbY7aHj2R1h7b+UR4
         uwUt3LUL/wirEHw3r4fcnHEQamzp/Q5fsKSKpV7g4i8xhK1khsYYEYIOA4RHAnUx8jub
         rM3hbOslOL9XHas6Hxg52G8XfTBlSRGIKQIOKHBOPA0EZL/CRLIptK8diwnmomMVMfZx
         XnXXBXmEBrprRlcyVSXE8PPIAlikkM1GZ3XED2y4BN7BQ3+uB/IkJwBc8lE63Zpf4Vfx
         L5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766180012; x=1766784812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ne4Oc3piCV35xap5V5Dxt0Rd9if75XR+emO/qCvC+Q0=;
        b=V0jV3bCzrT4G3Kf7jsh8m/g9zrIRsWzRE5DS0EnMS/yI26SRhWNA8wdWijYELlXSAi
         6jKG5lvq8561GdGonMA+yNk44o2udbC7X34xUrCwfn5nDP7bzfRa57mtYNf12LGFn6l4
         FhOqQs0ZXiCgOY/AcKOSMXgt5wVHkhTtBv2iQUSfT/hU+llKDpNNuyzq1vkicjOQkIhz
         DzIDmmK8RR4i2tWK4iVyfhqFGYQ91ee70MbakJB46Jk0hvgya5OZg1oyEqkGi+z2o2Bb
         5ng6lKuJFWvvxTTRC211gyl30bWf1BlwVFAUFRuDWNGO7RDWhhODi+T+/9YU5Pe90Pqp
         QcNA==
X-Forwarded-Encrypted: i=1; AJvYcCWHWJkYDM2bri+xa7b9Jt8cn/C13FFjgfK2FwBlG2VXPnNbMVadhefYn3hBx5hlGD2pYXq8HuzLtvDx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz33BUL3g7TuUgvzETg5OGoJ+K8PwS9HW61vdeW9paarHlQiCWo
	zPoZJ/zzbpVJspvxt6mF8liFsvtDTFR1QyfSkWcrrLG2wSw8Y3MRXhGEqSPRe6O30zg=
X-Gm-Gg: AY/fxX77qdXJZTAjQFpv7Jnbqdfzx6+K8XgkO5lADdYToR3sTpiUS1m2yhMDTnVPt45
	egqxaO8K7zENh7Y7zzAPSoSmkC025qvntSdgzqcuA1PQglFku9WZJlnimVzc43ni+kRzLqSXpqG
	0cgSHyB4FfsISRfrfai5Zf3xqr+al9SvkN6mrSR6hthBOCsB4P9OJm+ZZ9ZMQpU6E1w4qrNz+QX
	MixOFDHrrhCxxblLQ43oXueGeuPWHkY+J0ISr/XzUul7fz3rij1XX28wRKKEAvaY+fRmHCnKV/A
	itHGDMA0g0cd4hD3hi4iaj0+DAb14Aa02SyF1+7L9rjhCnQ2KGkspqoLS5DHqPUISbBK8+Cu7+h
	FkUspw/3cuzjeCTBJHr9CltF0zKURnrynUNwWmNrdeXIqt9xqFDZ18MxGURH/fPA01pLdEPA/v3
	68ipT1coaMsfFAEQ==
X-Google-Smtp-Source: AGHT+IE2okvpXZy3o6zspy8E6CK06vVwfK3mCEFz5O+h1kF5N8ELNZpYKpcp/La4JjKRWaZGwXF+SQ==
X-Received: by 2002:a05:6830:61cd:b0:7c7:68d8:f702 with SMTP id 46e09a7af769-7cc66a1dba8mr2393869a34.9.1766180011918;
        Fri, 19 Dec 2025 13:33:31 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:9b20:bac4:9680:435])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc667563ffsm2485045a34.13.2025.12.19.13.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 13:33:31 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 19 Dec 2025 15:32:12 -0600
Subject: [PATCH v4 4/9] spi: add multi_lane_mode field to struct
 spi_transfer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251219-spi-add-multi-bus-support-v4-4-145dc5204cd8@baylibre.com>
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
In-Reply-To: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marcelo Schmitt <marcelo.schmitt@analog.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2028; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=HF+bpVOoavKKEiID/RQ+Z83xMg2SKTxpfDjYlJ/W1Xc=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpRcR+63tdWe3Dq3SfvXY3D0UkrPjsmJVZFWlyp
 BqDw/0tCMmJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaUXEfgAKCRDCzCAB/wGP
 wOGIB/9gDadU5FGpX/q+RfD4+syl1wJV6/ulWqJD9resnhlPcBddMNNewxrCTlQzqHoDNEykqXP
 UUmVd5SACUC3AZSssyZBsslhEQocLCVAa3iva4W3O2+/h1GT4ya9ybBeBIc7w8LDWNDD/zmRrbZ
 s/lWNOWZzX9JGe4N5XjlJrKkB0HeNOix8mXpwsV/CpU8dsu/P6+swv1W00XnXbO+jiefVDge8cw
 fbpCdq5O3mqVDt9g1PJtEybbNEwtYCHG+39/nwgeLReOx0c0viMXFax17jLzpvGsudDcrFzG22g
 8jIJFdxSFmnsx2yObmQfVg/DjuB43howiLEr3a5CzYwxfuPG
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Add a new multi_lane_mode field to struct spi_transfer to allow
peripherals that support multiple SPI lanes to be used with a single
SPI controller.

This requires both the peripheral and the controller to have multiple
serializers connected to separate data lanes. It could also be used with
a single controller and multiple peripherals that are functioning as a
single logical device (similar to parallel memories).

Acked-by: Nuno Sá <nuno.sa@analog.com>
Acked-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v4 changes:
* Shortened commit message (useful info will be in docs instead).
* Added whitespace to create clear grouping of macros and the field.

v3 changes:
* Renamed "buses" to "lanes" to reflect devicetree property name change.
---
 include/linux/spi/spi.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 7aff60ab257e..eba7ae8466ac 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -981,6 +981,8 @@ struct spi_res {
  *      (SPI_NBITS_SINGLE) is used.
  * @rx_nbits: number of bits used for reading. If 0 the default
  *      (SPI_NBITS_SINGLE) is used.
+ * @multi_lane_mode: How to serialize data on multiple lanes. One of the
+ *      SPI_MULTI_LANE_MODE_* values.
  * @len: size of rx and tx buffers (in bytes)
  * @speed_hz: Select a speed other than the device default for this
  *      transfer. If 0 the default (from @spi_device) is used.
@@ -1117,6 +1119,12 @@ struct spi_transfer {
 	unsigned	cs_change:1;
 	unsigned	tx_nbits:4;
 	unsigned	rx_nbits:4;
+
+#define SPI_MULTI_LANE_MODE_SINGLE	0 /* only use single lane */
+#define SPI_MULTI_LANE_MODE_STRIPE	1 /* one data word per lane */
+#define SPI_MULTI_LANE_MODE_MIRROR	2 /* same word sent on all lanes */
+	unsigned	multi_lane_mode: 2;
+
 	unsigned	timestamped:1;
 	bool		dtr_mode;
 #define	SPI_NBITS_SINGLE	0x01 /* 1-bit transfer */

-- 
2.43.0


