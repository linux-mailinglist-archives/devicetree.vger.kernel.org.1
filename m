Return-Path: <devicetree+bounces-260521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGq0K/01eml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:14:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 333C0A54ED
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA5883070986
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E2F30FC12;
	Wed, 28 Jan 2026 16:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QCGdE3fl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1AF3090CF
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616657; cv=none; b=DbvH9UXAtd/p+d9l4cWUtoGd9wNMLkNg8ymGo58dyBFtaPsQpl7FFmP6oKgIAapEgP4LTrQKCCShqNnBSKH0mPbJv413rlW84vfF4p9Z3PlEzpDynL+/6cyLeH1ghGKIGjzVXNk+DnWRL75iRrcWikpiHlDzFcIQEnYYOKcxXCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616657; c=relaxed/simple;
	bh=M1WMc4bY0aH9sS6wRakI3vA4XiZlzBJdIzFnhwIKKcI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bg/zsbtwzDu5t6+RBWk4clC+BZT7r/5rS3HFdDCZzRwYaZUA1P0/U0w54E5wlj80iVzEkW0erR1tkGPIoNA1S0w8hqv3TgCfsrI7mYk1H5PyjzL5RytqP65FuaFrzY4Og85mjgFUn0ocrWLKgnQqKCeu5sw/jwp19tg8u4btnOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QCGdE3fl; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b8707005183so3107166b.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769616654; x=1770221454; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gll/OtNLbOWiVZ7Gkg5CJPf2dV1v2rLa1U/xCUl6ltg=;
        b=QCGdE3flOmY5lA7z/CGTDgaVRgJJhCgvFzPhY+UUOLyluMevadnWBPAthao6Ob6fzt
         fM0ofd/t/u4DuJYNdu7J2CHa1tTjwksp0c6qr0bMC04JCUnZFdB/Ha8XsbeH722Dbgr8
         q8IuQtbHDDFTtYw9/4idzi3KOJeX6vpW+xGSgZbthE6D19rCJq6nHy8w9eyXcR5Gu1Qw
         8Zn/vDkz7t25RHFJAIL4JBlAE1ZZZq8UVlPJAV5yjrQT47ruwHEKE4v063h/eMKsaFoZ
         MoktD3oI0Lcw6pOrErNIba9U/Nj/sjQPzgJsgMkmhzwq7ca2uA1XOrEIsrEKjpwdPYQn
         Ugxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769616654; x=1770221454;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gll/OtNLbOWiVZ7Gkg5CJPf2dV1v2rLa1U/xCUl6ltg=;
        b=YY8Z1oZQhWfASXYcKMM+nkeE/9OUL0m8gBSG4m5ga0cD+lGt50RschcpQvjP6hidwo
         bmyNDxmcNB6xD8pq7xJ35VsN24DD3edIUG0WROs2/mehbcERvaPJQ6HEe6Wh7iP0sBXy
         hs1kDhiK3r+VZFYlRY9aDZLhmgp+1+UW2i4ei+rdVRGu//JCuaCyumCIicjrbxHLDjht
         axtgCHOO3LZcj5c2xLFVGcsfA5hiIkOJCv04iDQaXrdL/MQjaIPmAhmXh4N7AszOqdTI
         SIqY8q6kkPankQ5+k3ApryG1iFIROGD31ilufuHxxMjQJ1R7hj11tV02xvDyGRiONEFL
         bypg==
X-Forwarded-Encrypted: i=1; AJvYcCXFR/YGlrM0C/s978McdTvmhP5SR7t+h9cSEVww2XRXryXF/y5dEzuxtcGPO1g4T4ALuP3VF9jk6eVC@vger.kernel.org
X-Gm-Message-State: AOJu0YwooqK2UhPebzS+gQ+Zpk8tJUvffqbhgpRKLdywUk/fgdw7nVcn
	Mc9tEyqRYO9ol2DIto6zVJmI5sVoUbsG1XWlQRAa1qfmcVkIGRxmnbBLbtOdaqwyWaM=
X-Gm-Gg: AZuq6aJTrNWwDPtRnOSwFf/ReyRjcJ+7C0oYmOIZxOZ8YimRNMG+5/PqBLFXLg603at
	nzQbms2TjtArU2Y1tWpLMeQkF8TcVc2RP26i5whTt4Ec3MsDxCnAKxSQjgsp2t3yXcnNR+0Qs7j
	70/sN8fdW13biiR59S/r2lH82wNDNdwuIzgy7x89yGJpies2i5aV+Q3sKVQJjP6RIIt35FzXW2s
	sKSVLHqMhQmzAhmUpFYEeTKZ11lrXNTRbE2jXrTxMMsdLuwa/oyO2FmRVXAdk8l8AmU4wiWaxFE
	k8nYCUd/nTbP8lM0FJw8fH68IrqX+7g3zXT0ScyA0zPZHdHGThttPu5XVJFHE17ihetGab+k2OP
	LE47alOFXVSyn9c6hHLGxARpL6F/dKFXdG6Vo3CwW2OeUETtpgynPfNwaj1roeCIrlk9Ycbqcmt
	emLazslCtWJNZvQUyzmwlIEfFo+0zdo5UI63n3FoyOBrXriaZWS3JlthtI/mU/FLM05/qtZAGr+
	N775Q==
X-Received: by 2002:a17:907:c28:b0:b72:70ad:b8f0 with SMTP id a640c23a62f3a-b8dab423008mr381662866b.36.1769616654219;
        Wed, 28 Jan 2026 08:10:54 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c021fsm148553366b.49.2026.01.28.08.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 08:10:53 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 28 Jan 2026 16:10:51 +0000
Subject: [PATCH v4 02/10] dt-bindings: power: samsung: add google,gs101-pd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260128-gs101-pd-v4-2-cbe7bd5a4060@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260521-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.8.32:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 333C0A54ED
X-Rspamd-Action: no action

Add support for the Google gs101 version of the Exynos power domains. A
new compatible is needed because register fields have changed and
because power domain operations involve interfacing with the TrustZone
protection control on newer Exynos SoCs.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v4:
- add new vendor property samsung,dtzpc
- drop previous tags due to that
---
 .../devicetree/bindings/power/pd-samsung.yaml      | 29 +++++++++++++++++++---
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/pd-samsung.yaml b/Documentation/devicetree/bindings/power/pd-samsung.yaml
index 9c2c51133457112ca0098c043e123f0a02fa1291..4ba555e11b30e6a9aaed457bcb57765bf5b481e3 100644
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
 
@@ -44,11 +42,28 @@ properties:
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
@@ -66,3 +81,11 @@ examples:
         #power-domain-cells = <0>;
         label = "MFC";
     };
+
+    power-domain@2080 {
+        compatible = "google,gs101-pd";
+        reg = <0x2080 0x80>;
+        #power-domain-cells = <0>;
+        label = "hsi0";
+        samsung,dtzpc = <&dtzpc_hsi0>;
+    };

-- 
2.52.0.457.g6b5491de43-goog


