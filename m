Return-Path: <devicetree+bounces-271362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLNqCrseqWmL2QAAu9opvQ
	(envelope-from <devicetree+bounces-271362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:12:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC6C20B2F3
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:12:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D3FC13023D71
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 06:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B504929E117;
	Thu,  5 Mar 2026 06:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V61lqGK9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364CC2989B0
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 06:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772691117; cv=none; b=qJEmSmh2Y3KuqOD1x1M/BIwWExTNVcLM8YjrvvSGTnVKw2o3saLulccE1fv51Nsg9v+p6DU+t1rfVPVB3dn2/pMk3VsY+lcTO0Zoe6/YXJWy69GUMoy7nYVQBQGUoD8Fu0M0LVFo6N3dykVs5OHlkva7wadggeNVwHPhPjAkzsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772691117; c=relaxed/simple;
	bh=iALQKe1s8XYCZQRBPu9whaNUYAS1mnLDVYkgTcpyPr8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cqfZbw902df01v1XvXdoVI90ZX8VheJgXBWBfOgZaAMlTgV53jfMM1A/oRVaSLHK5p5FufjuxvL3tGOD0uN6w0raS0dneuAlQDflPn23G9TBHjeMfySWYWWajwmlGimPYyjpVMD/WZ1NlDRp6xgMDArrsMQXFEX1IvaqFwCQFmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V61lqGK9; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b93698bb57aso661579566b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 22:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772691115; x=1773295915; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3FUcP5CBZJQtkRrAcWORzv320QMtIf9elaWuqQIxzig=;
        b=V61lqGK9WTWnm29tSJDXxDUta9HQFJN1mC4P88K541f4zwmN/huESi8fzi7oiuSftM
         uQvQncjvWZzd/U7odh3wc3Zt4vZsIyb0dkHhkkCt141K5aQJBNgmBjErmXJtjwPn3ioE
         /mkQc2o0Kj5mMP82UyEC6XESEYlNkQSV38rlAkzztSrTrCUi0cCpJb5wDMEZvaaMwA1S
         qCjsfq5RD46hmlajAcmW3VijtPvrZCFAqqHiBx1ilQ0N0StHsQqGIuTypTjKA7mcZzYA
         jjYnBbX/oR7/iPL61eI9DtZloQdEQ4dd/aNFN7/HUunsp7FX2fmAl0UJcePvNN+bvTrj
         WFkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772691115; x=1773295915;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3FUcP5CBZJQtkRrAcWORzv320QMtIf9elaWuqQIxzig=;
        b=pfyM7vBuMAXLZPBZJHBfZcovHDl4VofMovVZ6Ra+reUpQ4BxPJC/v7Zj5oUtOleBko
         9eTHC2mDEdmDBq6KMkjYDX7imKl5eRTbrv6Drfh7kQK31sA/j5wnPX83e9QoymuBBerj
         Df9nYyeL+P8ymFNQZZ54ZO1k2JEgxnRmRvfF+s23z9350r3oJyca0/PmfMvnSub2Akhq
         hBXaVzErVXt9/RYjAqB//95kwMNwZ9GmOlUrpN0cNvQGwNvpJgvmSqf4kWRIA9ZGTIk8
         UtsHO+npq0tGjK4fkVHX+gdr7MUHeNVJNZsw6762LKfEY+QMFwEC+uL1T2J97CcxQpCB
         cESw==
X-Forwarded-Encrypted: i=1; AJvYcCXAjYUZchzohpsebO89fJQvxi+NiBqy9mFZynjcwlvj7SM4+kBJ0C8LTLIJaUvLgXF1D7oPlXdI4pBa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx150geV0G+DQspdYhf/KVtqzG76IWIg0CetZUVW7GPhjykk4d2
	iOa82HTUgdfujMec3wHAlVWJ7xRT1eSBVC2f0Dj5T/1E7EpbFtevYwnr/SynDEJow4Y=
X-Gm-Gg: ATEYQzzhC5vq2FIWuleuBHii26PspGvFXZrc7x8wjnrCWqyJWwaR+QN5LH8JQAKcmsQ
	xDKcU7JUG/+EZPf2gJa5MOwa1vlMbkmeQc7293z310g2EsQ8rO9mV22Spz59akgLtSLkmTF1lbJ
	QhOM+/L2S/Wjg4NKw5cFPe2BTIeIs6t4dC8EjlfWINvl/TAyKvSrhye9azDJOYU41JzFfe/q5b5
	O+oZtZaD1T2yWXNjav38hM7S5fsMi8dgpxor5dQl57itchjg9PWzbW8mp0b5LOLYFJdPW93q/A2
	R5jyZoeUDOyXHxH5CiCz/HAHy+NXzB7CRHaYuyXPVoeqIoj+2GD5Sc2RWaNwoYKIL4XupESoOUE
	r+w8TyZCGEYSGzIP3jmoF72gnh4Pk9SP0R9LbBBrC0vV3CwMqwhQX+/EepARRDhRP4Mu4MqRxlw
	zbmYTaT3fUxfpVYY3Ei168JaedHi4M3syqeaE1TLjeSsBUzNJiNnCO2C3vXy5qZgsDlMR1x3KoL
	vVmOGW/qxI95A0=
X-Received: by 2002:a17:907:7f93:b0:b93:5a2b:bcda with SMTP id a640c23a62f3a-b9409ef2b9cmr62071366b.29.1772691114572;
        Wed, 04 Mar 2026 22:11:54 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aec3243sm849355966b.53.2026.03.04.22.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 22:11:53 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Mar 2026 06:11:51 +0000
Subject: [PATCH v6 02/10] dt-bindings: power: samsung: add google,gs101-pd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260305-gs101-pd-v6-2-8cb953c1a723@linaro.org>
References: <20260305-gs101-pd-v6-0-8cb953c1a723@linaro.org>
In-Reply-To: <20260305-gs101-pd-v6-0-8cb953c1a723@linaro.org>
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
X-Rspamd-Queue-Id: BDC6C20B2F3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271362-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid,0.0.8.32:email]
X-Rspamd-Action: no action

