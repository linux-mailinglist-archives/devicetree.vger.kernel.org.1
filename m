Return-Path: <devicetree+bounces-72865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CABE8FD349
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:57:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 275322874B9
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72E1191499;
	Wed,  5 Jun 2024 16:56:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZK77r6Na"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282A7188CC7
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717606618; cv=none; b=qJK7kf6KXSOM0JMN7OUf5iKCeqFGRnRxFj/mim7tzkJ2qF9bcwzPhwYHw6DnBXthFscB22jPfZ94xTSs956YQl36SN9drz6qbP4ZvtFB09Wxv6+KjKfmWaLc2I3oTV0eiHPaoXgAfC8oix8Ux8YmGdkjEpGDC9iA4Hqix8JG2vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717606618; c=relaxed/simple;
	bh=5qMF4uBuJ8Ip1AMHaJyYMz8hLXxQs5EuH4BboueFRaQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EGrrzyVTomelOlW6k1JyFvINrjhhHStQOYHwyngy0SGFrqY/fCztSpePBZiQpiDFeUJc/cwR2ekflO9SCn95qbvdnAHpgoP0WJ3YNNdL5J18c5NKahJ+5rwpiM49SDm0cny3dquEN3sSWJ936hpjIm7ZZixnTarzOKGH4yG/LYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZK77r6Na; arc=none smtp.client-ip=209.85.219.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6b041fa2a54so6130196d6.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 09:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717606616; x=1718211416; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1lbZJPsUoa4XmTTYCaRxmeVDL2GHCmOmzNtYyrZpNQQ=;
        b=ZK77r6Na4rWvGpUjC80dIVagKXdwgCnYob6zpagwJstYsQNCJtWSPbsUb10dHxC0mK
         WE6QGYsaB5v6/LRegC3noloeojh5l9c9h55uy8goFX/+BOffMaVzN18esI9YlO6OnSS0
         itOJiX/ZVqJfpPo+eRPPfaf0WLz3rAm6y1iYtYBxm/lp4JdYQpNurHv80/E4Ptu3Mo45
         /0lzgv45ULDNr737L2dcTY0W2GznjA+GA3X9sX9qJmjDM3J5sXG5p4FjwvemkN1jv47g
         QRPz0d+7pXfJZXeOvMFS2RRsRV7/kZ54SMk+kRdouJQkAYJSLZQuyf7QDO0VzysM9DMJ
         m27A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717606616; x=1718211416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1lbZJPsUoa4XmTTYCaRxmeVDL2GHCmOmzNtYyrZpNQQ=;
        b=vBRbbAHF2MvqYmaOMvjkluBIqBH31gfH4jqef96XjvdL1ClyyNI5nGMn+wAuYQDNfX
         PhgdEZ4afVGJV1cAp9fUCzyRe9cb9JMm0iLWfOOWTB9QxPrfIYSnbK9jgLd23X0m3cik
         0xqixcQfews+Tab38EjqaM1OWUk60UgPzyKwJrShKCsbMwCtgm2Ilmu7CMW6WWxJnFXx
         2Zt3VZvE4ehYZade2YpBVewj2pASb04lIyMzINHCzfHFtSuD0xZZXt5G36Oqd57TbHZs
         iaJL6G6wxQ+YZMm4ZGpeO25k/U92y+x82kJTSTg1MC2yN6XiTKm/1/CveL/cot+ZEw+f
         Kqxw==
X-Forwarded-Encrypted: i=1; AJvYcCUBz/Aw4L7Tk3ZM9mYULBjO3Htg/myAIQ+zBYJos8VhERTCY558z3FkLwBqGdNO6vJ106hODkvWWTjyppxMr/gfzlqtxs8RVXNJJA==
X-Gm-Message-State: AOJu0YxvprgXXbMcw46kN1OEyK+8SeoIJJi66APHpVZbck1FmN1g9ZfK
	HUymc8e9bU6jAPwMP4JvzBWLrOlF6Y1Sq8T54CHpXIvw4WnGdTR5Ab8EO3z4qQ0=
