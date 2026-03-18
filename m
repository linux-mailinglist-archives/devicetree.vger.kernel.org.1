Return-Path: <devicetree+bounces-277339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBBjLefIumm6bwIAu9opvQ
	(envelope-from <devicetree+bounces-277339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:46:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2982F2BE886
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:46:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DC3232E694D
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822D73E317D;
	Wed, 18 Mar 2026 15:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lFFcTGFt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C083E0227
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773847688; cv=none; b=RLBzXQv9r2z/oXTP9NxjTiknk/jBI0sdrBvKe4pW1nEQUy4gFY3qEyT05y0hBVnQwWJbT17/+ovS2woNRgP9lYZDtV6o8vJ21HaaWSxeTgsFO6/JMexyUozd0KCZpe/YQW5BX077U7AQAidyQichrdfB3AkIibTo4GuWImm0rBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773847688; c=relaxed/simple;
	bh=Zm8WGMHTAOqa9bAfCg+ucMjVyj2BEnq0cG9Nd+VlKz8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kWF34waKsEh5vQnS25PFHf/sdr4Dp8L6N2JW/ZhL7g28dggDA7f828/hMtwcxARsWCOs5eQvSwhPty0Li/o0Tc9SSqPmk4PeSm8Zz6ouUE2QL2/ErcsO23Apfomw8NOA4KowkRS8lTPkeFkR7wHCuPR4VmNAiVHou0WlTAXINWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lFFcTGFt; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b93698bb57aso190876066b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773847681; x=1774452481; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ucI1VpoOF8SXIqxz1Ls6Q9HI1Th2/zJLOADwE4rqh4E=;
        b=lFFcTGFtOyaxHGhLlUl4rswHgzaOg/1fhbYhw9Hg7xMkmaO/0fjS2UV2nIOdhqIf0x
         M3S3rDD55hGpDiQHlI3Lbh2rSekwwWTB+20wuzpO5XlH98u/k0MG0/6AcMm3AHDB4TB6
         NhtCL4Tw50ttS/fiuaGgLEhD3N03yyUi5fU33/f1TN2CAELyUPJCrzS8TOGLDhkX5gjv
         NhSsRFD4RkBblwyJT1RWq2m0oprBTCzr8NO+U0qgarJT45fTjY0++lfiDtJUPI9Rw/IX
         GcCgZLHIQYoUpc0u+mzUchwVQJ1uhNYKf5GguFoxwAiKWaMmf7k2AX1QxKNcSvRgSKRD
         TZZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847681; x=1774452481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ucI1VpoOF8SXIqxz1Ls6Q9HI1Th2/zJLOADwE4rqh4E=;
        b=Wjx8yrlGIB1U99fzpu/p2zA3aIr+rBgN10s88GQsAkefOGmdrpPHDBZLRxCt1C9gD3
         dAKwjt7dNIqr8bTfB5N6nhiT4vlKLP36rC8bM5o19X2fUkBcCMqL41/bOYcFEVgxHlDI
         bUNQwnWS0DwErJcQBhWWsje8Zl+wIsUklcKAeu6cVYyx4xoxnQPz2nSd7VOrji6cBkGX
         3FatMTRFsd7/GHu20z2DtCS1AuwIiVcXHqyMhWipZBJPZbnpLdHk3U005DqLfumNFnXh
         Y2GRuL/Xj7B0OVC4XCVV+8sRFQBU8iVHxXZsBMfp5QWoqAqBFdYZ+m3znKFtsqhfxDeu
         eJyw==
X-Forwarded-Encrypted: i=1; AJvYcCUx6RcogEB7KlwANK3DNdDDnyo9qya3bcg9cQtfo9lIzJ3gTZo+W9LCUZznysgNpIyCfSWL1zqxi1q9@vger.kernel.org
X-Gm-Message-State: AOJu0YwTp4yiPh8kSBjyf9h6DrQqRnQ95cVwlyzV29BBH2qTomGlJALC
	fGgjFTa89CYRg6uPEeShRZJFcr2ocF54EXLFO9jLGBQPiD1bECC1kuQpzE3fPdJ24Hs=
X-Gm-Gg: ATEYQzzwGUBsIZKQSm/4VcYAqntNtI+lnT5YkgFS05yim3+GRoHRSPHDViNGfc2/rbE
	MBtA66kgEBEY3WvWjN7UjcwKVvOL0S8T69GWwwG/8ky/luROnywsgfHSRkb/c/SqgK4t4p835+0
	oPqfwETuGICkaDoVqALKU4TX1EmuYEAVQVux+tXx0HiBTbf4v46g3mCx576bb7gHADsmSLMpn8K
	T2rGxb/ybJfy1sNrkm8zRiWb/jquMEhaCIgee5+rzueBYxisZWK/QTHLoIPGYcN3IuGvJXSmR3+
	MGlKTKD4fc+OsWOp223OtH+s0TRFP9WHG8716QDUW3rPSJ3nMxwaoxRMd3yca06UDksdKEYglg9
	RT/b7sboBZL/NbrB2d1v+/pdRf+6fGzsSzteYLzJ2T++CYA0CIfDXDguNzbwD2DOfEN9xcrQxS2
	Uq87rera29ETDmNvHcZvolx9u7Wq5M8MZXQ/qIAFOqIXm7IaA/L+dM3vtANy9n0fpTasCEfGpLp
	nNf/G4jlZ/BHPk=
X-Received: by 2002:a17:907:6d20:b0:b97:c068:555e with SMTP id a640c23a62f3a-b980f8f881dmr1151066b.1.1773847680981;
        Wed, 18 Mar 2026 08:28:00 -0700 (PDT)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f173a3e3sm226989566b.61.2026.03.18.08.28.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:28:00 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 18 Mar 2026 15:27:49 +0000
Subject: [PATCH v8 04/10] dt-bindings: soc: google: gs101-pmu: allow power
 domains as children
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260318-gs101-pd-v8-4-241523460b10@linaro.org>
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
	TAGGED_FROM(0.00)[bounces-277339-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid,0.0.7.208:email,1.10.107.32:email]
X-Rspamd-Queue-Id: 2982F2BE886
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The power domains are a property of / implemented in the PMU. As such,
they should be modelled as child nodes of the PMU.

Note:
Because the properties added are 'required', this commit breaks DT
validation of the existing DT for Pixel 6, but a) that's simply because
the DT is incomplete and b) a DT update will be posted once the binding
is accepted.
It is not possible to write the binding such that it supports old
(incomplete) DTs in addition to the full version, but as per above
it's not required to keep supporting old DTs.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v8:
- move comment from commit message footer into body (Rob)
- fix incorrect use of ranges in example (Rob)

v7:
- really be consistent with quoting (Krzysztof)
- drop invalid tested-by tag (Krzysztof)

v4:
- consistent quoting using " (Krzysztof)
- add samsung,dtzpc to example
---
 .../bindings/soc/google/google,gs101-pmu.yaml      | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
index a06bd8ec3c20..52c47252b801 100644
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
+        ranges = <0x0 0x17460000 0x10000>;
 
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
2.53.0.851.ga537e3e6e9-goog


