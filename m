Return-Path: <devicetree+bounces-72674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D988FC80A
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 11:39:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 688C01C21BF4
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 09:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02836190069;
	Wed,  5 Jun 2024 09:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F21S9wLi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BE018FDB6
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 09:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717580198; cv=none; b=Hs6JOBd6SrWXIRnPA2XUDgo1fTkL9QTiNlRDCbLbyx5ih3N/21TDfURGZnHk+IqaO4ZyBsXKCdbC2VpwFQv7RoMIIDpcpHIH3YcwIqAmgWmuJQWJOg+o3OSC2pu7vWbTJUWEwkH1n4lg52u2/80HHPoWSfNBYLISLrIPbVc/yuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717580198; c=relaxed/simple;
	bh=ZGNGImwfXQPYzvN7hTLk86VHMRVaS+cOQyr5AuCudSE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=F5T4eY4ewnCh1m8HTXk7EXmLsPniCscCMFdskbjtJmAe8xNNP7mQ3YlqGlJFdmzD/q+adhkC39Mv1wA8+GmPVp/MO6zR9+Ad9cS3d3j6wy5V0EyHbxhrNhNlI1ClBDjXd2UA/wcQgqTIbEfplizC7mhfncu33+3hqaCpXYNo+oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F21S9wLi; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-421572bb0f0so5807275e9.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 02:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717580196; x=1718184996; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S+Qke+DYIixXi8AtYBTaGh8w9/pQLqnaMQOsYZEWgPo=;
        b=F21S9wLiKdfrPEB5LJcLs9j6LLQuhKmB//zt18CzaNjOK3x4W5BwqY9KMTxRkTKf5C
         JlE1/U1aOYCuBUis1A52BLFPLgyyRP/6WGrDCHkImQrpISZQ1VcPWPND0D3E6iLXEf4F
         kY6UcInVeizz3o0/R7Nc9WokjCslrgK0Uito1EHdFDNevyHvwsBebkZOO93jWh984ja4
         V+xz3q0JV+ZihmLtmG0vK98dLH4dczqmv3T0xwIK9C43cygR36+8tDLvM5OJTveOyqvS
         sPv6fpwDfBVgWn1qGx9V1K+4D7RFG2c6k2NxQGoPBAhH790DgA3yaPX1UFUp1XP+AzRC
         Jcmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717580196; x=1718184996;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S+Qke+DYIixXi8AtYBTaGh8w9/pQLqnaMQOsYZEWgPo=;
        b=CQHmLxzphiRZS1fIK6FDJfkevNEQLUP+oeXjqmufgil5fAkKtWZ85FqvWwKR73Q5Dg
         VLecQR6QZer3SqvBmKYsTGNOKPvEeb4WLkbImJtrw+H4HRbKpMbbsIM7Tho9syeJm/L0
         Gl2lUlTiNy4X6wzKJrdWTXE/Nes+/kmeYKCRLNQarXE3fjPsNVfmMyLyrggZejcb+8zc
         /rLpxzd4iK+fM+XXkr8HVFZ56y7s7L555Pi+YvhcDAyNWo5F6e+LmO+cH+ZSflEXQtnl
         6aNnDoiEPGlqC+0EzXnkY54WExWVY8D8R9WyCB/PGt4hWOpleB2cCKcWEahwj5Thxq6l
         ejXg==
X-Forwarded-Encrypted: i=1; AJvYcCWHJ7W/zACBDVD2OKsbDhdpQrUsvAdhxN2PtdHGXj458lD/sJzwUTWhK6kS1BuugZuIrsDpMds0NBEDCcsBTUQ5GLPiI+gO7Nl8fw==
X-Gm-Message-State: AOJu0YxsuPxSC0sDBc3KPunYzpc/ylaSjWuDFzNaSQTtd8J0bopXjZyZ
	IcQO1ow+r0QVzM4j2/J6oMcnITogbYYUBUW6yNexrzutk5stOrHhzXGaGuGPGGI=
X-Google-Smtp-Source: AGHT+IFnr32emR/PgOzI+akAF0W2xUwd9LLOs+MUm2LqQFB7YUQr4DvWGDXy+MVTyauWrZccpH/Bjg==
X-Received: by 2002:a05:600c:364a:b0:41a:f76f:3362 with SMTP id 5b1f17b1804b1-421562e9219mr15433755e9.21.1717580195873;
        Wed, 05 Jun 2024 02:36:35 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42158149008sm14118775e9.29.2024.06.05.02.36.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 02:36:35 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 05 Jun 2024 11:36:33 +0200
Subject: [PATCH] dt-bindings: rng: meson: add optional power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-rng-v1-1-0a55a7ba55e4@linaro.org>
X-B4-Tracking: v=1; b=H4sIAKAxYGYC/x2M0QrCMAwAf2Xk2UAdm0x/RXzo2qwGbFqSTYWxf
 7f4dBwct4ORMhncuh2U3mxcpMn51EF4ekmEHJtD7/rBXdyIa6kc0OdXSY1btVXJZ5xZIksyXPh
 LhrV8SDGW7FkMVRKGyS3jdaDJ9zO0e1X6p21+fxzHD32uuVWJAAAA
To: Olivia Mackall <olivia@selenic.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=958;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ZGNGImwfXQPYzvN7hTLk86VHMRVaS+cOQyr5AuCudSE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYDGi7TW+cDne+1GPmNVykLtj9Lh25nQ29KXMDq1M
 wpRlrNuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmAxogAKCRB33NvayMhJ0SRIEA
 CM7OJXDmeM01XGdakesCnn7mmmpFjwKAmLXZ9B/Z2Ux+Zj5saW+XREccR+BVXTAJKKFP4z+mVRadie
 WWz1n8ht7hN9/FUbB1Ek9loxGnipr4aYjtv+YTxvOeNUCYNls7vVltlb9oxiapoeNhnUB611OyQMfk
 XRMz/c8SJUIBmRn4RFOGzHxAsxUHTLwokEEQKIKAb2+reEX4lMmCvkSYvDhBS3husXD5Vits3lnu2c
 QRAkIFVEdLUxgVJyWCKB6OrNoBp4xw2P62tnp/jXiexn2vMoR3orMfQB/dyI0ZWQ/aFV6w0cY+OtNp
 oPZlHvTGTsDLWPUYXTvCBt+/yIf8kFv3tfJBkDi+vqguI/2izncscAwdoRaikoxoeTW2v36o2ZoIQi
 7+9+S/E3i0qG7HD+eeTo5lPNcY+X5iebSZrbfy473oPM84qjNJ/14gvRaSGpwPSwpRfwLbvhww5OvL
 vQodjHG/luggNlg2n/p/636eMBcjN2iMddikJ9Z1H5IFGmrJVSIUAmA6JDuU6ioGLWwZd3rM4Jhp8h
 Hhp+CF1/uiIqSEMT4dKMRbN542ROQ8FZhquz1JYlIybV7d2b0w1fAr16XJ9FFWoYtLXO/2nRDb857R
 UqpAAamr1dz15MFeDNChtMGzMoqL4lTRg7FiSX9TQ5jdq+FyFg9TuMQfy8QQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On newer SoCs, the random number generator can require a power-domain to
operate, add it as optional.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
index afa52af442a7..f03b87e1b01c 100644
--- a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
@@ -26,6 +26,9 @@ properties:
     items:
       - const: core
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg

---
base-commit: c3f38fa61af77b49866b006939479069cd451173
change-id: 20240605-topic-amlogic-upstream-bindings-fixes-power-domains-rng-c80f594e8a2b

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


