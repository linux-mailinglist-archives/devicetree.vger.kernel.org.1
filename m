Return-Path: <devicetree+bounces-47770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB34786E765
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 18:35:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6941C1F2AC44
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 17:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E1753AC14;
	Fri,  1 Mar 2024 17:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="J+yiRCQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817F527471
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 17:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709314434; cv=none; b=Nbect3Jvt1ravlQWN9tMBfnfujdvzZxqThbVPiLLjWD6w8/cTpjFeNpwFy8Ce+no5oIp3jygcvvW89Sy/NHofW9k089QRx/oB28Nwc1q60YL8tXyVSC1s+Ee2IUqB+qh2BcaD0YsLaoOuN+/ywdv6NCnut0P3pIe2dgr8reaa5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709314434; c=relaxed/simple;
	bh=eDOV5VADLuhmamPXiau7MIQpJJpDlwx0jJbL6ICaRbI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n6/7W7H50tscX3QjHz8yak9LO4I4hTsl9J6wUmahn5SA9UuHJJxeAZ9kSNBdwbouUYTULWgMj75Hz33GX0oreqZO1mlStI89/9d5MsVlApL/ig8S3R/ODyj8pN7M2cOf/9fo8Jf1bYdtlMyCnYqeOn1JHJBiXqwmHuvtvDE6bCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=J+yiRCQ2; arc=none smtp.client-ip=209.85.160.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-42e67ee5b48so9939271cf.1
        for <devicetree@vger.kernel.org>; Fri, 01 Mar 2024 09:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709314430; x=1709919230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Juxbg18xJZd3rHji4DzaLEBNbibnqPm40zLT2aT7p/M=;
        b=J+yiRCQ2pcVTs6/X7YBTp6BoBm6drIz+d8f0JiiF3//NieXNQLkZfg5h4PNeqUb/BI
         ikQ7gHgZY7V5KIz9Ip3+hZk02MSMkQwAOXtzn927KA8aD9vMs77RUv/BDdcTklwo+Mdb
         WpX24fNU97E3fsFmFgDnRHAnqv6LuNsbF4AFiNdhL9OyBSNi5/I99YU1K0HCP3nj8V4Y
         C4VWw/LLDTAVH9dIaiS20s7aQXR18Co0N0jQ08VhFad8LRApmhjGzl5u5Bi+GgYTjKvl
         F+HqKbFzaubhCiFYzGwyTBv71NE75ak6f07VkxnGv7zf9YJmLbTuxWbmboKKp9ONIkyo
         QhyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709314430; x=1709919230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Juxbg18xJZd3rHji4DzaLEBNbibnqPm40zLT2aT7p/M=;
        b=jved/+QnR7PEQdJ05C2J4umC370hXI8WOQCgB33e1G259HXAE+zlIGIgDzfb1kDshS
         QemZll45XsI5izGvb7INmWBTKHdhGrKAhx6CmqvpDau/Mw3lDcyg1a0qgTWFL+Uep4nS
         B05udQmgDrN/3nmlQz/tJmPtyuVqV0AQvfGspUP5b2VhVRUJoBpeLCNBRyDCDXZxWPF2
         igm1V13zhbpwmi0tePLxGbFK2UHc7nCBZg0w36pdJfiIPCHRAF/aP2WM7qL2el1adetH
         qoSNQ4XoOUW1L4Q8CsfNjjyPe5t+bVthCMoHe2NgSmbciThGOx/C+MaMxMck5gVXNsqC
         2zWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWG2lZ32mNLQAuhgbTwt+xqSMJxOy1XRSja6CMWK3ub4kORibGZiQpIitFFNIfOJnTRPBHpUqnUBH2L2/sWjNwVX3ky+zImQQtPzg==
X-Gm-Message-State: AOJu0YyNiyM366f406j54bSprU1XZR2+1+XVk2AE7vnwzMAHWPYh607w
	EtKwwULFuhDo+v1qvcmDavyd/BAORb88UL+Nd/wQ6ucVkUN2fQhOLJL58CQatHU=
X-Google-Smtp-Source: AGHT+IGB19uIFHvCCyYMV82pyo7ziPJ0KeqFUF1gDDCITNbAmrjmgyaYjdIIyS2Fc2u7sEwUsMKpWw==
X-Received: by 2002:a05:622a:19a2:b0:42e:c411:8f6c with SMTP id u34-20020a05622a19a200b0042ec4118f6cmr2477322qtc.44.1709314430435;
        Fri, 01 Mar 2024 09:33:50 -0800 (PST)
Received: from workbox.oryx-coho.ts.net (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id t14-20020ac86a0e000000b0042e6b901ebesm1885433qtr.40.2024.03.01.09.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Mar 2024 09:33:50 -0800 (PST)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: linux-pwm@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	u.kleine-koenig@pengutronix.de,
	michael.hennerich@analog.com,
	nuno.sa@analog.com,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	tgamblin@baylibre.com,
	dlechner@baylibre.com,
	Drew Fustini <dfustini@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2 v4] dt-bindings: pwm: Add AXI PWM generator
Date: Fri,  1 Mar 2024 12:33:41 -0500
Message-ID: <20240301173343.1086332-2-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240301173343.1086332-1-tgamblin@baylibre.com>
References: <20240301173343.1086332-1-tgamblin@baylibre.com>
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

Link: https://wiki.analog.com/resources/fpga/docs/axi_pwm_gen
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Co-developed-by: Trevor Gamblin <tgamblin@baylibre.com>
Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
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
index 000000000000..63461920a362
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
+    const: adi,axi-pwmgen-1.00.a
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
+       compatible = "adi,axi-pwmgen-1.00.a";
+       reg = <0x44b00000 0x1000>;
+       clocks = <&spi_clk>;
+       #pwm-cells = <2>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 8d1052fa6a69..8a4ed5545680 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3431,6 +3431,14 @@ W:	https://ez.analog.com/linux-software-drivers
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
2.43.2


