Return-Path: <devicetree+bounces-135948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8A5A03196
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 21:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5A43D7A2472
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C1A91DDC2D;
	Mon,  6 Jan 2025 20:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H7XYaXuC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C58171D2;
	Mon,  6 Jan 2025 20:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736196660; cv=none; b=O815lVr6Tc9aGRK7Uyrv2W315InK+VPFEBLkcCVU/3yoOOEj3+nb4bEdt/Y3qXDlo6syN4fY6bQ29lMhFooZWjCW0F7jyZ11qoS4k7h2IECBVEtB0HqbGc+0YzmaF+550Dbv8eiZAfHKtdBeT/lR270nWCDxIKmrbFTSYOJFrX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736196660; c=relaxed/simple;
	bh=p5DkTJDu5QlNVWl35gjaVUthknkZBv6iZeP84hntyqE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IqzVr2ja592qGddz6l9U08WWuBP98n1ihgFGih2mWSFPolnXgNUVw4A0pWn46l6lLvR9UOvqVqe2n+oaOROrHuduzyhmYKkLINM5lmpL2o7rFipo06LHvOQSNb/Solpg5aVYTO47PRTVrL+3Q6LpBIuRkKwLDP21ZhMYEkIT9kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H7XYaXuC; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-300479ca5c6so151653041fa.3;
        Mon, 06 Jan 2025 12:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736196657; x=1736801457; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CcUs5V3NaAvho7+pyHks8hnj2f07Xk/qrLoafEl76mI=;
        b=H7XYaXuCnM1y8RKrpomT/YfAqPFWsZWKXlJrd7/XCJLentLn7E/BBnu+rTrhoTQ53r
         4t5Jma3pioVVXNCqT+6s76wR4gLspE4UMdz+Amf77gOSqQRiSAtdNxlo639hOVuRAAPY
         jChkkHSPBrojBHcn0Ew/6NlnssmMmVmOixKWtt55IzU4pCxP7q7qa5tggW5bts32L45F
         cevK6PiBCZi9qdWDwlzNTBi7nXVfBB5lX4g+GZ3MpCEyX0FLG3FtrSY5TVjcwnmXfpyk
         Vg+UOpEMvlWT1zmN7JRzve+v0yugEWyNqA0l7m09YLBY+DmpzCzXDFRV7npDKA0RVyhx
         TIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736196657; x=1736801457;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CcUs5V3NaAvho7+pyHks8hnj2f07Xk/qrLoafEl76mI=;
        b=bTuAlmAryPyKVk2sbMbsnYpiPvf5UKblMZWFxqakl7p4zK9IS1hR2RymqkfLUYV9hC
         jeBWTSzv42bKAnJ914M0K502nqmV+x5FHrUxyu2Jyu6nH1VZNit9swCCvZNAoMfUeu+U
         iqHgS65Rwl07PpQ0+tlUxN5dg7pNN3Kb/Lr4vyiRdihQMH1EogYFDQhmyHCSX7pbsJJF
         Mh4PTRKpho8mQBHJ65C7bWnA9J8Z7QLYYeK2QZDQAryFPuIIA2Z96dcnN8FRHkYzGoW6
         Mhtjzh7ktg5wazs0epKL3AlQx4ehKrknvlC09UAK3EAcwFGJd2qXYJsLLX6twaPTYBUl
         nN3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVq+UpxvVRKNmvjHmgrq/jKCaSn6uyOSnyUINCdpAbU8mdS1y7LzqgXDf/YQq18gaM3gEFGC8M8jqN6Miw=@vger.kernel.org
X-Gm-Message-State: AOJu0YwiyP58e0JP7oiVog6uy3rWfzlJY1FQFXr39wQGmPTkRDDllxW4
	sndM0XC1Z86YkIQUjpGr8TAEr+SIlSOW0AX5Jbqb5hfHpHmL71E=
X-Gm-Gg: ASbGncszaxMAClzsJq+Pj90URgRyy/cyLZed6jXJmOJvdvBB927tAhfKSLC4/XF9fxv
	d2qnVkXYIuc4PdZBLC0GUhrmQAa+wE6tFwtW6Iu14zZcQdHOlHW3B/kS7dnFdGhnia+uJcDFX+q
	AB83YizLMV1MmQ/qz8q2MqPwhrcq8rSMaTwYRRvqZPhRY28KobIO5aG2AEomHnjo0hJxs0TwLFT
	vuNSmRZI4U4XK4RSUMjmBrQPcuaTZalLmHfOFJpYi7gtjb4QVeA3Ai4qqI=
