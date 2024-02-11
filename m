Return-Path: <devicetree+bounces-40549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E0A850BA1
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 22:24:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 371E51C20B4E
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 21:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B575F48A;
	Sun, 11 Feb 2024 21:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q6ubuEO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2875A784
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 21:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707686675; cv=none; b=ZP3bYPYHNvOLjjhFFCM8Zi6ygHZUCA9J7Q0LfU7xDoZaQHTijxBVDClN+x5eHZs5/SpJ1G0KVcgil9535rPMCgi6IgbbOTnsmo4DtilrZsqpjpzfQ5CrND49CMf/Z5dDbKzjeDZ0ewujtv3/NTUbHJ5k7XD/lQFI1dt5bSunfTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707686675; c=relaxed/simple;
	bh=ApHfz9xMnUcbJaFt7ppRVEzThnbfy8QJhXxG/AdxaWU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=D8JYrhUxPyT4984g7bDQfmfdZK/D/RBtnANZfuMm+sFDtTZYEBZ8BfSx7bUjyfA0Ph0pp9Lw9wg3b/zgobudDSMSXjT7fSrRcmQ+tNFeKGWce2bzmvvsOEFuj1OOa/bi+i7R21J6PHx6pI+Wx2McNP63R1GNQN9ux/o8zRzhw4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q6ubuEO3; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-511898b6c9eso560049e87.3
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 13:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707686671; x=1708291471; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZM1XIaD3ecrXLxEb1Gsx+3ajyZG58aa345Y2A9SVCU0=;
        b=q6ubuEO3c/xep9/hutO2CI02WSe3/4F4pSRyNcgRe3EZEG+EmLjc1vvGqpIpOw4UpM
         zG6UB6WUHowD+UMQXK38ga8QFnKbINudY7T7K1gR8hS9dfh3g/O8zriFnM5d39ggH0nP
         BRGWb2asx3BIfNUR2tl6VhBDrAUF9JjxS1RIBAvBs4Ggaup+MasQre2Lpl1zXgO/kjeL
         qxtHi3ElKDyZ/EFEoxUWY7iJcgdvvQXBO1MjVfSIHCPEz0p2PG7kMdZRlO9RvwzDtMUp
         rL38WeudWBka678DJkzmexMv3GkaZvu3d2GpTDj3dSkIS0QCP0M3RAlXPmzibRb4DAMS
         waeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707686671; x=1708291471;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZM1XIaD3ecrXLxEb1Gsx+3ajyZG58aa345Y2A9SVCU0=;
        b=lFpD4EmojZp4IPriucEMs6dA0GrYTixZU8g8XTYT7YvEneOnXSqCAxIKO3K+nUhGu0
         unWe3V44ZdMBhjvNEX66ziK/qsmyiZbSHUAe6jowYDZhV1s2L5570Fy3HBUmfmaZ9Pco
         y9sUdkJWsxLeK7NSLRgQXjOv7vZFIm2m/3r/XgHrE9MIh8V2324pOYS7xHGhGXzaBIG7
         8nsA2ulsXq7zULztx91MUWyLJqKICP1CdWAtnNrWWvJJnnyWB4Jv3klLd6VuflOpz2m6
         x/Z74bDEfX+ooizLq+0YiPjWzZ+9+xCNdw/y4D7BvCzpGHB8QBNepW+Dy4opg8F2VTew
         XmCg==
X-Forwarded-Encrypted: i=1; AJvYcCXl/YbNn0xmmyyhcgzMzhk5Py9l04o5bS0qH/Fyq4ECMf7mhLzZhFyelNBGopPRzjTMfy9agG6oCzdEOsFXupc576WS5gu8i9rccg==
X-Gm-Message-State: AOJu0YyLAMymTWurzaxXqWBOdXfpWkFXlo4T20Dq7OFUG2fsIJ5g6pxP
	8wG7y5aYtxoF61eQVQ4cf2vnlVw7AV8UGADdz9iDHyn10lxWuiKA+HwvI4PcmWpK8MyzlYVoqGV
	6
X-Google-Smtp-Source: AGHT+IFozJUWcdMIObw5s9xg8xEz4tg7IbyDH7wOa6wzeGpHQkxs7qISL4cpwNIfC1Ma4jngJPccbA==
X-Received: by 2002:a05:6512:b95:b0:511:47ed:d744 with SMTP id b21-20020a0565120b9500b0051147edd744mr3944622lfv.12.1707686671313;
        Sun, 11 Feb 2024 13:24:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXIX8aGnTvZf0NC9xOJoKWeEuzl/ob3qL31m+DMzAo595IopD9Njz6Y1qbWu1Pg/G2QiEiSdlTrVS0/oZUf5nyPcJ804WUl6uxPN1EySzadF3XAKBFE433FCoU0EX7ZfHZUSoazEHgac2RIY/K9GqZG2uZ6RRKkD+15MNyLXXW/54+iSyFCcYgD+1ZqNrVPNIYI4aCBV0pIfzkO2rWyKdgfui/BVvD+2tuqdxng8HA1Mw==
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id h8-20020a056512220800b005115edd71c9sm623684lfu.165.2024.02.11.13.24.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Feb 2024 13:24:30 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 11 Feb 2024 22:24:25 +0100
Subject: [PATCH 3/4] ARM: dts: gemini: Map reset keys to KEY_RESTART
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240211-gemini-dts-v1-3-6c09adeb4c2e@linaro.org>
References: <20240211-gemini-dts-v1-0-6c09adeb4c2e@linaro.org>
In-Reply-To: <20240211-gemini-dts-v1-0-6c09adeb4c2e@linaro.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.4

