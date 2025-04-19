Return-Path: <devicetree+bounces-168763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B74BA9445A
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 18:01:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A3C3189EB50
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 16:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DCCD1DE8BF;
	Sat, 19 Apr 2025 16:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cx84v37k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4CA149C55
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 16:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745078460; cv=none; b=X9A24lV1oV6N035qyEj8d1ZgkQUKf7g5MEu3I013GH6F5JfTeHd9dn5LTcR0X9cp9JPJK6wr/RLocQtOuM9qL6o41g4E/Lz3N4CKYS+mzA/NQK973OFK99jrzCpDxDNYjwZFAnRyRoKTUeNTf4JdlFnbHJpB8DcARgzEmgKjTZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745078460; c=relaxed/simple;
	bh=9EIQvaWuR9v2xjQSldh7WwmpF0xWaVIW78XgjHwRd8c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MK4cUTYnnPw8f0xk2u7UhY7IKTBextI/JzPDxygJ5X06BlkR6aA0KWmeFI3ThIC59bpbbC5QSiagt+P1Vkn5viNhoWVPFIPhHdP3Sw6cvGaSWpc+ncauspbSDoEIDV5n/mofc6biEuDKPM+BM24Sb4/dKIRk0c6Bf2RSbhNXYbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cx84v37k; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf06eabdaso26531475e9.2
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 09:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745078457; x=1745683257; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g9g6VFlFUjDGAvPM/73WOyE05ALtKuShtgVCvymsHIc=;
        b=Cx84v37kTECb5bP/bBgw4C/Z/BfnN43TtOAO1uu66LvdbKhfN1FTLqGWC5Pf/YNxJy
         b3e5Zpe4gD/L5PFt9SmRCFzj4XOhq2o6gT7V1TqjGHi6DL9CxqJ+174Ou8uJQ7hfHrke
         4TvGjAK0FoT+qSGmbVi+dB46xlAuGKSIQ3ca6+SK4MCyv6bGIB50P3lXBAq4gj2HN8mp
         0gqUPIp7tL2dVUgw4xAFDdhyKin3eSb65BHYFn61uledYN7PM6HpDqBx+d7E3c6WdMD1
         mO+cgJS8fyN2HN8NEmvHed5IhYa36ASdlBsgpSkHRSh6rkeR4GVgAoLXhziaHGB+64TJ
         f24Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745078457; x=1745683257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g9g6VFlFUjDGAvPM/73WOyE05ALtKuShtgVCvymsHIc=;
        b=qAgyrsC8hXt8JZ/m4YkX1FZsa5Vcuiv9/sO1/CkyF95Ot6sL/ccUcvCUYvuCLcRlRH
         ZLP7gBw4u8gQDjvlmP/wnoczgSo3Nhcw629kUnnhhfrzXF7QmQQOGgbZ/oo+2urbDYDB
         4fcfTbx7N6nS7aK86mBaH6SWk3K+45kzGdaWlODbrsQTppNuX8Kxt1IUDBP+JnmZfL9r
         TpWyp0tmnwY2wQtK2HWWob/4w8K3zSK9Xfpq8rOJbwBwFRQpkxgEjEsC7JGE6tQTXNPH
         xP0Y/Y60GbCOCR1DmKJSuTrP4XesM60SsXEV1gTrCx4vPxFJ2Yz76kgWb/HtI6yRsUi5
         83wQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5u4ruOi8ZeeyY07IA7NpJimQ9i0uHYcDM4dnzMZ8VF/1+aI8xWhcCVx3cJF+QDhibQJLLjc8oxd5F@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1kFDOwhY3/WM39f9PgErjr+L9xItyqIeriIrlxBtHAlXH6ewz
	0zLcVNRRzJVnDeCxsIUU+wDZR4gAvl1TQCl/32RiWkIUf3633sXR
X-Gm-Gg: ASbGnctAF1H75xyEK/I5f4kqc544KkJe1tWg/R+11LfTTl2FXq/ssFqTgp/oOCKz6rP
	TEkv6XFo8HfLcMQAS25FoLpL5xZ0gfQZz/dLzhmvK66gSe25gFVLSfOY2qHVDsJZz7Lp7JRdpvR
	9fGi/KN950qKUy+sybUkH9oAT75Bp0WYdkdff7YCY33ksPrmT9VpN5qaSXaWXBKZ8GC9gY2JKCs
	sBl6de5HXRhfKYgHxImggMiBYIZUAMRl8bC75V2Wj2ahkZPzPqW4d51GnYeoChdShpsLFm+/UPc
	A7Irdn3/n9bJqhTiQ3VmWcL7j2hFZRHbnY8+vh29v3xoVZ8TFfUHWMbx9MDkqvOneZBFIm2IDnQ
	iMISQtou4zEP6qYu9wFN84XT/FEDwZbNH6/2BlZnS8GnS2jRdGM0wykygMes5jX+cv+6m7z9L56
	uODNXHW7SAiA==
X-Google-Smtp-Source: AGHT+IEFux77sQ4LMwqgP+aTNt02+1lfYyRsU4Xbnatq+EY991mQXeDP75cSTOaBlkG7ePdt7v3xNg==
X-Received: by 2002:a05:600c:4450:b0:43d:94:cff0 with SMTP id 5b1f17b1804b1-4406abb198amr42996095e9.19.1745078456892;
        Sat, 19 Apr 2025 09:00:56 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4406d5acdd4sm65136215e9.14.2025.04.19.09.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 09:00:56 -0700 (PDT)
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
Subject: [PATCH v3 1/2] arm64: dts: allwinner: a64: Add WiFi/BT header on Pine64
Date: Sat, 19 Apr 2025 17:00:46 +0100
Message-ID: <20250419160051.677485-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250419160051.677485-1-pbrobinson@gmail.com>
References: <20250419160051.677485-1-pbrobinson@gmail.com>
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
 .../boot/dts/allwinner/sun50i-a64-pine64.dts   | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index 09e71fd60785..764fb191107a 100644
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
@@ -124,6 +129,18 @@ &mmc0 {
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
+	status = "disabled";
+};
+
 &ohci0 {
 	status = "okay";
 };
@@ -286,6 +303,7 @@ &uart0 {
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
 	status = "disabled";
 };
 
-- 
2.49.0


