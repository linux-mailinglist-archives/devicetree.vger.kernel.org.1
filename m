Return-Path: <devicetree+bounces-217196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CD8B56FFD
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 08:02:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8291B18993ED
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 06:02:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7072E277CBD;
	Mon, 15 Sep 2025 06:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H4Ieyqrl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941AD13AD38
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757916124; cv=none; b=uDVUj8JrnPBAW4tjK8qh1A91vQ9ZDGWH/EPu+J3xun3q6EjlXzAbUZXwOLtqBuenqE4nVSVCK8cZ0NsYjd7sHAocEsizNrwHPYG65OtHZXK1ngv4OE3Ee/Cm8jkcjVdp2wgYKl0ygtRF1o7c/xykJgOxOgGMEMTmxCDneYkPXHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757916124; c=relaxed/simple;
	bh=H86OdhgTHF+sXtUDW7aUQJv0MWH5MWu/K9PkO+/x6d8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=j2RTrEThwrSD0OFT5MtIcaO6rdKCYp/Cv1DlNCmUHiSPS/MHZdgOcFxH38KwQzh00qRB83Gv2KcLgmn1F7iWOEWlyCltqb0wSYRTQozGYeq/ZraDWpK+x5zi4/XPLfGKcuBQFb+nWMJAK/6eXPqUtiJ4yjXEiGllsHmxjEvgsAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H4Ieyqrl; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55f78e3cdf9so4334681e87.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 23:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757916121; x=1758520921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3GAzaDQKIDLrSVL1wcySzyvMJnY8KNZJxvSnSoEULDg=;
        b=H4IeyqrlEP1w9hYzZpidqEX0G58A4F45FJWvMaaKXeTHIoAurn6qEprL0dh4Qh1wb3
         Tdco/8EvWBKMJfPGm+b09OCeSyN+D7sDvLlB7bU38XqkkWATlM5rRCM3xHKPc5ClBa5E
         SXiavKNbHMAXcScYqhJdpdLZMztSnttor9ut+8VFUJxOVDYx+8BFE1crZsJ0lxG00CEm
         zJ7oZfYwiCHLg6EvZIV4WOjFGm3TFrB6jTlfAFOgwkc8mGa8vhO4rsp8+SAve7BC2bbE
         K3oHQy0QLMrD6tN/q6rpzqHyIBclI6sq50VX4orayK3Nvli9clMI1SMV5fRhUsvubVfd
         2LkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757916121; x=1758520921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3GAzaDQKIDLrSVL1wcySzyvMJnY8KNZJxvSnSoEULDg=;
        b=QPKmYj0Em/1j6GHbsIM8yg2Yqjzy92SErUD4fVxGjwb7UT5Mk6uJDWBBgRUpnVV6Ad
         awdUFAv0AbPpFrLiwYN5lRabJ4+fsSvtpE5KUOr1YuN8zlpgk2zTjEJlHdUx3Mn9mvog
         lF++qT+WqROyKQQgefKIeeIt/SBp9/TZPF+/OG1nry6302HyOevgVo7TBoqX2Bok3Iow
         oJ4P5IlES7TEicG6xG0tdXxVtM11IpXWd8AcHHAoK6tcT9gmz+HfFttrXb5i5baaHUeL
         l7Ks6z8JBUHn4rzSjZwnC7yCZv3J2wwxtNhH/q6Kf2WQ5UhyO7Q7GIY4zz4BZP3u6oP1
         HK2g==
X-Forwarded-Encrypted: i=1; AJvYcCVJUd0UJUC6Q2ZtSwpzmpbkdE8X5fZRDmQ89qrcZqdYKrSmqd5cdrtjGzZyqCtipMh1VM7VJTY32Zcd@vger.kernel.org
X-Gm-Message-State: AOJu0YwfEPUMHIISPK7pq6uogZCi7AcoTPPfcsjrfflErXOwX1NXeecs
	9WP5yTcfihsfxv0MrvCzJCIq1nIhUs4/NKTCZKG5kvi897Myq8zMDB/j
X-Gm-Gg: ASbGncueepiswoyCQ6sXdT8An9aYCvJR532hTVKMHgg5Kd5s+8cV+4+SZgqW4rhVTb0
	c4xmLqQLefQkNLH2TtAovJHAOONpbzN+jjT3oq1Dx/4XecyLwU/n/embKMfIdFjfQDEZeit3e2t
	Mitn1nz5UgAby8LsAwGTDm56SdbH+ovW79dpAWePLiVXgZDmprEeHVs2TNSm+okg409GHKV/eL6
	5zcA/MdbvnPjwH7fn5rvh60/KWifCNAcTXESEfhpaFTyD6jQimRu68Jsbsk6lvp1J06lz1sqEIP
	XcSi/787sRDOpQ00QQl3d6ZLZlsU0OHRh4wIicyHPXaVZMy59xl06vRj07l/x3JjDXtZ9B43dTY
	+/alSzCFoqG+x3w==
X-Google-Smtp-Source: AGHT+IH/1syhnxH2MgON3fBQYZRWQzr7rl4FW7/6FJ9ZvlyxiPfGztFWjjW5t/Xc1eUHZDZ7Yq0H2Q==
X-Received: by 2002:a05:6512:32c6:b0:55f:5245:d695 with SMTP id 2adb3069b0e04-57048bea410mr3293682e87.10.1757916120363;
        Sun, 14 Sep 2025 23:02:00 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571d16e79d0sm2062214e87.86.2025.09.14.23.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 23:02:00 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	=?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>
Cc: linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: i2c: Document GPIO detected hot-plugged I2C bus
Date: Mon, 15 Sep 2025 09:01:37 +0300
Message-ID: <20250915060141.12540-2-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250915060141.12540-1-clamor95@gmail.com>
References: <20250915060141.12540-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Schema describes hardware configuration that uses a GPIO signal to
determine the bus's presence and state, allowing the system to dynamically
configure I2C devices as they are plugged in or removed.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../bindings/i2c/i2c-hotplug-gpio.yaml        | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml b/Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml
new file mode 100644
index 000000000000..d1d5d830c91b
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/i2c-hotplug-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: GPIO detected hot-plugged I2C bus
+
+maintainers:
+  - Michał Mirosław <mirq-linux@rere.qmqm.pl>
+  - Svyatoslav Ryhel <clamor95@gmail.com>
+
+description: An I2C bus, where some devices on the bus are hot-pluggable
+  and their presence is indicated by GPIO line.
+
+properties:
+  compatible:
+    const: i2c-hotplug-gpio
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  interrupts:
+    maxItems: 1
+
+  detect-gpios:
+    description: usually the same GPIO used as an interrupt. In the active
+      state should indicate that detachable devices are plugged in.
+    maxItems: 1
+
+  i2c-parent:
+    maxItems: 1
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+  - interrupts
+  - detect-gpios
+  - i2c-parent
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c-dock {
+        compatible = "i2c-hotplug-gpio";
+
+        interrupt-parent = <&gpio>;
+        interrupts = <164 IRQ_TYPE_EDGE_BOTH>;
+
+        detect-gpios = <&gpio 164 GPIO_ACTIVE_LOW>;
+
+        i2c-parent = <&gen2_i2c>;
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+    };
+...
-- 
2.48.1


