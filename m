Return-Path: <devicetree+bounces-91898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 737F194B329
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 00:39:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 330FA281460
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 22:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C00B145B26;
	Wed,  7 Aug 2024 22:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Le9xoYIs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98C7584037
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 22:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723070373; cv=none; b=Gzskl132QJ1Uav9t9tUuzo3Y4UzMeNCiPf8eeVFpL7c8HplSJmAQqQ7m+JBwbZcj45rDw13LYpPE6GIZAbFx5UcUjnaLenDt/ym8b5jXa0NX6iDVnX1aYGcrnIN988ER1tOsbUn30EYMQkzC+DELJ8mTPOKGCJB30mds51VgvlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723070373; c=relaxed/simple;
	bh=r4/jxIww+nd5h+9byFO08Nl1aAKEBgF9a8LwHunEN8Q=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JMe5qfucXu3dwYJgEBii1lyZonAwCEuF53kff64xZcWoYWCTF9RFL5r2X7pFVbksnalkre68LGdCeCuMy6P1U0Y5zNlQdv6wxjW4jqF6VLYQZy6TK/W2o91KeNi3DB3EI5cwtNl+1S59XlOWlJPp2ZVA83/2nVFHgMo1e7niEU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Le9xoYIs; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-428178fc07eso2102965e9.3
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 15:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723070368; x=1723675168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TU5hUQMxj9H4EY9mz059Zma42JrexWcHaTTtOZTJBiU=;
        b=Le9xoYIsY6nVIBoEkAE2bs6bN2adbA+92KENMJcaYNpVxhzx00k6RM9kDSeZWC2pHf
         tXNT+347PrFyJurCs1KiYcpAKT7a/YX+c9yczQ56A1OlF2yR5wo4bX0m3zuvIcQeIS5/
         Nx/42cL0wnwr9xs/DW+jYqhRSMN5rqzwiUirawez1S6ql2MCO8ioPzKx6MOP/EuXgrXE
         rWWa/mYQueKud+cadV68ND2dwaSdPu6QFgnhpbqfhkEPSkZi5FncOueBmpJzPELYShCh
         ws2NPIl6BSLWhziApSTg+uGn/JxkLqrBCMsEWvZPcPb+EsoQBsWhHg1Vis5OaM3Zk8pt
         B2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723070368; x=1723675168;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TU5hUQMxj9H4EY9mz059Zma42JrexWcHaTTtOZTJBiU=;
        b=tSANL89uAU6giBv+vjmmfRYaVZjSLCbUZffyxydnqwylevt2j7oYOvS4nGztRVggiW
         Z/4Kn1V1ThvpA+r7/fh+vL6UirYJe0Cgw5ZsuMpwJKPG182wIWM8IY8n98S5o0j37Mwp
         COJhaQY+cbVVY6H6lBxSK6PwD3FZnYEz0DLPzlsH3yOB+UHVS8NfqKc05cWHnLbzJTM4
         t8Xp4c4+0oGuSz5ldP6IwJgEGueGRpWKui4AhqNqm5BbZNVnZ7yIhittWmLdHyhlhTK0
         CF4n5bx3P371nX+YePyJP+jQx+TJLYFJLSHund42sNDBonRjkz0eXQrhd864a5z7gADm
         KROQ==
X-Gm-Message-State: AOJu0YxkhNk9tyIVskObI/JpuLCpXqtGHWHhEq3LXyZNSeHdTK7m/7P3
	c4zRLqEp3p3iIEVULPglNGHQbBqOKwSu5qex/rYWKeUTU6rgape1dfAMECcU
X-Google-Smtp-Source: AGHT+IFudMy0cKw+eoSMpTMuKZS4Zn3kn2Xbh7zkFnyr25X0Xby6FtxoCs0JIJYYT5Lf9mse1wkEaw==
X-Received: by 2002:a05:600c:5128:b0:426:64a2:5362 with SMTP id 5b1f17b1804b1-4290aee0421mr1107895e9.8.1723070367822;
        Wed, 07 Aug 2024 15:39:27 -0700 (PDT)
Received: from localhost.localdomain ([86.121.5.113])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429059cf83dsm45195405e9.47.2024.08.07.15.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 15:39:27 -0700 (PDT)
From: Ioan-Vladut Voicu <vvlad424@gmail.com>
To: devicetree@vger.kernel.org
Cc: Ioan-Vladut Voicu <vvlad424@gmail.com>
Subject: [PATCH] Modified the device tree for Tech Nexion's PICO-PI-IMX8M board to keep the power regulators always on, due to encountering problems after booting the kernel on the board (the power resistors would turn off shortly after being presented the login prompt).
Date: Thu,  8 Aug 2024 01:38:14 +0300
Message-Id: <20240807223814.88704-1-vvlad424@gmail.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts b/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts
index ec89b5ade..27d81083d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-pico-pi.dts
@@ -80,6 +80,7 @@ buck1: BUCK1 {
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1300000>;
 				regulator-boot-on;
+				regulator-always-on;
 				regulator-ramp-delay = <1250>;
 				rohm,dvs-run-voltage = <900000>;
 				rohm,dvs-idle-voltage = <850000>;
@@ -91,6 +92,7 @@ buck2: BUCK2 {
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1300000>;
 				regulator-boot-on;
+				regulator-always-on;
 				regulator-ramp-delay = <1250>;
 				rohm,dvs-run-voltage = <1000000>;
 				rohm,dvs-idle-voltage = <900000>;
@@ -101,6 +103,7 @@ buck3: BUCK3 {
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1300000>;
 				regulator-boot-on;
+				regulator-always-on;
 				rohm,dvs-run-voltage = <1000000>;
 			};
 
@@ -109,6 +112,7 @@ buck4: BUCK4 {
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1300000>;
 				regulator-boot-on;
+				 regulator-always-on;
 				rohm,dvs-run-voltage = <1000000>;
 			};
 
@@ -117,6 +121,7 @@ buck5: BUCK5 {
 				regulator-min-microvolt = <700000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
 			buck6: BUCK6 {
@@ -124,6 +129,7 @@ buck6: BUCK6 {
 				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
 			buck7: BUCK7 {
@@ -131,6 +137,7 @@ buck7: BUCK7 {
 				regulator-min-microvolt = <1605000>;
 				regulator-max-microvolt = <1995000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
 			buck8: BUCK8 {
@@ -138,6 +145,7 @@ buck8: BUCK8 {
 				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <1400000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
 			ldo1: LDO1 {
@@ -161,6 +169,7 @@ ldo3: LDO3 {
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
 			ldo4: LDO4 {
@@ -168,6 +177,7 @@ ldo4: LDO4 {
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
 			ldo5: LDO5 {
@@ -175,6 +185,7 @@ ldo5: LDO5 {
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
 			ldo6: LDO6 {
@@ -182,6 +193,7 @@ ldo6: LDO6 {
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 
 			ldo7: LDO7 {
@@ -189,6 +201,7 @@ ldo7: LDO7 {
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
+				regulator-always-on;
 			};
 		};
 	};
-- 
2.39.2


