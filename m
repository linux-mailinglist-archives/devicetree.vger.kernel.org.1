Return-Path: <devicetree+bounces-114127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6E09A9E18
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 11:14:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89210284766
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2A7C194C8F;
	Tue, 22 Oct 2024 09:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wLp8eu+S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA091547F5
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729588489; cv=none; b=WyzZIqh3iV4Dv3swH0md3FZWTOHKxrmRLjVFP4lxWz2OoxctCUSgS+2jZ0+QP5IeQK6yyOSBQhIgQlxukgSP7lTkv/UBStY58e1SahANDs7Gz+CGugQ+6bh1PFQ6tQRLKE/Wv440rm0oSkamAY6i6RgukZuXL1tS18DXoAH0xg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729588489; c=relaxed/simple;
	bh=suV6bhYu/87NurHvi0y2NpZFyO8Xn7JmICjdtdKqhTE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jvCZ3r1qZp4DA8FBntU3MEOvv6xYLHxFPWvfz7v1CIUtgXktFDFUvd92PBv3D2b2BBFyCKjWXBYPF/bCvvoR5Kw1VTwfNvfcjn3FvLtiYdyBPxgxPMxHB5gmMehUiF9AqzaaOf4yDJGXxc11CIYL00cMbdmHPs6AoYSidxoGuSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wLp8eu+S; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43161c0068bso39695605e9.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 02:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729588486; x=1730193286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s7FimDaFPHHSszW97frhLIBnvTyZgI24IVWW6aFsn+c=;
        b=wLp8eu+SIozaZ8xhONrblm4a0x0d3plFdAQW0K1ZV9YVFUjBSwTA4Z5VUKwrQbg8iL
         YCOR9YFP/6NUF30xVYQE0Tmgwv5By7F7LgbyrenpGntax+FtnjJG+3xenZkG61gROwvr
         S90M5sEmxA8E2xN5JYU0g09jhrEtXJRehBNN9p3xXKfVOeNjXAsn43QPSlkzB8PX5dNn
         7ORxrss5ea+BjQ0yMMdM59xhguoYxci2q0NALBBhK/cYB5j3tdQNWika+oUrhHE5UP9S
         qcw2pxcxLE3zMUuX4K4JU3ndkbRPchmdaMbJ591GBBP7h3Hp/Zaup0MdOtgGltvFpYNM
         PnIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729588486; x=1730193286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s7FimDaFPHHSszW97frhLIBnvTyZgI24IVWW6aFsn+c=;
        b=SnVUswnzdC4BA5+bzKuKEjcCaughu1u+lX84FQbLcsmZNgHc7gch1X9wEr3ME0lsh4
         o6vcKv0dNdZLpo67SdNO6HdyDPEYJHCbnqcVxWB30NqL6ekGWNDEWsIiuNRkDSpuDzf9
         IBu8ZpynAm8Nc8zBERbDqJ14EvCtB+nI872tnLIomWA5/WsvzWSJCTnxJ8g7VNqwAEuq
         2wJRAKVDgznaGOkI+P6M29m109gf4pLPWO1ht54UQleyuWhzp9ecEfPy/vq/+Og+Ve41
         AxWew10rlsPc0yje92iItoDOtlCReWoadY1TnPLT5GbZYi5ZkX6zmmjbcgNaV9v5fRkY
         rFPA==
X-Gm-Message-State: AOJu0YwYkr6aVGSTLVEBlGmy4pphC4cvbIXnmMoCm4CLpxWsJv6c7mEA
	2jhjoeFQdpNng/9JRMlZhrUo1be69IoZeqN+CeLRSP9bM0VibxvZNKG7RGSJIX8=
X-Google-Smtp-Source: AGHT+IFJifWnS0Da9PXrgL4CP7rzVjnLt2PtPo5f09svG7okrry5iqiGNHUl8XBSHn6DNxnVUNVcQQ==
X-Received: by 2002:a05:600c:1d99:b0:431:58c4:2eb9 with SMTP id 5b1f17b1804b1-43161633882mr115142075e9.3.1729588486098;
        Tue, 22 Oct 2024 02:14:46 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b9442bsm6144760f8f.78.2024.10.22.02.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 02:14:45 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alexey Brodkin <abrodkin@synopsys.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vineet Gupta <vgupta@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-snps-arc@lists.infradead.org
