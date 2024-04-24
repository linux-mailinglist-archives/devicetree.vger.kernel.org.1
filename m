Return-Path: <devicetree+bounces-62121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B438B00B8
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 06:56:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C83621F250DB
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 04:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2E35154BE8;
	Wed, 24 Apr 2024 04:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PB4HwtaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA745152E0B
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 04:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713934573; cv=none; b=YQQ2ufw8O/XvH3LSoqFYi4xgcJbmUVtR4C/dCv/ubtSa7ITwkIOHXTJVHeOz/ig160wTMxkHSxMtSffWTAoU3O4Fdv17hasv9kbDpNNq+MU69EhrEJ15wgKyHs4O3b8QCubAzPY9vJw51dyIoIc17hLThtPh0zKFFZi96d6fQhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713934573; c=relaxed/simple;
	bh=6mib2j9Tqix0TaZXohSBIbKHbCUlawrXg7W6KyigNSw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AUP6ArhWywS/jhGTgsRDoHBnGlcP5ieqeNZgRs92/+D67NpvC8OQELhQp6aBL5lJQoeJtBw21/zXovpAhiq4wRMfomVijwYtwSDgcHHrO68EyKxmbbsJUWpZ0ulD99qW6nySO0X3uOjWrannsvxpeZ8fr7bEHPrjtcSPiRwKQJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PB4HwtaL; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41aa15ae26dso15521585e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 21:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713934569; x=1714539369; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zwJb8zBIwU1qwrSJtAlaHALtfn+UoOXAgTY/Ygz1F0c=;
        b=PB4HwtaLxwQuDAJ1+4S6Hh0f3R9pSQgD9j4bouQ7/8tkP2kNldm7ADdNkwhct/otUn
         pMniQwo1pll6SZ3QhbksTV/wDktKPTRT9A3Dc+cvjx0i4dA2ZSxbzADfawhOwc7RaArM
         uz4LrY+2kT4ZyHAX4bi42Do+gFLFQRFmuqMdEL2fU195fCIZXo2FpbQE5xsQY0FPWmL3
         NaMuHkUG1cq3c6ZKbKXw2gZJPOI6DDysFp8ImTR4EOR/E6Us/CfZlWDLfbBAbvQlHbHk
         7Rhh/Rxa6/Uy9F9lsCsU1Lz4t7O3fo4WPpTgDxgvDmUwR+SqflPe2vAo4/sSWO9eXcGb
         cuwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713934569; x=1714539369;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zwJb8zBIwU1qwrSJtAlaHALtfn+UoOXAgTY/Ygz1F0c=;
        b=AOChiko+Rx73lT6iz2Gemw2BnaqOl3lEkvyG04IPk4Pl4UbjrSARznQuYoeprMWkb+
         jCgPU34QAm5FeklpgkWtaztRnhtJ1W29y9MfL8WA9Ki7ajcBzDagVUzBmDY4DT79bRxa
         ySwNW790IRCh2nIoz018MnXJdOgC6YIyjBOHCVSie61m5CuqSdlX0HsRB56VBp+JAtj7
         497HSormCm7RtdTpZazm18evt2m4clfvBVF9TXHWmbynMZRTtgWbcM/bxznJp/kuUGcc
         msnMHAZSm9NI3u9x0FyWPN/ArDKPzPJmiaqohmZNMTs0XrxV1Y716kZ4mim4hOh150A7
         ULXg==
X-Forwarded-Encrypted: i=1; AJvYcCWaqrSTpW720OvUYk14nHXFpJnvkaq7E/uPbUicWKMFIJ5rbpwORhvQ7SN21oFW4KEgRBLtM5FuN+zFGE6iWGW5Xbw1qLi53GMpiA==
X-Gm-Message-State: AOJu0YyDldmvIfMfR5VeV6b9gdi+ZZII6iBASBO1lMCeiL4GB1BM0JKQ
	hQisv1mPLIK3Fx2RENH6FRepDPbbZHcIynChhTRabsH/QI2OhMvKhquIw1/23RY=