Add support for the Google gs101 version of the Exynos power domains. A
new compatible is needed because register fields have changed and
because power domain operations involve interfacing with the TrustZone
protection control on newer Exynos SoCs.

Power domains can also have a power supply linked to them, so add
optional support for that, too. It is believed that all (existing)
platforms could benefit from this, hence it's not being limited to
gs101-pd.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v5:
- add domain-supply and update commit message

v4:
- add new vendor property samsung,dtzpc
- drop previous tags due to that
---
 .../devicetree/bindings/power/pd-samsung.yaml      | 33 ++++++++++++++++++++--
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/pd-samsung.yaml b/Documentation/devicetree/bindings/power/pd-samsung.yaml
index 9c2c51133457..3f1a2dc17862 100644
--- a/Documentation/devicetree/bindings/power/pd-samsung.yaml
+++ b/Documentation/devicetree/bindings/power/pd-samsung.yaml
@@ -13,12 +13,10 @@ description: |+
   Exynos processors include support for multiple power domains which are used
   to gate power to one or more peripherals on the processor.
 
-allOf:
-  - $ref: power-domain.yaml#
-
 properties:
   compatible:
     enum:
+      - google,gs101-pd
       - samsung,exynos4210-pd
       - samsung,exynos5433-pd
 
@@ -33,6 +31,9 @@ properties:
     deprecated: true
     maxItems: 1
 
+  domain-supply:
+    description: domain regulator supply.
+
   label:
     description:
       Human readable string with domain name. Will be visible in userspace
@@ -44,11 +45,28 @@ properties:
   power-domains:
     maxItems: 1
 
+  samsung,dtzpc:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Distributed TrustZone Protection Control (DTZPC) node.
+
 required:
   - compatible
   - "#power-domain-cells"
   - reg
 
+allOf:
+  - $ref: power-domain.yaml#
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: google,gs101-pd
+    then:
+      properties:
+        samsung,dtzpc: false
+
 unevaluatedProperties: false
 
 examples:
@@ -66,3 +84,12 @@ examples:
         #power-domain-cells = <0>;
         label = "MFC";
     };
+
+    power-domain@2080 {
+        compatible = "google,gs101-pd";
+        reg = <0x2080 0x80>;
+        #power-domain-cells = <0>;
+        label = "hsi0";
+        domain-supply = <&ldo7m>;
+        samsung,dtzpc = <&dtzpc_hsi0>;
+    };

-- 
2.53.0.473.g4a7958ca14-goog