Subject: [PATCH] ARC: dts: Replace deprecated snps,nr-gpios property for snps,dw-apb-gpio-port devices
Date: Tue, 22 Oct 2024 11:14:27 +0200
Message-ID: <20241022091428.477697-5-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4173; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=suV6bhYu/87NurHvi0y2NpZFyO8Xn7JmICjdtdKqhTE=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnF2z0pZ7zddJr3rS9u1fUZTlZuK5KnVxnTOO80 S2Lkyx/XHmJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZxds9AAKCRCPgPtYfRL+ TsPNB/0b6UvEHYO+kF1z6QvD7dFIO2+qThn/VAGLdKji1dAuhmMqkmffUzJWvrlSMjA6qCTRNQy OiPKB7ZuObsTgZb1TS3VCzYwR9hQhk+o6X92bPZOr4ZhNbOgcVhEoAXqKDk+5FI2ZaRrEZrzWiq snOEady/sE+clgh6M1A1swNYZbHhpiZeo28cJ8TYgcuZwwnU8n5Ez5nTpcX/HM8YIo+Ps0tT6VD fmpnc8jSP86G9U9RkLlrf5YI12vv9j3Ez7d16Cd7pniqWKAC7t2JPgMSPbCxq+FT23K2gbNqYqt 3uLcFsWWZvUL1lMTuGJfXt/WW6D1I5N+dzkeiGSeQQOvJd6b
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

snps,dw-apb-gpio-port is deprecated since commit ef42a8da3cf3
("dt-bindings: gpio: dwapb: Add ngpios property support"). The
respective driver supports this since commit 7569486d79ae ("gpio: dwapb:
Add ngpios DT-property support") which is included in Linux v5.10-rc1.

This change was created using

	git grep -l snps,nr-gpios arch/arc/boot/dts | xargs perl -p -i -e 's/\bsnps,nr-gpios\b/ngpios/

.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 arch/arc/boot/dts/axc001.dtsi     |  2 +-
 arch/arc/boot/dts/axc003.dtsi     |  2 +-
 arch/arc/boot/dts/axc003_idu.dtsi |  2 +-
 arch/arc/boot/dts/axs10x_mb.dtsi  | 12 ++++++------
 arch/arc/boot/dts/hsdk.dts        |  2 +-
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arc/boot/dts/axc001.dtsi b/arch/arc/boot/dts/axc001.dtsi
index 2a151607b080..88bcc7ab6f5a 100644
--- a/arch/arc/boot/dts/axc001.dtsi
+++ b/arch/arc/boot/dts/axc001.dtsi
@@ -54,7 +54,7 @@ ictl_intc: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <30>;
+				ngpios = <30>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
diff --git a/arch/arc/boot/dts/axc003.dtsi b/arch/arc/boot/dts/axc003.dtsi
index c0a812674ce9..9a2dc39a5cff 100644
--- a/arch/arc/boot/dts/axc003.dtsi
+++ b/arch/arc/boot/dts/axc003.dtsi
@@ -62,7 +62,7 @@ ictl_intc: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <30>;
+				ngpios = <30>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
diff --git a/arch/arc/boot/dts/axc003_idu.dtsi b/arch/arc/boot/dts/axc003_idu.dtsi
index 67556f4b7057..f31382cb8be4 100644
--- a/arch/arc/boot/dts/axc003_idu.dtsi
+++ b/arch/arc/boot/dts/axc003_idu.dtsi
@@ -69,7 +69,7 @@ ictl_intc: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <30>;
+				ngpios = <30>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
diff --git a/arch/arc/boot/dts/axs10x_mb.dtsi b/arch/arc/boot/dts/axs10x_mb.dtsi
index b64435385304..3add2fe257f8 100644
--- a/arch/arc/boot/dts/axs10x_mb.dtsi
+++ b/arch/arc/boot/dts/axs10x_mb.dtsi
@@ -250,7 +250,7 @@ gpio0_banka: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <32>;
+				ngpios = <32>;
 				reg = <0>;
 			};
 
@@ -258,7 +258,7 @@ gpio0_bankb: gpio-controller@1 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <8>;
+				ngpios = <8>;
 				reg = <1>;
 			};
 
@@ -266,7 +266,7 @@ gpio0_bankc: gpio-controller@2 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <8>;
+				ngpios = <8>;
 				reg = <2>;
 			};
 		};
@@ -281,7 +281,7 @@ gpio1_banka: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <30>;
+				ngpios = <30>;
 				reg = <0>;
 			};
 
@@ -289,7 +289,7 @@ gpio1_bankb: gpio-controller@1 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <10>;
+				ngpios = <10>;
 				reg = <1>;
 			};
 
@@ -297,7 +297,7 @@ gpio1_bankc: gpio-controller@2 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <8>;
+				ngpios = <8>;
 				reg = <2>;
 			};
 		};
diff --git a/arch/arc/boot/dts/hsdk.dts b/arch/arc/boot/dts/hsdk.dts
index 41b980df862b..98bb850722a4 100644
--- a/arch/arc/boot/dts/hsdk.dts
+++ b/arch/arc/boot/dts/hsdk.dts
@@ -308,7 +308,7 @@ gpio_port_a: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <24>;
+				ngpios = <24>;
 				reg = <0>;
 			};
 		};

base-commit: 7436324ebd147598f940dde1335b7979dbccc339
-- 
2.45.2


