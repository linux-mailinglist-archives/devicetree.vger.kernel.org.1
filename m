Return-Path: <devicetree+bounces-264596-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMkFH9MIjGl7fAAAu9opvQ
	(envelope-from <devicetree+bounces-264596-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:42:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D011213CB
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A5623045C03
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 04:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACD59354AC0;
	Wed, 11 Feb 2026 04:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P8WzXhdS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676F73542CB
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 04:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770784971; cv=none; b=t5Mx/3I4HvFnfz69klUiNPS9z8411JGMvsKHf6CLYWXV2PCfK4Tn0mgPQ0NFTCmZ+QX+m7K5fmv85YY20ykZYq5qOMCmoGa59uSu9frWycyKvwlu8aGqXU/QhHW8PaD/18Hka8/F2IzazHlvh3Kbq5MVr57hhwBgyMoO+BJT5l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770784971; c=relaxed/simple;
	bh=pQeaDOzPamoeAF5ooQECreYyUnj19b18eNZDNf80rdY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AtOxpEaYvad2Hlv4hddsxC1+2IPX/AHtCRAqe3b0xzaoL1uJubPKTEzS4qnVjuEzG2hG+f07TYEVhLCBSH9Rq0GzsqKenqMVxi7TfzF/ZTpz734ROEKiXotHnHkhVhNcUg+sbLe9IgnMtVmQem5cPOvsTBUX+ub5nH5tHvG3vvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P8WzXhdS; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-40438380b88so1013966fac.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 20:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770784969; x=1771389769; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/9Z7oU+P7jRFZrLVuDGug2HJhb2WxlffNp9qdHif4WU=;
        b=P8WzXhdSNrCtQvg2wJwKfg9ksjHo0lM5YgzkQcCIhEBkk7swVEaCirvULCQPW07C7+
         hoN0wgJiCAOYJMKNjuGxTrA3tGpZaltI5zypP85OYBp0u9LGx1fK9II82R5YHkNqcF91
         GC3ebT3jaESWD5MXIaIkSXwnDptaY3xbXvtnh5D+ogmmYExrHQbYoE2/Pc0JMOzpoavs
         0v2r1WcFQodziStJpaDXbipX7tbEbN8UjCx2YPQRVsxBKhy1Rp2K60KnglDSX4VEAZnJ
         gR8Ko8oJfOHElCnZKLXyEpQb3KmpG3YvL4WI2FIAGDH/K1qqEWLKPDZ4AyzVFLpyJo0t
         H8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770784969; x=1771389769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/9Z7oU+P7jRFZrLVuDGug2HJhb2WxlffNp9qdHif4WU=;
        b=afYqsFDQuouUgg7UPWmIT9VZ+laAmWVaEl1av7HIDjVVhzB0dNJ06VfQkUmkq6T5Vg
         uJq7EmQOvjd9aGkNb9Yq7nsR05GjMaqobK8SZbjU29fnr9lqs2xydiHt4x5ZqvgwtNti
         WpMlcZGqRQPCirm2/Z9ng8KEnn0rx5aOlo3hnD70l2VkhuS6zjVtrmkx2CEWZnLUAdBX
         P22xLYAH31GkHPzApvnYm8eb6RUbcRD4JARLBKsLjUty/X+I27rpXh/Qg+1yeOyuGWiH
         D8Cla5bHEKV8Evd9tyML2KCnlJySMCQJxETCQQ4ISFNG3oVGVvbZGRv4TorJJLrJGoov
         JeEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNS6/TpYZpbYz6Vg12OSf1/kWYN6SE7ucdNfyJA7+I0Xb0PUApF4r/ABe2cL2UoGixFBOywooduOkN@vger.kernel.org
X-Gm-Message-State: AOJu0YzcxDRUvPBmeUipVqw3x0f6hg6WYIhN1ncPmKPbvzp0SjEM1C2e
	+UpEujeCoYFd314KyIJRIViG9OGiEs3mym7UfNvJ0pe3gVEzY2cn3YZs
X-Gm-Gg: AZuq6aIJyKTmYCh1ym4hVltM63+j8d2KiZVExRn9HLWC73T8qVq3z/bn4aKPZQKQRLJ
	vyXZuxrj/OZ2wQ8437GpWol0G+I73ye4rqzTpF/q0eybDtVdgAnwOqPxoxM/L/85y7wUmSjdpF0
	6AjAVYKZu+Due/nO+FvnQJKFjnJDcTkFXpWot+7Wnt+c2rZQm3dCIgHZdULz5vtix8w60NK/V/e
	GKPbho4rYJ6eYsbvkDhVoIHDkz3PjWDmayEAPle0acQ9PY+F+xfD8ZuJLim4UUPunlIxGzNdqBO
	Q19R0B2wu3PE/54zyHsYkhzREO1RhVeGzAGps/IMZhPWUxONNlgUxhAnlE7c5yVfMfF7atogZBY
	0JD3D6nbHb35yosfPw/7qFpVkYBz+VTy5TBWG95hXd5DP2op1NdvZ4iebbDri8TUg7VlGjWAmSM
	vggedIvGfDkFoI3FCcjoZsAIQIyAPZh+k1tS+3jZR9FB6IxkihhKiiv9UPAPII6/+t04deHyBYS
	Y5xijV6GIIqPbN4de+IxvCvbOZylsy55jvZlR9kgJ0CBzSzeczB/9cLEPvF6EHys1dB7GCfHw==
X-Received: by 2002:a05:6871:3401:b0:404:1525:10e6 with SMTP id 586e51a60fabf-40a970480c2mr7112051fac.49.1770784968730;
        Tue, 10 Feb 2026 20:42:48 -0800 (PST)
Received: from james-x399.localdomain (71-218-105-26.hlrn.qwest.net. [71.218.105.26])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-40eaf16c383sm541309fac.14.2026.02.10.20.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 20:42:48 -0800 (PST)
From: James Hilliard <james.hilliard1@gmail.com>
To: linux-gpio@vger.kernel.org
Cc: James Hilliard <james.hilliard1@gmail.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Alexander Stein <linux@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] gpio: aggregator: add gpio-aggregator DT compatible
Date: Tue, 10 Feb 2026 21:42:12 -0700
Message-ID: <20260211044216.2885718-1-james.hilliard1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264596-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,glider.be,ew.tq-group.com,vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D4D011213CB
X-Rspamd-Action: no action

