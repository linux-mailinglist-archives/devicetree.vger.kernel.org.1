Return-Path: <devicetree+bounces-251969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 839BFCF9615
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E97DC300F704
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F65342C94;
	Tue,  6 Jan 2026 15:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VIrgHVK1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3986C342534
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767712885; cv=none; b=JA92bN4fBG3IxyuM8QMXD1nsGRpjGDzXNZhE2SmUtOXlXEDq31/6N8bVHjtRKF1NdDyiAeld+aRwj6JK1lrJ4bN+wBVlCfofTvoEpxVxUrwKqsfNgsZFMmnWovG3PVhDUjrpcj7mb5UC2sSMy6pvwhh7Th6kWqo+T95IrX4oQ0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767712885; c=relaxed/simple;
	bh=Zz/bp8VDcWlKoSk5ViAzIDt0BEsqIbEbJ9edYSIJ1vM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UUcmOhiR0u63qx3a9PyCszO5RV100VwbuGPVTOls7w9qPu78FyhNkcL8O2X4eBYuU+V6FYXoQGQGYWYXqYCb5P9bb2jnfSkyLGKUp9K/+XUtF7sJ2OQe4rnEGZ4pJu1/O6lQ1ipTVE2f/FU8XobaOOw0pG6WlZRbwefQR1c7hys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VIrgHVK1; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-450b2715b6cso664310b6e.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:21:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767712882; x=1768317682; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p/t/NcB51sqAFQDiderPUcJQ9/jY7pit5p9mBhEVktE=;
        b=VIrgHVK1iiITX43ywYec/VlkVQgXXH7GoKvYZmWtJT2RCFvPEDtzGnTbarfeWZAvIb
         YVzQyz/ntMQwUgrsqAwn82+j0ZwZ2oQTBVmIFIrlF45d5Uea6TxCWATLnPCvn4On1tcn
         Jp+kNS+nXDd/w6Q6+mAmfXYEvGqeNmuhDXbVhGiG7FBvlQLS0w/qsaCTNDICA/ciz90N
         k7x05elLf8BuSQy4dbhAKIhPAM1B5mMETz/ueQxvAvFAhVuC2fc42qOCsWjdN2IxDv6Z
         ZZCbzseyDh2vzBkwQQHWOj+A5a2VOwVrp2zx0hy99fEgzaDAyoiX8AHZT73X6Wyyh9xN
         JzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767712882; x=1768317682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p/t/NcB51sqAFQDiderPUcJQ9/jY7pit5p9mBhEVktE=;
        b=W4LU/9FYNyWNocDqgB344IJsgjfp+Xrct9l0E8rPc//CzovVZ+526G99p8S6xcBUWt
         SjC3EEHuMEGd3T47oJ2aa4BXikAbggMQgVQjgJfcwJbidz2YHpCvSDIGX6XLm5iixTJN
         aiUSWSJdkcOdfA+9aBRBcs8zQVqUeYc3HZqsRBybR9Ggx6XczXMw/pv2K+bu3Iy91HoX
         DKw7MeK/YlTeS2UmGUwGiJcL4c9F3YnQkx2ljl57SPDUBpj9nW1Bg062o5VnPpOOrVLx
         3vjqy7ptphCkoGyslZ63EtZkWRtV0nfUoIKj+lz2/YH0odxF5963KsIzVnL2xflzSN23
         YcLQ==
X-Gm-Message-State: AOJu0YxDo8HkqKCLmWK8SJvXtAsMclyXpBNeSeGrsjWJx+Dn+a76nb6G
	Dw7o9gwk7lDnJcNzWqBi1TxZn1J7a1EhXgVZxMajFPa0U86ZCjeCClqQm7j7/+Bwm5k=
X-Gm-Gg: AY/fxX7QSygqqkUTGZqKTHQvsMKNrTv17yqM+FYCAka1NZ06mE2NFp8vQbubnl5lbcV
	aKSeyH05aymw6cp+G41XF02ve7K6vJPSCA9ECidoJVjMWSgWHap5aFEc/s4/8flUhBz3yh3McUH
	lh9JRmq/qdH9b35krU29n/1Jkro0//up3AXRUCexnQJVyX/qABXgc0hFNm/QftEHDOnBAxGrh4G
	E4LwicTR9zSvzhNLkPozp5y3z0uByJH291OoioTNtLoMSQAB7HopqK/zhpX4YV3EH4JHTuNfIsM
	gRctWBry5u3QC0QzbHt+5Oc7JCmBvt/JKDl2TbPawda5rsF53uGDYzElfQshQDJVtUs90Fb4/fr
	qzVxRSy9U6kFZPh89Ns4nFdVrZStTjx7FYuiL60BHGiXXUFQdM+LXTGT3e/fMX7idBl9r87W6DM
	6Jwq/DHb5kGhfkF419WQ7nBWaDyw==
X-Google-Smtp-Source: AGHT+IHMOQWDQWuXZsJRwpIf24l4IJ0UIs4un6Y4JFrYSz9acYwa5C8MYevbexce/tpNOsHYOYBv6g==
X-Received: by 2002:a05:6808:2516:b0:450:7f09:69a9 with SMTP id 5614622812f47-45a5b12f56fmr2140044b6e.49.1767712882089;
        Tue, 06 Jan 2026 07:21:22 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:7f98:2205:4ba4:3e65])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-45a5e17cd81sm1041992b6e.2.2026.01.06.07.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:21:21 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Tue, 06 Jan 2026 09:20:55 -0600
Subject: [PATCH 1/2] arm: dts: mediatek: mt7623: fix pinctrl node name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-mtk-fix-mt7623-pinctl-name-v1-1-33817c7f78ee@baylibre.com>
References: <20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com>
In-Reply-To: <20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=737; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=Zz/bp8VDcWlKoSk5ViAzIDt0BEsqIbEbJ9edYSIJ1vM=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpXShiySFBrfJH8ciCefdKbrKNaXKz+oYa+/Xc/
 5cTjcSGGYuJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaV0oYgAKCRDCzCAB/wGP
 wA8hB/0Rk3h/CrVUNlq1EIdiwxY3C0+oKsxr397VbJBjFtcANQJ7Zclc9UqIc1yqOGZkZKDVTT7
 Jw5F1hyzZFRM3cLwCBGf7Bx7wQjvv58z+jtKowVGbowHCo6rp8ESWoeql2a5DWxItDsHskt0VqD
 RckE04g99ezVvjN9EMrlZLrCZoBLXb2oXxMtx43M590KTOARQWqWSRV8B9UqNvKR9FHy389c2bX
 GizH7nz3zAk1LXJdeUnnUwkBg/y2dZWewPd2I/6V8QOZWa5FGkJvmcfX2YfivLKIog5JMHXBi9O
 an4k1ycuIFUoDfk5TdJNra/2xkcEVyt66einevkVMY7kjHb3
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Correct the pinctrl node name to use the same address as the reg
property.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 arch/arm/boot/dts/mediatek/mt7623.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi b/arch/arm/boot/dts/mediatek/mt7623.dtsi
index 4b1685b93989..9c54711fab18 100644
--- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
+++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
@@ -249,7 +249,7 @@ pericfg: syscon@10003000 {
 		#reset-cells = <1>;
 	};
 
-	pio: pinctrl@10005000 {
+	pio: pinctrl@1000b000 {
 		compatible = "mediatek,mt7623-pinctrl";
 		reg = <0 0x1000b000 0 0x1000>;
 		mediatek,pctl-regmap = <&syscfg_pctl_a>;

-- 
2.43.0


