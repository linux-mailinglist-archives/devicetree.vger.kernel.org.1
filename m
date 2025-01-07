Return-Path: <devicetree+bounces-136146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19397A04085
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:12:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 04BF5160B0C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBFDF1E25E9;
	Tue,  7 Jan 2025 13:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Oa3LkUbM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE151EBFE4
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 13:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736255474; cv=none; b=N7dRBu5VW/659hKLdwMmmGLGqoJSvtF9HtP3VNio+1DYVsiHvQzW5hRgp0DKBbz/sBlyOxCt0w05xTzWwe1T7h45RvfRgqzqqb0vl9UE1ZrjSZznDSOFmRbjMwyQZ/NWcFgBiGyqsYZUGF3OGtwKnXI5+Fi2VhalDxwI1yWNZJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736255474; c=relaxed/simple;
	bh=iDJB6HHY2HaOlyF84wZQ+egiA9n9Bq21uLPos6oO9lo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=StX28Wy/MMnPoO6aclBYvykrklsExOnwcX+TZOCYo2SFoodbPfyEqGtSgz8LNBEt92Wk+Ep69/kbK3XAXZzgdh5RZoNA52vhVxfHp0/F3lZDelL0PiIcibI0xpGZUoyOx0a54qdLBCd+HikiuPqSfxe4grcwpdhnbBB8Vmt6rqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Oa3LkUbM; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43616c12d72so24462525e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 05:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736255471; x=1736860271; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BPSDsnf8xMzpznIKoQbetYMFd7ZBSAYbuVYrJIoIquU=;
        b=Oa3LkUbMKIWIDQsxOl0WmnuuoUIqZITQbH6dwuHok82OMmosqDB9amCeeUDVctA4lH
         lVsXJEB4lMK6aD4S3/YO+tKSx82Csh5aiSADjwlnvJN9fW8/c9k63uUU+3OApYnBeEX7
         7wYTY8ELGf14ODuk0b7eBvvqB7m2RtPCGPnZ4nD5bB7QyCd8H5let1ZnZ5cEQnnaJvcD
         a/JT6Rb8mJE14TiTHXAJC35yLK/mr95KoYbS9qqGNqPe7zJDqXLa8nUPOhyaBZmIywBH
         8UQRz2QBAsUsn4cG7vnP+ZoV81QZk6ZYEERovwEarmx0Ace8wXuWituhcUXPeb1jXAyO
         dzww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736255471; x=1736860271;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BPSDsnf8xMzpznIKoQbetYMFd7ZBSAYbuVYrJIoIquU=;
        b=hFbcA4DIp1c8ArPEIJVJRiKvxJxGZjQ9ixAW+I5RzNbvhNqFnnu+rzwVa9kgzM0DCL
         cux0zctcCAjB3oqo/3w83STH+o2j2csdfdAuodBiIM859evYgy3kQgCRe0T/q/TieMZf
         gGH/l9H6KjcLY8vKKUKRLv8KcqWpDoJ/X5LbwiL+0YPNUotSlxOEZ4OD64Q4HqZ2ZZsK
         +mFXhX62vptOcBhqZUYUMp2Q4BJunFuB6fRAJndyWbkygfOWix8rgzcesX/0HfJ1voK3
         YEyW9KSCFLbOW/xIpboL0P0Cnfoxrg/r1CxbInCsd29hpo2H8D+vjmS0jdIZU7Mt8Sw/
         bRhg==
X-Forwarded-Encrypted: i=1; AJvYcCV7ya/c22/vvL/MpN0XIMEbtAqQed7C2SJo7GBg+6hsPnu2obtcn91KoGxp4UkVd1LUDLrEDiZr8vP/@vger.kernel.org
X-Gm-Message-State: AOJu0YwNiC7chdYT6I2f+DFHx28zkaT1xJT4EEszOScq05wcZ7GcyQEe
	FQ8S34M5Mw00l7OyOD1bLWL7BJBLGBAWlBMUEQpti4JRUKyv1rwuHqMyYhYrcjQ=
