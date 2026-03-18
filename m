Return-Path: <devicetree+bounces-277336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wE2KIRzKumm6bwIAu9opvQ
	(envelope-from <devicetree+bounces-277336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:51:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0792BEA85
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:51:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBE1E32CDD52
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7FF3E3DBD;
	Wed, 18 Mar 2026 15:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="witfuG3f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFF63D3492
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773847685; cv=none; b=QNQP0mNvs9dqs4FXHAqbVA6avdJQ1dvqj6tJU99LKBaaUQd02dNSe0/2J+7c6YRg8WB6uafU4oub+Ux7pc9cwiwxIQ5wiQJSz3z8QNp9U9g1Vn2cHL5IoydGT+zb+4j0LSn3qAGp4IrkR3QPt7T5BZbPv85a1jjM5WuSaUSUdY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773847685; c=relaxed/simple;
	bh=bANrr+Wq+QpSWQ7fIpXKRUfezFgMImbXTooKuFM/BqU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lhJDrpMH4Ii30Wvyi8myWR1TMhCkzLisSEo1cI89Oeu1NLkuAWnxuvjv45t+4E58pOEVSFuKsm91/62S5C71B9eQEJyaB2DsBG8JSjPMbn6Wi+923WXg213z6w7CNhoPfgd8pFfNwBBrMfEt/RFAf+S8XLooPbXYqwn0VE6DNP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=witfuG3f; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b97c44417ffso372951366b.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773847679; x=1774452479; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=94oKRwhTxKOCc5T6avfbasAgA93RZvczT3rsQ8lQehE=;
        b=witfuG3fxBsLThwRzY9q26vmPLPUK/DXQKxWj0JH7eQzzRBi3SKRfcHopueciSUeT0
         ZYhH0YxpaAYTPlLJniwf1ndJ9eKYqPmCEpR+gB8zG4TZR6wTJA7I/lf9B62/pn8j3XQB
         cKsjZI5LehJ+C3qE4MICBeisroKUWE7hDGEGIGulVS7Dn/OfpX60mmHztE7z9+aS3/LH
         w+/Whd+dLEdWQQixbRg+hVW0ovV4NKnaUdfVKOUoxSv0M8ww6sWc/PujnSTTXvf/v4RY
         ziLVTFRqeu0NaHyfZ70DpQl2JaIaNd/F7FMoiIOqwTjacAf1rwtG0hTWzrWdNMkx72Jc
         6NtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847679; x=1774452479;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=94oKRwhTxKOCc5T6avfbasAgA93RZvczT3rsQ8lQehE=;
        b=BvwDkmWKD8KVDPdZnTWi5gydyA2/orFMhF9TrtjLZC6XIeRiPN/4kRjgZxmwBk5hTQ
         dTbCBlD959Ex/PEZhPb3KJms8Rhesj5g3op80Xhawa8U0bn7Clla2oNhaJFqAPX0bsFK
         dtt+xA4c7PjroXz6MSXZrHEGsSk2vVVWvo5NqS6P4XlmcsbiQvqyYWdzh3C75wVVCi6r
         ARICvCwnLjAqJImZ8mOBmpGxLBgZr0DJs7v7bvGprqQOAEvc2PhVUYA6xyejKl+JJpZU
         rbH9BUU3fWRWM3yK29CPZQEx8kX7gj/hu2/NB+ikiJww8ybU8uDCaP+i1E+PuOIv9xgC
         qqFw==
X-Forwarded-Encrypted: i=1; AJvYcCU4LQ5gIiKhI4D6S5GZBK6C88zT6QrXCyYVQx1eYGfVE5NljDW9TedVsLYOSGSh714kVXDYzjDYY2FZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzfSo2NLMqJxvBaC0B9YEXOW/UwG5izDRehnbddwWBEqE/WavNw
	BkPauzgPSE+qoCOKCeM9ex7awWVm4R/V3TyKfQY3dm8wbZHr3RREJJI2iuvdRQ9fCJc=
X-Gm-Gg: ATEYQzwmYNKomO8iRDqFo7pc8OJTpPUF1aWZ0y6fjD2Cy49w4oGOz2rviWTmYjmKxMm
	TrDU9uw9Nq9iMapP7IWjPBdSPFb9wGNq3Go061mKsbCldCXsAa9FXmkvKkNYWBIZmWRdcBJSG1K
	WpjCczG1kMR5D/M+1o1Fjb9PDQuGdsWnKQQkSGyuLEzNx9GFr4LQi8naE7OancyrTuHaLBEAJRx
	uWSzvlUZe/rjkqvbJfqfXxsNst4Z6ECvjWuWFTrfFBoHDXfL2G/LYHqw05OBJXpOCwbXUgLVFX8
	Hlo3wW3oDmgtJb/RQlVsheatM8gEODrAnlXPH4e2Yd+YK0gyQ3tBQxFULyYLnlCTFgfGH4KmxYx
	1GCwtw8Kv9WjOrvD7Ty7Q6y/1xpX1NxCzUsPVNHLrHAC3VeOyh/1+xJooQxeup/eceYa4FxQPFl
	wA1UQmcMSMSeKQFrwIhXEuf3pQIFKUXoTdadfENF3+2mkAXyUim2JZBvL+deQGx3vjzJ/X5IoV+
	FV8mLug91xkeWM=
X-Received: by 2002:a17:907:bd0:b0:b97:61e2:95ea with SMTP id a640c23a62f3a-b97f49055aamr164540766b.20.1773847679098;
        Wed, 18 Mar 2026 08:27:59 -0700 (PDT)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f173a3e3sm226989566b.61.2026.03.18.08.27.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:27:58 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 18 Mar 2026 15:27:46 +0000
Subject: [PATCH v8 01/10] dt-bindings: soc: google: add google,gs101-dtzpc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260318-gs101-pd-v8-1-241523460b10@linaro.org>
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
In-Reply-To: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
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
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277336-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,linaro.org:dkim,linaro.org:email,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.167.255.208:email]
X-Rspamd-Queue-Id: DC0792BEA85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Exynos Distributed TruztZone Protection Control (D_TZPC) provides
an interface to the protection bits that are included in the TrustZone
design in a secure system. It configures each area of the memory as
secure or non-secure.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../bindings/soc/google/google,gs101-dtzpc.yaml    | 42 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
new file mode 100644
index 000000000000..a8c61ce069d6
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
index 6358dd7f1632..e8376343935f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10905,6 +10905,7 @@ P:	Documentation/process/maintainer-soc-clean-dts.rst
 C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
+F:	Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
 F:	arch/arm64/boot/dts/exynos/google/

-- 
2.53.0.851.ga537e3e6e9-goog


