Return-Path: <devicetree+bounces-37619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8DB845ADB
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 16:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3830D1C276B5
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 15:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D4E5F493;
	Thu,  1 Feb 2024 15:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UQB/Jzny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4835F48C
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 15:06:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706799993; cv=none; b=bJSxu+r0cagxsZAgwgToDz7heRXZTRS0jzzuAuO7odRDW4fj/uJvQFLc/h5O0nm9Z7mzAM6PXNnGrnSn2pzZHbx9bW4x0yW97xgf98K6+Pb93QOW29KJS/mAt7WmtooBknMFOCOUT7f37ZuJ6S8Jpt8bK0AIcHrTySnzog/q6b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706799993; c=relaxed/simple;
	bh=1GBzJV8xHzP4qLafAHWrRv0oOHNs8s0TMtp6DHwi2VU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=exax9Xb1stIMI/pwso7ka8KzcDOJNciS1t73ybBOFVaw/2uDh0qAJdvt85vnXTDCUohpM6Oj60YASuAFOyvhkWEkR8TL5BH/QP1cI/wjKDqcEHSP5CDD/qFkEDaZ6KBdsqbQClRz0fYaf3gazVKYKl011imKRp5sYPRBuKnEPyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UQB/Jzny; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3be61772d9aso487961b6e.3
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 07:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706799991; x=1707404791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7V3dhLDDeVG0FMkRqXcHl9bSwZHFa+HO/bVpbOmkDAE=;
        b=UQB/JznyKA2PQFnUAvgZhznG89kGfuapYiJGba8RDXsxaXTvLljnhA+U66noDa347Y
         CARy706jjMlIIbxN36j+dWsXupYSxy77fA9ZYdejWFgk2uk96Tni/WdkJeA4OLl1gzW0
         rJ5Ea0cngMAUZA9AubwNoBEOGAdZqSwb62771cY0+8G6r0hb2Y1lf7oMcJNxcyKT06Cy
         w8JS+o8qpY8tP/a1nIu8VNWJH802DJ8WAYswBnnmtXVoKRq5rMR/BC84CAbbocePV4Ot
         q6/4nE53QawEaA7YQGF2VzKgA+bbpfu+zvaHkoS/OKJKXDXccIifEWQ1bKjQQO6H+zo+
         Ccag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706799991; x=1707404791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7V3dhLDDeVG0FMkRqXcHl9bSwZHFa+HO/bVpbOmkDAE=;
        b=vvPRaB6FzKTyRU/Yl5ZmIVBowf/+w9j2K0pcRZby1W7pT2I2561naRxVHiV4um+QFp
         R4ay8Eos0il5qMyHHTtKRUthlLpAq3OXGWvi4uiYyvCm3/Io9r+u6tLYY5v5FKjBF07G
         ewP7ySb1w1p63m3K5mK5nj5cc4KWgcKxf4Q+qxSJbqhfyqERN+rCjmhuc3i+bg0v6uiE
         hAlsYtvG13LkorrATxr/KqsBNxdih9Q9c/MpzF8wirCOGI/cTCk9YDaFekYCb3nV2yeO
         ERkmXkyFRj8vT8vlJxRpAPbM49OExSIz84DV5CrUdqkLwvMpt+9Lb4WEZti0/HnzFWO6
         JjSg==
X-Gm-Message-State: AOJu0YzDDp7sMQAR1vtc16XN+VID1X0ryLUWKxymMOXKZMChI7lIKCtX
	NyJsOzZJ0tCz7rFRlu/Tv8HvykAhJjWGcI5mat5zgkQzDd2ulQo5
X-Google-Smtp-Source: AGHT+IGMGUKsarRxxcCpyIike2J4WFPYe6V4xaPOmR6nyzgtWgMYvFvdhO6ZHxKZn5TeppPBYnwzSw==
X-Received: by 2002:a05:6808:3020:b0:3bd:da5f:4af7 with SMTP id ay32-20020a056808302000b003bdda5f4af7mr6148649oib.55.1706799991502;
        Thu, 01 Feb 2024 07:06:31 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXUvo6+Ulg6dUlpLnA3DRlGAzIKoSEz87rQrf3YKiKgRG+yLbuPxUzrLlwkHPxmROKNKZY3ZwC6RSV0AU/GIHPDeIA8uI+vJMqAGAnmNta8WqtA2y/vgHYKQ+O0b5meRh4rEI7T5SnoKMTww2PjzLzKDXv0x1jfScKZqh7xwtS30egJXcXI/LKJvosoBGwlINm9LaOrJBSMcvkKhLmpB6MBQF9hNAELU7XBY+WEhSUoRNwgMpK4i8O1eco=
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id h23-20020a056808015700b003be8122a4basm1184437oie.27.2024.02.01.07.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 07:06:31 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Trooper_Max <troopermax@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add Touch to Anbernic RG-ARC D
Date: Thu,  1 Feb 2024 09:06:20 -0600
Message-Id: <20240201150620.886786-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the Goodix GT927 touchscreen to the Anbernic RG-ARC D.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Tested-by: Trooper_Max <troopermax@gmail.com>
---
 .../dts/rockchip/rk3566-anbernic-rg-arc-d.dts | 26 ++++++++++++++++---
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
index 795fbedc3c1b..a4e68e82fc06 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
@@ -19,14 +19,32 @@ aliases {
 	};
 };
 
-/*
- * Unknown Goodix touchscreen at i2c2 0x14. Needs testing before it's
- * enabled.
- */
 &i2c2 {
 	pinctrl-0 = <&i2c2m1_xfer>;
 	pinctrl-names = "default";
 	status = "okay";
+
+	gt927@14 {
+		compatible = "goodix,gt927";
+		reg = <0x14>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PB1 IRQ_TYPE_EDGE_FALLING>;
+		irq-gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&touch_int>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
+		touchscreen-inverted-y;
+		touchscreen-size-x = <640>;
+		touchscreen-size-y = <480>;
+	};
+};
+
+&pinctrl {
+	touchscreen {
+		touch_int: touch_int {
+			rockchip,pins = <4 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &sdhci {
-- 
2.34.1


