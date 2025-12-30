Return-Path: <devicetree+bounces-250622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB63CEA7B0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 19:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00FBD3019186
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F85A32E68D;
	Tue, 30 Dec 2025 18:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Bx1SXkcj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3383176EF
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 18:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767119594; cv=none; b=euGAc/nHcv8OU2QTX++70bEtoDKndqlWS9DSccwNwWxWfCbZI5hP6jhJ+bKaGACkQ/KiMHCrPgQHrHqedE0KW9PJZZR6Bjv3ZkM0kv3LZ/9WJXRbsLPyDH21ymQhfE4dCAeZZWruiv5DsOyNzwKRy7oM1bm991NRR6/o4Edi3/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767119594; c=relaxed/simple;
	bh=peiIl3kcZSGYDI0SYDU6pNL+X/0lARo53q7LuV+LeDI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=fHIgE0g/o3eLIgwEZo8e2Z/c0tukC6/edvC3wHGJhrsuh+Fi49euvqccvsyUxB0TANZsRG2TpJDR1gsUe+q9XlfLJKcpkv4QIOP9Oec/871ivwRCfmXVuiTGSTfcZuAlN2gSZYcIzciYFOj7NAiv1Rw41mJoXdzDZSAjJ7HBSzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Bx1SXkcj; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a0b4320665so155858915ad.1
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 10:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767119592; x=1767724392; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=liNs4Nu20YxUTwqcdL8jR/v1sBx3Nke7g7mFbFi8pF8=;
        b=Bx1SXkcjrKdBp/KC2cTqZNK0A7UJhH02qAtI7di0ZT1gbhr0rjaIwaAT0J8/Lu1wPX
         0WaEYdd8IAabMgqwWuJiLzdmq0qcE3nEyCILr3xX3HGHGD+PcHv8AwoaOTGnXEmqM5OM
         44TRvRhOgVCArnNZw85p8vVjj25V9LCvlLSd3fUK3da2Y8IK0L3KuOabtHTbbecKAE5v
         8/F5UbEv2JJLHTktVQlJyCyurbSZFEyyaYtlSpl3ukppEd7o3LRnlvWIaa3xJjJ+CfV8
         8VhHlmnVzK120TV46E85n2ituiC84WzZGg2tEc3ynRxpSK4uwsSoqJeVTGKpFkYMdrP2
         IVhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767119592; x=1767724392;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=liNs4Nu20YxUTwqcdL8jR/v1sBx3Nke7g7mFbFi8pF8=;
        b=YUO1CAYU88NdXwnxbRqa10Yy9Ru61zWL+0AN5xxAj/9Xs9ocb0ytGjGJ/NIUNwf/G5
         AtOGZHifBq3WMHaJZOTAXWgcAbpD6kkRBvZCWONAnyI/UmRhYCoGJ1QDwhyb6xU9DeJt
         pwFhSQFrGJYnuEoaOH6vurYbFW8P8Tzpv3oTv6tDh/Ivufz9S5aV9FSuC5ufFbNSyzME
         dynoU6mdrZf2qIQlIuzyc8j5cRDjskNRwsUoA8i/sAb7F1kKDIGeqwwlx/bgyQ7nYv/E
         x961bGi8aaJOXxbTlj+unaOXY08J8daAsp5jiMacTeUq5VPbrOOXeslfdeKKCiIU3Fji
         HGhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUs1F0lH77aJGZX+GDvNYf65JIOtjN1ha/C9YBH43uIXndaYbzGPDwPzpNnYSrUMtbhIFGTwfk3u+PF@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwn3CE6iQe87SyTzgpkeLvbTOZj9+G7pS09yD1aMqUqEmF1xY2
	mGMpQo+r0fUM34MJfqRwtLfhO0Wim/XTiIPxzfH0udtN8DAQkeHX9B7N
X-Gm-Gg: AY/fxX7qMf8WkTkeTQX9aX2+EJS0a7kHqUr3LLrEcBIvz+MWqtjnk8MpJ8cN43HcPYr
	2x8jlHy8Gamf6HeJp+qYk9UyFM24UqXXuP7c/J4NbmZkYzzewSTX0KhAjTVDbEEL6LAe3cE135d
	utFbQmJ2/HlcpEUnpz9EyU6/TElQWMaim0w1dY9HtR2ag8l37/vgOavczlAXXxR2FqRk+kCSQnP
	RXyQCeJNVKkEHlVfoLxjX8RjYHsooOEDVouKH076P9GoP0hlxMdy4jl60vyl8gjgXw/ahiFIY9m
	EqAlXtHKEHXnysH75jiSOleKzaWRKckXTgXLXeWqsNzAElAyw5x7Fa/9DoVxO4eK4YJGMzw/f9p
	Fu5hxUG6oxbdrud1delXH6VXYo0JsomXZCKEbsg4qu3/NNvrNmNHHXke7Hb5QYpb6CMnInwsVhK
	Y6pIyhUwGGl30d9cq+bbreNG0=