X-Google-Smtp-Source: AGHT+IGTqMOIy03PkSG6J6j9dYkzBOKgHNptkE3fDF5UcoaLs0qlIDIRmWKM7B/yEsIATwRV/I5gMA==
X-Received: by 2002:a05:6214:469a:b0:6af:c1bf:701f with SMTP id 6a1803df08f44-6b030a5c1d6mr37986326d6.47.1717606615952;
        Wed, 05 Jun 2024 09:56:55 -0700 (PDT)
Received: from localhost.localdomain (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ae4a74d6fesm49187586d6.55.2024.06.05.09.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 09:56:55 -0700 (PDT)
From: tgamblin@baylibre.com
To: linux-pwm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	ukleinek@baylibre.com,
	ukleinek@kernel.org,
	michael.hennerich@analog.com,
	nuno.sa@analog.com,
	tgamblin@baylibre.com,
	dlechner@baylibre.com,
	devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 1/2 v6] dt-bindings: pwm: Add AXI PWM generator
Date: Wed,  5 Jun 2024 12:56:42 -0400
Message-ID: <20240605165644.3221716-2-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240605165644.3221716-1-tgamblin@baylibre.com>
References: <20240605165644.3221716-1-tgamblin@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Drew Fustini <dfustini@baylibre.com>

Add Analog Devices AXI PWM generator.

Link: https://analogdevicesinc.github.io/hdl/library/axi_pwm_gen/index.html
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Michael Hennerich <michael.hennerich@analog.com>
Acked-by: Nuno Sa <nuno.sa@analog.com>
Co-developed-by: Trevor Gamblin <tgamblin@baylibre.com>
Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
v6 changes:
* Update documentation link in commit message
* Make sure to include missing Acked-by lines from v4

v5 changes:
* Modify to list only the supported axi-pwmgen-2.00.a version

v4 changes: None (rebased, added maintainer's previous Reviewed-by)
v3 changes: None (rebased, added maintainer's previous Reviewed-by)

v2 changes:
* Address feedback for driver and device tree in v1:
  * Relocate "unevaluatedProperties" in device tree binding
  * Remove redundant "bindings for" in description
---
 .../bindings/pwm/adi,axi-pwmgen.yaml          | 48 +++++++++++++++++++
 MAINTAINERS                                   |  8 ++++
 2 files changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml

diff --git a/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
new file mode 100644
index 000000000000..ec6115d3796b
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/adi,axi-pwmgen.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AXI PWM generator
+
+maintainers:
+  - Michael Hennerich <Michael.Hennerich@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
+
+description:
+  The Analog Devices AXI PWM generator can generate PWM signals
+  with variable pulse width and period.
+
+  https://wiki.analog.com/resources/fpga/docs/axi_pwm_gen
+
+allOf:
+  - $ref: pwm.yaml#
+
+properties:
+  compatible:
+    const: adi,axi-pwmgen-2.00.a
+
+  reg:
+    maxItems: 1
+
+  "#pwm-cells":
+    const: 2
+
+  clocks:
+    maxItems: 1
+
+required:
+  - reg
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    pwm@44b00000 {
+       compatible = "adi,axi-pwmgen-2.00.a";
+       reg = <0x44b00000 0x1000>;
+       clocks = <&spi_clk>;
+       #pwm-cells = <2>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 85a32423e9ed..e3cb7465fcc2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3465,6 +3465,14 @@ W:	https://ez.analog.com/linux-software-drivers
 F:	Documentation/devicetree/bindings/spi/adi,axi-spi-engine.yaml
 F:	drivers/spi/spi-axi-spi-engine.c
 
+AXI PWM GENERATOR
+M:	Michael Hennerich <michael.hennerich@analog.com>
+M:	Nuno Sá <nuno.sa@analog.com>
+L:	linux-pwm@vger.kernel.org
+S:	Supported
+W:	https://ez.analog.com/linux-software-drivers
+F:	Documentation/devicetree/bindings/pwm/adi,axi-pwmgen.yaml
+
 AXXIA I2C CONTROLLER
 M:	Krzysztof Adamski <krzysztof.adamski@nokia.com>
 L:	linux-i2c@vger.kernel.org
-- 
2.45.1


