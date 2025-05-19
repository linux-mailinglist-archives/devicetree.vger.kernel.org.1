Return-Path: <devicetree+bounces-178330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AC1ABB6B4
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:05:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EC1416C549
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 962922690D6;
	Mon, 19 May 2025 08:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G629HJlG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB68712FF6F
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747641913; cv=none; b=GyU7I7e8+HxNBw0TH4BY1hGZqUqUzgvcL7z2wSHkRIfQXcT9feOCMKBt20zs15t4C2M7y0+rNO2eC2iSDlih3o/nUY4dFBA1Mdu2DhXOn0Mb7G/ODrUYRdDb+hzRrvMIeXhD4H7OtFNpOfRdJKlE9u2s3K+n9qiQy+8/F1g1G3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747641913; c=relaxed/simple;
	bh=eNjYz8w5sMtLPA6MRlmwOuJOvQJcZkOlZvehWvQGnwc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m0lpliS6XGnmUJvMzL5tAAsWXxSa8i0Llg5VmURRFiOgocbTolEY//mmFZ0k64ufBIvtoWU1fw5PBk2ayniwoHTQbMcfvIKu111nXylbxMVaJdhwI5uM52WcUVUIBoX+OBTjHUQMhjaGDBh5CWWTQ+OHudyaAeGwOt/gOM16FUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G629HJlG; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a36255d0f6so361436f8f.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747641910; x=1748246710; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8/uUno12+MugHV7pnu6lW/BQmxMIkNtzIi2L3w3Py9U=;
        b=G629HJlGOK/DqDwwRndxRb7kVPzIaiOhUQ2N7hr31r+aqRcStJXWZy/Cf4qzzv8Cmn
         B70ha21/+0Yh/nPJnuDLImVWLKBSpmAcDu+JgCIjkOdfIdm0Sn/FUB7hD2A4QqBtAvCo
         re/AdMFeEuRqzWaP7v4nmHkhD/HODM16c8hc/p+wsuWUFXFOHP27edJsffZIw3XL5VeZ
         PEJU16/uvPLNK4rgsTUN286sVs9sOZs8Yv6esHlZ+0SWsWPitpvViZZSssUZC1+uuV+j
         H/IL/TieZ5GghwbqknA6T2FP11kHt/oK7lE6V8y9Q87r9D0ptUZFo0BjA4P7yrCMdBpQ
         mfvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747641910; x=1748246710;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/uUno12+MugHV7pnu6lW/BQmxMIkNtzIi2L3w3Py9U=;
        b=dqoS2dlEY/5kig0TjHATfgyFttwfj54ZW2fZy40CbJfAG4SpDrcSxiSUwPOP+9pg3y
         KUklCT3FaH6MDCqM2rJHqr3fG7uKmEQnX7GvaqVSBs3f6a8bNrqjKj9wADzma2f2ts/W
         AsdW7nGEfSG4ckseJQL4DVELBIYJ/ignD5lOt6UHV6NrzSgaE14wUhFTNiMopT2QCiyg
         M0cZOgyyzojgOYnq5GK5UH/s0AbZw4jHh/WK8h7fug0MzBzMJTbE/E9wy4naOc6VUaan
         f1Ze5gJbwZjkGv9QNwE0R0QG2bxR7m7L6SOJePUttK95xDNRBJBvMj9sCe/U2HAqUS6+
         5dkw==
X-Forwarded-Encrypted: i=1; AJvYcCWsLg0WrpN5YHbNNBV+2mP5ZiuPJLJzQ4a3D6Nczbp24Wf4h+4aaqXOHMUXXSIeslzu8wqcX5tKVu3s@vger.kernel.org
X-Gm-Message-State: AOJu0YwHLLuVXHoOMdw0uXTTBc0Jr1C9ogOWYmdDLz/LXh8MJHrQSV7V
	rsRs20Z4bXCCHhRcRc02YXhzDYr3SjOiPWILftNv+yzfCLnoPy9jkrm9QHXfDXTVB0A=
X-Gm-Gg: ASbGncs8tAS0K2KjbtM56Ejzdh154UELcT3L1XJZvjOzxGnCYOL+TVRzzRTt7fvXZgu
	8Y0noJAzaTV9Yy0KghsYdy5c55pc7wkwULI0y5vh2scTO9t12OpilCClXvzUf2jtDCF8LmnqCGK
	tA/PK4HFbkMQiNytHMOKzocaoKCsWowlUIyLuczip8kPOrvo0vy8nNBlGpRqe1Ntg0KFTM5Cj3N
	iurCllZyah7SqdU083hMBZAU3uK6guIsbFHfSSGjfMf3hEWmQkANNhm8Am33YnrphmbQprvoWW1
	pV63pxzg4iB446A2d+C6kV5wM4HdrO49lh7F+toHcGzsU+BUJUZmUQMFnpXD6A==
