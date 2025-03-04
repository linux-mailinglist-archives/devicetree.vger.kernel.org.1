Return-Path: <devicetree+bounces-153749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91935A4DB19
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:44:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A79B3AB047
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCB2C1FF610;
	Tue,  4 Mar 2025 10:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jANpfjcJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5C5204F6A
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741084695; cv=none; b=sHiYSNOQ95p9ORwrtCD8MN32Vel90mKOyV/HD9TNyewEBLLt7EYX4v3rJKnKqLLw99Kr0FyHBvVOnWN6sVjJFKhDvtfDuR4Fuh4VLBckru0iGbHsaCbO2bosRr/CUwi1Ag3mZiyyNpqQmnzJwOGH3AOH9FwQpmGIsYxYiIWRbBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741084695; c=relaxed/simple;
	bh=Wam1Dxy8Bbgc/5NwEFi/OZRhWrfo5AHEYP0wl2UfjTs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fHgaSQe51jmIdLK3EBDXLN2p3GHCKnlhjdZz4M3ChEtkrOPW78EYE8UxVoguuy6iXZ3Wt2ZcGt43DO7wiEvH7uf47CPBPO5iPNT6nFnZOFYQ5nngVKhXQb5Ket6QYE3u8FNbgI72W6KQ8V/4gKMkPWpuXaO0CcMhQmUN+2Ha308=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jANpfjcJ; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43bbe818049so2144715e9.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741084692; x=1741689492; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DRT6zOAR06y6e5a1u/1hudMd12hMY8AMBwvepK3I88Q=;
        b=jANpfjcJ+9klFJP5zxDmYByJUCIKEF4rTDHsq1rEVZ0D26cDjPi/ABatWZDqSwZ4j5
         EPhH94D8M4PVKHYdrkMuiOyowRezCwbns0KhmJyWJ7TDMAng78lAoolnaRS5zoEt5wT6
         F29WQW27Z05V/8LgBDGP8GF0mqxF7xbbdNBODknzTaC0/XwsVaFBWs8FCQZJLepLQdBP
         JpFGZBxa8R/SFLW3QZeql1dmVabNgMOzJZUDenJAI9yawJK3YnTDXbseVGZWlUzUzhKU
         A2VJO8AAje4AfyEnJMS/QJEvCUEWya6uWiiQaB/ylE3HZ0HUWx8o5ClY2Z4n9ig8CsnF
         TdmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084692; x=1741689492;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DRT6zOAR06y6e5a1u/1hudMd12hMY8AMBwvepK3I88Q=;
        b=UQ9GEPcv5h1hDrAhC1WKSfZe+5sJKK/yX0zNK5cBU35JBIR0Y81cwIw7MrDc+pg8zZ
         QGXbdH8eJroRyJJDp5WwDbbK5s+3EyiZx5i2Nk/eHvYiVBetb6hd0tiwpK0XTuWOoqcX
         19KM3o22oKFYPmshTUeFz/Jqyfv91KGu8VeJFSJyJj9QyCAcmOPb1yPcM2TeGDQjs55E
         bOngY8w4CCNR8RY9SPg17B6zgYpbQsXgh388Ocz7ZkFfqpQFc6xVoaMWqv6sexAfFVUN
         eIlT3cBY+zl31rtqsWs7ZH7kbr+D6yvqfPJX684M/3RUvrFUCF+W4fBZ8zzgps21p3M1
         8Ktg==
X-Forwarded-Encrypted: i=1; AJvYcCUWLIpGxYRdw9Oo86MSlhlRiVpO+GCJ49XjlvzmhEM0mJfQZxrR96SO4Qt1PhqDWCP3+Sxhvxy7na5Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf4MGkCiDbHD3Y57Uf/s8eJju7wwXlgXUnDRIajz03yRiMKK7g
	RW8sZbAsdna0bOPWq2nNXWjgBUpYm3lyjPVjWZiQh6lrwFiQyvqXxdQ3TkHfe5E=
X-Gm-Gg: ASbGnctrmJjZgJG5o6wvUjYrfGsFqmFOklZX/hTA89c414YGl8S42V8Krx6+C9onyg6
	wX86IyL78qOKYbUCb76JRZ6HftAUzw+a/6XFV/DnmFaXGTYfOZotfK4osB+GgQRZgS8FfNEnGzJ
	lXX8GHS4I4IdGuKfkSmvKo+QKaYlf+oTwNKwLnwRumxr+fh6lbKX61rF4r7ZzbBan0vGyvGVhUw
	WmeWM37k/z42q33hyKSMGsptLSuvPpAGDJrCDE5XDLSq8r9E3ow3Wn8NNe3EYzc8EZDCrJRHzJV
	JWvHU85jfSZmBHargr8egRptO9ZHgZ2EqH6++patFWPbu04W1JtnHses7N4=
X-Google-Smtp-Source: AGHT+IGfNFBtTCkGMjxpoYoMf9mCyMbqZUVYcs5tbE+Zv0fhEqp67tfpgTNytZPPOfLXj9HjjGF61g==
X-Received: by 2002:a05:600c:b96:b0:439:9a40:aa1a with SMTP id 5b1f17b1804b1-43bcb604fbemr3817175e9.6.1741084692178;
        Tue, 04 Mar 2025 02:38:12 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b694524c6sm198574825e9.0.2025.03.04.02.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:38:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Yang <yangxiaohua@everest-semi.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ASoC: dt-bindings: everest,es8328: Mark ES8388 compatible with ES8328
Date: Tue,  4 Mar 2025 11:38:07 +0100
Message-ID: <20250304103808.75236-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Based on Linux driver, the ES8388 looks fully compatible with ES8328.
One upstream DTS (ARM rk3288-rock2-square.dts) already uses ES8328
fallback, so mark the devices as compatible in the binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

ARM64 Rockchip DTS use only single everest,es8388 compatible, so this
will trigger dtbs_check warnings which I will fix in separate patchset.

No ABI break/impact expected.

Expected dtbs_check warnings:

arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dtb: es8388@11: compatible: 'oneOf' conditional failed, one must be fixed:
  ['everest,es8388'] is too short
  'everest,es8388' is not one of ['everest,es8328']
  from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
---
 .../devicetree/bindings/sound/everest,es8328.yaml      | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/everest,es8328.yaml b/Documentation/devicetree/bindings/sound/everest,es8328.yaml
index ed18e40dcaac..309c4d01db76 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8328.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8328.yaml
@@ -24,9 +24,13 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - everest,es8328
-      - everest,es8388
+    oneOf:
+      - enum:
+          - everest,es8328
+      - items:
+          - enum:
+              - everest,es8388
+          - const: everest,es8328
 
   reg:
     maxItems: 1
-- 
2.43.0


