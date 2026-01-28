Return-Path: <devicetree+bounces-260520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8F4AH7Q8emlB4wEAu9opvQ
	(envelope-from <devicetree+bounces-260520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:43:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A7965A60B0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:43:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E0DA83048BE4
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B736130F816;
	Wed, 28 Jan 2026 16:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tq8UqCiS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FAD30C345
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616657; cv=none; b=XhBzbBi3CNitiro4TeULpwoWwKcIVS4qjRChwPhLiGHNLb3KK7BU9hpif4ATFzDt2I64AH03Cf/7MZYsXxjYt4tv2d7fxXaZdTgb1XJEXippOgQ+rki4wHemZlzz1SnQTHu1sysEWPfghconbH9swnbnW477AFOgN3RRQXq8PIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616657; c=relaxed/simple;
	bh=MsoVcEJe0MhQwSs/kIxrngmiJYPnulx6/TKC80irjeo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hq9SD0KsNMHzhTGFaboxp3vitdV59sOXbRpLOrmvZqL0jKq3Ybbj25S6UTJLk57yvJRGv7rt32YHWj9CH1ilgikzu6iKt1sTT8NhMWCr3mGG5XsoXhny6fbu4+vPiBTPe9CHmEpm9NbpgXVvdvpQhI0iLXtRMuZnMmUifHt2px8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tq8UqCiS; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-64d1ef53cf3so85608a12.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769616654; x=1770221454; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c1M488vXqKcrQj+Jd5yyT2ZpNnjcHsZKW7NNZqOuyYk=;
        b=Tq8UqCiSTkL6ZHa17gsf4E1qldJ32PNfHq/rgklwJ57hWzw0h4dnkpU0ysfBYjPKCJ
         xTg6C8GAemty4yI5SVfQ64UTVU/a/33xwtdOrUvforkezEkgC/53WjNkJkdfuMEjbKxe
         MEqc0k4I0+7ypvkqQiL4KW08LgeBEfgK+F15IB7z8wNqbq/Dm3/TvMZChsaov7IEMkNl
         lYFOrgIVlyaLDzaxF3KaH9lT7O9IDZFakRLPNXkW3vhnxAUeV42sblFeZQq78LcB+o0x
         RUdaFitBsp827GANNJqn+CAjuFhrNeK6mRJc9eyFVYBPbx94sdsigs/ZBLPbL+oEfiyO
         n+7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769616654; x=1770221454;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c1M488vXqKcrQj+Jd5yyT2ZpNnjcHsZKW7NNZqOuyYk=;
        b=OG76GARjijcuWOex3ia7BK8QgB8P0B8DB1qkWmHti8Z0DyPv5RhcJ4zT4MSofQJZ36
         KT2+hLfYZzYcuC/6081+zI3W8d23GNJggVKPiligKuhaFMu5MO17HR2S2FcA8dv8Ch0o
         MGN5uzecn0kBzDkDSBVJ6gYGhmj6F3cd9+eXIy5tHY0kw2KszhQQ/koQ1dxz+HLsqiQ9
         daGHjVvzki7GFXWfkoQc0jxiDw3JmVt/3+7IBdwU3XpJ39TlkrP6IZ9TcR6+XhhF1ksk
         1cZn1ZMuRKvj49/V7M0WbqOp22xPl5Lku8wwcME4GGRMKdfKOH7HNJ7ytRIHq/xCGIyh
         EvuQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6TMabGJgVylgQiHGAjMN8tVAX66MmARoSxDxDzBPqk9ml/3WjErfkRceW+t+wHfSZKQTFAg0aNSL0@vger.kernel.org
X-Gm-Message-State: AOJu0Yylrx5Avtiw4lASYbyJ7m7jz2RXRXt5txar7ujY7eo0kpmktCdJ
	xHQ+MQxKqFCzLSWVd1ZpXkHBD07ln03LuGg9SMg7VzhYQTEjgssxGW6fDGaAz2s9O4w=
X-Gm-Gg: AZuq6aJl4IYdeDmoC5VY+9HXTZ3ZUbCJciVG9NY8Lvp+WM2rWST93nUuF4/JY6E6SvR
	f467qNOMvf5131mjxo0Y4wxqHYSMLpl3dDNmqvHf1wkLLrLl9QoUipSmDsicrfdawOGfTQZqq0x
	UfGed14m0WiuqWFB05cXfVJFrKxIajsTfcgWqxzr5dQ6WgiltyZ5euyfF1oyGIobtBi9aJwnsdu
	ARhDyadnAXl2Y7sT4gHvlU3j1aV37bGtLA3csFKtiCp86KQDiwqpA6y7JQKFL2JStSUv0csKdK9
	FmHA0pg6DrTSDuqmGk1ej6FDmF45yrxYAXEqdk71bWCIz7/I4tDuQTZ6VJdN7EdHMAtZhfhx8Vd
	xAURLVAvPZ3C2de62M8zvLSxnE9OuZVNiIEVDHQ6dkT90tIrhY4Nsyzi/jzgwSDcGF2SWph30Ta
	5oxqVbMNEzUrEssEB4qV35cbJtW58yOuIQ/0pZMCFoRGG/LbjjQ4dFPX41CUl4mG1szAQo4sSQ7
	Itvsg==
X-Received: by 2002:a17:907:7f8f:b0:b8a:fae9:5c60 with SMTP id a640c23a62f3a-b8dab3aa7a1mr404537966b.51.1769616653505;
        Wed, 28 Jan 2026 08:10:53 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c021fsm148553366b.49.2026.01.28.08.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 08:10:53 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 28 Jan 2026 16:10:50 +0000
Subject: [PATCH v4 01/10] dt-bindings: soc: google: add google,gs101-dtzpc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260128-gs101-pd-v4-1-cbe7bd5a4060@linaro.org>
References: <20260128-gs101-pd-v4-0-cbe7bd5a4060@linaro.org>
In-Reply-To: <20260128-gs101-pd-v4-0-cbe7bd5a4060@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260520-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devicetree.org:url,linaro.org:email,linaro.org:dkim,linaro.org:mid,0.167.255.208:email]
X-Rspamd-Queue-Id: A7965A60B0
X-Rspamd-Action: no action

The Exynos Distributed TruztZone Protection Control (D_TZPC) provides
an interface to the protection bits that are included in the TrustZone
design in a secure system. It configures each area of the memory as
secure or non-secure.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../bindings/soc/google/google,gs101-dtzpc.yaml    | 42 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..a8c61ce069d6910c47753bf14a792eb58e6ae182
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/google/google,gs101-dtzpc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos Distributed TruztZone Protection Control.
+
+description:
+  Distributed TrustZone Protection Control (D_TZPC) provides an interface to the
+  protection bits that are included in the TrustZone design in a secure system.
+  It configures each area of the memory as secure or non-secure.
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+properties:
+  compatible:
+    const: google,gs101-dtzpc
+
+  clocks:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - clocks
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/google,gs101.h>
+
+    dtzpc_hsi0: dtzpc@11010000 {
+      compatible = "google,gs101-dtzpc";
+      reg = <0x11010000 0x10000>;
+      clocks = <&cmu_hsi0 CLK_GOUT_HSI0_D_TZPC_HSI0_PCLK>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index a56f8f00aebb938aa765a8a6d66dfeb7f062dac8..98b2ef47c809ac0232e6941c9483b19d7c798bb4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10833,6 +10833,7 @@ P:	Documentation/process/maintainer-soc-clean-dts.rst
 C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
+F:	Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
 F:	arch/arm64/boot/dts/exynos/google/

-- 
2.52.0.457.g6b5491de43-goog


