Return-Path: <devicetree+bounces-258494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AZNF/ZIcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:57:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC6569532
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:57:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 63EC13000B8B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B3444DB85;
	Thu, 22 Jan 2026 15:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HdOd9E/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9298E44B662
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096629; cv=none; b=bBOQjwE9AvC0soPFofhMOGJzzRexnfLH2J233u7s5etLQmDCRgHLYyL7haoP00LZFwDaxwR+D9spLiDDciXlCJpZdEJI5Sf3VVaaM7Ud6TwdyfyXUgqaNITMIBo4nobmWqj2WeiVcgGbRXvW1b48Ay/tdbh+2QZirwoAvrbFopI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096629; c=relaxed/simple;
	bh=Bnqejdaa4hI/3mIGtB3IlQTGMv1yS7F4oLEOhXH3rRk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XLCWy1IQHK9gwlBBI8aP3kXSK1p5PDszK5jkLQXcyXSoNWIts9fLxWhO6pzSKS+rbcuOYbRl458xrnV7ETTHrhonnAaZs/dIBfqrpsPwVya2MHAT9ZUDs14dgdy+o20235MZCRrNytVXmLJlnLzaP4bBlYO2RCqed8VgIIKunpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HdOd9E/p; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-64d02c01865so1782783a12.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769096620; x=1769701420; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qODehQYebDqLL7EwCAh2DU2WeYX+gdQf3MnpwlxtGlw=;
        b=HdOd9E/pCSyg0dubV/wmVSvRQtr2CwTMubYBhisE6Ok+jZ9Ftr/hMT1qc0Qei2vV2J
         kUMBuxbfbLJGXM9bcmcMr1PpUGUpixQs0dMUxXB8WeI62DF49BrMCZZyv8YmLF4SnCzM
         6bvhgQaM1ye1lM8vKXWee8FR162RYr+5xj1EG+7qTyL5juAhl1OeSrn9koG4PE2OJRTG
         Bb58U+Bg3gnFQdUmoQLb7IzRhr2MVBz6H2ze+ABT3gHLX2Cf0vZXBNYepCS8Ij55tCh/
         eKdRr0fj7Doa0TZxEhOlqY2lsO8Gqg90wuWqhFxOQORetYOYwNEdnLSFvwLCffGv4pRH
         zUpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769096620; x=1769701420;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qODehQYebDqLL7EwCAh2DU2WeYX+gdQf3MnpwlxtGlw=;
        b=mtcnTbCV/aOV0YnUddPqLT+3u3L1m9EdgU5lsP+Pwa00yefQII3UIZAljmsLgD4AUS
         QfOcSA+lSuIHm2NvLaB1bB0IebAYnENpIuXbsXKkiRCSdynMThVazgeCRbBdfo+HrWDD
         J6EaVhWCIG5sHIo5C4F+5nYalAX0TfIREPD2oNTyktJq8ZW1VxIVsf8gmI4S+WsWGT1x
         ZaO+V8F1SRZQhSlmN3H0UjqUWmqo6e2bzz3xnQjEHK1Po6X8SRemiHzKT8J79hQQwHso
         msRGqLplUPiU+uyKdIg4PS/E57jQop/B1g1RM6OlBQU8OW1KFrtQN1qbmWXm1HXOdPfN
         9sFg==
X-Forwarded-Encrypted: i=1; AJvYcCUJBx6dgga3Nf83sN0UHiQ1nbCQCbo5eQmnVlg7PVn5IX/7WO7IKzk3ASrWYGqVTMYCqR5ZM1KwmkFl@vger.kernel.org
X-Gm-Message-State: AOJu0YwlqkoRXVvtAeLq5UWmPlTfw4cMSoeFvCnc4jTgw3kUkycjteGH
	gZm6NE1Q6bQ2kT/0hMnqX6QcDXLWmz3IAd0Q5DzxTFaeGoA8/0COl3QC6UwCOP8nep0=
X-Gm-Gg: AZuq6aJAyDyJh2/TFkAuC2ZEj9EVGBo0hAu3IhIogiFNjKpjxC+AsJuwgO6kUbC3TId
	2yznuB1hvsn7ItdwnwHtsFcUwjuI+4gHvZ7AvxSZkW/NtmFKgPz0VHq9A9V3GvVHyqO3i4R0leH
	325XGJa7/OA8lx5XZ5oSr+IsM67T2RTR+At7ug6V7Wsa6gEeJTBSXE4Rd3VapMGD5CmyQtT+Mu3
	k6h5Oxkg9gdkF/e/Ts+NIyGjEFDBzsZ0S6xanNhiqrxAnW5P/Esp/tCnpr0xNEIoaSU0CPqRpJD
	jEOvCXXd+oSrWTdDulJeY5LxK/6ly9YXfGhyXNDde7Kr7vxriYZGGII2jfnnjJ1Wz8u84D+FiXb
	z/+YmzJyd6I7qZ8Tv65EC04jS96FamRO+auD//J42nhG34eH0vEh3SO0gb1m3E6ZKoR1ngSRrAU
	V5DEsHr96JHtorRdEwSOfZ9ogRYMd7FV125jhiAZsMFw1ez7UWWdTBTPuiCAnDbcO1zXo9UHnr6
	qUTZQ==
