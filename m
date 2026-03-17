Return-Path: <devicetree+bounces-276724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGxTFmVquWmZDwIAu9opvQ
	(envelope-from <devicetree+bounces-276724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:51:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F25942AC5DD
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B809D31DF57E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48E623EBF14;
	Tue, 17 Mar 2026 14:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LO2QpLJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970E83E9F93
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773758464; cv=none; b=Sb3mnWMFeBlbMo+rWGLa555ZXpg6XL2CUYbL1jeA/xuYgCmSK5u6mVr8vp/5k3urpURoAwJi34ofXTGEOQMWbHLSGUVFqRb5Td6C5MOFIOeJijeyXQS/tXQPmdvW78qR70OsrzNCodKj1hJdKZP+lwwJiVYJBM322d84dQ/Zi8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773758464; c=relaxed/simple;
	bh=GMT8bTgDIjJDF46JG6O8XRCgeg5BVovJQymAp45TyZU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uuBMxnVoGT0+Ew1Jdih1ni9m60qrBOQ3SsMc/ymh1s9wvp2vfyeKYszmAZE95ULr8kC+2ZlMHx5z2V+pVpTJaqrA/V3sNKJElKHn7Y9eIERV8ublBO2f0DIqaiPe97MvdcxzLetp7X0d3mLcQodysXiF5OScQw0KYqohropddZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LO2QpLJZ; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48374014a77so63867875e9.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773758461; x=1774363261; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/JpADn0pgDNaR7zn0h6AJtxmeCv4G+34r7jTfB3aNb8=;
        b=LO2QpLJZyhYRHj8tiqXMmqpvoeD+Rmpko2OY7Ao2/E9AH+whEO8QKDdQIQJN9l/gHD
         AUVxQR+BZVivit1aRqwz/XDQXpe36MJfyXpZysxDbDSBfHEw6mDEa0cg4wrpSycx+4hK
         3UUf3PySSXGwp1IitjLDotDke3Ni5rt3ksi3gf4x9uiVtJ/BZTbkQiatSMv4bRTo6zUu
         2xh27xPoK9A0DLSMirU9iBNJr1p/vLFDc4DVV0VaZ6Rq2VMq7cQWyhuuIdswqyvK5K9p
         1yeNe0DI2Z7XQwKINb6rolDPTwqYZrRCebOUl0nAUKF9WCZEYitg+JcTAAiKMcYI5/s4
         hjkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773758461; x=1774363261;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/JpADn0pgDNaR7zn0h6AJtxmeCv4G+34r7jTfB3aNb8=;
        b=TYNAUXvRugH4i4XJ9GL40MVj9jUSJzy7KxQhqvnInfGcWen/FvlZObFgjhzhGIknHm
         /mepNUEhODL8erxYBKXMTiQlNVUY6GySTwXshWpWQFcsxbVmbrVGdIg++fAfRAT6AXez
         WHW97BdeSW/9StT/9c6VJVZgIyQys+nSQy8W5Mu3E+mJkZVXzq3rMbkH/52/L8gC/Y9n
         Esu3mTrFi2YO62E9OI7D0C9+H/ewnfDuCde1aZYQAVPlti8AlLLbKUVJGxu5xFBD6yQs
         YWIB2t61MehpJqXCSpUUYlBVpOSFs1c90BLTn7d+fN8uJvdNBJMZFKgOhT5BSv3O4B2Q
         BaFg==
X-Forwarded-Encrypted: i=1; AJvYcCVA1jge677bQdZGLXt1XvQEK7EeybJXEmpud2HM2ZQ/jvrOP976wt1ySlKU0kxAjVa/1BVDUVgY1aO3@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3atx7/9TcDpifmy/aKTzt1puzl4No+Hc36ME9fO2SNib9QzU0
	2iLkMhU9Z7Ik7H/GFbN3W/cXYlmTvNaDrVNNjZh7oDaZ5aJtBfrcLrS3yUDnQp/iY/E=
X-Gm-Gg: ATEYQzy7CLQXWrTxoOXE6TQYUR7GBvOihj8qR60/Ql2vdl9GiziULTBh8RWkQ3Nxtfs
	KsjgYYnC5D+F3rPxdzw6WibundtU66hI3qYhwN7i1VKqa6GwnbpdXnKIRAPCpY7Dbfyfz/FEyzq
	MfMPVh2po/sqj991b8nqAiQoabLm9smyI9d4zD+1kx3oK9ve4EpTze9GdRdyejeEjoKNy36LjxV
	+Kdpo8vMMa5klsWTTD3Wv5E7rYO45p/gY7UoeME7iZrxHvrqNKfg8WqdK1rSKoWvMTYY399qa7U
	6OmAJlg0bCaCOf9JslkHVDRIGJm/XAKKHwAcCMC4DPqP1241a1djnqo1qgd2UmIySvunlxqVSbu
	ebovr87qCCl9q2l+l9SpxyydOPIdqDE/nrBuFw7WilNZLvEG//oBtDTWBMO8FhBFF7781/c9gX2
	hlxm0/Jgv+SUYXEE3hlQkg2m05WEQqwvAyH1Jzlyk=
X-Received: by 2002:a05:600c:1f96:b0:485:40db:d40c with SMTP id 5b1f17b1804b1-485566cf8f0mr312078655e9.3.1773758460765;
        Tue, 17 Mar 2026 07:41:00 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48557c6ce2fsm116998425e9.25.2026.03.17.07.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 07:41:00 -0700 (PDT)
Date: Tue, 17 Mar 2026 17:40:57 +0300
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
	arm-scmi@vger.kernel.org,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Khaled Ali Ahmed <Khaled.AliAhmed@arm.com>,
	Michal Simek <michal.simek@amd.com>
Subject: [PATCH v4 6/7] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
Message-ID: <caf4b7265bb631964d384c1b68100ef90208dda6.1773757772.git.dan.carpenter@linaro.org>
References: <cover.1773757772.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1773757772.git.dan.carpenter@linaro.org>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276724-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid,devicetree.org:url]
X-Rspamd-Queue-Id: F25942AC5DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: AKASHI Takahiro <takahiro.akashi@linaro.org>

Add a dt binding for the gpio-by-pinctrl driver.  The driver is used
for doing GPIO over the SCMI pinctrl protocol.  There are a few
mandatory properties such as gpio-ranges and ngpios, but it's not
mandatory to specify the pin-mux.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
Reviewed-by: Linus Walleij <linusw@kernel.org>
---
v4: Changed additionalProperties: true to false.

    My concern here was that there might be a lot of gpio properties
    which I wasn't familiar with.  To check I did:
        grep :$ Documentation/devicetree/bindings/gpio/* | \
          cut -d : -f 2- | perl -ne 's/[\       ]*//g; print "$_\n"' | \
          sort | uniq -c
    The only property that I decided to add was gpio-line-names.

    Deleted the extra bonus example.

 .../bindings/gpio/pin-control-gpio.yaml       | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml b/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
new file mode 100644
index 000000000000..ebc3fdd039fd
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
@@ -0,0 +1,59 @@
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
+  gpio-line-names: true
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
+additionalProperties: false
+
+examples:
+  - |
+    gpio {
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


