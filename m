Return-Path: <devicetree+bounces-263176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLefKRIPhWms7wMAu9opvQ
	(envelope-from <devicetree+bounces-263176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:43:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B52F7C71
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:43:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B90AC303A13A
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EC5C334C3B;
	Thu,  5 Feb 2026 21:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vqzo0BS3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002E933375B
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 21:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770327756; cv=none; b=S/L91EqibFIoe9xJ+diHGkvWPyJq3Cjcqk1qVHDkuymUzD35aqbGgohhwTNyaS2KvuZr/5K+70UOtR1UuiyqEqoRAb/6qBdGrpjcwRDi+YXrTmZqY79WNq31YGsvUnvdlFVRhZauQDSB8K0k5vG1RoDfu1nDmSpUKL4TBV9MSV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770327756; c=relaxed/simple;
	bh=eaNC1+5x3wuB6gQAu1fISBSlg5hm+mSHrOAzbV0/Wwc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=obFUASGd255m3hJIhjdtHuxC63d4x3WYDBcy38SIuOH7TT3vU2lfXS3uOQaNsaPXelM/3efsVmtRIaoaFoHpJvyifgIVJoMr/M3zAO9HfqPLBvUcF5HER8yHMv0r9m/Ufowhe6TZMfzUfaRP2bNxx/Zn3L7H7vFMgmqOTzaBiXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vqzo0BS3; arc=none smtp.client-ip=209.85.218.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f66.google.com with SMTP id a640c23a62f3a-b79f8f7ea43so284782166b.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 13:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770327754; x=1770932554; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nvcy5crOR/n7O0iVn83ybwQmabvZYx05b4AZ55A+3Wo=;
        b=vqzo0BS3CzKMThvUwGReI1soh6GVu7a89Izs9KiVr6CEwSEjwD1nUL9wHmoBOtgfEc
         qKxHZTYPk6Z//WZXcXIX4QVDrMlauMW+KK5CGLNcAuPhojEsG16Mgd1+KoZj0vTMx2tU
         xEqdvd7+uZMguZqk8Tqm372s0z18sdveHIKnUXVS7iXO5UqSaYU/u3xW6B5VfAy8aPbb
         20owbKilnQaJlzFABr9EtoskqUeGc+31Eigob6QRK3UI0ojLbUCjck9UkFMCE66FdyMj
         Q6Omj83koxEJZSv265d6HRcP0jwaiBQIrX1iX79h7bIyX9w838WoIVFScKoQjbgyafms
         Ep3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770327754; x=1770932554;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nvcy5crOR/n7O0iVn83ybwQmabvZYx05b4AZ55A+3Wo=;
        b=vfztVJELfVDH9veYrr/AuwDiykpg35r640dhxT5rZC/DKR9m/AAWZnNi/nrRDjFtpo
         WfB/NjAZGJjuxwnBgXAsZlN3wuL9i9wVOWg8mvT5wZ7l4F/trWAtJ53cHD9M65Szwwtl
         aDwpwtYgXlssFsDucEBlMhDedcjttflOjVoOI35algdNPJUVLshX78CC2BkKMg9LNFzH
         NCjwuP0808+XD9gVQnlBMlGidteIfq6TUpDm0xkKDbup/tfewP48hd74SOg83qK+oq4k
         s9cO58UQ/n2eWOtfg67eAvDYTF/7wGvFEP1gYtnEuX4KhzDtJftmzEQiao3Yl0La4RGP
         1t6w==
X-Forwarded-Encrypted: i=1; AJvYcCXqsZZRHJt7rl6oz08qY/dLEwuwsd250Rw2lE/cQRy2VM3WBmV3/Nm2oT5Kxcq4UARqWY4GjDqisU5H@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg1fTEk4kqJkI86lPA3iNt8dJ4HAYAgmQW2PDIyUZpNujcDf0j
	tBikkXlr0wJ2A27V9vG/RCpcuZae9u46IPnyneCy7uwv32Sj9TGZXLT16Uy7jOQVkTU=
X-Gm-Gg: AZuq6aK8x0JE8otsUe4CdBMvNGFbjuCbrADBb1ycBOrbwuWzTx3m70rLFbFj/LO3pQ2
	VbcwQ3GuCJ1y0jLKsIhzxwyaC4hOpQSM9rGMbk9RGHCNdUJqFlfsLz+Vk8NN5Hndpsv+ETPX5WD
	pTgkX+LeAy8DneY0rEKd4BZ99A2Faupv+Wg8PAaRMXypDA2QvtSthb1OjYz5jdbjtVf0mtDNyNM
	lBnfO7o+GRcSDfQVAMcuA5PlHew0yFs9w4aW7c7rzZ7pImMlNNIGioEYUdX9uefRpuYoHiDdXDs
	9y8MaU1dWoBM72FRidt63d461LB+Or8JlXFrbU5vwhAz/tz3XbcMPA7mveCG836okWB+Mqw5bov
	HKOrjeGtEWtIQySxCrRohgWbw04d7W4nNFocpMT2iY4OUMpY5if0443vB01Lt9lFDl7r5HhGcp8
	SGLrsCnS5F7RdObvofB0RVyiZUwyMgV6Srlj2GQY2xMalkcJMyarbVe/TawEaLIu9QR/HmqVqEt
	aK5YA==
X-Received: by 2002:a17:907:d8d:b0:b88:6dd4:9ca0 with SMTP id a640c23a62f3a-b8edf49d98cmr21661166b.64.1770327754366;
        Thu, 05 Feb 2026 13:42:34 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda7a0074sm21859966b.18.2026.02.05.13.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 13:42:34 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Feb 2026 21:42:32 +0000
Subject: [PATCH v5 04/10] dt-bindings: soc: google: gs101-pmu: allow power
 domains as children
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260205-gs101-pd-v5-4-ede49cdb57a6@linaro.org>
References: <20260205-gs101-pd-v5-0-ede49cdb57a6@linaro.org>
In-Reply-To: <20260205-gs101-pd-v5-0-ede49cdb57a6@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263176-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[1.10.107.32:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:email,0.0.7.208:email]
X-Rspamd-Queue-Id: 48B52F7C71
X-Rspamd-Action: no action

The power domains are a property of / implemented in the PMU. As such,
they should be modelled as child nodes of the PMU.

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v4:
- consistent quoting using " (Krzysztof)
- add samsung,dtzpc to example

Note: Ideally, the newly added properties (ranges, etc.) should only be
'required' if "^power-domain@[0-9a-f]+$" exists as a patternProperty,
as they're needed only in that case. As-is, this patch now causes
warnings for existing DTs as they don't specify the new properties (and
they shouldn't need to). Only if DTs are updated to include
power-domains, such an update should also add the new properties.

I've not been able to come up with the correct schema syntax to achieve
that. dependencies, dependentRequired, and dependentSchemas don't seem
to support patterns. Similarly,
  - if:
      required:
        - ...
    then:
      required:
        - ...

doesn't allow patterns in the 'if' block (or I didn't get the syntax
right).

Rob said in
https://lore.kernel.org/all/20251010141357.GA219719-robh@kernel.org/
that this is a known limitation in json-schema.
---
 .../bindings/soc/google/google,gs101-pmu.yaml      | 41 ++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-pmu.yaml
index a06bd8ec3c20faf0b364d3d3ef1763502c2b09cf..c1ee9575092a3ab17873d228a88468addb62d838 100644
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
+  - '#address-cells'
+  - '#size-cells'
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
2.53.0.rc2.204.g2597b5adb4-goog


