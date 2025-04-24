Return-Path: <devicetree+bounces-170372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46613A9AA2C
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:28:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06DEF3BBCF8
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:27:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B9D922F778;
	Thu, 24 Apr 2025 10:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KyYlE942"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADBFB22F769
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490335; cv=none; b=JE6q5QhoYTGMxFc8kQWj/F8QUaUR9XROdKjFAG8vppRVVkYppl1VefTXWGPOxL9aC7qlr9OFxLdozPa9cUEo7ogDoYEWnZPA9gO+G/gWyaV/zQeTxvIVYDQxM6TQX3kXPUSH98x8tdmGi519hTeLnzC5mlTSHUMEUazekDl2Mhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490335; c=relaxed/simple;
	bh=AlCqzDQhKXab0Q+3deb0PZcdtOSYBmwa2tfmkwAzIoE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qQY2cTX9LO2h/oakk9HOwKNaFlbQnLPtUbtiuAEpBSL5YEZq2mSfFNieffUM3UXN7LnmJiU+Q6LkCB4fSLtPDAZK/qMLtFwZriRRVd1tcXq8la4Fyzq2+qV35ipFVfH3gJ0Jxxa0XbgM4df3vRyyAv48f2gh3+wmjY8lDkUtxE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KyYlE942; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2264aefc45dso12691505ad.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490333; x=1746095133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HOVuiI+8mSRH7O/02K1BDgrIMTx/XasOhwMXr41vKIE=;
        b=KyYlE9426zqbjnZj9SOQq6PvJisAaYgguFQmhsuuMUiRbFPdaWo7dv7cmZz5lm9ZMe
         I8BZ9biHtYRlTll9tZqHgKfnhMIFB+LOT3zx21MjiUM9D+sKElf4rkbm9G1+8f2dG3Gj
         +M7SLlHzyUXWkiJXWKpkhpIbsZG7MJ5EMs6+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490333; x=1746095133;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HOVuiI+8mSRH7O/02K1BDgrIMTx/XasOhwMXr41vKIE=;
        b=PuVjvCirRjD/cQtuGIAlR5MEkVRJS5NuJ7bgEMiJTPw+YVYlkSkdhNiCnSH5BclzsC
         X0xHLKBV01KY7XF+y3TGL++8Y+3yc37kiuK17PFdDtHMNJFvyeeWkPzDD0dnTQjwfyTc
         NcXP+OamPeLnmCFYxxXA1l8waWCTcG5xr9S3lFqwPJT34Bg4Wh3rNO9JOsuL7vt+Detc
         b8IgMMkHD8XEdq+btp0ww1AcAJflPzCaNjPZujUjx6+LvtU+btI+GEek6YM6+xnsFcly
         brWbYXTKAn9POFJbIGR9+39gqKfDlzaF3mNxkSRlYFFjS+JnvuuyEwj1+Y+QavsG2xDb
         Ed/A==
X-Forwarded-Encrypted: i=1; AJvYcCUrHExH+sTiSjtYKzNBE1I56sU+8jgSoEygtJs6dbsEj4TZty7JCBBKr4tujAtzaOikeZyCFfGMh3De@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy3a+p9s1vdHomFvNB2F1DEHap9Br7g4Cq/V6oE89SayWi0EF+
	CUTIwzxCFY+7vbmAhbADTCe5cebDbvgF3MndnbV3D4wIEjEsRSN2esF1btDzgQ2BS2kY1EvS4Js
	=
X-Gm-Gg: ASbGncviXxuvMIFFikytMuzSasrqCpvmifKo0w5sWweA3VwnvrRXDewOSI7i4GbQoBM
	qZpg7kqVkbHSVAYebT9MFfRCWddjSnos4zpIX3Sit2xaMhdbFTAk951OHxcji5s9uCPZBjaTP7M
	wD3OwZUkIJMsOn+4ETrWTTP7WBqLkLyFGj0QZV9O+JteBSGO2QSrZH8V0+LIpIR8wjK9RxTjZMO
	PCGgpqHFwESUJd1tFtVtJZMjrO0iicoTKOFVL0UW2r0d73UV3Qzvw6q2LQAV/wQMYrrOWux9l43
	4GN8Tyiy3cqR32R1udydZ3RPxwlXsCBPIvkG8ZRbP8YesmqaYCV2J55Qxg==
X-Google-Smtp-Source: AGHT+IGD0vIug8Nt9qcP/TU1PZMvFZmtESOf6amtEN+pO0sojtfEbRYqEQc7zpWOQxTNCIuHa8wc2g==
X-Received: by 2002:a17:903:24f:b0:220:e655:d77 with SMTP id d9443c01a7336-22db3db14ecmr31506645ad.36.1745490332983;
        Thu, 24 Apr 2025 03:25:32 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:32 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/13] ASoC: dt-bindings: mt8186-afe-pcm: Allow specifying reserved memory region
Date: Thu, 24 Apr 2025 18:24:58 +0800
Message-ID: <20250424102509.1083185-5-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250424102509.1083185-1-wenst@chromium.org>
References: <20250424102509.1083185-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It is desirable to reserve memory for the audio frontend.

Allow the "memory-region" property, to be used to point to a reserved
memory region.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml
index 7fe85b08f9df..f5af2cf18158 100644
--- a/Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8186-afe-pcm.yaml
@@ -25,6 +25,10 @@ properties:
   reset-names:
     const: audiosys
 
+  memory-region:
+    description: memory region for audio DMA buffers
+    maxItems: 1
+
   mediatek,apmixedsys:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: The phandle of the mediatek apmixedsys controller
@@ -170,6 +174,7 @@ examples:
                       "top_apll12_div_tdm",
                       "top_mux_audio_h",
                       "top_clk26m_clk";
+        memory-region = <&afe_dma_mem>;
     };
 
 ...
-- 
2.49.0.805.g082f7c87e0-goog


