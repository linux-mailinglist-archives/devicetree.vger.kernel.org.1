Return-Path: <devicetree+bounces-277338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLboM7DEumkNbwIAu9opvQ
	(envelope-from <devicetree+bounces-277338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:28:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 476812BE327
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:28:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 248FB300E5E1
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6A83E5599;
	Wed, 18 Mar 2026 15:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NnU8yo1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479F13E317D
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773847686; cv=none; b=bQQcqSf57phBQir7Olaesp76oLNngYjseDM6KDHFjWp/BXTLlVO69HMiJdsBLbbHj9MyZwv9i822qHBlvPEfrH60nahzjTDrT+PI9V6sI8e5xmn/vT89XPc970NDj0rQFZFF4y2OFaLRoVN2nxZFQ32pG/5PhX55qn+Js6sOYC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773847686; c=relaxed/simple;
	bh=5HBp8bV1/vaov7w+S+97JbyTVIIwdoaJlgTvdiC2X1A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RsLhDCxUdK9nciVmqJQO/o9vInlGf2G91YMSA1ZuAlCE93XPDizXpYY7oMbDfTYmxc/5X6Qcg4XCelxTGa8J2bfAMHeWd0Ha8uvHnifBcsmFyb2vXWy1FS3rTYpDM+n3vt2f9qW3S6vdvl6OQVkLfynJrBj2EbZt/89MG7hz4cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NnU8yo1x; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b886fc047d5so150870566b.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773847680; x=1774452480; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P48rUo71pAt5qHURMk+v6z4m8HRw94KlYaJLWRXtfGc=;
        b=NnU8yo1xqfBITHf4u3NjINasim/rbCpKIS93FUhT0EE3Biw7YkfIUwJuo0yqMVzuXG
         FYAtg5s7f4qnt944sWCFFeIJqmBK14SCVlPtHGeQxJK8BEkHOAqWoPjEjOREA5QXns5E
         9ylgYoCggqr4E3Fq11JRlnOWZAxVE9cfDjS7nEQDw51/OuIXl+sK0cNPfKoSR7My2lkY
         B3vYWPPrPJ5mPSaFE+3mHnpMpMKwRMWPFXpAw+Uc0aaACKvXue94mhEVwJ8OOqNpxtxq
         MKJc8bHfO4pU3Ywru49gLqzVFRgmIxfT8WmJ88ZusLp+lDXRGHsyb5JL2hQWE0aj5KZK
         q0GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847680; x=1774452480;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=P48rUo71pAt5qHURMk+v6z4m8HRw94KlYaJLWRXtfGc=;
        b=PtBLMoBebc7B+Y2DDzvD0aUUd2EM6itTqWXcD5Bsabp4sMjUFHXcg8nl439TecRKdM
         enqB6RPBvUqjM0UtAT+9/OIe8Qp0BsPzKKQFWXw8wCdig8h/V56q/MXGxAgGgST/8GvA
         5Bnndxd1H3fnaOGj2XtSoQBdeNHgdFDpt4lPol2qPh3hxbOy6hLS2Rmt6EcsJj0kAytb
         Pr4Z1YGLkyxNwbcuom0nOa+1Ex9j06qnwcBj3r2Cu5mFxyge/2fvegLp3T4LUGfeE8Xf
         2zsajLr/AvzV37ldOkDrKgNup3c2svadhZ3ZyM21gcla1PXrzKZTXWF4/iT2mhwkx1Do
         U3rg==
X-Forwarded-Encrypted: i=1; AJvYcCX/WKofkRrXbLtVw535+eYXgyoMRKL/OPwUSRWyqicyLidQVBCXyba966Vr1NyUo7BTl6B2VDcHz+Mg@vger.kernel.org
X-Gm-Message-State: AOJu0YzLlC/EMp5Uk6PP2rDwG0kiPfTfRmoJce0IHZEZ4hC/YEweGfoU
	0eDEY2+iNqh4f/DNeh3TLessZRcA4lSQG5aAYuW3GLTTHC0Nm/aE09oKMrw2ZfUZjlQ=
X-Gm-Gg: ATEYQzzKBGuRnyJPfnBOCwVjJuLCSKyJiOnmhNvT/LYkAN+sp2c+7ISVZW8hUUWnoQL
	Bze9/bZpRCbT9a7bmSau8v9/ps45AToAudbF6xvjmlBTh7ogo08k2B/PlQkHWqNV5/Rznh8mVy9
	O/2l8JgLh4M8j8q9Dh7a1zV5kUS+97l2dYZDfQ08m+5vZj7F/e1Oe8tiwf1NXylIEO7uqmkVAOx
	bH2I0hU8jaUf9T52bO+eF5hWu8BRdy6555DQZ8mmnFUAPoX0cMl/GH5hWVumAOcYuUBa7G+Ct3P
	lskQTMbC9m5MZFbE7u2SayKV80iUlNoMZ09m64Z12HS+TtB6MfTGSr+2nQS9FJ4/GObkol4/C+/
	WwdPFsj5epj8hl+DvGViy7ZgAY+YQaUlKap9Z5p9bfusmyyzw8sciHVylso+0hEcuS4ZqranROe
	bXb8pm/+zc4Bs/c9sv5/CAQ47LKGo0XrU/00DQDBgJXPhgLKsvQzQp8qC+gk/gzN8YOYUEX5bwm
	rAa9F3hGUmWqrg=
X-Received: by 2002:a17:907:3f9d:b0:b87:b0ba:5d2d with SMTP id a640c23a62f3a-b97f4b86e27mr250568466b.57.1773847679718;
        Wed, 18 Mar 2026 08:27:59 -0700 (PDT)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f173a3e3sm226989566b.61.2026.03.18.08.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:27:59 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 18 Mar 2026 15:27:47 +0000
Subject: [PATCH v8 02/10] dt-bindings: power: samsung: add google,gs101-pd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260318-gs101-pd-v8-2-241523460b10@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277338-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:email,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.8.32:email]
X-Rspamd-Queue-Id: 476812BE327
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
2.53.0.851.ga537e3e6e9-goog


