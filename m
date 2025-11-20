Return-Path: <devicetree+bounces-240864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C91C769DD
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 00:32:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id DFF3C30F8C
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 23:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230343093C6;
	Thu, 20 Nov 2025 23:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eznK7iXE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BADB3090C6
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 23:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763681405; cv=none; b=EJ5S2bVYIzdEetvBrx99wOcFO1kOA42qmdmG8cDLeIXJ6H47QYmAcvIZymBnawAFkXI7EAIm0bFhwvu6ODJxjoSwen++JHyoMJgqX8du8ZkRzQqutUTjuxKPMTLbD97y4k0zu9yHjtj5YO/ioLYcBi7smpi0C3QBnjCnwR7YmaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763681405; c=relaxed/simple;
	bh=hunFSs3zO/FdwbPTBz6ZDIaiUyPsRF5W3LVgIps/huI=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qKNlPAl3x9fKQ0dXE9ICVTiD6JTLW1r9N/jj+ov2FPrk5FlVo3+jHzzQboWK1k217QyG837BwWVwuwfKrZsVtdKMnJrOZjPXzMza8K3jD5UQ9aFmfRx8E5Bxh9Bw7xcPlio0PvB0jAXylAHUY/o+bAYG+l5ypmCe3utPBYi1TNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eznK7iXE; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42b3ad51fecso1160597f8f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 15:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763681400; x=1764286200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4mYsgMrDgS5hUvuSlIrRJpIGUfBKBPSurplnTSPjF4A=;
        b=eznK7iXEpYbWXfjnyW3Np3NsZ6/tpEkqGHwavrZA+/J4g7Zu5FIk3Hy7Bcl5PnQI3m
         EmgdwIv6LKA7F0o/WyAOoOCtF9/AZEfCIq2E6OKQtTSazFk53UKJXAHNSEMxEo/y0X5s
         09wLjQnh70OSDn70DO0YyqjtmwNeVecc0LM1USk8D3qLp9/Gwx2mJZglOdKGAjBnT+sb
         0ugjIE6VxBeD6hbIiJYiMVeL1Jt4UPTO1sSZDvazUeBKskTVX7IxOs6BioiQXqr/lKpB
         qttNg6Q8f7dEt/8ZhNlGLFB3zA8w2Y/x7I8wi77F1/galB3D6kfstoaU6tVXlP3Nh4uu
         upRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763681400; x=1764286200;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4mYsgMrDgS5hUvuSlIrRJpIGUfBKBPSurplnTSPjF4A=;
        b=lir8LsyrDisS5lCRV4qhNFCoerg6OcHUuNrtGb4A4LxyOdczj2gKWWh8/Z5aon+szg
         SwM/MmUX0I0E2lSAD6SYXRrQ+dTorTF4T4F3y1tW3PrA1HQYOyH732bVZg0g8y3rxQmz
         9TEhJl770KB5hAAEw0opHQwrAEihegM/SXWOs2OyvpshJ9UrcZlZGOlB6b9Bz5+yaaZd
         SQ2e5PFelEKmjXcaPQNi+VEsg9JrxkJRPV836aXX3IVZtnbMwlLmkKpsRYN8JvZY4mJX
         NEqu3quo36qSZsqFtBfy5IQleHPCDSDf6v9iee3Lo836qJXkgngSvYVJmCiY6P6Q0zvI
         IUuQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9o8QlEbvDrTTW4N0dEKl+VeGrtzdzyfQaS1AOgQcAINUtIFMxLFOXuerJuMdGYPUipTAaJbPFSj2S@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7c5ar5gwWfiLJXOkQ0dzzS/oSxCOTciwx08bOwDIkNyS3z1cL
	tt0W4sp7Pf0qkZQ0xU+LTleErc5y+rBXYO/7vtFBqSPK2GCKKrPsYze6
X-Gm-Gg: ASbGncuU4bZD6pujorIGjhYRFysOTaQA2SxNj5cVD/KzwrmVdjPAkOkbTc9dqrB4D+m
	5df8JWqi7Jx94wtema3s9R3pU7ZywmAuKQ7C0TrCmxT16bEcbNIdPenD6Ydf16YBUiTYCo1eaNr
	cnQJpuepbs9PxT0a66C44BT6/EbHFBOHreKp+mTF9svxC9zuUEFej1K7AkmMLldYRJ/es1KH1bS
	HoaQsDaJTUo9vziHiz84GEH8vjgZmPMstzTBUa0rMsR2D0vQYzXOXkv85uYiqIAhnKRU/IS/sJH
	swl/50EfpqUGuWy1pDK0I4RXW+HCIFP7r3jmzYVTe5VTwqTKxG3ahsjXDEATYHkqgjfvVFl2htF
	h2lTTvO1o07A8v568DKG9IcPlKyVYjqTM4L8rcKI6+Sy4kUpIL8Lj9rY6M1/qUwXmCBpfYPdbS5
	rVPtli+QXK+BBS2Bmzose3HhnfxMxhUOnqB7jWIaA4
X-Google-Smtp-Source: AGHT+IFkcSWktgO2c9cw3ZmsJgiZ5al3O9HH0pDkGB4u/dkR0XIinpd++pYOt4jbYtH4OgfnVILTXw==
X-Received: by 2002:a05:6000:2284:b0:42b:41d3:daf9 with SMTP id ffacd0b85a97d-42cc1cd5d3emr109924f8f.2.1763681400373;
        Thu, 20 Nov 2025 15:30:00 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42cb7fb9022sm7776315f8f.36.2025.11.20.15.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 15:30:00 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>,
	Ray Liu <ray.liu@airoha.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Cyril Chao <Cyril.Chao@mediatek.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 1/3] ASoC: dt-bindings: Add Airoha AN7581 with WM8960 YAML
Date: Fri, 21 Nov 2025 00:29:10 +0100
Message-ID: <20251120232913.32532-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251120232913.32532-1-ansuelsmth@gmail.com>
References: <20251120232913.32532-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add documentation for Airoha AN7581 with WM8960 i2c codec YAML schema.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/sound/airoha,an7581-afe.yaml     | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/airoha,an7581-afe.yaml

diff --git a/Documentation/devicetree/bindings/sound/airoha,an7581-afe.yaml b/Documentation/devicetree/bindings/sound/airoha,an7581-afe.yaml
new file mode 100644
index 000000000000..80d9e87f1470
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/airoha,an7581-afe.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/airoha,an7581-afe.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AFE PCM controller for AN7581
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+properties:
+  compatible:
+    const: airoha,an7581-afe
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    afe@1fbe2200 {
+        compatible = "airoha,an7581-afe";
+        reg = <0x1fbe2200 0x9000>;
+
+        interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+...
-- 
2.51.0


