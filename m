Return-Path: <devicetree+bounces-128525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE2E9E8F01
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:45:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0EE9163CCB
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 09:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1A062165FC;
	Mon,  9 Dec 2024 09:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tWnDqDmJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DB5216391
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 09:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733737498; cv=none; b=t8cg2cD3QpsKYo76BbmtTdiKCZLFSgFNk3DxfChE3jCQ+293nUg8YDttjVbCOZRrYMRsweZvu9HMRV2QmhKzzB8xfNSPMC00GphDdhZyYsGLCdLBtNaq7RQdzYDfW0YX4IZns2sBXtRNQxa+fJytlsWpklW4V2m1tVJvQsd/xfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733737498; c=relaxed/simple;
	bh=ZMBz5ZZR5lOt9yuXE50yqmicdPRxRt8rxwXfEc+KwWQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AxGmgQ/uV/nrY970KLOsWq8MkQCUVB5akkHNAMdoDaABo9V/6PiYTgFySSDD1TCiAx7iJHxlzf0tLtqkr5LohR/jb/mJ6BqIML//Vqz2HBkM7gaORRAGJLF+ipj5rX9kZL0AZc98oClu2YzVubFdTsgegMyE8JsW2e5rYPmf96g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tWnDqDmJ; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-434a1582c86so3517655e9.2
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 01:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733737494; x=1734342294; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cs9vbivkO216Dc8HYQ/Zd8gvHi0Ause9by/A/vR6Gl0=;
        b=tWnDqDmJjGJ1Xy5Oug080yEh178hFhpv/hvnskPD2l9d7g4c4ASsfUqhY1i44k98k2
         skVN77GebYJ7yjOxDCVlP+SZ390NNtoV25Rps9orJVL+1jnXrfB/X/Fp2Q89JPueQr+8
         Zl+6FFLzRAREDRThFW61VMmyrPYMCExLxJjULrmrXFvnyEA0GeHBEL73TZcM6Tw9GzXs
         XjlkfUe2ecTPhCWqppfkZPEsAWmI9PwVsaCIzSdvXTCBqYCDgYNzMKNUTsqCQiWyLEaT
         mV9DY42CDRyQbZmJ/qSd5MB7rvVczQIdPB8Lot16NWAAKs65J61+lVpwrchseE4BW3ca
         cB/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733737494; x=1734342294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cs9vbivkO216Dc8HYQ/Zd8gvHi0Ause9by/A/vR6Gl0=;
        b=IR7IV+JErbEe5Lp9B1CvmmMFyXu/HdDU42CCSKheXao5K0lQ+ltuDqr+GQAYxzegTt
         RQGz2Im6sDtD1RHRBOgwYnH5uFmhJRapTX/e7nw9eJffrx5veHwRJl8LIXMOzldWhKOn
         JPZnPQDW+tyn4T6RE8//FSfXc7GJ1MFPs4hfC7dBVzlMsBYiIHg0OZ33N8cVPKLvOJjr
         F3uM4EQjCVzSYKkwsOkzOTHYOiD/W2wHyX0fS+qv2onjGz9ILx2IkhDmvCwec2qU6dcZ
         YZv4W1JMzMTREoRaL3lIHLvKsLGr4ZQefuSPPdRhUIt9B9dnBABBVOeAijfjV248k/mH
         hl7g==
X-Forwarded-Encrypted: i=1; AJvYcCWoRtAkyalMl8jxx98vt64SVk1r5fOw8xjb6fR9kBdHPkE4Z0+VU1eCSl6Q/jRFwfPuF8jfVKoNGpu2@vger.kernel.org
X-Gm-Message-State: AOJu0YyFi9Vg25VtdxXbhW/sYwgGBVPNgmixCfjjM1IerK5pQe+Xgh4K
	ksiGNx0TQHn+mu8kQctIIoaw0HmD8l0YHyFPUgmvNxPAs7Ou2LuEJWalXHSwMtI=
X-Gm-Gg: ASbGncvIYgJWt9qG5LyZDmOHr5td2B88R4wdWQL+KZ0tLSNXVu3JHVcSuDQRW1S7MTW
	Jq6n4OpnGjhatQtXkAiTB6FR9gibr5yQV16bkSCK+/C9UN9z3OAZEZiwsDI4Os2f/cfZ4VArnOC
	ZIg0cb10mV2Y5QyWXHL97PsMYQa7OwNzy/8GRiDw2qWh6khWbvDo8UyQROL1304j45CQM4elmzz
	kTpG0JQtFoUKEW3I6fUm5Q0soMnar2FAZl9Q/CN5DeD+cnl1MV5UNR+hk4QmWbB
X-Google-Smtp-Source: AGHT+IHecMb6+js452qiT9G+qHvWh9vpINrVmf9jmZNLo9NLCiKBHCX+t3zASHR8lIlaD2w5TTHXtA==
X-Received: by 2002:a05:600c:138c:b0:434:941c:9df2 with SMTP id 5b1f17b1804b1-434dded98a6mr37786385e9.8.1733737494165;
        Mon, 09 Dec 2024 01:44:54 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434e962028bsm80503345e9.38.2024.12.09.01.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 01:44:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Dzmitry Sankouski <dsankouski@gmail.com>
Subject: [PATCH v2 2/2] ASoC: dt-bindings: qcom,wcd9335: Drop number of DAIs from the header
Date: Mon,  9 Dec 2024 10:44:42 +0100
Message-ID: <20241209094442.38900-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241209094442.38900-1-krzysztof.kozlowski@linaro.org>
References: <20241209094442.38900-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Number of DAIs in the codec is not really a binding constant, because it
could grow, e.g. when we implement missing features.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Dzmitry Sankouski <dsankouski@gmail.com>

Changes in v2:
1. Use "dt-bindings" in the subject prefix.
---
 include/dt-bindings/sound/qcom,wcd9335.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/dt-bindings/sound/qcom,wcd9335.h b/include/dt-bindings/sound/qcom,wcd9335.h
index f5e9f1db091e..4fc68aeb9e04 100644
--- a/include/dt-bindings/sound/qcom,wcd9335.h
+++ b/include/dt-bindings/sound/qcom,wcd9335.h
@@ -10,6 +10,5 @@
 #define AIF3_PB                 4
 #define AIF3_CAP                5
 #define AIF4_PB                 6
-#define NUM_CODEC_DAIS          7
 
 #endif
-- 
2.43.0


