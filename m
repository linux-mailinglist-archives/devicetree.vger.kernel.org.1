Return-Path: <devicetree+bounces-263173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eL8JCtEOhWms7wMAu9opvQ
	(envelope-from <devicetree+bounces-263173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:42:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE6CF7BCD
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:42:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EB7CF30072B5
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D13BB332EA8;
	Thu,  5 Feb 2026 21:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uqa5GMcC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED27332914
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 21:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770327754; cv=none; b=ZHfZz/niUk2N2MD/MGvEiIFdU3MFLCCz4Xxgsu/Eco2LgIKxVA2HzvK3otRAmL42DPidqrmcQZesHIE3ieDa4EdOfu7GwX1m12BO75VTwK3ii/cnIb7gJxOWNj/5pSMfZZPBuAqnTAMRmbNjCkbzujvgTC+N8CLocc/Fvn5y4tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770327754; c=relaxed/simple;
	bh=8zHh24Y4fV58aGGijAkWV1Y30FrSoWjyJKGi5X71ITA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mElnZ1Jp+tkiXlwM3P1/oDXtwOEApFGSLv3KI0gmG7dB4lZip1BUwIncphHi56zwLnGXZ/7y4Jk7JrZOsCNnLKHTC+T0LdYqYFe+qDTVEM3HApEaSpw9S7rM5Nh3ExrPtbjUDThLOG+LORloaNNROdnY8OKGSQHx8yBuV0IFBEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uqa5GMcC; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b8871718b00so2395866b.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 13:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770327753; x=1770932553; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=82wBgeiecw8diioZs9d1L/8/7KXtnNKqceYMhdMY7vA=;
        b=uqa5GMcC9a9gG6XSFYDOpv/E61h8KL2rFnfGC6gNGNJoodFEojfsY3JjtECewJfJK4
         Ton5rOMwrH0g1fMN7tm6maIrSiWlCxSnq2cyeDvZ5Ye5GNYMntmKfqkhsVZosejsNwdk
         8+SsIzPcbQMClLRkEeV/p3ZCCCKqn/8reaus5C/3R6m0p0KqFIl5i/5bGYLOK7KN7E4D
         cotUcaivP7XekcpUCmMC76wNiIwemtvtoN1PtsdZFov6Ho/7vRHIYGMvdZLNkTm/O/AN
         Z/m2jxOHwjxS+/ghVYdrJuoq/3uJJWi2H4Tn1Shw79TDqCQGT5L8Iy5ZEj4aZctjyIu6
         mhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770327753; x=1770932553;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=82wBgeiecw8diioZs9d1L/8/7KXtnNKqceYMhdMY7vA=;
        b=jJURL0M29nMfy3T7juQtACdyLVtviNH9JsTJ1GzfDlBQa602hkQkAcXZSDjnLwucpn
         GquuJwwnE9rDBwLnnxEqEGwEAbEGegtjyBAFVvUkcAUykWA9KDqXbxn6s124LfNZ2lIH
         SPSjRJ3tq2WD3VJBpYIzLLsiViEr9EjIypFP1iJ2p62RqkjK1AcM3XA2+ClDlnjrd9pw
         RKIu09Z+3vzLuxou8LaBISKrAg3waI41odCHDZzastRauTo/j77ulsoAwIHAC/MViLff
         PbzSy4lp6Pv6jRC+TuuhPmEp9SbTQfinDm5uvUrG29e7HM5Cyh38ljPuDKRekff3Pb+C
         /xAQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6WR/KtUEacXrITHv/HFlHVOg0YfsjcEaTRqxsK88hBf73IMrakRktTc59ZbzTv+E5Fn7YmKHoiBX5@vger.kernel.org
X-Gm-Message-State: AOJu0YxjVm70KvPBzABM0NOhV5KCbsElDTApKYifS8nwhgtVqT5zT8vo
	jQbMW+QRHNncR1ktDfAb/S74f2iQBQ0QZB32GwBm/4ryT+AWCtvpb0g7ann3vUFFnlw=
X-Gm-Gg: AZuq6aLaxHCE+vY0eqV6PqhzX/2zVdTm38JPnAL2cXu1vX+t3K6xcZteZt6objwc/OX
	/99kSt537/NQZj7+u2Xl/wXEAaJ/2ftWOATuKeJVh8G9LSlN80Z5p83VrQPGVvwOwqLlC49i5NK
	Roo3KZLQk/g0JyX8Wkbrfv9t+Nb2cDafr4INiTBP0KPcvbkHJB66GFCUEWieKHrFKwkKBCEjmQQ
	sPofeWxJdrzXJ2qeW9hPDyF8rw0+wDPDhVvndeWRdkBcq6XJ8fH32WJ7bX57NUAvChuhFH+xMS7
	oO8pCR/MLwXHQqH9KG+ERpUWRz1ryuohSLHynkqZlS3/oi/nbre2qPoH8tkVQ09+1vW5ez/gmRY
	wsDN+tTpa4Deqpek2wBeozXP7PgmZTfBUVBXQXXN1Y6uJqso6fTWYv3irgVbagw2JAnCLZwSq4/
	lpWQbEf03ZYxk4cOxZNFyoiwNY+b6hIBt7UZ9yAyW8PxN2/Irnyb0ivbidaGClBC7pmgF9JTLX6
	DoLsA==
X-Received: by 2002:a17:907:3d4b:b0:b88:6542:86a0 with SMTP id a640c23a62f3a-b8edf36813amr26650466b.54.1770327752702;
        Thu, 05 Feb 2026 13:42:32 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda7a0074sm21859966b.18.2026.02.05.13.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 13:42:32 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Feb 2026 21:42:29 +0000
Subject: [PATCH v5 01/10] dt-bindings: soc: google: add google,gs101-dtzpc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260205-gs101-pd-v5-1-ede49cdb57a6@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263173-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.167.255.208:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,linaro.org:email,linaro.org:dkim,linaro.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2CE6CF7BCD
X-Rspamd-Action: no action

The Exynos Distributed TruztZone Protection Control (D_TZPC) provides
an interface to the protection bits that are included in the TrustZone
design in a secure system. It configures each area of the memory as
secure or non-secure.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../bindings/soc/google/google,gs101-dtzpc.yaml    | 42 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..a8c61ce069d6910c47753bf14a792eb58e6ae182
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
index 900fc00b73e6d17443f7cee12fa7589b56facaaa..7fc1964b6beaf835a398a9bcee4ded191034d2e3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10855,6 +10855,7 @@ P:	Documentation/process/maintainer-soc-clean-dts.rst
 C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
+F:	Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
 F:	arch/arm64/boot/dts/exynos/google/

-- 
2.53.0.rc2.204.g2597b5adb4-goog


