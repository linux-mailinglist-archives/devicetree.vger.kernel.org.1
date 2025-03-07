Return-Path: <devicetree+bounces-155295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 907E8A56261
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 09:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 442F2176BB8
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 08:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325DA1B412B;
	Fri,  7 Mar 2025 08:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KMBMPdqH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6620F1AB530
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 08:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741335253; cv=none; b=A/od3ZAAPA5uyLXdiYR5XMKfNBZbaLj1w3Xiw04/tTQZntALdI90IL8uoKKVQf+98YewmRLkl5ICSrRH41HdOo/xzyt0CR00Sh3wAPQNIxEOa/VN7rukEAhvd4Vud9BJVSNLAUTY/8IcAxAAqnOQu+O11i1BvqrNDTEGX709QQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741335253; c=relaxed/simple;
	bh=ifGvzz7OBeukTcY2WHZgJTC0sTUnzBW2FA4VRpqiGVM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ce+u6IMYNRr7b/2NKJH2Cor5Q5j207kkkmlNnH4gI6TmbW4qMhAAZvXAN0SBtNoAlsAqFJAGAm2q5+6eA3igAJrUC4p2vwOaRsze9J5DzkJlr/SShq8IopUNk017vaI7RyjymVVxDyh6cTsxX9eESU/Cy23YjYnoyLe0J9+aT6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KMBMPdqH; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3912a28e629so53844f8f.1
        for <devicetree@vger.kernel.org>; Fri, 07 Mar 2025 00:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741335250; x=1741940050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dC1LPCsdF2Z42Jp+jxNOAqnbNIqpSsoAUsorj5VopVg=;
        b=KMBMPdqHIcvtrRYMqa1cuM5cYuFr4kR2eMIkNJiGRsCjrgmJirF/zIWLq3aHvzdqlY
         RZyeCv5Ki8zgKhMJ4mgIO9rrG8heCihpx6qyw7Ohu0kYS7xSg/MBycQ4V7jMUO+IiIMg
         KzIp+sgisv3yxD/v/UVEl4Ie5opmHkdAvTEARu/7dnIiQr+feSEzt59U9oAe9g7h8k2g
         mgFfgILr8JQnX0CVmBaZsmETUM2cEfLVBolRnW5k4h0Hvz2nB2MkIfrzdeZegyefahkS
         3LZ74EoL+FjvgL4gbAvfiuQVV2rIeh8JGVV6pUBfR+DW/uEZfC45uE9bmW6ftu6iFO+Z
         Rruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741335250; x=1741940050;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dC1LPCsdF2Z42Jp+jxNOAqnbNIqpSsoAUsorj5VopVg=;
        b=lneHicCTPV3BoMK3dZsiAMKFJXFkzIL447eDYz6xZJpaz2xEYrHxh9u3j1nVyqfd9E
         VlaHbUpYBPhDgXsNJoOPsMoRYluqIBlp6xWwhfAw7PqCougKbWnQjoXVIVjs3B5DBHDi
         V4Ic5Z6I1fx6l5brpmYj8Kauu+eZdPmSCrRAn784p7vedYABDT2Qg/mk093mSKY4pax1
         NdK81DDf75n/fj5vUZCRhu7pg3hR/MvvfttWodllKU0NnhAUUOJ9H8Xn/u4wglUExt4Z
         ldngQGpno7iwyk3mUklE7iRXc8uwAjeDRN3NorYV7STyobqJMFXKnQogBZQqDLOdSWRK
         2ifw==
X-Forwarded-Encrypted: i=1; AJvYcCWdrOoyWgYX7hON7ILodfLbn+g8H64DCU9SNx+o9v+W/KH4H0G9zJVv0cATCnPrwSLUKlUt3RGvN9aA@vger.kernel.org
X-Gm-Message-State: AOJu0YzPoZwhYsoTjrBME5B5N/jXlXk4ta6+BB+4Sg7dW8ShSJmAQNh4
	Y7mfI6rzqwINw0Lx9KIuizSwy0QC72n2nmIZ4+6kJzE/aZffCWHC5iYbg4muj04=
X-Gm-Gg: ASbGncsICMUm3m5Qz64UcQ8aTtjnIMZmxU1PBpQ7BGP8yle9sZbExK9plwOKAe0wmWd
	MhSc6EQcFTuCJpw3xcG4VgaL48CbkcMnMEtn2CTy6E7nwJMF28chGNhjU3Z+VzFMHTz8A+jTaC6
	yJpL7mezq4SGPu9f3u3rh00vbVk5ZrxghkGMfPRDhwXxephfJBX7LQPTFh9RGiaBejuUhL9t+Oc
	uaJRuwrpzoYX4b48UUdqmDBjO8VcqxDPrvkljRTVG1CRY4XLnJ5xH7FYiC0ZnDkAvQjSTwrcRqS
	pjDHw8eC0B1gsjtK3z5WvQIQQAFwpGk5Kq5NwseQ0AIG0+vMj9VFLv/t16k=
X-Google-Smtp-Source: AGHT+IHUpH+Xyh16N+1wZEqp2m7qpL812EuSHBMLvRKqepcXSU9SdbYHDp2gAq5aCXZu0H8xpH08Dg==
X-Received: by 2002:a5d:6c62:0:b0:38d:be5e:b2a7 with SMTP id ffacd0b85a97d-391353f0678mr390435f8f.10.1741335249622;
        Fri, 07 Mar 2025 00:14:09 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912c01cb82sm4691799f8f.51.2025.03.07.00.14.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 00:14:09 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: rng: rockchip,rk3588-rng.: Drop unnecessary status from example
Date: Fri,  7 Mar 2025 09:14:06 +0100
Message-ID: <20250307081406.35242-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Device nodes are enabled by default, so no need for 'status = "okay"' in
the DTS example.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
index 757967212f55..ca71b400bcae 100644
--- a/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml
@@ -53,7 +53,6 @@ examples:
         interrupts = <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH 0>;
         clocks = <&scmi_clk SCMI_HCLK_SECURE_NS>;
         resets = <&scmi_reset SCMI_SRST_H_TRNG_NS>;
-        status = "okay";
       };
     };
 
-- 
2.43.0


