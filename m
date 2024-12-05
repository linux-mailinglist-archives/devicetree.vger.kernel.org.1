Return-Path: <devicetree+bounces-127253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA689E4FF8
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 09:40:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02DBF169792
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:40:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3E61D47D9;
	Thu,  5 Dec 2024 08:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qoSi1QZ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64DF1D45E2
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 08:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733388032; cv=none; b=GiILmpknlNWW55EZcJzBk3bFlpYgmnpostjWMYG5jodmixMJViAQl2Ql/RSyNdI8/OOJqKbwT04sUS8s8A3vjk2OTyIR6QcJmohW0PGyluIdWU9l4XrFwqmueItL6BNZCdXHIBXRBlO98EGUX18VGbxNx4SCG49o81z5Dp3NZGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733388032; c=relaxed/simple;
	bh=VXAHZgsFwE3gVMNHVJ2Z6U10+Ur4Mnaa+RQ8u3Z94VM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ii7HIIqNLhACxFc1KFhOV9cLrlvSRxr3wH016YnRYXOp/NzQmc8mggtcFnE1/UJNDvnLIYmFPcRevILs6Jv4aXveKeCh8dM+oUrA6hTs45z86b/FNdtyiG+i3AERgLQKTP/r05OrLpSrtjwIAFy4/8KmyNk3xSgsCCEi0hsP3XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qoSi1QZ4; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-434a1582c86so894205e9.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 00:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733388029; x=1733992829; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+OmUztXtNWohIcewPdYnom5QGJ43Ux3+mIBMeP3r1+s=;
        b=qoSi1QZ4WxgekJpcOJsJ6ILzm0WtBdDpLJqcDA4ZAPMN50JLwdtYNz0mR7fSnwkEwk
         ibfd7aG+qh3MOrmI2TiaeKSTKpmOV7KBVt7acaUSno3IV2Q+NT2qqbVs9mxMPFv98UAd
         3nnUXSnEBzvGawHet/SgEipOgGbbenVWwmOzAd48dTR2MP5TolLucl4KoXmmIMgwsqOV
         QU+LtzKbW68CQwqrpfQBF3+cQ8zD3dwfJcI3J5RQmg0wnumViv67FcHnl+C32Oo9pkqY
         Rri7gRWAZJAoLUB6sNyyYURpdh/XPAEzSKUeLxCVUj8RXNfcb2PZrystVTKE02HwK6UY
         46BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733388029; x=1733992829;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+OmUztXtNWohIcewPdYnom5QGJ43Ux3+mIBMeP3r1+s=;
        b=rxRSlDtE/wHQs4mlgNLGgvuzaoH9JsZaZ1pwNrNBx58jlxG+GrksFw2juNvULXwLqF
         qiwe32zH0YaqsU39Hgq6VzB0lVvJHbM4kMhaES0ec3b29Ne5VzOWcEmF/3c233CQD95k
         NUr2w0a2dNrAo6O3UF8ZeTuTeyK6weqX37lm+b/Pe9D60JwR2nJQZM/k0gIwwGLf8xji
         CDMkDSQw6yJrcLQGVVn7KqgGGEYhwV4ym+SzVdCwyJS7XjGxf/ZJ/YzIj9H/a0KiT7e/
         TvqDFElgOYaGeN6NMg8yMAkIEiwNGSZL0zDaxARU71Jo1V/Xq1ySa0FZSUfW2jZIhsW1
         xVBA==
X-Forwarded-Encrypted: i=1; AJvYcCV9u+zfKPqiTaxU8LoOqDC7yHspr04NOF9ONt3cU8QZbfYxb8CpwaQHEQoiLf5dgQadh0UR2TSjIGEj@vger.kernel.org
X-Gm-Message-State: AOJu0YxslzFzspee46wXOKBcKBiOuQd2tZAnaK14qLLBeU3r35P3TfBA
	f9FxU6gRRSKCWRZZGdHXHitmETzdJw76IBBn8qZN4HHDdvE8sjApnOScXqvsOBo=
X-Gm-Gg: ASbGncs4PbHt+TpxfiTVYRcear+/unMMujrnol/2YZ7Oi8UBGtRQkfopwwMRD6RaQXZ
	rPNHN5GnNYTD+fuanLV04pFuJ3WVhtONmzwbu3p8lHNLIkq7qE6ffHtzep+IKv9+KGoGqvp13V6
	msuozZ1EDpnEgRBWbpHENAWwYnGUt69hLmY7f3jvo9nRbRHTDy2CeA/dr5ghVVJ8PJp319Nj6k3
	niyVi3ciCOziYH+CS77V21/hURhObpYlHDMDXZByU3kasAZBoHLoCLQkl6Q5VyA
X-Google-Smtp-Source: AGHT+IGSkYgvAgwhu7WSyQqH3Y+yt4UQ2jGt9iuwru2727ErGBAZvYMWIUUnfNAP+kzH0fju4MoCbQ==
X-Received: by 2002:a05:600c:a07:b0:42c:aeee:80a with SMTP id 5b1f17b1804b1-434d11c7b9dmr31086225e9.7.1733388029090;
        Thu, 05 Dec 2024 00:40:29 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da0dab9esm15935965e9.22.2024.12.05.00.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 00:40:28 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Dzmitry Sankouski <dsankouski@gmail.com>
Subject: [PATCH 2/2] ASoC: codecs: wcd9335: Drop number of DAIs from the header
Date: Thu,  5 Dec 2024 09:40:21 +0100
Message-ID: <20241205084021.35610-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241205084021.35610-1-krzysztof.kozlowski@linaro.org>
References: <20241205084021.35610-1-krzysztof.kozlowski@linaro.org>
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


