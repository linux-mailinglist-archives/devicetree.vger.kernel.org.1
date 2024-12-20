Return-Path: <devicetree+bounces-133054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1559F91C0
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:00:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA8CC169645
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B41691C5F14;
	Fri, 20 Dec 2024 12:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NFPCb2qL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024801C54BB
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734696045; cv=none; b=J0pLH6geLtgFuwKWjefwXR39OhRmwbXdfIeqfMJOzzJyj+H3ui5MyeitZl6UO38cn9/F/txGP8Qi4as33RjNNDprZnnupcmwqqZuy6sDTyYeuLEyyWS4kJfI6OW6DC8vuyq8cmv3uixK4Iv9CsGJW8D9XONdBFKAkHRwiLZwqy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734696045; c=relaxed/simple;
	bh=D2tZXzEqgyEKFEmVwk/d41UosHsvKgGX0qY3bx1cllc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B7dh2IXJNozTf5v31GfhdellVXz9mrc6F4BDGi+EU6JRgEWpKgtNWf2TOBVsF+lxdZVXEP7Tu7NxRsDUoPApU7dYxIvzkzj+8nnwfE/69RmCdX2vZEVKQqh56vMN3ix3YVcVztRYAqx/Y4vVQw9ANjV+7r1fSq9wbOySzGoJXio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NFPCb2qL; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-385f07cd1a4so1222572f8f.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 04:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734696042; x=1735300842; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0PSZeHHkCW6wlnu9PsCgTdp/ZEwb0V+NyqcmEQUOdns=;
        b=NFPCb2qLjQ3LjSf3cJBGVycsHz3xACa/SkEp5HYOQGJns9wFQjgYigRycbX5H0FtIg
         h0ToOlSo66QTl1nkT9a92j4uUXJsnYJZjVmiESGXJ/w3YsivlCUhNwXQdK8Z8EbTOaoy
         ObGsSCssrxlJvaLEyF3T/x+ycvbsn327sGnw+hubDjmic8YpePNdxWa1EYaCPobQSr7T
         tEwVw/djj0IoIx46J8vITioSGcX0sd8nsjtV/NJAThw0KYI0RoPpLDZ4qnseMS1D3Ldo
         CL5VI334fOgctcG31gsx0xFGwj1tqWmrWAe71XNbd4bzvsAX7/e87VAlXxhnW91S+2aA
         rS3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734696042; x=1735300842;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0PSZeHHkCW6wlnu9PsCgTdp/ZEwb0V+NyqcmEQUOdns=;
        b=RjYHMFaZFS5ykAQD554hSJNu2rfiLCjye2Ss3OKdc9lPJxIyTVzNRgMbXkBAjx4uLa
         PYxFLqfjPnMAo8rMXyVFOQ7adaE8j/ufxmeA7PqzqQS+0F+P5JpDVp8vU0/YBDRTT7r9
         xgvP+dD3oRulDwc4WQWepB72bGnMKnZzQ9xBM6uZj5gh0SjD9ilz/hXh/KX+yTaNidfQ
         AjexOsR7AmUNJvcvZONWqC/5uNiDD8hLs/LEb7pXy33MkD30B0u/Tz8q6OOu76GrrTtg
         mkXOvcHxDEY3nBxRKeE0+dHnwr+zYGdV5LRiYzDWg8yGrNQldjH0uQLEdqPc8Z9nf6Gm
         /Czg==
X-Forwarded-Encrypted: i=1; AJvYcCUwm6Fvk7fMOkjfG3P1kqA0WcONd8K/JlgG3wKYiWyWwjm0mOpnYDvS3PijLYCL805ajEUp7my3If5+@vger.kernel.org
X-Gm-Message-State: AOJu0YxjViJmiYGWFTOc8v/e+ZC4Jtgg8kkO0e/HHyR5FDKOlZ2nbnRZ
	StmJLeG4nngwDRJQ1CsJbGYrLJDVktQdjGnzec972deJsVClRE2d
X-Gm-Gg: ASbGncv5rDWnVJlbwN/0exBX52/ao6LOK2lO0OzWAKzlouy+FH4u12BHBmI0YCOn5R7
	ExV2f+HQ6BeK8V3Re7IrAmQim3RIZbqLLKrnhJlwKGXP7Y5v7dlPzwTrenabXx8kCzoLLLq15D+
	VX0I0yNXC/6AUnd0czPpaEZs0Jv+8UfWhGwh22N0R1GOFkp3MEvOJSkJ8NusfqmHDfbe2jrt/UV
	GP2u0E5yxBZLVSd5LSR/SkW/LP32+bqy5nqmh+3uZjozI8ctM372foT3C741GY/wqtWvfgW8G2H
	qsbXXqA3QCJBdM/EWIcBT8ZZQsgFH6kUj2cUjplz+AYerSIO92WXdcCQ7hGw7g==
X-Google-Smtp-Source: AGHT+IHmWsMA9nW1lsPiSxNBhMagfaDdRvhKKxRsgc2zMuwWmMdOEPQP3bdm0aS3GFPGO5WQ8QG6Pw==
X-Received: by 2002:a5d:6d84:0:b0:386:45e9:fc8a with SMTP id ffacd0b85a97d-38a221e1dfemr2502314f8f.5.1734696042080;
        Fri, 20 Dec 2024 04:00:42 -0800 (PST)
Received: from cypher.localdomain (e.b.8.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::8be])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a1c8b830csm3921038f8f.108.2024.12.20.04.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 04:00:41 -0800 (PST)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v2 1/2] arm64: dts: allwinner: a64: Add WiFi/BT header on Pine64
Date: Fri, 20 Dec 2024 12:00:30 +0000
Message-ID: <20241220120038.3137248-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241220120038.3137248-1-pbrobinson@gmail.com>
References: <20241220120038.3137248-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds all the pin mappings on the WiFi/BT header on
the original Pine64. They're disabled by default as the
modules don't ship by default. This includes, where they
haven't been already, UART1 for BT and mmc1 for WiFi.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../boot/dts/allwinner/sun50i-a64-pine64.dts    | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index 09e71fd60785..f04f0f1badc4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
@@ -35,6 +35,11 @@ hdmi_con_in: endpoint {
 			};
 		};
 	};
+
+	wifi_pwrseq: pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
+	};
 };
 
 &codec {
@@ -124,6 +129,17 @@ &mmc0 {
 	status = "okay";
 };
 
+/* On Wifi/BT connector */
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&reg_dldo4>;
+	vqmmc-supply = <&reg_eldo1>;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	bus-width = <4>;
+	non-removable;
+};
+
 &ohci0 {
 	status = "okay";
 };
@@ -286,6 +302,7 @@ &uart0 {
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
 	status = "disabled";
 };
 
-- 
2.47.1


