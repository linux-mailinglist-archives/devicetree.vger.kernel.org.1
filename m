Return-Path: <devicetree+bounces-84679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F109892D1E3
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 14:48:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17CDE1C22D95
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 12:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FE7F1922FC;
	Wed, 10 Jul 2024 12:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="eaQyk7/G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53076190485
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720615705; cv=none; b=lrEYrt3H7OofeUE0T37xaJKmvQYzG7HA0/pbmWaPOeD3VhjFkHgHQQHWzfZh3vx76KUzjz7wZDhdpYyR1NNVp11InlbpgEQUQmJmz+B9mIUlPZOXlxL7ep06T7EnAIRjDUR+ofFUTXZhK728apTQnJQK7uBRTtmK2KUUjTCnofw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720615705; c=relaxed/simple;
	bh=NdOKaSGjhvKAYDpt/p2namLAiALrG/ABzzRdAk6ww4Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HZ59sSbKh1sq9uX8BDDevwZF1BJF/LicnKidTFxt3/8YqVr7chdeMi3URELTikkmEVWEAmnts+Te2xFJd9NYfeyFe/wjmP0eD/xWalvc7PNTlb2HiQRuvXIUZ4CryQdrEWuxH8gEXhe/2OQiDTPZIsDLtWZ5aEboaQ2S8i3fSW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=eaQyk7/G; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52ea2f58448so8075056e87.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 05:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1720615701; x=1721220501; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KDQFOXgVRKVESGfm8vsweSXRz8FIm/2qsguajecu1tM=;
        b=eaQyk7/GE2CUpWIFfnxFmy5qkcinIPCBtDX7HDbWteiR00gjby5iNlaTQu16s6XiMR
         ADxQvOf5K4fB4WVa8sr/k5rpZHUwgk1g+C8i5yzQMaiUYi5UOS7QG+wkjSIJzBJeYrbl
         c34YnfEc6xH2SwPAGPd9fwFrVL0xlVc6e966GgoRIYAafkOvVEIzsIjCBOGNwDwC0CGI
         LFdCzIAhsXCZl0/zU2XN0dDBoqkdzRTLED9/7dmq21GHOR71VANh7h6ea72HXHhUAZHO
         EoYmP82UDI8PwNyTItK1BM58hsjdDd4G5SCOL55OqUpu/lbtNJFPJg9a8y6a87EYP6Nb
         yklQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720615701; x=1721220501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KDQFOXgVRKVESGfm8vsweSXRz8FIm/2qsguajecu1tM=;
        b=GUjyciGu8Aw//DQgTaRcq27gjwNp2ITADkZbWOkNXSCOO/ngY6GG9tKVG9raM6cayn
         rv5nNdDIwKAPFmT7CswZMcfsCpMCNKL3looBk9DU6rYfmkT9w1AeTMvZmfPGg1st72S/
         xAPheSMBJ0OogOQeCjXpreFcxj3muMnj/OyW8pMA4NoeDw+38UKiW818vAkMAH4H3rFu
         FfUABK0UsTcCpHwIgW8YBykmlT7hjg3BQo4zpTh9iQYwuBJUgiii9srmzvXpxrKCGmEq
         +2KGoJkHagFNO5wBcp/tKTvThRxn6K94VDcfUn9RqRGf0Wcx3YhkaAH99xiXG7sg9A9v
         /+qQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoS9QD08lhgMQxPrDSnCTxO/f+gy+Wa3opVETyCTIKzYFKLQTkd2tpHpqGpP5VYr/OxY5YkxOM7T3ekPgl8Yr4VULuSbFZFbKvIQ==
X-Gm-Message-State: AOJu0YzLCgZRfgw9/uW7h/y4O5uIfLPKYJLi8iA3yKM8N3yzbGR4UoSA
	5XDiw5aza7mze8/qb9mq6cKQS5/uj6pCvC/vrsImtTI3kuinDKdrdimE4Htx6xg=
X-Google-Smtp-Source: AGHT+IHJIpKmKIw7/It2lULgQJGc7semykydMo5vQtM7+a77JfG6LHWTRNNvRkaygXwlJAvSq+MbjQ==
X-Received: by 2002:a05:6512:3053:b0:52c:dea8:7ca0 with SMTP id 2adb3069b0e04-52eb99cafb4mr4014217e87.55.1720615701242;
        Wed, 10 Jul 2024 05:48:21 -0700 (PDT)
Received: from carbon.local (aztw-29-b2-v4wan-166913-cust1764.vm26.cable.virginm.net. [82.37.38.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266ac156easm118051395e9.38.2024.07.10.05.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 05:48:20 -0700 (PDT)
From: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
Date: Wed, 10 Jul 2024 13:48:02 +0100
Subject: [PATCH v2 1/2] dt-bindings: iio: humidity: add ENS21x sensor
 family
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240710-ens21x-v2-1-a37c22018b0c@thegoodpenguin.co.uk>
References: <20240710-ens21x-v2-0-a37c22018b0c@thegoodpenguin.co.uk>
In-Reply-To: <20240710-ens21x-v2-0-a37c22018b0c@thegoodpenguin.co.uk>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720615699; l=1852;
 i=jfelmeden@thegoodpenguin.co.uk; s=20240709; h=from:subject:message-id;
 bh=NdOKaSGjhvKAYDpt/p2namLAiALrG/ABzzRdAk6ww4Q=;
 b=bGLADDCAZL7EzZeBHR9r/i67msfcFs4YRmqUh0udVMkNTMkGIHXVVTAdR+jhmnnijA8lGrdgT
 e2bJe2DpolmDSpElO/qdb5tVDnTOsBt9Iejdhd3Kh2FLQk6z6K29puW
X-Developer-Key: i=jfelmeden@thegoodpenguin.co.uk; a=ed25519;
 pk=tePkZ5iJ3ejQ2O3vjhsj7GrLYcyJN1o1sMT3IEXvKo0=

Add device tree documentation for ENS21x family of temperature and
humidity sensors

Signed-off-by: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
---
 .../bindings/iio/humidity/sciosense,ens21x.yaml    | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/humidity/sciosense,ens21x.yaml b/Documentation/devicetree/bindings/iio/humidity/sciosense,ens21x.yaml
new file mode 100644
index 000000000000..92e018313fe6
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/humidity/sciosense,ens21x.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/humidity/sciosense,ens21x.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ScioSense ENS21x temperature and humidity sensor
+
+maintainers:
+  - Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
+
+description: |
+  Temperature and Humidity sensor.
+
+  Datasheet:
+    https://www.sciosense.com/wp-content/uploads/2024/04/ENS21x-Datasheet.pdf
+    https://www.sciosense.com/wp-content/uploads/2023/12/ENS210-Datasheet.pdf
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - sciosense,ens210a
+          - sciosense,ens211
+          - sciosense,ens212
+          - sciosense,ens213a
+          - sciosense,ens215
+        - const: sciosense,ens210
+      - const: sciosense,ens210
+
+  reg:
+    maxItems: 1
+
+  vdd-supply: true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+       #address-cells = <1>;
+       #size-cells = <0>;
+
+       temperature-sensor@43 {
+           compatible = "sciosense,ens210";
+           reg = <0x43>;
+       };
+    };
+...
+

-- 
2.39.2


