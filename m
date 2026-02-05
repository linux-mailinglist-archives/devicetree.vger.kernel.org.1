Return-Path: <devicetree+bounces-263174-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOoDFOsOhWms7wMAu9opvQ
	(envelope-from <devicetree+bounces-263174-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:43:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AE7F7C1F
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 000DB3026C06
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F5FF332EDB;
	Thu,  5 Feb 2026 21:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WCUQenpn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE846332EBE
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 21:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770327755; cv=none; b=nnCb4eG0V5ndTroHPFhERabMiQ2H9QbS81DJIOEnvTDktHnHVjZyaM3jJhUJerm37Dhpkw4GBJiqvZG7LYos7ARv3RD21Ky/PpW/73V9wpMKmRQzk8jlAvppOOrWFkPMHmrSvIN6w8/HxcNuQzTv0r/6kxrkh5UAdQZRjNPlKC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770327755; c=relaxed/simple;
	bh=14I3r1tdw1ZjyVaMsKvMhSGXbGc6Q0pH7IHH7aoW3S0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EmOypX79rQcpMz814DApS8gGqBL8d8jHmOz+GGPlw7C2+T0t7KUFj7BR6JVPEcqLVboHrkyKCTK55T3gy0am+rtPTWVCVgLOfmsI4ZBizNyMAw0Q42LxOKMrYuDRLEpLBIan4/Wrz4A7P/8bOdpc2z02GL/ZYwwjdj42POoqic8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WCUQenpn; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-65815ec51d3so2429232a12.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 13:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770327753; x=1770932553; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ykCzK4+rV2dgKa7+qS2lLnqsh4ES+AwZxLAa8QRXGOg=;
        b=WCUQenpnajmwHxJmSC1eGTdTBCdI5EPpBRyqWPLNBtm6y7ytG6WhMDbm6GIWt2AdCF
         Thh5bp00Daj9jpoBfbXvYDEPXPpL4drAXT42PRd9r8fwS+FmjibC2jPqJRe05dp7hjse
         CvVliim8JCwD4WthHhZpsUgQNHzdYf5RvlWvvuGqcvWyivW3AvkcHleNht49RssyMrRS
         PDqKvM+9v9aDnI3RxaygFdmXoedpm3lvoKQG8VBC8dTawK8RTvCz0yjDgCApvgouvKS7
         vPljMAGs9rpcYanonjZhJbI3zRRLOHGBPPVHsnXaUCq3kx5Es28uPQcq4+g2cU2mw6Jm
         Angw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770327753; x=1770932553;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ykCzK4+rV2dgKa7+qS2lLnqsh4ES+AwZxLAa8QRXGOg=;
        b=w2vF4ftZTMTvmnud8zkDMM2eoW6GtiZFMX6GWRT5ExsHeWaugE78LUsVQo+p4ewBpL
         +E5pBk58EYxme9i5N+AZS39dgN7Btxv/bWpiJZYyNccM6Dz+qO4Qa/cpPWel5hBHm9kG
         vXInthLdP5iptyUK8RyImA1PRCHKlxDrTKdnztPxFFynVE3JJi7bXXl+CG54gZuYE7Yk
         qrRvPa8b9WW0Chs7uLI/9h3lg16Nh7NI9GmlCQGSK1hrr3m68AJbRbGyQKR1HykHYQQg
         xBbcKDwrugSBZYTtf90mUgcravZcfTfI7vgijQeksNrXHFJb2I0/4+oCxIciZzfjmuH6
         vWjA==
X-Forwarded-Encrypted: i=1; AJvYcCVAHGL/QKbBIsqzu83we5GUZVg2ZCw2g706ND8yh0JT00F/G1RC0VROowX3dVQMT6SAHWiySR08ykfX@vger.kernel.org
X-Gm-Message-State: AOJu0YzSw8iMHVGdpua+lFW7T4/yQil6+5cxuoEHjpDm0htioVfW0qnT
	Zz6fsAkPs85shvnzGzFTJJFvLhF5BSIiOfPUfs1zMm9uXMNhQWSwrTP4rCTVVlPc5jg=
X-Gm-Gg: AZuq6aIRX9IriH05Q0lV2x6pU1Ur9hFST5zCj7BoLChItnQjPwmNJrhRXan7M+pZnlX
	8mu1RghpEhD6ARTnf10S7t0gG2GtjDN+4/t+Opbv/6Husi2UBZwsrOyPHWAtanR+JQftu70wx3h
	98+J1cvLvbdtymgaFqIsTz89aYu3SntiKOGwddcbXB3srBi6YfoZCPHhHW1Pbhp1Z5XHl+6SE+C
	l2PypbvhkUDbRCdWQZOqHle4rtDy2PJbipE3KINszVtMyQbcF25bk4IJT5UPw2DFq7AD7orh5Nz
	2ykcb52LviZtRI4jJrxBh2Qf7eMruMigLI983Kh2+7g3EQ1OOFw5hsXCRT6q3BDfrzL4nevqbWX
	9FlVxC5igBtw7c5aPNjj+j64E0DbHveh33w5ixZjCsBhEkF++E9i7nF2/XwsrR28zFF8L7wck7P
	xp6RiRvTuAH+UT3DnbhfK+GCnOwF3Q+GiSLT/OeJe7KcfWie+5wxZtwb8CLmFBFI/ge1wukMr+Y
	hP+UA==
X-Received: by 2002:a17:907:ea7:b0:b8d:be69:78bf with SMTP id a640c23a62f3a-b8edf19e91fmr26932766b.20.1770327753301;
        Thu, 05 Feb 2026 13:42:33 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda7a0074sm21859966b.18.2026.02.05.13.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 13:42:32 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Feb 2026 21:42:30 +0000
Subject: [PATCH v5 02/10] dt-bindings: power: samsung: add google,gs101-pd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260205-gs101-pd-v5-2-ede49cdb57a6@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263174-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.8.32:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B4AE7F7C1F
X-Rspamd-Action: no action

Add support for the Google gs101 version of the Exynos power domains. A
new compatible is needed because register fields have changed and
because power domain operations involve interfacing with the TrustZone
protection control on newer Exynos SoCs.

Power domains can also have a power supply linked to them, so add
optional support for that, too. It is believed that all (existing)
platforms could benefit from this, hence it's not being limited to
gs101-pd.

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
index 9c2c51133457112ca0098c043e123f0a02fa1291..3f1a2dc178625f8cfdbb913d0c7cb5b2519fe477 100644
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
2.53.0.rc2.204.g2597b5adb4-goog