X-Google-Smtp-Source: AGHT+IFiuKkIWmpOb/LPWmM3EGUaAKhrbL+KyOsUE8mTsu528hjXe8wlXPuXg1xHgm0pXypRRPbtQA==
X-Received: by 2002:a2e:a991:0:b0:300:33b1:f0e1 with SMTP id 38308e7fff4ca-304684190bemr192377311fa.0.1736196656638;
        Mon, 06 Jan 2025 12:50:56 -0800 (PST)
Received: from JetTurbine.homenetwork ([2a0e:e6c0:20d3:2100::1d])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adad2a0sm57898481fa.62.2025.01.06.12.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 12:50:56 -0800 (PST)
From: Ivan Sergeev <ivan8215145640@gmail.com>
Date: Mon, 06 Jan 2025 23:50:54 +0300
Subject: [PATCH v7 1/2] dt-bindings: arm: rockchip: Add BigTreeTech CB2 and
 Pi2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-bigtreetech-cb2-v7-1-565567e2c0a4@gmail.com>
References: <20250106-bigtreetech-cb2-v7-0-565567e2c0a4@gmail.com>
In-Reply-To: <20250106-bigtreetech-cb2-v7-0-565567e2c0a4@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Ivan Sergeev <ivan8215145640@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1174;
 i=ivan8215145640@gmail.com; h=from:subject:message-id;
 bh=p5DkTJDu5QlNVWl35gjaVUthknkZBv6iZeP84hntyqE=;
 b=owEBbQKS/ZANAwAIAbzfXRlQM5b9AcsmYgBnfEIvhstkhToraQ3pry+X3f18aoGH6gmz3nuoY
 4AnTnC2QbKJAjMEAAEIAB0WIQROCZtApKFz1fvvsOS8310ZUDOW/QUCZ3xCLwAKCRC8310ZUDOW
 /TP4D/4i/ABA+1kdh4uiXsedwzbfwkEz4JomuyCEzy0SfoZa1c5l04ZfsPf13M4W0bSSOSx11A0
 YJPHSlQMLoomoJFmZYIf/b7TzvL26aBe3Qw7b3vSKy3QU2MX1LWhJFywIVZIIHLUkuQ0pQey+kr
 C0TeE/4/PRAqaTgZYRtjb6pY4eq+VRAQOnfHd9iwhGJSgpWqRP3sJXFq2uGlUPmfoeiElMDEXSh
 cBMkzweHKX1wlM/zjzzSgvjlVveTQ4y5cy16DyfXTNahEvUnqz8sO1BQhpNiSq0jy67mG8M+SxN
 F8TUwDcDhm9ApkKrXi/Ip0VrTgetjYbI3j7UOtqbaZFvcSfhBeDRMQTCIsTs7W9f4FFmoGpIH36
 fFCWNR7RptUi5l7JZVUjmcFzcNyZe5cJx0Q2lQTkinXmKmX2fgorfNqFlsotgO11F99RzXe5q7Q
 5qtvQ9EgIylzCfqRRQeCn8UrcFrq836qCq48f4DZwHNWR8/3PlY0r2F/x94b72gnv28kaR3uKZe
 d/YLKTkHEzUGEBT2OZ/fLf3Ki0ApI5ZrN8Kb4uE11IDjP8sKtPJy9CgsrYv1FqcXlU6qKV/nBIR
 zoMONTWl0Jg8RA2q/HhzuqncmKvmIgnX8HdT9EuozI/uezLOqQO+Za2jxp0PRGt1c6Of3Z/79Ix
 pv3vhUiiHFZnEwA==
X-Developer-Key: i=ivan8215145640@gmail.com; a=openpgp;
 fpr=4E099B40A4A173D5FBEFB0E4BCDF5D19503396FD

BigTreeTech CB2 and Pi2 are Rockchip RK3566 based boards

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Ivan Sergeev <ivan8215145640@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923fadaa48c407a8e55e7854db7203e..349453b1676bfac45abf5cd49d6bd9f847281213 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -81,6 +81,17 @@ properties:
           - const: azw,beelink-a1
           - const: rockchip,rk3328
 
+      - description: BigTreeTech CB2 Manta M4/8P
+        items:
+          - const: bigtreetech,cb2-manta
+          - const: bigtreetech,cb2
+          - const: rockchip,rk3566
+
+      - description: BigTreeTech Pi 2
+        items:
+          - const: bigtreetech,pi2
+          - const: rockchip,rk3566
+
       - description: bq Curie 2 tablet
         items:
           - const: mundoreader,bq-curie2

-- 
2.45.2