X-Google-Smtp-Source: AGHT+IHfak2FfRD9VrZovrwOmes8QiGk+sY8RzvYOjUrAuZrPT3jY6+ly7bsYHkegveLW5pJZduZFg==
X-Received: by 2002:a17:902:e550:b0:29f:87f3:9c22 with SMTP id d9443c01a7336-2a2f2c4cc02mr379373775ad.52.1767119592031;
        Tue, 30 Dec 2025 10:33:12 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a2f3d4d87fsm302758125ad.46.2025.12.30.10.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 10:33:11 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Wed, 31 Dec 2025 02:30:42 +0800
Subject: [PATCH] arm64: dts: apple: s8001: Add DWI backlight for J98a, J99a
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-b4-j98a-j99a-dwi-bl-v1-1-24793c2b99fc@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFEaVGkC/x2MSQqAMBDAviJzdsC21u0r4qHLqCOi0oIK4t8tX
 gI5JA9ECkwRuuyBQCdH3rckIs/AzWabCNknB1lILaQSaEtc2sYktAb9xWhXtLpyqqi1KUcLqTw
 CjXz/13543w8vWX6xZQAAAA==
X-Change-ID: 20251231-b4-j98a-j99a-dwi-bl-b56c3075a4fb
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1741; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=peiIl3kcZSGYDI0SYDU6pNL+X/0lARo53q7LuV+LeDI=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVBrfZDu5oRktCcjFTaRTbil7TaNMr/NVMwu9P
 RIiqTyoz6KJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVQa3wAKCRABygi3psUI
 JCfBD/4uajJFiAAk8T1F7l8vcke5uW7iQljDlvYBkbO4PCkYGYaS9JOoV/PlM9s8oD0j+RTe1zt
 W53+AdleMK4yl9rfxMaKoA9ZcLghAMegPCLBlyby0XrFdPUDlWwczui7N7NOino66HzpL2D6CLZ
 9tnRseowYOmL1cKCSqxwbXfW9DFVp1cDZezOFXz9lOY2c3ouGcJyevE1MTOaYx6arVHJ8/e3eXU
 FLTLCtoAQ8MexqmffRzwxOP9FBZoiEDQqDGi3dD2McnwNuC7oIXNnoxh2J6tI/xTVJ67IjhBwLW
 y+CfruiuZ++/6Bqx3eVWO6mBdU1ghsACYLvyS8Y/LG4ylfO0NeBUGFEGQnYc8T12SkuLLpD1ToM
 FqgquhS8lChUcPmr/Hau75eocJD5dpQoUbGKqUjRilxXIU0c+xAi27HFqqw1fY6Ns00o6yuDg4J
 S7rRh4zSoKcvTV1N3xKyno+QUrFZnTge8CCSFh6WIUsR+zIZ0ClyaJiP1Ca56s564IEhGmZm9Lh
 kB3RkfssnVO3hlSouoSLDxd+mg2tuefHds9qmR5iqBLjdS3jsdfFqhN2ie7IHg79ZMEznEATpVT
 nY8GwKT9RJGaC/hai0CcnKJRJFW4LWEq9J66arLAU3Ex5r3MentJrQ89Pv3dKBs2ONbFRd9B+li
 WjHqgkSjTawFH0g==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

iPad Pro (12.9-inch) uses DWI backlight, while the 9.7-inch model does not.
Add DWI backlight node for s8001 and enable it for J98a and J99a.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s8001-j98a-j99a.dtsi | 4 ++++
 arch/arm64/boot/dts/apple/s8001.dtsi           | 7 +++++++
 2 files changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s8001-j98a-j99a.dtsi b/arch/arm64/boot/dts/apple/s8001-j98a-j99a.dtsi
index e66a4c1c138fe82dcdd652d4d56a8f4583f660cb..67633c56a7238983517b36ba319a704424be07c5 100644
--- a/arch/arm64/boot/dts/apple/s8001-j98a-j99a.dtsi
+++ b/arch/arm64/boot/dts/apple/s8001-j98a-j99a.dtsi
@@ -9,6 +9,10 @@
  * Copyright (c) 2024, Nick Chan <towinchenmi@gmail.com>
  */
 
+&dwi_bl {
+	status = "okay";
+};
+
 &ps_dcs4 {
 	apple,always-on; /* LPDDR4 interface */
 };
diff --git a/arch/arm64/boot/dts/apple/s8001.dtsi b/arch/arm64/boot/dts/apple/s8001.dtsi
index b5b00dca6ffa4caa1d504860693da001a8ced80e..209c7dd19b7c289096e22b3c86a825c53d19a78f 100644
--- a/arch/arm64/boot/dts/apple/s8001.dtsi
+++ b/arch/arm64/boot/dts/apple/s8001.dtsi
@@ -209,6 +209,13 @@ aic: interrupt-controller@20e100000 {
 			power-domains = <&ps_aic>;
 		};
 
+		dwi_bl: backlight@20e200080 {
+			compatible = "apple,s8000-dwi-bl", "apple,dwi-bl";
+			reg = <0x2 0x0e200080 0x0 0x8>;
+			power-domains = <&ps_dwi>;
+			status = "disabled";
+		};
+
 		pinctrl_ap: pinctrl@20f100000 {
 			compatible = "apple,s8000-pinctrl", "apple,pinctrl";
 			reg = <0x2 0x0f100000 0x0 0x100000>;

---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251231-b4-j98a-j99a-dwi-bl-b56c3075a4fb

Best regards,
-- 
Nick Chan <towinchenmi@gmail.com>


