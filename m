Return-Path: <devicetree+bounces-200742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 317D5B15E0F
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 12:21:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C2D27ABDB5
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 10:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1D85275867;
	Wed, 30 Jul 2025 10:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dYznHn8n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374B42741DA
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 10:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753870895; cv=none; b=fiD5MeMbn606sGw82Yb569kFHB2fH1/vkEtUtIL5p5Gk9+jw2wm4MkX1wl12r/EaRZjT9bNwoRJeNiKWGlpTYZIdPL0Al+Skms4qX8NIwL3N8YJhz6mX/UhPjgvAB9hBxl9gSfhKaCBp515zTUoQ0lDfyh8NRfiT6NaqYc3Rg/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753870895; c=relaxed/simple;
	bh=Y+tSZfdhzH7q3y35doZALKJSaC4JvZC2ddW7P3nTifM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pmJTO8nWg+fVd3m+leF2hXeLh6fBuQqyivGM1x3IDAGb2aDCDAVYrB6auJK4yoGArqydbczzaHjyqqvGebfsE3yhj3cP2NCkAhKbcwg+KKvkvrZ3IZfANIfDDe5RHkKpKBMvv6r2CmtkL8X0+djWMvtgma1q4DKv+dzmb5mxEwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dYznHn8n; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3b7862bd22bso454638f8f.1
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 03:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753870892; x=1754475692; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=izmdp1mfJElMA660m7jOXKNrgn9YS9Q0kIP1psA3utA=;
        b=dYznHn8njxgKuGi9zAwq5L2w/CbmE0sR1XwVVoAHSbsotMOQ4CEl8sQTL59F7qS8de
         +z0DIIUvBf+vMcqtTxj7j9+RPJA850MAS9ZHqJmm29jZEX4Kx4GWnQJK6avYlb1hLZgF
         Fsb0V+Z/yZ/3GjZBiSUv8B7q9jmE3O9tN3bTcRrrr729iNTw0y06aFRekOLP9CyUtQB0
         teaGA1njjkhsYx0/YwFWez70LXMLv4IIN7xpS+s9EBt6VZUMNjCRDTKiAvtJ2wzfcRGx
         H6d4Hd5N6S9jCHIKO0OVYHe7povmfIZkfXmpfoly3yxLMSXJAqc1QNr/UuRAezVncA8H
         m+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753870892; x=1754475692;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=izmdp1mfJElMA660m7jOXKNrgn9YS9Q0kIP1psA3utA=;
        b=YMiuijSJH4T9smPTtj33L7KVrBd9x0H0Ebu2RUAfwOtYUZP5spvDOqpTD4UyMecygW
         JlCL/dPsRnqKn3DyRTpkRfFFGT+lWK7qJ3XwLtBy3WbmbgW0Ozes/GRHbe5K+9xKn0iD
         Rgd/vqWLRXgUWEwvnYRwML1OjSGn8+7GjNApRtVhPrOXaosrtMQZp/FEgfFsa9x7DFRZ
         4TBn6WttLx5+lg0tlNTGheiKSHDUlKrD7YTwS+FQNzdieXNXQuLrXeY389dTiF26qNNs
         NsScQPCFEtHcMI9BpAbDuicz5/1nwL0MkBLXwvSiWPybpigtsYCRMZ5lhVjYD+4/NkHC
         K1BA==
X-Forwarded-Encrypted: i=1; AJvYcCX6/kr0XAHGXHXQokSQwhDmLEqZixD1oPko4YA8NfkNyU/nDHs52Q4wBSThWRl9O4SFVqBaVc4dhQLA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywqup0E0sOX6r501D3Lv+Zn7OikYh7CsIgF92oZ0V5vcSkqjuoP
	np6BSmz4ywdmFwr0QbMZhs+tJ6vBwU1IPq7vz/q4ydZwBJhI28UL29iAHQazYQ==
X-Gm-Gg: ASbGncuLd0SvEejc5Qp9lmFXt9cWlebOc3IzBzHO1XecP7ohHW6C5lWV4f/Xw9+N6rF
	w3qESB5Ut98bPASqPc89gdYfmLlFTU458bGKeS+n+Fp0BKrvWDIaaW1udou/eMjtb+K6J+frMIn
	mAmdWauWiQ+04jrgUXl6k2iBFnLYupFlx9y6kAjsC0mQPHoDj+LPIXdDDtiThuavf0sYxQgfEw5
	BC4ccxK51UZZvait4xRRd7OUdnkuBeEgq+oSlVlYVI63I2eUomxL9Fz/kkzUOWznqf38Is143Pg
	L+1XuBUZ2MhcDYfK7u3MxExGU6O70+RsJ7k1ItMbBxLf14LL+N1Cfq59mjdymc6Ftn1VAO57Vm2
	490zzGJ1BMVAAeQH46nzzzoMxy7xpK+2WG03MWSl1nOILgqmBdMbkCGOoTF9yPw95BNberSwZjh
	UtIrGCbTVJVzU6JsvhPlwdF9SvXTKr6QezxgM9/Kh6otGYBYNOagU45BwcUQ==
X-Google-Smtp-Source: AGHT+IEHXtB2NA59RXOAGzl8/E7rrQL8mlrQPxG7D28gE4sPqk53HQ56chwvDhjCqBfn8C/qtk2Kow==
X-Received: by 2002:a05:600c:628c:b0:456:1281:f8dd with SMTP id 5b1f17b1804b1-45893108700mr24657995e9.12.1753870892301;
        Wed, 30 Jul 2025 03:21:32 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-45895377b3csm20230985e9.13.2025.07.30.03.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 03:21:31 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <didi.debian@cknow.org>
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3399-pinebook-pro
Date: Wed, 30 Jul 2025 11:21:26 +0100
Message-ID: <20250730102129.224468-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As described in the pinebookpro_v2.1_mainboard_schematic.pdf page 10,
he SPI Flash's VCC connector is connected to VCC_3V0 power source.

This fixes the following warning:

  spi-nor spi1.0: supply vcc not found, using dummy regulator

Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 05c48cb09df6f..ee0e6c1947acb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -978,6 +978,7 @@ spiflash: flash@0 {
 		reg = <0>;
 		m25p,fast-read;
 		spi-max-frequency = <10000000>;
+		vcc-supply = <&vcc_3v0>;
 	};
 };
 
-- 
2.50.1


