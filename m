Return-Path: <devicetree+bounces-170371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1796A9AA26
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:27:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25174189F58C
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC8622541C;
	Thu, 24 Apr 2025 10:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fwBH8mky"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F18A22540F
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490331; cv=none; b=uRAPQMefTEsLE6qw3QPIpfkObUr16BaZkxnlSSMzDoszVOoI7w/ce6sn2KOLa9hVz5+ydjP2RQA/mUsw7Hzg36AE5CzMFlWO4rerBWjZnrbbpHsgBEQhtiuWH4BU9MFHXjvnkIb7r7mB9dfr0UzDWser5yypIWqUCnj3grmykSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490331; c=relaxed/simple;
	bh=ORoBOKClhRWUDm0wMhxb1yzCEXRsVXqohDtvhQ3sE0Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qdz4LTSNQzM3MEjole9wavHR7dxHK/BzmejLZsKpl/5xr7hC+7cHPXfLIfkLCg9K+LS393gkN05PteYyH5fPucfXgAuuhKUx1iXj5it8PbVB6hWaFviLJMJHNYwhk69pbsezlf6tjac74QuoG242qSIubTdtK6hL5dlSvIhzw4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fwBH8mky; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2243803b776so13652055ad.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490330; x=1746095130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fhbo3dWwgEK3uRwRq4Xx2zA/jDMc12TYdmm1e2oYkOE=;
        b=fwBH8mkyo36SXhyXDeHEu68w6Nb+jckvzCx8/mCkFI7HFMNIM8KRXsM6ZVJm8sTE/a
         2JKa0QiJvCuIQuvfFm4guDbp3wmHLVJRxgJICIvh7+1BQ4bNKXVvdRhRGB5+dKoqofY7
         PpZJpKPxhShgQA/nHN0BoKzofSFLkTmcOWW5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490330; x=1746095130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fhbo3dWwgEK3uRwRq4Xx2zA/jDMc12TYdmm1e2oYkOE=;
        b=V07fPY/VNouo2VBg53P0GNpqChtZ3B4kHzZ7+c/1Wi1X5xXMYSHhinCY4tGyVatEWv
         kZafKnqCs9+prIobXtEYk9NFD7YqNln0/0D7TsAcd3fy0pWOoKjqJ/gDV+PjLiTS1Zgn
         3CEFoDaLS730rKm7xpNNEt3VeAqUFpPBnDDFvlZmx9vp2wjvIXj8rkjgq9LKIqAyVcUR
         DB0411HCyLybnl8fpFwugrjX907BZMoo0sBV11Klq+vZT0GRAp11TA22yyfhBKq8CLko
         8mVqQ3VFNHESaD0wBXmu5jW8CJgZE4UnV9RoYCQKjNEY+Qg7v+J9x8aFXbupwE50Rohe
         bckg==
X-Forwarded-Encrypted: i=1; AJvYcCWndTGYptRy00y58bIAFU4kn5OoQC/70grx6SIwRKYT7g8Kp+cRY7rFnRz3rq9ik9NyOAQNmy/EJzNA@vger.kernel.org
X-Gm-Message-State: AOJu0YxloQCQ0aEmGGtt1iB1bvhrO0hYNi493aOkR4m53kMilQGSsiWF
	iirhzquFo70LkC6uF72nOTq9wtzUPZlA9QNQ0ldkx2IgG0K1HNRV2awtzYCQrA==
X-Gm-Gg: ASbGncs48zrpRtgqgdRzTnlyEFFa3HGnW1oVaxdNZzK5fRYHrzuAb9ACft/ayBX03DO
	6mLRqJ1OQlz6nl2UzmgA/BzeDgRcD3g8How9oSWKbwgZmoS9Vo0rWzHfhorga7/OOeVGHdAm83Q
	QEj4DVeybR8sJKtQxlZmiFZnk4LqLLPEhhUX4Ox+r4jcCSFhXRRtri0uG7CD6sgBFy5BuBEg4QM
	zETEtv4HSx1UMnscP9ZESY6pT5jBMFhsODn5gboYjcdNIa0L8sMcEwD/NhNxWfcjtE3Nt/XPwTB
	VztFZINyQOl2wuJuF2SgH6r4okuGxyl8rttoZYy51muhOFujXVx/a2U+rg==
X-Google-Smtp-Source: AGHT+IELSxxaIrlWkT9p38inClLfKF8hG21EugY89NAyG2v2PsTI+Qb1Qw/gECNiLb039w0VJotWQg==
X-Received: by 2002:a17:903:90e:b0:223:f408:c3dc with SMTP id d9443c01a7336-22db3bb22c0mr25973895ad.9.1745490329723;
        Thu, 24 Apr 2025 03:25:29 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:29 -0700 (PDT)
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
Subject: [PATCH v2 03/13] ASoC: dt-bindings: mt8173-afe-pcm: Allow specifying reserved memory region
Date: Thu, 24 Apr 2025 18:24:57 +0800
Message-ID: <20250424102509.1083185-4-wenst@chromium.org>
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
 .../devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml   | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml b/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
index 666408d32f5c..d8993b5d457a 100644
--- a/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
+++ b/Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
@@ -48,6 +48,10 @@ properties:
   power-domains:
     maxItems: 1
 
+  memory-region:
+    description: memory region for audio DMA buffers
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -90,4 +94,5 @@ examples:
                        "i2s2_m",
                        "i2s3_m",
                        "i2s3_b";
+          memory-region = <&afe_dma_mem>;
     };
-- 
2.49.0.805.g082f7c87e0-goog


