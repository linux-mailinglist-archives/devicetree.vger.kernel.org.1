Return-Path: <devicetree+bounces-91306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40933948E1E
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 13:50:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E02451F269A2
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 11:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0308F1C462A;
	Tue,  6 Aug 2024 11:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wpNbaTNg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8921C3F33
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 11:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722944984; cv=none; b=Ye75zE2+AoOLr5KyCAub1DjCK2Ip1sKfDW4O6PgDJmTqCbwk5bTp4R2vwewTIdE59/GwD4gfnQ9krDh2PGgfMVJ3f0DL50dLRzRAL1WfGEAtjOD5CUOxAUNoRrWq/H3y1d77RI5tkCV6ZJj5MgGL8q1VVPbVSPvSgEu/BUuvtq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722944984; c=relaxed/simple;
	bh=qAxAXkSzlzsy3YZMDd8hkLWqB7BSzVrCOez5JOG9HB0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mzR/NcFxxrLavJ2cwISe0I1xaQcUQ5Qb4DPrvP6u8XnOUYe6zTCQm+44O+H27bwbjk9zLMwrsPc53EyGXOf+UchLgRaUwvkmkr52JI4qkS6KyMhBgcK16uEyu9J2hbnUH7uGcd2NFMDAmzwfXWI19Hc7+wJtF24BfbtRBLYx8hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wpNbaTNg; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42819654737so3686615e9.1
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 04:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722944981; x=1723549781; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+W/spHaH4ZPrFJzwLUAvkjiFq7Yei24v520B0MhGrw=;
        b=wpNbaTNgSFvn4N3OIKPWCOjxoy7EsTRSqCUe99fyKqiJYgBYtf4TFHaHaPciyYWtjx
         bufSOD+BPB5rq5SOlYLNxHQEop/joNiToonuqwsYQ7PldYsukHAYKe1zDzM/W3J1HVmk
         cxDTGC6hiqPP5ZBNFut21NTMSXBe1o1yU4MIhL9aVuDwXAGVdxm3pHR4ukSD2RfSBRii
         K2t/Awvh2i+H63MrknPjaIBLwvtTthd22OsCuMIlmddLui9BvPfGbmcuK/fIYE8k0xv+
         KpWESIRQ6d+7xfP8LYvnQXjCYTsnaamz1mszVJSGPcKaBBlzndvBLTKTaCzuaxfM5u6V
         Vpfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722944981; x=1723549781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q+W/spHaH4ZPrFJzwLUAvkjiFq7Yei24v520B0MhGrw=;
        b=rrKQ0h3FtU90mI0AUotQLpntkmSU3yO3B8syP09jJCRgYJLLL2T5LmaLZEk1dkoubU
         G7OkUTQHw+xC/o8AAlBrpGa+rF5BTlW1txi//4cgAif9YxTxfSIjx4GOIKIwlxRp++mD
         cmmPRifWcIoobqDsvk61mCZVz/o3cu7wbxbwJYruD4L++xmg0otQfxSRAeH5GfEUPVKV
         BF6FNefsHjWesEsb/1nZ9x6OeE5Vbkf8dk6Rq17OkzfO/2QiBomGlTaMldudMTSAO8BI
         qdjqQQbs1/ITAK1JBIvoK2TULq0Sj85cITFf92m3pL08j0SI55WdC41eD3iU4n83+Twa
         8Mow==
X-Forwarded-Encrypted: i=1; AJvYcCVyHhXFJAQxg4rLgI2C+zHd+po1lOikEglIl3faEVriWI6y5sSTMvG+k5Y95Np3YVFmo1VzzXn8HdUnvIbK42qWByyXBGWNgfkRqA==
X-Gm-Message-State: AOJu0Yy7xSyD+YVeiYGGZPBd8+CPKvlw5K2x76jhP/Zybt9t07ChRbDu
	ANFhnZ9OqpetbPg9HGFoPNYqpTRNwr6K5XjWECBYUwR4qwRSlvO+tGCcsFDFdSY=
X-Google-Smtp-Source: AGHT+IF2nxOVw8Nfp4RadNqv6qJ7oMtw9VFIh5K7+RrZpNtzMo+RT0FI7T/1iBoDUzrE75hfcrLE1Q==
X-Received: by 2002:a05:600c:524c:b0:426:5ef5:bcb1 with SMTP id 5b1f17b1804b1-428e6af80aamr99654155e9.6.1722944980982;
        Tue, 06 Aug 2024 04:49:40 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-428e6e0357asm180287485e9.12.2024.08.06.04.49.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 04:49:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] ASoC: dt-bindings: qcom,wcd938x: Correct reset GPIO polarity in example
Date: Tue,  6 Aug 2024 13:49:30 +0200
Message-ID: <20240806114931.40090-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240806114931.40090-1-krzysztof.kozlowski@linaro.org>
References: <20240806114931.40090-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The reset GPIO of WCD9380/WCD9385 is active low and that's how it is
routed on typical boards, so correct the example DTS to use expected
polarity.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
index cf6c3787adfe..10531350c336 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
@@ -34,9 +34,10 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     codec {
         compatible = "qcom,wcd9380-codec";
-        reset-gpios = <&tlmm 32 0>;
+        reset-gpios = <&tlmm 32 GPIO_ACTIVE_LOW>;
         #sound-dai-cells = <1>;
         qcom,tx-device = <&wcd938x_tx>;
         qcom,rx-device = <&wcd938x_rx>;
-- 
2.43.0