This maps the misc "reset", "setup" and "facory reset" keys to the
only key a standard userspace is likely to understand: KEY_RESTART.
On OpenWrt this will simply restart the system under controlled
forms.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts | 4 ++--
 arch/arm/boot/dts/gemini/gemini-dlink-dns-313.dts | 4 ++--
 arch/arm/boot/dts/gemini/gemini-sl93512r.dts      | 2 +-
 arch/arm/boot/dts/gemini/gemini-sq201.dts         | 2 +-
 arch/arm/boot/dts/gemini/gemini-wbd111.dts        | 4 ++--
 arch/arm/boot/dts/gemini/gemini-wbd222.dts        | 4 ++--
 6 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts b/arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts
index 30c931415680..b4dbcf8f168e 100644
--- a/arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts
+++ b/arch/arm/boot/dts/gemini/gemini-dlink-dir-685.dts
@@ -27,10 +27,10 @@ chosen {
 	gpio_keys {
 		compatible = "gpio-keys";
 
-		button-esc {
+		button-reset {
 			debounce-interval = <100>;
 			wakeup-source;
-			linux,code = <KEY_ESC>;
+			linux,code = <KEY_RESTART>;
 			label = "reset";
 			/* Collides with LPC_LAD[0], UART DCD, SSP 97RST */
 			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/gemini/gemini-dlink-dns-313.dts b/arch/arm/boot/dts/gemini/gemini-dlink-dns-313.dts
index 138c47e1ac1b..8c54d3a5a721 100644
--- a/arch/arm/boot/dts/gemini/gemini-dlink-dns-313.dts
+++ b/arch/arm/boot/dts/gemini/gemini-dlink-dns-313.dts
@@ -33,10 +33,10 @@ chosen {
 	gpio_keys {
 		compatible = "gpio-keys";
 
-		button-esc {
+		button-reset {
 			debounce-interval = <100>;
 			wakeup-source;
-			linux,code = <KEY_ESC>;
+			linux,code = <KEY_RESTART>;
 			label = "reset";
 			gpios = <&gpio1 31 GPIO_ACTIVE_LOW>;
 		};
diff --git a/arch/arm/boot/dts/gemini/gemini-sl93512r.dts b/arch/arm/boot/dts/gemini/gemini-sl93512r.dts
index 91c19e8ebfe8..be06a3815e3a 100644
--- a/arch/arm/boot/dts/gemini/gemini-sl93512r.dts
+++ b/arch/arm/boot/dts/gemini/gemini-sl93512r.dts
@@ -43,7 +43,7 @@ button-wps {
 		button-setup {
 			debounce-interval = <50>;
 			wakeup-source;
-			linux,code = <KEY_SETUP>;
+			linux,code = <KEY_RESTART>;
 			label = "factory reset";
 			/* Conflict with NAND flash */
 			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/gemini/gemini-sq201.dts b/arch/arm/boot/dts/gemini/gemini-sq201.dts
index d0efd76695da..05ef8b80f104 100644
--- a/arch/arm/boot/dts/gemini/gemini-sq201.dts
+++ b/arch/arm/boot/dts/gemini/gemini-sq201.dts
@@ -30,7 +30,7 @@ gpio_keys {
 		button-setup {
 			debounce-interval = <100>;
 			wakeup-source;
-			linux,code = <KEY_SETUP>;
+			linux,code = <KEY_RESTART>;
 			label = "factory reset";
 			/* Conflict with NAND flash */
 			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/gemini/gemini-wbd111.dts b/arch/arm/boot/dts/gemini/gemini-wbd111.dts
index d4038930c70f..6a0c89e0c918 100644
--- a/arch/arm/boot/dts/gemini/gemini-wbd111.dts
+++ b/arch/arm/boot/dts/gemini/gemini-wbd111.dts
@@ -28,10 +28,10 @@ chosen {
 	gpio_keys {
 		compatible = "gpio-keys";
 
-		button-setup {
+		button-reset {
 			debounce-interval = <100>;
 			wakeup-source;
-			linux,code = <KEY_SETUP>;
+			linux,code = <KEY_RESTART>;
 			label = "reset";
 			/* Conflict with ICE */
 			gpios = <&gpio0 5 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/gemini/gemini-wbd222.dts b/arch/arm/boot/dts/gemini/gemini-wbd222.dts
index a503bcff5f4a..d8b34ebad4b0 100644
--- a/arch/arm/boot/dts/gemini/gemini-wbd222.dts
+++ b/arch/arm/boot/dts/gemini/gemini-wbd222.dts
@@ -27,10 +27,10 @@ chosen {
 	gpio_keys {
 		compatible = "gpio-keys";
 
-		button-setup {
+		button-reset {
 			debounce-interval = <100>;
 			wakeup-source;
-			linux,code = <KEY_SETUP>;
+			linux,code = <KEY_RESTART>;
 			label = "reset";
 			/* Conflict with ICE */
 			gpios = <&gpio0 5 GPIO_ACTIVE_LOW>;

-- 
2.34.1