X-Gm-Gg: ASbGncsotkdpB7PC9jDgHT7cluPZbENrNa2LQoQUFU+u3Jqzka9PGOLij1QZS4/ZvPF
	U8a64EYDagUwO9Suck4I49nWqEmr8HaZYOnqYuNxpC9Z7vdFBNvGH8fPTBZTMtXr3q1+Girw4Ba
	qKtSf/nIs8p/zEkdqrLviU/Mc022C9jb69ui8khDoPI6CZmEL0t4tFfQqkHFvFd23zvbyAT2Eg7
	MujCJMP2UQ2m9VDcYJWj2TeMBZwqHidRBw/4/RM3hnYSiglqNucsK1dg8McKsFmb9vjLvI=
X-Google-Smtp-Source: AGHT+IFcDu8xWuN0TunF1FW8lTPc9ujrnA78CGY24BiMzjjLy9sHjT+/sVzeAlZ8ODcnc2aRlSGLHg==
X-Received: by 2002:a05:600c:5103:b0:431:4983:e8fe with SMTP id 5b1f17b1804b1-43668b93cb8mr217094915e9.9.1736255471085;
        Tue, 07 Jan 2025 05:11:11 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436dd1682e4sm10229135e9.1.2025.01.07.05.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2025 05:11:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: interrupt-controller: Correct indentation and style in DTS example
Date: Tue,  7 Jan 2025 14:11:08 +0100
Message-ID: <20250107131108.246898-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../aspeed,ast2400-vic.yaml                   | 10 +++----
 .../brcm,bcm7120-l2-intc.yaml                 | 30 +++++++++----------
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/aspeed,ast2400-vic.yaml b/Documentation/devicetree/bindings/interrupt-controller/aspeed,ast2400-vic.yaml
index 73e8b9a39bd7..86516cd44b9d 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/aspeed,ast2400-vic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/aspeed,ast2400-vic.yaml
@@ -52,11 +52,11 @@ additionalProperties: false
 examples:
   - |
     interrupt-controller@1e6c0080 {
-         compatible = "aspeed,ast2400-vic";
-         reg = <0x1e6c0080 0x80>;
-         interrupt-controller;
-         #interrupt-cells = <1>;
-         valid-sources = <0xffffffff 0x0007ffff>;
+        compatible = "aspeed,ast2400-vic";
+        reg = <0x1e6c0080 0x80>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+        valid-sources = <0xffffffff 0x0007ffff>;
     };
 
 ...
diff --git a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7120-l2-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7120-l2-intc.yaml
index 786f2426399b..0fcbe304cd05 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7120-l2-intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/brcm,bcm7120-l2-intc.yaml
@@ -130,23 +130,23 @@ required:
 examples:
   - |
     irq0_intc: interrupt-controller@f0406800 {
-      compatible = "brcm,bcm7120-l2-intc";
-      interrupt-parent = <&intc>;
-      #interrupt-cells = <1>;
-      reg = <0xf0406800 0x8>;
-      interrupt-controller;
-      interrupts = <0x0 0x42 0x0>, <0x0 0x40 0x0>;
-      brcm,int-map-mask = <0xeb8>, <0x140>;
-      brcm,int-fwd-mask = <0x7>;
+        compatible = "brcm,bcm7120-l2-intc";
+        interrupt-parent = <&intc>;
+        #interrupt-cells = <1>;
+        reg = <0xf0406800 0x8>;
+        interrupt-controller;
+        interrupts = <0x0 0x42 0x0>, <0x0 0x40 0x0>;
+        brcm,int-map-mask = <0xeb8>, <0x140>;
+        brcm,int-fwd-mask = <0x7>;
     };
 
   - |
     irq1_intc: interrupt-controller@10000020 {
-       compatible = "brcm,bcm3380-l2-intc";
-       reg = <0x10000024 0x4>, <0x1000002c 0x4>,
-             <0x10000020 0x4>, <0x10000028 0x4>;
-       interrupt-controller;
-       #interrupt-cells = <1>;
-       interrupt-parent = <&cpu_intc>;
-       interrupts = <2>;
+        compatible = "brcm,bcm3380-l2-intc";
+        reg = <0x10000024 0x4>, <0x1000002c 0x4>,
+              <0x10000020 0x4>, <0x10000028 0x4>;
+        interrupt-controller;
+        #interrupt-cells = <1>;
+        interrupt-parent = <&cpu_intc>;
+        interrupts = <2>;
     };
-- 
2.43.0


