Return-Path: <devicetree+bounces-33769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCB0836467
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 14:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA71828411F
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E752A3CF57;
	Mon, 22 Jan 2024 13:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FV/HXqC/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1123D0A1
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705929864; cv=none; b=j2fiGhpduSa+3mF+PjmmPmThx1hZb7SmyfuJYKPK1VlkfmSNTCdxyM+srOzLYm+Kr//2BnDQHZZVX/YCwtiOk5P12L9ieWobxa0SLviL9DdcOMKEDXf7BQ72SzzCPpKyC8oa777iQ3gIzWSmgBAOX0K28kU/qhIDvq6nxJBpoc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705929864; c=relaxed/simple;
	bh=zhSQtAjV5P0taylkzM3DQbez2CdMTXxp6Oofn7vf0w0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=HmSrt8tpE4MvBpYhcR/+UmUD2pKxPT9F0TAIieDLwqeJ/akkbVhK3icDGlQcBB1kD81P/qJQTZF+isEp8Jw/ci+O6ebTnl18z0fP7FtSu3GMK8nbUsgSIv/0wdoIG47whtPYdn/6b1vwUf9yF4SJWHwFqVqZpoqHhK61uAhlbyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FV/HXqC/; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-50ea9e189ebso3167484e87.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 05:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705929861; x=1706534661; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8ebCavULEeyT/NmLcH8invXwvVhmIdOGSS9McWBMZcg=;
        b=FV/HXqC/zcVrk4zDs7OzQTfFuqeQO/Dnu41fRNZAbiHMFFxoynXP+rgtcUeFShJ/Ij
         txb2O9p6iM/oMW5gzb257Kb28rV2n5n2y5Fbb6A3P9Sx3jZxA26IJh4NKc1HNGqiiGJI
         4ogfCCx9rc16cRsvoa0sXNFQBfZCgM2DH0f0X7auLYuposNNEE/ML/hG96+7IboK5khM
         BGlhqJew80rgCMxJ2RQFVnXIXlI5zKI8Ox7DStW/4pGDEKNEgItpoKKAmc2CueQt2+Zm
         sONQRiOckTFLRQz5Ago5Mu7Qu/+8dPNtQHvb9SMBHEDk3V5YkDaYytigy5/ro7OIWPRV
         C9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705929861; x=1706534661;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8ebCavULEeyT/NmLcH8invXwvVhmIdOGSS9McWBMZcg=;
        b=RTcPRBfc4fwso33npsOvqeuPBtU1uHi63UoFli0ZI30CMthhZwwF0qYr8+tNeTjuSp
         rpuWAj5Y3mo4pg5mkYYY19BsFVuesQoCQAd0W9sl9ZyBjAsVPk0kZTjQJLAulSoon7t+
         uKAe6O4Njbu0XGYefRaL9J/upF5pgJCSZO/nf3AdV/2r9DlJUdl30gB/ssVFoh6fuaZF
         UngamH+FySqDu6vE3zBMRzw+JuNClxT48is+vF3YOQPVN/wvE4yy4cmnEUntdqe1NL28
         GmWFYH0SCuw/ix/nsL/9A2KfXcuvU2Q3ppJqpIh3NxzKkFPOoyKX5csqTPLoKqAOLfDj
         agCQ==
X-Gm-Message-State: AOJu0YxMqzsLPsD/D2fHm+Q/4rHpQGtsWVMp7t3PAi8wtfNgvwL2AzWw
	qnFTpxqIJKrCmgJ87HVEI18Ulqgit3zPZn0T0CZMgRq5/NjHpcManZ6S6fdU
X-Google-Smtp-Source: AGHT+IHkqDxdGIwLvaLv3tVXDkHxcPy43PdnlSgk0RImB4b0VF1UUD4kLrDGMQseJGHCPoZLADE7gw==
X-Received: by 2002:a05:6512:b11:b0:50e:7e29:b0e9 with SMTP id w17-20020a0565120b1100b0050e7e29b0e9mr1848540lfu.73.1705929861126;
        Mon, 22 Jan 2024 05:24:21 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id w25-20020a17090633d900b00a28479fcb8esm13398980eja.103.2024.01.22.05.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 05:24:20 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: mediatek: mt7622: add missing "device_type" to memory nodes
Date: Mon, 22 Jan 2024 14:23:57 +0100
Message-Id: <20240122132357.31264-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

This fixes:
arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: /: memory@40000000: 'device_type' is a required property
        from schema $id: http://devicetree.org/schemas/memory.yaml#
arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dtb: /: memory@40000000: 'device_type' is a required property
        from schema $id: http://devicetree.org/schemas/memory.yaml#

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts | 1 +
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts             | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
index a1f42048dcc7..850b3e277368 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
@@ -75,6 +75,7 @@ led-1 {
 
 	memory@40000000 {
 		reg = <0 0x40000000 0 0x40000000>;
+		device_type = "memory";
 	};
 
 	reg_1p8v: regulator-1p8v {
diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index 2dc1bdc74e21..5c26021fc4cf 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -57,6 +57,7 @@ key-wps {
 
 	memory@40000000 {
 		reg = <0 0x40000000 0 0x20000000>;
+		device_type = "memory";
 	};
 
 	reg_1p8v: regulator-1p8v {
-- 
2.35.3


