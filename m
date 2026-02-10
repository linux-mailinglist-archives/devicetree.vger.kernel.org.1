Return-Path: <devicetree+bounces-264403-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLsnL9kni2m6QQAAu9opvQ
	(envelope-from <devicetree+bounces-264403-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:43:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C3F11AF1D
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:43:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C1A53033530
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BCF31DF74F;
	Tue, 10 Feb 2026 12:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mRaTPEp+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8714F1D9663
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770727361; cv=none; b=rrGILXHrTxH8yforFw2NUWOqj+Qz4wgKVRxkft9d1VI5BnqGq4sKMA1vx43w82V0qKPBXeFTegq3T2o4Va7zgTjhZ4NgLTQrBzX6h2ujtTkL4rmtCR3zWiApjgcRjrRyDELRgQ/9I4t2EOgQkXCbthNq1slHsMCLGkzCzCvfwWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770727361; c=relaxed/simple;
	bh=CVJsmgxavod5vW/XmANPcXXcBuMVTgl2hshMIAup3VI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=m5GhnVU7h0IKDN9pXUgA3XjgKs0nfPcVQp/gZO+rRry5EDMXAbaDnkqgpOGtl4ejP2/h0lIFjpKDY2kngxEonFBvmxQuUYGW2y+A4PUB5rKrIx/JqbbDr7JW0ffSu3OMSPM0mPdg0HOhOqdg9+QbNit3X8b7/CddMF37YE+lv5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mRaTPEp+; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-b883c8dfb00so132137866b.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770727358; x=1771332158; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=M4PaNzsG4CVMOxWuwLS+sVgkhMu+9HTz+VMHIXKiHZ4=;
        b=mRaTPEp+6fVnekQ0IiZ4T79vKYQJd9Qmonlhb3WvTZQvJBlt0fp6lqxc9tx/sveI+Z
         6w68uKsgBJJft6xsGqnZF/uHIgw2uDuQQlqejfBtrscS7+W8PcR3mCBLVN4UEvSfP3TP
         jdQb0hQOgaRE2Z4zoWrDMmm2nuVxR9o7xABSbAGl17BS/gJGc7GVzTAlfDYWt8DFg5+R
         ZSmmZe+4BNM/QAJA2h8uED6HOgDoE2VczdhE3pSMxgDsHsM7qq9xAfaPPfikAYXn5MYn
         gQxcDQb2eV9MEH1bnGSPLz3LKGlzssTIHNTk62o4kjFkr8yfD9PAjB0vMX9KhXanuS8M
         ZFKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770727358; x=1771332158;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M4PaNzsG4CVMOxWuwLS+sVgkhMu+9HTz+VMHIXKiHZ4=;
        b=HCz3qZUd1Y0KMpkO50KGiX0jMTZmRVEdD95KIBj0ubtBsMwepdx3Hx1N/guMTSFo4x
         8Q183ILdwwbt+uzN137dLwhCRMBOwNmWx9GUMsAPP8PNFdGJukS4Ls5skf7BG1IDOCwV
         IQLhr0A/F98jZseHhJnWUCSyxLHugzm5UBouNyulnCVaMyGpcND7rBoYLN90Fy2RKUhJ
         BWszq9zEI3Mmh0QcmXAWwqpMZOrG+Utu7Vvw9GEiVLkXz0ZAzc+yKZQincsk1TlhhcHt
         s5QLpcwOLQeIlVdlrjfOpQQjXfGFLo2PBKJIL0A7wM7m1vbhdVuRg8+i4PVs4k/VZwa/
         0a3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHw1AninIak/5DJG35R2UfqnmK+6HZwEiNokNbltX1g1+sxjw2NxyELFGfrnJEEKvYRrx9xusrz8H7@vger.kernel.org
X-Gm-Message-State: AOJu0YzLbnrOVuEGGZn0bq+vYqrkzmOXpI+wY/+f5EejSPCvIAz/aKvL
	jXjgjNRs0MiIjVMG94PWeIrwkk2Oa2GFjgaj3jXQI5JgX+E1tvnE7r4mbuPMT999iz0=
X-Gm-Gg: AZuq6aJQZa0ryvaaSIa+OTFyzpvDopHLAfpGWFr/9Z2gnPUUFxl2hlpC4iuEP3xOplH
	UXipbhA3n0ocHTB8yACAQzFFwsTgX5fNR68C1P6S9i5juX7S/iT7dhW131g/o6KkSFataYMBF1R
	s0a6qxXuli3HZ6tvUOCzm2VbQMBWjIxO49D2bxVyDZzLDKdd/SN5OkC3w+GOk5W1jjrSTS3wENu
	EMRoO29xJ54gzxfwrCLo45iukhDma2thdffJURS0uuIw0/XxMclt+I/mGsRaaEmFBtBQU/H+UXJ
	9lT4wlpYOsX5DEsOovx5zWlGgWjsExP7WQ3IHAdaqWxYdU+wvbJEPjPkMukzLTXxpHFHCuZqczM
	H0TX0BLbmazUUpg+XgNdEr+Q2+4nYioS6dy/NOXezDCbrPai3S8Nr4H0EtN4Pa+/zeiJlW6VMaO
	C71mTgzrcOmXZmllql4ItFP/x514bL8l+mKe6SURfvw1kdafzjODC6uHoTBtL/CnV/abkXaZXhg
	D70eKteYaWdJYIlnw==
X-Received: by 2002:a17:907:c23:b0:b8d:bf4d:7463 with SMTP id a640c23a62f3a-b8edf378331mr970231466b.31.1770727357750;
        Tue, 10 Feb 2026 04:42:37 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ef25388dcsm440823366b.54.2026.02.10.04.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 04:42:37 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 10 Feb 2026 12:42:32 +0000
Subject: [PATCH v8] dt-bindings: firmware: google,gs101-acpm-ipc: add
 S2MPG11 secondary PMIC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260210-s2mpg1x-regulators-v8-1-c429d709c0e0@linaro.org>
X-B4-Tracking: v=1; b=H4sIALgni2kC/23SS27DIBAG4KtErEs1PMwjq96j6gJscJBSO4XES
 hX57h2nTevKLH/EfCNmuJEScgqF7Hc3ksOUShoHDOZpR9qDG/pAU4eZcOANKBC08PdTz640h/5
 ydOcxF6qdZK0R1jofCRaecojpekdf3zAfUsF7n/ceE1tOH5yscROjQLGV0RKitC68HNPg8vg85
 p4s3sTXhqoaHA0PIoYYO6442xji12Cs/qxJLIbxVnltAzRmY8iVwaBqSDSsbG3QXHXSu43R/Bm
 c66rRoAEtSC8UeLQ2hnoYChg0VUOhYXCcXnXMR9ttDL0yOK8aGg3hWbRGsIhz/WfM34vP4eOCn
 +j8s/15/gJQ0lR2YgIAAA==
X-Change-ID: 20250603-s2mpg1x-regulators-7a41c8399abf
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264403-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 16C3F11AF1D
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
This is the last patch to be applied from the original series. Ideally
it should be applied on top of commit 914809c666d6 ("Samsung S2MPG10
regulator and S2MPG11 PMIC drivers") from
https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git/
or any child thereof due to patch context. That commit exists in
linux-next.

Original cover letter below:

This series extends the existing S2MPG10 PMIC driver to add support for
the regulators, and adds new S2MPG11 core and regulator drivers.

--- dependency note ---
This series must be applied in-order, due to the regulator drivers
depending on headers & definitions added by the bindings and core
drivers.

Due to patch context, there are dependencies on previous Samsung MFD
patches, hence this series is against current for-mfd-next.

While these patches compile, regulator probe will only be successful
with my deferrable regulators patches from
https://lore.kernel.org/r/20251227-regulators-defer-v1-0-3104b22d84cb@linaro.org
(already in linux-next).

I think patches up to and including mfd changes could go via the MFD
tree, and regulator patches using an immutable branch via the regulator
tree on top.
--- end ---

The patches are kept together in one series, due to S2MPG11 and its
regulators being very similar to S2MPG10.

The Samsung S2MPG11 PMIC is a Power Management IC for mobile
applications with buck converters, various LDOs, power meters, and
additional GPIO interfaces. It typically complements an S2MPG10 PMIC in
a main/sub configuration as the sub-PMIC and both are used on the
Google Pixel 6 and 6 Pro (oriole / raven).

A DT update for Oriole / Raven to enable these is required which I will
send out separately.

Cheers,
Andre'
---
Changes in v8:
- resend patch 7 only with updated commit message, as all others are
  merged already
- Link to v7: https://lore.kernel.org/r/20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org

Changes in v7:
- rebase against for-mfd-next
- add 'domain_suffix' to s2mpg11_irq_chip_pmic (patch 9)
- Link to v6: https://lore.kernel.org/r/20260105-s2mpg1x-regulators-v6-0-80f4b6d1bf9d@linaro.org

Changes in v6:
- merge patch 21 into 15 (Bartosz)
- merge 'con-id' handling into patch 15
- collect tags
- Link to v5: https://lore.kernel.org/r/20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org

Changes in v5:
- rebase against mfd/sec alarm IRQ rework
  https://lore.kernel.org/all/20251217-s5m-alarm-v2-0-b7bff003e94c@linaro.org/
- switch to async probe for mfd
- Mark: one MFD cell per PMIC, not per PMIC rail - drop or update
        related patches
  - making the series runtime depend on
    https://lore.kernel.org/r/20251227-regulators-defer-v1-0-3104b22d84cb@linaro.org
- new patch:
  - mfd: sec: s2mpg10: reorder regulators for better probe performance
- collect tags
- Link to v4: https://lore.kernel.org/r/20251110-s2mpg1x-regulators-v4-0-94c9e726d4ba@linaro.org

Changes in v4:
- Krzysztof:
  - s2mpg10-regulator.yaml: move additionalProperties to after allOf
  - s2mpg10-regulator.yaml: use $defs, not definitions
  - split samsung,s2mpg10-pmic.yaml and samsung,s2mpg11-pmic.yaml
  - add full example for samsung,s2mpg10-pmic.yaml and 11
  - acpm binding: commit message update
  - acpm binding: pmic -> pmic-1, pmic2 -> pmic-2
- ensure binding file names match bindings
- fix typos in s2mpg11-regulator.yaml description text
- collect tags
- Link to v3: https://lore.kernel.org/r/20251103-s2mpg1x-regulators-v3-0-b8b96b79e058@linaro.org

Changes in v3:
- Krzysztof:
  - split s2mpg10 core binding into separate file
  - drop PCTRLSEL values that can be described using standard
    properties, and update remaining macro names (self)
  - drop maxItems:1 where not needed (Krzysztof)
  - samsung,ext-control-gpios -> enable-gpios
- fix LDO20M_EN pin name -> VLDO20M_EN
- move all binding patternProperties to top-level
- one (driver) instance per actual rail, not per rail type (LDO or
  buck)
- new macro REGULATOR_LINEAR_VRANGE() (patch 10)
- address some (pre-existing) checkpatch warnings
- various updates to regulator driver (patch 16 & 19).See footer there
- more descriptive commit messages
- Link to v2: https://lore.kernel.org/r/20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org

Changes in v2:
- s2mpg11 also exposes additional GPIOs, update all relevant commit
  messages (nevertheless, GPIOs are out of scope in this series)
- fix some commit message typos: s2mp1 -> s2mpg1
- patch2: drop | (literal style mark) from samsung,ext-control-gpios
- patch5: add | to vinb*-supply description for better formatting
- patch13: update ::of_parse_cb assignment
- patch15: drop duplicated ::of_parse_cb assignment
- Link to v1: https://lore.kernel.org/r/20250604-s2mpg1x-regulators-v1-0-6038740f49ae@linaro.org
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

---
base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
change-id: 20250603-s2mpg1x-regulators-7a41c8399abf

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


