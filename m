Return-Path: <devicetree+bounces-20025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFB67FD8E8
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:05:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 28283B20B89
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF612FE21;
	Wed, 29 Nov 2023 14:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v3yzIOkf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 961ACCE
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:05:42 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a00b01955acso968082466b.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:05:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701266741; x=1701871541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MQ8xtOf7SPY4n43K7AQFcp4yw6pnczR2hfrcA2zNKh8=;
        b=v3yzIOkfFadhqPhGKQCzWKANSK51Sg9KBXlQP4IfJwapYPKGtgNgqEeMMs0/Y3qv46
         rDKBr174nkdSv+Ruot3atuNe4j1QBW4Y3jZRUBJClmhlHhLNZ1f83X1TCyHC7zJs3T2l
         QqixzXPqjcpS8Cqzfnjy8cxZuWP6a/PGKx95G6YaJPkNy9LZm7erajMx8p+V0xi7oJV/
         Q5XyI7pNM4ui8yEI76JjbGSRJ7IP6Vv1YwuDnSwHzsFl/8ulcwinAAEvNyM+R0RJALDV
         LiJMMsuEoHy0t7DVNEh/lqTrq48QrJ9dHSs+2nIV8IOfyYMliWDtBIp7r74F0JitUkEN
         OW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701266741; x=1701871541;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MQ8xtOf7SPY4n43K7AQFcp4yw6pnczR2hfrcA2zNKh8=;
        b=HfI1YTjoolrO16w0+pV92uWJX+ziGWLRCWvN7fZqQOvAdhKm+guQMLJRip/VrKKbdx
         o5WKvkWGg7z+SfeIWqx5NyxWfAa2MCVgtSWkzWu7Xy2ctv0wBFya/kA35Rfn+sEOWLZ4
         VZstAz8J2PYRKNy1ZyFqFPmkQz/L5AHKRV34WyQaDc0ZFLs4+luo7OifWJNE9moSMgPH
         1qrr+eCyrz4WVsITS/kCoch/XLW+oYur3vpWHsKwx6c4HB/G2q/C4Lc0KjTZcKuziB6s
         IPvY+S2Pfb8mlFH/icLPh3R1fRm4LCrG6U1rqVFDyTTQwO5r2TicJm4U//d9bUrx4cFa
         c18g==
X-Gm-Message-State: AOJu0YzH+lbwlk/Dt27efp5dRu9K6ZeL0Yt7e0iOQPe8+ejCjM33z1qD
	CHRvLF6w68FnGQB0sbeqVNZN+g==
X-Google-Smtp-Source: AGHT+IEJRq0imNqnhlsR+uCWHbDWbTPaUjfqnej06A/skJff8aDf/UUnunxlBDdm3ZLjEsqjYvGRSg==
X-Received: by 2002:a17:906:fcc:b0:9bd:a75a:5644 with SMTP id c12-20020a1709060fcc00b009bda75a5644mr12183367ejk.16.1701266741102;
        Wed, 29 Nov 2023 06:05:41 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id o14-20020a1709062e8e00b009fe3e9dee25sm7947530eji.61.2023.11.29.06.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 06:05:40 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 1/2] arm64: dts: qcom: sm8450: correct TX Soundwire clock
Date: Wed, 29 Nov 2023 15:05:36 +0100
Message-Id: <20231129140537.161720-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The TX Soundwire controller should take clock from TX macro codec, not
VA macro codec clock, otherwise the clock stays disabled.  This looks
like a copy-paste issue, because the SC8280xp code uses here correctly
clock from TX macro.  The VA macro clock is already consumed by TX macro
codec, thus it won't be disabled by this change.

Fixes: 14341e76dbc7 ("arm64: dts: qcom: sm8450: add Soundwire and LPASS")
Reported-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Considering that in Downstream, the TX Soundwire is part of VA macro,
there is no clear reference code explaining this. Let's just go with
SC8280xp approach because it seems reasonable, but don't ask me "why".
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index a305f8c03f9e..28207c7423f0 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2314,7 +2314,7 @@ swr2: soundwire@33b0000 {
 				     <GIC_SPI 520 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "core", "wakeup";
 
-			clocks = <&vamacro>;
+			clocks = <&txmacro>;
 			clock-names = "iface";
 			label = "TX";
 
-- 
2.34.1


