Return-Path: <devicetree+bounces-217610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52593B58747
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 00:16:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F39104C61AA
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 22:16:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45E14290DBB;
	Mon, 15 Sep 2025 22:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kymZGrUB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9741C2BF3F4
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 22:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757974585; cv=none; b=skULSFkHrXP92TjEXVMs1xvtGmto4ZGjEGTlPFmOzrFWJeR4njq8eSpM1JixwYLlpRu18MzcgjQKWSxvCnszDWE1geP3OlIU62ptFqR+40cZQqRAZA6aCKQOru5IpqlyuylVPY8Cc31FIYfr2Mo6VvNPW53AsxP8Cy0iiavhzY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757974585; c=relaxed/simple;
	bh=hpX78XC++o0j+xWq2Jzr6EDMABh8C89eS5YXWJolgno=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aqDPfy7OV8quMV6aNEyQeAXYH/NPUxi2Sh/uWpvU7PYerUKnRdI3GkO7kolYJn1pleskogpbV+hJ42qqBuayyUGz7F6qnbwjf6jnmfAuqF1VIlZwJkcSCad2vZ6rVvJe+xbvEXzW3y2S2ouJKmpB3TnzBZLS8NTNlNGjh4nfH/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kymZGrUB; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-261682fdfceso20311245ad.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 15:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757974583; x=1758579383; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWTSvkymFDJ58PuKfmx25iF7qZBCs4qky+oxZ7HnyxA=;
        b=kymZGrUByI/0gZAS1FAET2VtGy3zhs9348aSNfjmjHgtLM2LM9QpFrZ/ea/081jEu2
         p2EG3YTym8tmNxhKv8KuiBtWpGQwZQTuzZIv0tdm8OjK+T971dD6LEv+9APea0CQtISG
         c1dchvB+f3r7KtHx0a2iAf9Hu9HOVbjE4raSzGEK2pdB9U9pUW20e48eV99QNRsZ1Nvp
         9H/Q4zrdxfst5CoznmKlLgTkkymDNWHl+nLQozHwBjgh23JFOzE55WYPF052k2GRaUm2
         lSvaEv7x/u4xrNwh33TdsHcO9TJOC1oaIgM5QJHrbJ/nwYLhbyycimUNHXOssDjy8xa1
         yjyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757974583; x=1758579383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iWTSvkymFDJ58PuKfmx25iF7qZBCs4qky+oxZ7HnyxA=;
        b=G0jU6dMsaK2WSxQdEmRx40JZd9S1GmRnoqWlmIXQe8z3YERttFfIOeh0Tb7GtD0mW/
         frKZP8PtueJRGnmVGsWSJptTRjT5HJtJtGkl879P+U0EkIEKvsDLggY73iId4LaDqOlI
         sE+Nrp1a91bvFUQKvwd73BaL6eQVe2uy7S8qIupeDTQFnfHL/VyO6T/UyBVhvh+vLcg+
         pAnJHfO8P23QSUCdt8YlFs3psxQV+l+mItvVEifMwS878qN4aKoyi+LHWi/KO8AANSvm
         8aYv6E4OmvEACNLiWXYwrZIjVQ4/2jFxZykCYVestVxkobfdGk4lMw9ZFPnXFtXGPE8y
         nYBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUu0drsBqcP2KQw2Az1t28Jg84W3MT8BCQgVKdbhyojOIOeKTnOPyQQGC1LMmLxIYrvMLodFbV26RgG@vger.kernel.org
X-Gm-Message-State: AOJu0YwKZWBYQOFxOOuEqs6PaJJ/j43n9LIWfNGX9N51pLXTlwa7Mkp6
	0j/tATaXtdhvIhYXT6FxHBYxSzGAt/GzPKjOaosJdeJFc7X0Ec4cPg4g
X-Gm-Gg: ASbGncuq1+fef9154LxabanfTwrimRBJobHuzaQwC51J9w3n0+G8Qvou0aHxaX6yp+D
	b40uj0McmVPE7Wf0KDSE7eDFUq1g6i2Jk9Qs17UKD97jxnIBji17jhMDFcuFoiQZoKwr7HrlrRH
	l3slBzAWKREH/VVWlt5Ys9YnZXnTBn9H94LbyVboHTh/I4emjmqrC8zhtX2DQ996H15HbBvqCKx
	Slc57P8sqd2fA1PcTOKcfB9LSPoaS1yBhDQtaMDDe1MmyJJkqNLmYuIqk2r0YXDk9Bk432C+XCF
	bABld1Y6EaKR1cUjnCcz7oTEEAkhvT2WJ43vg1vrY1eQ8Fk0y5gco36BjuvbqvDdglBUtzCKkSI
	qx25F4yy7TGlq4gX2aiwOYwLPoYSqZ/V5KPCI3UB2t2ZshG1434ZRDShr
X-Google-Smtp-Source: AGHT+IEpPZDH3C5lkHQ4LKnSCWo3IzlU2aWyPsXl40hsAjZlmVjzAwFNuJzDMyNqCstC7XaR7jVJYg==
X-Received: by 2002:a17:903:1cd:b0:267:cdc1:83e with SMTP id d9443c01a7336-267d1604ad8mr814085ad.15.1757974582720;
        Mon, 15 Sep 2025 15:16:22 -0700 (PDT)
