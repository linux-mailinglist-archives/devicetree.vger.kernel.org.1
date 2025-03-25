Return-Path: <devicetree+bounces-160579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 644F3A70370
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:19:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCD8C3A6B19
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46FC625A2CE;
	Tue, 25 Mar 2025 14:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="VuaB9wZk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8A025A2B2
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742912004; cv=none; b=JGlXai//38XPdOr2q74Wh89EpsThp/zMbh48CaJ/ogajSHSnAlFVkcs0PB+hjpfv4wckR28nxrPQen979s+m0vqvSTlptNIKnuBbngqrxqj/fB8Ar8JteWlmpRHaTcAuTD0tJO9TCOvsPl9wjBgowEFb9u937dkUM211gA8udes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742912004; c=relaxed/simple;
	bh=D2seTNqsA+k60CiwsBqeP8HOf191uyBjDvtVghGiw5I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FPJZk/bhkrF0u8V7ROz90WEZh6Cz5y/y0JCFq3CHacTiurXewLlCz8f/yFu9CuyHW+3uCrAqVK+fIUjfjYNuvUabH6tHrObR3aCuP+2FJsG1oO7EYAoFsXTQ6el+VJnJqkXF+QzDNeCI6eW/TXDSwQLi58bdHuLOrGjltJC6nWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=VuaB9wZk; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0050C3F66D
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1742912001;
	bh=z1YltY4DUAOKhOrYaqFTN+9X4KCj1NX0eIOCMrmZPFU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=VuaB9wZkFSrFKLMp0YLB3p7Lg8565jTL5BN9n4l/tnb+EAf4DUyOElgbjrlSwhYni
	 oIVZDA8aDuonS2/hirCOE8nHiql9r+RBnsF+vuSAcYtyOLTu1VnjglygYl7wXWEwsA
	 KyUKtUF7IXPGiK4Nf20xQVn+4jzHlguk9+6SmfVg9Ls4un5sqXGiGQaJDi+T+KL1MC
	 tKmEQhYlPW6stkt9wZSkosTL6Krp1rUdIKNHDrXR4FU2KEyKHcjkSErIIoftz+wYHu
	 ADivB5O8ugMlXU2B1PQ7R37FGOFHvqDKR7eIfSjs5VVO+DpM3NqY7p9E2KyPPxXQAb
	 MPcpddYBH8NHw==
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-39141ffa913so2915341f8f.2
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 07:13:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742911999; x=1743516799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z1YltY4DUAOKhOrYaqFTN+9X4KCj1NX0eIOCMrmZPFU=;
        b=frUAaEibaxdp8AYfK59YF6e/GDwCksIRztNAo2pcTvy6iptsn9JCzgKudWFKVZWyGJ
         UIz53dswdh4cDSY8ClmBt9OEGefg4tY8RZC6WYLfu/Zp/1TY3COKem+vBhqQaGU4Cxv+
         0HCtUysl/ERfypR4NfQAdZDp57bMNgAeqgEt9ZebqYEQItAtgWqwgd26k20AaBEIwBjN
         R2XdplpIKdVa+tHbs3eYe2GEMFu6LOZ5mZXl4CznLNiglz9dAQZcA0kMneoJxAAVUWuh
         QDMLpP4T37K2AqmONE+VJzOgBiM316I0OFv+hWaYVhHDf2pRRsCiBNy7JEKRF4OV/p5F
         hk7A==
X-Forwarded-Encrypted: i=1; AJvYcCUihnStV3aNjtWnocJVkbYZw8blU2BzKC08rvkAUS/neGEfDUESVgv51PifXrBH27yIAN8bb1cb5VHM@vger.kernel.org
X-Gm-Message-State: AOJu0YwBuEkQdZZjvncwIZKT43PvAv7BniHqSDHMgLKdwS/hLZdfy1ss
	ZMbtT+trtc2BzV8qzHvHH+ATIj4Rez2zxyZIMP6OY6pjG4x6FDoNhMcw3sxcf4GNRfMPtcSykAU
	UltLg36pcZ9UIW3v8aZCcZ/++vTjeIrhQ5PxaiL2qeDS+6W+XtMIQOAQ42DgBrxDgbpuNjWtwOe
	4=
X-Gm-Gg: ASbGncsC+W0Av1gMZ21Zf5cUlqMqBEVAXvrvpmF6GbtTfQwvv316K9Bev6Q6yCJH/pH
	XnmYercuJmK3W0XzHOwEEbY/9JYBUVAHbJga57mIzSwrPLuavq34hTKsHWGMD8GtJ0TBFS3URC4
	yobuO7lfe+52LDnIYtIaLD/FVosIpR479VRqjeCXiqcvKol/n97xXvyxBLU55NvH0r0qwnwMf8n
	JmJgrKmKwdYLo+y7Jze6loSLgw3TsDj61KtkuhGf8gCv9Q6NVsTL/Y75MC4LS5Zlvc2vguWJPJe
	uX0YBUVIPLMA7/7640zY9QDORJc3jg==
X-Received: by 2002:a5d:64c3:0:b0:391:4bcb:828f with SMTP id ffacd0b85a97d-3997f903714mr13947103f8f.14.1742911999494;
        Tue, 25 Mar 2025 07:13:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHI6KEgZoCtSliU6E0BwKfVc69vn7sSR/m3U6awSJRdbl6af8gLXmNSZGr1/IgpSiG8Z6CDew==
X-Received: by 2002:a5d:64c3:0:b0:391:4bcb:828f with SMTP id ffacd0b85a97d-3997f903714mr13947058f8f.14.1742911999075;
        Tue, 25 Mar 2025 07:13:19 -0700 (PDT)
Received: from stitch.. ([80.71.142.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a6326sm13532091f8f.29.2025.03.25.07.13.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 07:13:18 -0700 (PDT)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>,
	Min Lin <linmin@eswincomputing.com>
Cc: Samuel Holland <samuel.holland@sifive.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [RFC PATCH 4/4] riscv: dts: eswin: Add HiFive Premier UART pin control
Date: Tue, 25 Mar 2025 15:13:06 +0100
Message-ID: <20250325141311.758787-5-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250325141311.758787-1-emil.renner.berthing@canonical.com>
References: <20250325141311.758787-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add pin control for UART0 and UART2 in the HiFive Premier P550 device
tree.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 .../dts/eswin/eic7700-hifive-premier-p550.dts | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts b/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
index 131ed1fc6b2e..c278695dcb2d 100644
--- a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
+++ b/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
@@ -20,10 +20,56 @@ chosen {
 	};
 };
 
+&pinctrl {
+	uart0_pins: uart0-0 {
+		tx-pins {
+			pins = "UART0_TX";
+			function = "uart";
+			bias-disable;
+			drive-strength-microamp = <6700>;
+			input-disable;
+			input-schmitt-disable;
+		};
+
+		rx-pins {
+			pins = "UART0_RX";
+			function = "uart";
+			bias-disable;
+			drive-strength-microamp = <6700>;
+			input-enable;
+			input-schmitt-disable;
+		};
+	};
+
+	uart2_pins: uart2-0 {
+		tx-pins {
+			pins = "UART2_TX";
+			function = "uart";
+			bias-disable;
+			drive-strength-microamp = <6700>;
+			input-disable;
+			input-schmitt-disable;
+		};
+
+		rx-pins {
+			pins = "UART2_RX";
+			function = "uart";
+			bias-disable;
+			drive-strength-microamp = <6700>;
+			input-enable;
+			input-schmitt-disable;
+		};
+	};
+};
+
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
 
 &uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_pins>;
 	status = "okay";
 };
-- 
2.43.0


