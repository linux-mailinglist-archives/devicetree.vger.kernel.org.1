Return-Path: <devicetree+bounces-249388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2734BCDB80F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:32:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EEEB6303AE8A
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C21B328B7C;
	Wed, 24 Dec 2025 06:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gdLzoYxW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691E02ED86F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766557702; cv=none; b=HNKZvcPUxNe9u/hgvKV91nSpTx9XdjF0wwSV49ujWWBGRo3jDXe1+qPsa0rBnkXuQbhwl2ZETtZEPsM9AF1A1LFKN0ry64PeRX5UqhmU//nyySHUzjtyt/PPe+/tdWGDj3rs74HaFk8CJ9HNSTfyFMUr4FV/s8KM3NgH7cw+AHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766557702; c=relaxed/simple;
	bh=uyfF3U4m9fvZaf+zqrVUL4jC5sUxU9XqYQjuIQgONaM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bF0llifjvyGnebEuToQcS4lhAO4eI8jAosywaKTtkk5rk7y+AlBDpzEFbBtlBEMrt7BMQfZFqNBxEDTh2D0o4foJWggWQITOprqj8zYTjtlaYqYVaUAH+NqMLU3M2LZGrwBHJ+kTtllyi8HrWJ/kGLuNWQkeBTfrBS8tp6p83Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gdLzoYxW; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b804646c718so500921366b.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766557699; x=1767162499; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5CnmRbtVX4KWjkCR57DNdl2BztEJTFPfW7BxiAwfS/4=;
        b=gdLzoYxWoLHFyx0GIx8cjVE/z/BdWwmWrvCi3ezlfwgg2U8DeWTX3T5cpsZvXa+4gu
         2PmnwvkA2/vBSFyKm0cXfz0hOKvdFion6YMM+dCGLqkE4gpoZxIJjSmWKLafyXyK/7i5
         etqUVpV9+SoMmLpk0tiKzQ8Awi3a5qTUITvsKwrdno9CDkQQNFDK6v0JLbsucTnDYs+z
         IebRL219rTFv1sRr7zPOog6InDFw1zfkPAXwkVRP+lUsWeTU9Gro+BYbVoEhixIQ0DaQ
         eRuIn8SMhKgBMqvUOleWg9wNTm1vROV4lmllQDshyMMXVmc8qq1sSeGJqT4p50Lhb8Qa
         BOsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766557699; x=1767162499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5CnmRbtVX4KWjkCR57DNdl2BztEJTFPfW7BxiAwfS/4=;
        b=hkZgmWDfHa2J0sZ9cdbvf+HTta1OVDZmPzNpMzfEPmmLyR6IO7GG3l14o99JENpFMF
         P4vDk+jLNvx5SCSK/eCGtuLmk2AhVnFW2RuRv10ym9Se7q3RPSdJG/Q7f6NWDRis5jKv
         bGvikBE8JTR9ENxoImtKtZThvaXoLlC58AmCSk0YKcZGeQrSO5IQYpHcKlnpEIkmrSVa
         qD/ygUDx96uRXj6EBbtegiG+UNTxJcCCRKQzeXbVABdfMqfO4zXvuhYI57FAVJ24z/BU
         nloewgw3FIs2BQ9NOCLobZ99KwK1+Jvy0a4/xPZuhLk6Ze0N2UrtQN2lMSdNXMjF4Hov
         kOQg==
X-Forwarded-Encrypted: i=1; AJvYcCV3d++EqKQegm6NuR5ahJWoS0xQfOO84cuGzZM915nLjpovKNhDzLavpNmLXi4zSN8OlLg0d5qvgFrr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1Vurto1sGsQ3QBC1CN+xhwgIKmHzkL/70NGpXTXW91z3ySEmo
	Mu1WF3RWekBexmr0zaLXqBuO4QiLgYc7+QKbkb5rZ16/F8u/xsPEFeD3ZvErDgiLnjc=
X-Gm-Gg: AY/fxX4mfjwN+4l8b8ztk9zSKiv+DO+GZ+7lIuUGNY0jw2hJSpvszt5qWgwaFiBVDQz
	N9DnSmNQEL2LA0Z9NsnTwIDoQpeqQZIKLu2/ALEF4qvcSgcJ6H1Q/UjwRGIq+swbzyCoEpFLdSw
	Bd0SZImHzk/K41GYnRtbHMs93mLV8igRfDLjBYN9jKA1utO94Bb/iDroOt82eps5JiqWofQRlrW
	Sr6pOXLWNL0ska1O10PUXYXo6bWMQkthY+Bg2nsqEcfSRWHN+fws28e1alhEr7RwMFz90x0QlRn
	w4lj6XAwQHPJA6U/l+ItDts3QBT/BxDZ7mPj4a1+y2ebTe5Bz3fW1KszEv9uhyGvgMiCELsmRKb
	E8y3WS5l1/AARqvFj+NdCzi3rNv+KmoN1w3rkukO/8jbqMXDUD0f/TG4k829p69nOJnac/RMJ8A
	pmSQqe/b1X9GjYFBUMJID2oPthDuS8Hu4Sv1pZ0G5ue2Raaw51KeKkXFx9cGLSXptXCNtcUSibd
	BeaXA==
X-Google-Smtp-Source: AGHT+IGY8TTf1udnOdufm3EoqY8WYtA/ntlZTGw+8YeGAAdBvWzzBHzyBpPakkpLjhF8o11NY1fmug==
X-Received: by 2002:a17:907:1c01:b0:b7d:22b1:2145 with SMTP id a640c23a62f3a-b8036f2a9f9mr1638472366b.23.1766557698786;
        Tue, 23 Dec 2025 22:28:18 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0cc52sm1643366766b.52.2025.12.23.22.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 22:28:18 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 24 Dec 2025 06:28:17 +0000
Subject: [PATCH v2 1/2] dt-bindings: phy: samsung,ufs-phy: add
 power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-1-581089639982@linaro.org>
References: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
In-Reply-To: <20251224-power-domains-dt-bindings-phy-samsung-ufs-phy-v2-0-581089639982@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2

The UFS phy can be part of a power domain, so we need to allow the
relevant property 'power-domains'.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2: collect tags
---
 Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index d70ffeb6e824bfc19668e0f678276acd879a6217..2b20c0a5e5094889eb3e80dcc21b505943c68523 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -36,6 +36,9 @@ properties:
     minItems: 1
     maxItems: 4
 
+  power-domains:
+    maxItems: 1
+
   samsung,pmu-syscon:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 1

-- 
2.52.0.351.gbe84eed79e-goog


