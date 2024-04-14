Return-Path: <devicetree+bounces-57505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ED80E89DAF4
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 15:47:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64DE21F219DE
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 13:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0F9A13172F;
	Tue,  9 Apr 2024 13:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EFE0zR72"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7561E130E4A
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 13:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712670134; cv=none; b=NCkZMUcp72Ke5TxubFks6100M7m/cJEcmGCaiZRiGGphOCjO+NNcx6f/pMtlp4j8RuAyIbtxvvlg7xKqspbJgU0fIHRDQCweBtlDjh6xAVYTWzel4KegWH+GAJNu5G4YX2ReIp0RJ2HK331aDtJkzUV0LelC+z9eYSfAxIIT6Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712670134; c=relaxed/simple;
	bh=/vOu9XkDF1ivIMFF9y8dssFF9iYAfa06zhwEkg41bTE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R1tNplw/s/Dgwp0fcjKNaMGO1EFi1RZsmLBNYhmzJBooq3MaIYk5qGIuqvxNNn1NOzDE1VqHuyT47ocumM6zLEAwpdcqS0MfsslMZHDegIqEXNfwSh+xiWEdsNsMm1j6gyY1JuEon6KNv1t1paFiuZy/H4r9m7q4QfNZOWLb87U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EFE0zR72; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3455ff1339dso1959751f8f.0
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 06:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712670131; x=1713274931; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HbAnGW67+sD3j4bFEEGXSjEWjYNqBQKOwwBoksUT1QI=;
        b=EFE0zR727H/KY1PRNzIKAmH3iUqAp3rRKNqHhGR/hRvGQoZ9p+Wdwo49O8u8TLn8fk
         lD6Zm20/h7FGsqYHwQWACj8XgmCo67sU4V84q2dk/caaBlX7Tuw9LyMr9weySDBF3uyO
         VxCyc9E1ywmeMDTDztN/GAiCdYnGcEblSyaODKSaflsk0whSXp+cr+cwg4n0WwO0sc8+
         rcqPZoTuYbkYmPX6q+tZZoRtIr5ir4JiN8ElPiBRGeq40ne0riqOs/V1JVkbXy/JO0fF
         6jQujR6rxyAFI25/UWNKEY2FmYvBXpBtXq4mRDx2sj4CdCIIwtnep0Ib0lyVqLC5MvNi
         lB7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712670131; x=1713274931;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HbAnGW67+sD3j4bFEEGXSjEWjYNqBQKOwwBoksUT1QI=;
        b=W+YEIMFIn/nYrc00sKqXhJ3S73AdEU4FN92hRqbMgcBKNk2Y7nIhougzYupwUPHAEP
         MywXHohaiOaBbzluKDa/doAxJaH6TZ2CX29czlIn4m2ec95a6228oKXYvQQNq2W17GMj
         wavfysEpV0dVt2yGXGadeMBBo8Qo3cJnk5LLyxaNdrnwPxl0FZ6Jg1qEZAdSU4LAz8/O
         w6HpLkKaBtW0sYnJMc/ZkN47AyDYlVNSsbrkGD8RPWIzGDelJXcYq4Q3CpESDOnhVBc/
         ImLofbLXT2fetBF4LEIGP+721ImLvIH4npetkNLXP7KCdvLwCqHgyNpqz4O+DmYXJR8e
         d8JQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2suGHaB2iKCk5AskuU3P9wBXMPtqAZQvctXrO5sruu/E/bL2XRCfvisBU5lSxx3WWvT5w1mLCCmP67icCqQ+DmH+ng9RRjEz6CA==
X-Gm-Message-State: AOJu0YzPeTeRa/S4cUCica8r2GXORnKziucAUrA6fQxlsWDX3nUZQ9CW
	kQ7DaQjEJs/i6efYrV6TnkrBIk2Pa8oAmRT/yb8LBlkPUuixypv3Izkot1SZN5g=
X-Google-Smtp-Source: AGHT+IEr8v0i04KdyN5kSzY25bHZCPhvpFxoitJRr7PKl1+ZyCicgPra8W9fa1HFKCRN0ubVImW6Bw==
X-Received: by 2002:adf:e90b:0:b0:343:e824:f0f2 with SMTP id f11-20020adfe90b000000b00343e824f0f2mr10011102wrm.13.1712670130725;
        Tue, 09 Apr 2024 06:42:10 -0700 (PDT)