X-Received: by 2002:a05:6402:268f:b0:658:1274:382c with SMTP id 4fb4d7f45d1cf-65848770a7cmr40127a12.15.1769096620351;
        Thu, 22 Jan 2026 07:43:40 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm16334363a12.31.2026.01.22.07.43.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:43:40 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 22 Jan 2026 15:43:34 +0000
Subject: [PATCH v7 07/20] dt-bindings: firmware: google,gs101-acpm-ipc: add
 S2MPG11 secondary PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260122-s2mpg1x-regulators-v7-7-3b1f9831fffd@linaro.org>
References: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
In-Reply-To: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258494-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3BC6569532
X-Rspamd-Action: no action

In a typical system using the Samsung S2MPG10 PMIC, an S2MPG11 is used
as a sub-PMIC.

The interface for both is the ACPM firmware protocol, so update the
binding to allow the relevant node and update the example here to
describe the connection for both PMICs.

Since we have two PMICs here, but can not use the 'reg' property (as
the addressing is based on software, i.e. the ACPM firmware), the node
names reflect that with their respective suffix. The existing 'pmic'
therefore becomes deprecated in favour of 'pmic-1'.

While at it, update the example.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v4:
- Krzysztof:
  - update commit message / subject
  - pmic -> pmic-1, pmic2 -> pmic-2
---
 .../bindings/firmware/google,gs101-acpm-ipc.yaml   | 50 +++++++++++++++++++++-
 1 file changed, 48 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
index 4a1e3e3c0505aad6669cadf9b7b58aa4c7f284cb..e68f9c3ca5e2619bacc0c8d843ec4984c0947fd8 100644
--- a/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+++ b/Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
@@ -37,6 +37,7 @@ properties:
     maxItems: 1
 
   pmic:
+    deprecated: true
     description: Child node describing the main PMIC.
     type: object
     additionalProperties: true
@@ -45,6 +46,24 @@ properties:
       compatible:
         const: samsung,s2mpg10-pmic
 
+  pmic-1:
+    description: Child node describing the main PMIC.
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: samsung,s2mpg10-pmic
+
+  pmic-2:
+    description: Child node describing the sub PMIC.
+    type: object
+    additionalProperties: true
+
+    properties:
+      compatible:
+        const: samsung,s2mpg11-pmic
+
   shmem:
     description:
       List of phandle pointing to the shared memory (SHM) area. The memory
@@ -62,7 +81,9 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/regulator/samsung,s2mpg10-regulator.h>
 
     power-management {
         compatible = "google,gs101-acpm-ipc";
@@ -70,10 +91,12 @@ examples:
         mboxes = <&ap2apm_mailbox>;
         shmem = <&apm_sram>;
 
-        pmic {
+        pmic-1 {
             compatible = "samsung,s2mpg10-pmic";
             interrupts-extended = <&gpa0 6 IRQ_TYPE_LEVEL_LOW>;
 
+            vinl3m-supply = <&buck8m>;
+
             regulators {
                 ldo1m {
                     regulator-name = "vdd_ldo1";
@@ -82,7 +105,13 @@ examples:
                     regulator-always-on;
                 };
 
-                // ...
+                ldo20m {
+                    regulator-name = "vdd_dmics";
+                    regulator-min-microvolt = <700000>;
+                    regulator-max-microvolt = <1300000>;
+                    regulator-always-on;
+                    samsung,ext-control = <S2MPG10_EXTCTRL_LDO20M_EN2>;
+                };
 
                 buck8m {
                     regulator-name = "vdd_mif";
@@ -93,4 +122,21 @@ examples:
                 };
             };
         };
+
+        pmic-2 {
+            compatible = "samsung,s2mpg11-pmic";
+            interrupts-extended = <&gpa0 7 IRQ_TYPE_LEVEL_LOW>;
+
+            vinl1s-supply = <&buck8m>;
+            vinl2s-supply = <&buck6s>;
+
+            regulators {
+                buckd {
+                    regulator-name = "vcc_ufs";
+                    regulator-ramp-delay = <6250>;
+                    enable-gpios = <&gpp0 1 GPIO_ACTIVE_HIGH>;
+                    samsung,ext-control = <S2MPG11_EXTCTRL_UFS_EN>;
+                };
+            };
+        };
     };

-- 
2.52.0.457.g6b5491de43-goog