Received: from localhost.localdomain ([2804:7f5:b08b:d43e:6485:d878:c0c4:abbd])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32e4e8ece73sm4779330a91.24.2025.09.15.15.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 15:16:22 -0700 (PDT)
From: Marilene Andrade Garcia <marilene.agarcia@gmail.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Marilene Andrade Garcia <marilene.agarcia@gmail.com>,
	Kim Seer Paller <kimseer.paller@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
	Marcelo Schmitt <Marcelo.Schmitt@analog.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	Jonathan Santos <Jonathan.Santos@analog.com>,
	Dragos Bogdan <dragos.bogdan@analog.com>
Subject: [PATCH v11 1/3] dt-bindings: iio: adc: add max14001
Date: Mon, 15 Sep 2025 19:16:12 -0300
Message-Id: <30f33a64da0339eccc1474406afb2b1d02a0cd6b.1757971454.git.marilene.agarcia@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1757971454.git.marilene.agarcia@gmail.com>
References: <cover.1757971454.git.marilene.agarcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add device-tree documentation for MAX14001/MAX14002 ADCs.
The MAX14001/MAX14002 are isolated, single-channel analog-to-digital
converters with programmable voltage comparators and inrush current
control optimized for configurable binary input applications.

They share the same features, but in the MAX14001 the inrush trigger
threshold, current magnitude, and current duration are all programmable,
whereas in the MAX14002 these parameters are fixed.

Co-developed-by: Kim Seer Paller <kimseer.paller@analog.com>
Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
Signed-off-by: Marilene Andrade Garcia <marilene.agarcia@gmail.com>
---

I have addressed almost all of the comments, thank you very much for the 
review. I would like to highlight some of them:

Changes since v10:
- Changed the name to refin-supply.
- Added interrupt-names property.
- Added minItems in the interrupt property and shortened the descriptions.
- Added the fallback in the compatible property.

Change I was not able to do:
- Add the spi-lsb-first required property, even though I totally agree that
it needs to be used. However, the SPI controller that I am using does not
support SPI_LSB_FIRST, and this was leading to errors. Therefore, I suggest
keeping it without the property for now and using bitrev16 in the driver
code. As soon as I finish working on this driver, I intend to submit
patches to the SPI kernel code to handle bit reverse operation when the SPI
controller does not support it. Once that is integrated into the kernel, I
will update the driver code accordingly; I have left a TODO message in the
ADC driver code about it.

Notes:
Since v10, I have not used exactly the same approach as Kim did in v9, nor 
the same approach as in my v1. Instead, I merged both implementations, and 
this v11 is quite different from both. Therefore, I have dropped the review 
by Krzysztof Kozlowski. I am not very familiar with the kernel’s review 
process, should I add it back? Should I list your names as Reviewed-by? 
Thanks.

The MAX14001 and MAX14002 both have the COUT output pin and the FAULT
output pin, and work the same. I have decided to declare them as interrupts
because I think some action should be done when they are hit. However, the
implementation of these features is not present in the v11 driver code, as
it was not in v9. But I plan to submit it in the next steps.


 .../bindings/iio/adc/adi,max14001.yaml        | 87 +++++++++++++++++++
 MAINTAINERS                                   |  8 ++
 2 files changed, 95 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml b/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
new file mode 100644
index 000000000000..c61119b16cf5
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023-2025 Analog Devices Inc.
+# Copyright 2023 Kim Seer Paller
+# Copyright 2025 Marilene Andrade Garcia
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/adi,max14001.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices MAX14001-MAX14002 ADC
+
+maintainers:
+  - Kim Seer Paller <kimseer.paller@analog.com>
+  - Marilene Andrade Garcia <marilene.agarcia@gmail.com>
+
+description: |
+    Single channel 10 bit ADC with SPI interface.
+    Datasheet can be found here
+      https://www.analog.com/media/en/technical-documentation/data-sheets/MAX14001-MAX14002.pdf
+
+$ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: adi,max14002
+      - items:
+          - const: adi,max14001
+          - const: adi,max14002
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 5000000
+
+  vdd-supply:
+    description:
+      Isolated DC-DC power supply input voltage.
+
+  vddl-supply:
+    description:
+      Logic power supply.
+
+  refin-supply:
+    description:
+      ADC voltage reference supply.
+
+  interrupts:
+    minItems: 1
+    items:
+      - description: |
+          Asserts high when ADC readings exceed the upper threshold and low
+          when below the lower threshold. Must be connected to the COUT pin.
+      - description: |
+          Alert output that asserts low during a number of different error
+          conditions. The interrupt source must be attached to FAULT pin.
+
+  interrupt-names:
+    minItems: 1
+    items:
+      - const: cout
+      - const: fault
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - vddl-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      max14001: adc@0 {
+        compatible = "adi,max14001", "adi,max14002";
+        reg = <0>;
+        spi-max-frequency = <5000000>;
+        vdd-supply = <&vdd>;
+        vddl-supply = <&vddl>;
+      };
+    };
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index d53a536288ca..0bae420caa63 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14991,6 +14991,14 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/max9860.txt
 F:	sound/soc/codecs/max9860.*
 
+MAX14001/MAX14002 IIO ADC DRIVER
+M:	Kim Seer Paller <kimseer.paller@analog.com>
+M:	Marilene Andrade Garcia <marilene.agarcia@gmail.com>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+W:	https://ez.analog.com/linux-software-drivers
+F:	Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
+
 MAXBOTIX ULTRASONIC RANGER IIO DRIVER
 M:	Andreas Klinger <ak@it-klinger.de>
 L:	linux-iio@vger.kernel.org
-- 
2.34.1