X-Google-Smtp-Source: AGHT+IFeaCCRDIubiGu54CbK3aqd0Ov35Z88utQJJcSo42eFJKtNFYB/mAl3+BbnejgRY1XpJld7rQ==
X-Received: by 2002:a05:600c:3b95:b0:43d:2318:ed7f with SMTP id 5b1f17b1804b1-442fd5a2cb4mr40169245e9.0.1747641910121;
        Mon, 19 May 2025 01:05:10 -0700 (PDT)
Received: from kuoka.. ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f3951854sm198293705e9.24.2025.05.19.01.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:05:09 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	Rao Mandadapu <quic_srivasam@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: soundwire: qcom: Document v2.1.0 version of IP block
Date: Mon, 19 May 2025 10:04:54 +0200
Message-ID: <20250519080453.29858-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1500; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=eNjYz8w5sMtLPA6MRlmwOuJOvQJcZkOlZvehWvQGnwc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoKuYlT1JUthzmjuD+5hZUrrF5hzhw0Rxr6qB8W
 fqh1D8/n8iJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaCrmJQAKCRDBN2bmhouD
 1/ZmD/9yMrVo5Z1OUYC5ystLok/+hkuXW+ZI2t8xpC7liKuSsx+sQGa/mIC6E2dlZArUMyj/IFO
 Vic7WtnzS7PUr5I+EyR4Jj/EnlMIOAvqrUXEUBnzBwYNXcdPfpLKc74oGuLaXsy91AlhfyueNag
 wXcw6tmf2ExFNmzB8QkKh3FQlhwNmuYPt0TOa+xmsjaiOGhqtP+5iahvuQAq83mNwe1zf1UY2rn
 tVqAaMsV/knQga1I7Ut4KKhxtWaLQCT/NyYutJnagPPn7Ez1vPSAkqEebbuvwKdWWns30oRig7h
 a5Y4ycgybvLKRFKn0k6hHDPM2ZOcyIyuoTx0KS0PWWCR/jg5y1Jz05ODeN5sHJ61cqKr8bSmJeS
 dOxeVvxPtDE8+Na+3mYd3NZNYVOH+DgUFidjMqG0G1f0WSTd6yRAH5CjEgORNN4g/wSNNgeKcRk
 dM4gFGIHffItVVYLfr6HZPuSp+eK7LQCvPNU6kbc9WrZlupCGozt8JgvwljcSIo+MnM2ehN3dGr
 HIteZvFVxNBOGtIJoysMRKYQShVVlTDAXrBAuuns53X8O1cCBKUUhzh3h25yJBg3QWAeoOrwe/v
 456r0QTrl+hOYBEji8KtOJJm/6kmpg8lqXzwQqhEjwAf2/7IMqFsbXZ2RvIAJFrmKd37ZB5wmvs zTdOtaBYkfdJpuw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

All Qualcomm SoC Soundwire controllers are version-detectable (even
1.x), however certain unidentified quirks might be potentially needed,
so document v2.1 version used on Qualcomm SM8650 and SM8750 SoCs,
fallbacking to v2.0.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/soundwire/qcom,soundwire.yaml    | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index 3591c8c49bfe..95d947fda6a7 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -15,13 +15,18 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,soundwire-v1.3.0
-      - qcom,soundwire-v1.5.0
-      - qcom,soundwire-v1.5.1
-      - qcom,soundwire-v1.6.0
-      - qcom,soundwire-v1.7.0
-      - qcom,soundwire-v2.0.0
+    oneOf:
+      - enum:
+          - qcom,soundwire-v1.3.0
+          - qcom,soundwire-v1.5.0
+          - qcom,soundwire-v1.5.1
+          - qcom,soundwire-v1.6.0
+          - qcom,soundwire-v1.7.0
+          - qcom,soundwire-v2.0.0
+      - items:
+          - enum:
+              - qcom,soundwire-v2.1.0
+          - const: qcom,soundwire-v2.0.0
 
   reg:
     maxItems: 1
-- 
2.45.2


