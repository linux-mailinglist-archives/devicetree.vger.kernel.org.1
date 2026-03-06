Return-Path: <devicetree+bounces-271972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJtACdCsqmnjVAEAu9opvQ
	(envelope-from <devicetree+bounces-271972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:30:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A85D821EBE2
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0DF2A303D887
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF41037CD25;
	Fri,  6 Mar 2026 10:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zacejEse"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B7F37BE8E
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793003; cv=none; b=mxnP6cCOgR+C5AcIa2oNRthykYpeANS0kxXuiqVL54pmTGQSk8auM5bGfrv9q96vUlg6LMGRQm43H5vI8l06TDbCxEt/bVKeg8KARFcVVFaeIxeAzLhAS9dOjYDzWx3obuVY+Y3R29Ovsjsse4iGC5ih46i5wWJzu3i68Yxf8E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793003; c=relaxed/simple;
	bh=gEkS+KNCFb0DbKDNC52RYY6aT/xJwnLizD3yMfs/RpA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SlaHeK4VxOPBu6M34NM7rGk/OCNdia/FoTtFVp70VQ5CW9qbWT+ZHiRfQZ8tmCxGV/N0hesugm9pdHDyLz8zCQ4HCKgL2mzNqzTNzfeA1xAPJwDfO2Hko0PWU7lmhNPLoLQhTncu4WX/T2ED4Ja2OREnikQFTafWiTyVSaOtt2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zacejEse; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b8fbb24a9a9so1481433966b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772792997; x=1773397797; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bsgk7ZObqyZr/3jbiTlB5XfU/jafWS+xFJNQ3TVojOs=;
        b=zacejEsez5XKEYwcdnSN9M0+cmTz6cSMr7jO6/iSt2Kgn9c/XkERN7efuDnd9s6pDc
         u/isEHYn/csrdC1Kwk+ay3cdQYcR65wQ+3FcfHAcfHAe3cBjLFPHl8XsMfx0NKjTTLzd
         YH4wgeDWqkVFDsajhkJ7dCvZ3z4T/2rj3p3+AVbEkDA7cdvSvHMD7uQzqjVHKj1bpcK9
         QH5LAQU3ut/pmEKjIh8u51nooHLgQIar3vAk6TzYj2yHTBqBz7VlP9Je5Folxo6FX5Qk
         EP7jOLyBKCj6URoR7os9exnsqdy2UQxYiWr2QiYpWipsAPSQqox4g3FixM5nxlcnIdKz
         xFNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772792997; x=1773397797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bsgk7ZObqyZr/3jbiTlB5XfU/jafWS+xFJNQ3TVojOs=;
        b=lqjQBW6aMwO44sD09tV8S6rr8GqMpI1WxEYarg7NWdKTv8G9DAn5pDiW3Zbj+rw0QV
         vRX5QhduxRWViS/nyAIZbAO2oKj5Jsv7ZRahiKea/aUbTHvSWkSHnoiq6zI/keV+lgdK
         H8HRgOrcmQm+gNfJkXQUTGDFToKDEiJe63JKe4+cGMviFJnLJvi86HBFloHWFIqjInSd
         guiJP0DTyb+sV6fwwvOSf4imCn78jUbtJIK5cxB0b/n4rVJnczgeD+gcqvtNrl0VI9id
         /rIB/YoGLRUy/YaJMWA4xVhCc86tv1Ucjftw8++x3sBlUM9Gn0Owm+GKlYetv0H19WaP
         1HPg==
X-Forwarded-Encrypted: i=1; AJvYcCXKz9+zkkjx/pedVAcj75PqfNet3KSB4YMVTFjXMOlP4KU+EiMLyQioMtN+A/IH70fXjCibaGY9rYBN@vger.kernel.org
X-Gm-Message-State: AOJu0YycffKojs/b5HJPOVSN2YlDAVcCBa5nUq5lZpA1TS3/ecPr3ZxU
	rrTET6L6IYv4NnSitqUViUF27k1fCIIyU/FQg92oSBkaH06isKZksDTiVnEuBH7Cg68=
X-Gm-Gg: ATEYQzxOkqpnH3yad4wU+J610zz08WgMbG0UwKjE8Q9Sd2lDtpTp7nchAuwUfBZYjOl
	Kjby8fOG+0q5QZ51yOmRrzmUesczqyIageBOhaWnH3ITehY4MYrUzrL9hmh7Rv2W+GGXkGoFQLu
	NaSuwU+4lNL8XYKmPWAEYaHoAc/nRRtIkdNXoWuXJ4gsZdSHAbDvZXJAfup7R+JQE55zx9lZfJP
	Bryh1OsTxRK1T/OTY5N13TPkKdiTw/wWEO3UsJMpK3S4iFGi7fk7OJ3kM9kj+wE2F/QhcaiXM5P
	aNyMsWltvf/03S8nILp1yPYB59asMopFOjOTZRlwpujUSoc4XaXdwNTTvL737lbfss3T1kuL9xI
	NZcOmMn121OAffCifKPvXH86YDzW8xsbdMX/g30RCmd/c64/f2kCq17HL/4Lk7a/FeAIdXBrd7y
	GuzNINrdB7ymvTi9VZXrnSu3AQ3tIxHX35X3vEJ3L1KhgboFcCfET1F57h8YyXbVhynQyqEYQ/I
	5dUbPWZ3mm/S1760Ym3v/rDZw==
X-Received: by 2002:a17:907:8690:b0:b8f:c684:db28 with SMTP id a640c23a62f3a-b942d06f624mr92068866b.12.1772792997027;
        Fri, 06 Mar 2026 02:29:57 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8c95csm42907266b.21.2026.03.06.02.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 02:29:56 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Mar 2026 10:29:55 +0000
Subject: [PATCH v7 04/10] dt-bindings: soc: google: gs101-pmu: allow power
 domains as children
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260306-gs101-pd-v7-4-03f7c7965ba5@linaro.org>
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
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
X-Rspamd-Queue-Id: A85D821EBE2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-271972-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

The power domains are a property of / implemented in the PMU. As such,
they should be modelled as child nodes of the PMU.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v7:
- really be consistent with quoting (Krzysztof)
- drop invalid tested-by tag (Krzysztof)

v4:
- consistent quoting using " (Krzysztof)
- add samsung,dtzpc to example

Note:
Because the properties added are 'required', this commit breaks DT
validation of the existing DT for Pixel 6, but a) that's simply because
the DT is incomplete and b) a DT update will be posted once the binding
is accepted.
It is not possible to write the binding such that it supports old
(incomplete) DTs in addition to the full version, but as per above
it's not required to keep supporting old DTs.
---
 .../bindings/soc/google/google,gs101-pmu.yaml      | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