Received: from [127.0.1.1] ([93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id j11-20020adff54b000000b003433bf6651dsm10753579wrp.75.2024.04.09.06.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 06:42:10 -0700 (PDT)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Tue, 09 Apr 2024 15:42:01 +0200
Subject: [PATCH v3 03/18] ASoC: dt-bindings: mt6357: Add audio codec
 document
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240226-audio-i350-v3-3-16bb2c974c55@baylibre.com>
References: <20240226-audio-i350-v3-0-16bb2c974c55@baylibre.com>
In-Reply-To: <20240226-audio-i350-v3-0-16bb2c974c55@baylibre.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Lee Jones <lee@kernel.org>, Flora Fu <flora.fu@mediatek.com>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Rob Herring <robh@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2284; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=/vOu9XkDF1ivIMFF9y8dssFF9iYAfa06zhwEkg41bTE=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBmFUWsCUPB67ZFEADN+f8GNfytWS4dS0PC0CimAp9l
 6g24vd2JAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZhVFrAAKCRArRkmdfjHURT50D/
 9vl4WxfBFWz3OI9VU5akS6nHUTHE/5H8g6UD5AKWoJj81wXmTOdfSs3SgtdxKtmsmb89fCM04dVot/
 PzcjN687mp1aKo8TzcQpM8yCtMkWDC6XU5vGDgw6LjbbZyvHIdpWkPx+z/Wf3On3fBmtihvKZ17ebL
 ornI4fLUSKQfOSo3UMemleu+ZCucJ/t84hQHFTdZ13nqu79BWTExfYKSe3ZblY2t1X3noYSu4XYew2
 lBf4tr08WA/kJNb8Kpe6hm3G6zCv65J5cPxIJk0H8vZEKtngAtPXIDnFveZgZHRBifYea8wWtFDaqv
 3f6tXlJYYSmBXtzRhOmyYaZ5vKHIRD8pQK+pDtT6O+7ozklGIWbWpeA/k681LHYCDaDqstw353AnX+
 MZZyJaVIwBviGpI+jym6Ei6RWTLrC+mJ13D4qA2Sj24TUlt/lT9N7/5vjgvVaDvpYtQxcWqGa47IMk
 Bdq7mMJyiMEJ6VLYvj00J8fLFAO/ka1WnVFK0YI/PrB7mXZYgrC1OG92m7b73NKNbJgP/Yhhw08MuK
 ZtqtQj899QN9V4dDO8LMSkBeuWh02vmZFbxPhB2l6mC6SHQ39F6rqnHYCqLy06FEdEyIJ85gFtEgTV
 j751Pi2ZGvH15ILCqOWmbKGm5qDr2rXN4iTqlgnTxQsjqHbUHVAYZVMBSzkA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Add MT8365 audio codec bindings to set required
and optional voltage properties between the codec and the board.
The properties are:
- phandle of the requiered power supply.
- Setup of microphone bias voltage.
- Setup of the speaker pin pull-down.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 .../devicetree/bindings/sound/mt6357.yaml          | 54 ++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt6357.yaml b/Documentation/devicetree/bindings/sound/mt6357.yaml
new file mode 100644
index 000000000000..381cb71b959f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mt6357.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/mt6357.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek MT6357 Codec
+
+maintainers:
+  - Alexandre Mergnat <amergnat@baylibre.com>
+
+description: |
+  This is the required and optional voltage properties for this subdevice.
+  The communication between MT6357 and SoC is through Mediatek PMIC wrapper.
+  For more detail, please visit Mediatek PMIC wrapper documentation.
+  Must be a child node of PMIC wrapper.
+
+properties:
+
+  mediatek,hp-pull-down:
+    description:
+      Earphone driver positive output stage short to
+      the audio reference ground.
+    type: boolean
+
+  mediatek,micbias0-microvolt:
+    description: Selects MIC Bias 0 output voltage.
+    enum: [1700000, 1800000, 1900000, 2000000,
+           2100000, 2500000, 2600000, 2700000]
+    default: 1700000
+
+  mediatek,micbias1-microvolt:
+    description: Selects MIC Bias 1 output voltage.
+    enum: [1700000, 1800000, 1900000, 2000000,
+           2100000, 2500000, 2600000, 2700000]
+    default: 1700000
+
+  mediatek,vaud28-supply:
+    description: 2.8 volt supply phandle for the audio codec
+
+required:
+  - mediatek,vaud28-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    codec {
+        mediatek,micbias0-microvolt = <1900000>;
+        mediatek,micbias1-microvolt = <1700000>;
+        mediatek,vaud28-supply = <&mt6357_vaud28_reg>;
+    };
+
+...

-- 
2.25.1