X-Google-Smtp-Source: AGHT+IECbaRpCw/YzRjoEkY/lxmPUGgnBF70hzYQWKqS+HctwjDv6uyR/KMGlR/d7ELDLk1akbjCRQ==
X-Received: by 2002:a5d:4c82:0:b0:346:85a0:20af with SMTP id z2-20020a5d4c82000000b0034685a020afmr705374wrs.35.1713934568774;
        Tue, 23 Apr 2024 21:56:08 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id j6-20020adff006000000b00349856b640bsm16124704wro.67.2024.04.23.21.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 21:56:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mfd: allwinner,sun6i-a31-prcm: Use hyphens in node names
Date: Wed, 24 Apr 2024 06:55:21 +0200
Message-ID: <20240424045521.31857-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Underscores should not be used in node names (dtc with W=2 warns about
them), so replace them with hyphens.  This should have no impact on
known users: Linux MFD driver does not care about children node names.
DTS was already adjusted in commit 0f47ef3ff1bd ("arm: dts: allwinner: drop
underscore in node names"), so without this change, we observe
dtbs_check warnings:

  sun6i-a31s-colorfly-e708-q1.dtb: prcm@1f01400: 'ahb0-clk', 'apb0-clk', 'apb0-gates-clk', 'apb0-rst', 'ar100-clk', 'ir-clk' do not match any of the regexes: '^.*_(clk|rst)$', 'pinctrl-[0-9]+'

Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/all/CAL_JsqJfT-jui5P56CO4Fr37kr5iNN8dpxt8ecKeFmdVGnRYbA@mail.gmail.com/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/mfd/allwinner,sun6i-a31-prcm.yaml     | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml b/Documentation/devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml
index 8789e3639ff7..ca0e9f1f2354 100644
--- a/Documentation/devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml
+++ b/Documentation/devicetree/bindings/mfd/allwinner,sun6i-a31-prcm.yaml
@@ -20,7 +20,7 @@ properties:
     maxItems: 1
 
 patternProperties:
-  "^.*_(clk|rst)$":
+  "^.*-(clk|rst)$":
     type: object
     unevaluatedProperties: false
 
@@ -171,7 +171,7 @@ examples:
         compatible = "allwinner,sun6i-a31-prcm";
         reg = <0x01f01400 0x200>;
 
-        ar100: ar100_clk {
+        ar100: ar100-clk {
             compatible = "allwinner,sun6i-a31-ar100-clk";
             #clock-cells = <0>;
             clocks = <&rtc 0>, <&osc24M>,
@@ -180,7 +180,7 @@ examples:
             clock-output-names = "ar100";
         };
 
-        ahb0: ahb0_clk {
+        ahb0: ahb0-clk {
             compatible = "fixed-factor-clock";
             #clock-cells = <0>;
             clock-div = <1>;
@@ -189,14 +189,14 @@ examples:
             clock-output-names = "ahb0";
         };
 
-        apb0: apb0_clk {
+        apb0: apb0-clk {
             compatible = "allwinner,sun6i-a31-apb0-clk";
             #clock-cells = <0>;
             clocks = <&ahb0>;
             clock-output-names = "apb0";
         };
 
-        apb0_gates: apb0_gates_clk {
+        apb0_gates: apb0-gates-clk {
             compatible = "allwinner,sun6i-a31-apb0-gates-clk";
             #clock-cells = <1>;
             clocks = <&apb0>;
@@ -206,14 +206,14 @@ examples:
                                  "apb0_i2c";
         };
 
-        ir_clk: ir_clk {
+        ir_clk: ir-clk {
             #clock-cells = <0>;
             compatible = "allwinner,sun4i-a10-mod0-clk";
             clocks = <&rtc 0>, <&osc24M>;
             clock-output-names = "ir";
         };
 
-        apb0_rst: apb0_rst {
+        apb0_rst: apb0-rst {
             compatible = "allwinner,sun6i-a31-clock-reset";
             #reset-cells = <1>;
         };
-- 
2.43.0