Add an OF match entry for gpio-aggregator so the forwarder can be
instantiated without using the delay-specific compatible.

Add a minimal DT schema for gpio-aggregator documenting compatible.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../bindings/gpio/gpio-aggregator.yaml        | 57 +++++++++++++++++++
 drivers/gpio/gpio-aggregator.c                |  3 +
 2 files changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml

diff --git a/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml b/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml
new file mode 100644
index 000000000000..ec1d08f3db2c
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/gpio-aggregator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: GPIO aggregator controller
+
+maintainers:
+  - Alexander Stein <linux@ew.tq-group.com>
+
+description: |
+  This binding describes a GPIO forwarder that exposes selected GPIO
+  lines as a virtual GPIO controller.
+
+properties:
+  compatible:
+    const: gpio-aggregator
+
+  "#gpio-cells":
+    description: Specifies the line offset and GPIO flags.
+    const: 2
+
+  gpios:
+    description: Array of GPIOs to aggregate
+    minItems: 1
+    maxItems: 32
+
+  gpio-controller: true
+
+  gpio-line-names:
+    minItems: 1
+    maxItems: 32
+
+required:
+  - compatible
+  - "#gpio-cells"
+  - gpio-controller
+  - gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    gpio_agg: gpio-aggregator {
+        compatible = "gpio-aggregator";
+        #gpio-cells = <2>;
+        gpio-controller;
+        gpios = <&gpio0 3 GPIO_ACTIVE_LOW>,
+                <&gpio3 1 GPIO_ACTIVE_HIGH>;
+    };
+
+    consumer {
+        enable-gpios = <&gpio_agg 0 GPIO_ACTIVE_LOW>;
+    };
diff --git a/drivers/gpio/gpio-aggregator.c b/drivers/gpio/gpio-aggregator.c
index 416f265d09d0..a09752fc5fe2 100644
--- a/drivers/gpio/gpio-aggregator.c
+++ b/drivers/gpio/gpio-aggregator.c
@@ -1635,6 +1635,9 @@ static int gpio_aggregator_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id gpio_aggregator_dt_ids[] = {
+	{
+		.compatible = "gpio-aggregator",
+	},
 	{
 		.compatible = "gpio-delay",
 		.data = (void *)FWD_FEATURE_DELAY,
-- 
2.43.0