index a06bd8ec3c20..dfe6f87e5949 100644
--- a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
@@ -16,6 +16,14 @@ properties:
   reg:
     maxItems: 1
 
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+
   reboot-mode:
     $ref: /schemas/power/reset/syscon-reboot-mode.yaml
     type: object
@@ -39,9 +47,23 @@ properties:
     description:
       Phandle to PMU interrupt generation interface.
 
+patternProperties:
+  "^power-domain@[0-9a-f]+$":
+    type: object
+    description: Child node describing one power domain within the PMU
+
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: google,gs101-pd
+
 required:
   - compatible
   - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
   - google,pmu-intr-gen-syscon
 
 additionalProperties: false
@@ -51,6 +73,25 @@ examples:
     system-controller@17460000 {
         compatible = "google,gs101-pmu";
         reg = <0x17460000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
 
         google,pmu-intr-gen-syscon = <&pmu_intr_gen>;
+
+        pd_g3d: power-domain@1e00 {
+            compatible = "google,gs101-pd";
+            reg = <0x1e00 0x80>;
+            #power-domain-cells = <0>;
+            label = "g3d";
+            samsung,dtzpc = <&pd_g3d>;
+        };
+
+        power-domain@2000 {
+            compatible = "google,gs101-pd";
+            reg = <0x2000 0x80>;
+            #power-domain-cells = <0>;
+            power-domains = <&pd_g3d>;
+            label = "embedded_g3d";
+        };
     };

-- 
2.53.0.473.g4a7958ca14-goog


