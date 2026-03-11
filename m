Return-Path: <devicetree+bounces-274324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PHjGfjEsWnvFAAAu9opvQ
	(envelope-from <devicetree+bounces-274324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:39:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0952826974C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:39:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DCA7D3019C9C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:39:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9133043DC;
	Wed, 11 Mar 2026 19:39:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c6VBHg0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B46372EFC
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773257967; cv=none; b=ARh9/vZs5r8+LvKnsbkPrkad9NrsDhBwFHmegzpgJDaA2XZV2yWE7sUyR8COjMnyraR713SyOVirhDubUZ1jIXvfQeN7cwHv5qxafo6ALHpbBbd/HkfPZPbo2rWJ7SIUManc4czbDd5uEcX+SoEk9nietiCtJzpvMPe/qtXUHjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773257967; c=relaxed/simple;
	bh=qAqHd7WdBfIomObVD+/mACW3BUxf70VgmHF8fv4ZLTM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uEcbjBl0NLu+wEZ/tvhxo9Gil7O7SIcg66VP7nWpwqISMI9Z2i7ZBkEhPG7lGYDHvoAdGLn5HBX+1a+tthSa56+VdUKd81vXXwkpfVc6D22AxPIrbBq9I9EVGjHfDXwy9LXgBc7o0gtQyTn8TL1i+aBasT0wYmp/vFCv1quCI2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c6VBHg0u; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-485409ab264so1908625e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773257961; x=1773862761; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LQkJ7hYeM6FobCrRfQAAST7LKz9aCrMza/cHqRkkyPA=;
        b=c6VBHg0uC3FervAp/thCt94ZiABO4509ZbUT+P0OaFeaaJ3At28Gy735RRTMLxwZh0
         0Le6tyhrCkEhEMOAXmQyvzFGHfPbhsQIoT8GWsB5rbQILkjSi51lqeUQD20yFyI9y69g
         Dk6oYaVeSft7YXAUO6eTg8rvx3cb2XUpfLlmYnWHflwCIuEmIOmajBKJ2npjeEbwSLwK
         GHSlFwWuIdLJThYipmSD119GKvDE10wnOqZNU921skY0DQftDkSC2FKd+5oIOQ0dZYA1
         XWaiI7ZkRAF6PT6MaXvGOSO64Rz9oNS4+iDCuv2K5fL4YGajLVh+ZrMbV+bN17KzP5CQ
         T1hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773257961; x=1773862761;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LQkJ7hYeM6FobCrRfQAAST7LKz9aCrMza/cHqRkkyPA=;
        b=lTDP2IgWzqfaau48BPbxwck+nJNTFtV8Tx+G0xFFqaE9dDzm7uAu08Yd7eNsuGWCT7
         QgJJZc6juTSPe/AEAdXz8Cnbg2/BNL5mQCZJj5RlIcCsw2IMcIMFrzgmqffBsgcvCRef
         z0/c7n2cnHBlNAiftDDq9M8ZtcxNhuCmla88+OJLnvK3GGHbIIFkxW3mXzPf2npVr/Ln
         eW3NCEAj6NyrRFu8hzwBSNtqXM3t9u5DiTEqqW0eCBgIIfhm1O/tj2tij7m+SwP5Hh9v
         Mq0lI1b/31Eb7SEpjj4rsx7VHbF9hm23MfoXWKRheXowwPG3aNxk+Bi+UN8W8ql1mub4
         +mQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGtphMm/pxXyr0X21fu92jwmM3zsfR+8UHRTorRp/T0K37dORKRtwCRL8oolaSuQqCFu54zxl4gAN/@vger.kernel.org
X-Gm-Message-State: AOJu0YyhY/7jF2fGFJTewb6A8IczhBoOpqByYa6Fo8WRX/gEtIxwbayd
	9SwJ1Zr99kkpZjrCIyp70BUB+o2YWFwjPMyneqaTab7k/wh0NWN7ag2JUzCBxw4NuYE=
X-Gm-Gg: ATEYQzwAnako+k3lld48oQhPGOpxSaEaSAs+bfyXjoEjCQmTrNXtXP2k/7EEE8ISAFc
	6YbLqcQZtPBSUVAhNG7x1qFD+hy8tU44f/GMtFC5DgoFTDz2PxApvqC8HoIFmpcitWh2zeBSRsp
	FZ+QH6hS8kUDtas0Gdp0Q86mt14i2dQeyTa83oOLfUvfDbbY3Xh3kiJ8y7IGO4uLdKwUZOiOlHr
	mLrbeQNxJFMqWr6nHIbBZiQUtn5CyXaiQwInEIVkyCB1TgZ0xmKY6dZnsPcmKoxtwsGLygfI3Y7
	ipExnbYau6qD5HXkv9s5t9IihN1JA9qVEWA72eQ9xjc991J/OlFirAQOeiU1ke3+iZN+gcQggEv
	DYAI3u+nEQjmY4R7LxhqizQNBNNSQGeqp6jW78X/2eSVb/0Dm6ayR3Q7rLtLWv1Y8qQ0mzGe554
	kDo35PQpGtuoLM8rLn4aS+o5+w8ZKT
X-Received: by 2002:a05:600c:46cd:b0:485:3294:fff0 with SMTP id 5b1f17b1804b1-4854f5a2b77mr13943105e9.17.1773257961415;
        Wed, 11 Mar 2026 12:39:21 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854a2d7de3sm27652245e9.3.2026.03.11.12.39.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 12:39:21 -0700 (PDT)
Date: Wed, 11 Mar 2026 22:39:17 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Linus Walleij <linusw@kernel.org>,
	AKASHI Takahiro <akashi.tkhro@gmail.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dan Carpenter <dan.carpenter@linaro.og>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	arm-scmi@vger.kernel.org
Subject: [PATCH v3 6/7] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
Message-ID: <58446889d781435424c46bac563483e603d7c0e9.1773150895.git.dan.carpenter@linaro.org>
References: <cover.1773150895.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1773150895.git.dan.carpenter@linaro.org>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274324-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 0952826974C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: AKASHI Takahiro <takahiro.akashi@linaro.org>

Add a dt binding for the gpio-by-pinctrl driver.  The driver is used
for doing GPIO over the SCMI pinctrl protocol.  There are a few
mandatory properties such as gpio-ranges and ngpios, but it's not
mandatory to specify the pin-mux.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 .../bindings/gpio/pin-control-gpio.yaml       | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml b/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
new file mode 100644
index 000000000000..81c68579df6e
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/pin-control-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Pin control based generic GPIO controller
+
+description:
+  The pin control-based GPIO will facilitate a pin controller's ability
+  to drive electric lines high/low and other generic properties of a
+  pin controller to perform general-purpose one-bit binary I/O.
+
+maintainers:
+  - Dan Carpenter <dan.carpenter@linaro.og>
+
+properties:
+  compatible:
+    const: scmi-pinctrl-gpio
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  gpio-ranges: true
+
+  ngpios: true
+
+patternProperties:
+  "^.+-hog(-[0-9]+)?$":
+    type: object
+
+    required:
+      - gpio-hog
+
+required:
+  - compatible
+  - gpio-controller
+  - "#gpio-cells"
+  - gpio-ranges
+  - ngpios
+
+additionalProperties: true
+
+examples:
+  - |
+    gpio1 {
+        compatible = "scmi-pinctrl-gpio";
+        gpio-controller;
+        #gpio-cells = <2>;
+        ngpios = <10>;
+        gpio-ranges = <&scmi_pinctrl 0 8 4>,
+                      <&scmi_pinctrl 4 12 1>,
+                      <&scmi_pinctrl 5 15 1>,
+                      <&scmi_pinctrl 6 17 4>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&i2c2_pins>;
+    };
+
+    gpio2 {
+        compatible = "scmi-pinctrl-gpio";
+        gpio-controller;
+        #gpio-cells = <2>;
+        ngpios = <3>;
+        gpio-line-names = "gpio_5_17", "gpio_5_20", "gpio_5_22", "gpio_2_1";
+        gpio-ranges = <&scmi_pinctrl 0 30 4>;
+        pinctrl-names = "default";
+        pinctrl-0 = <&keys_pins>;
+    };
-- 
2.51.0


