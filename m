Return-Path: <devicetree+bounces-95099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 70837958142
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:45:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25B9D1F2502D
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 08:45:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A571818C013;
	Tue, 20 Aug 2024 08:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ATdK3lcj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC15C18B46C
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 08:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724143479; cv=none; b=FHq8hccRXL8qmMjJ82zIPVdP/kn2lT64rbIRD0RhTQ2oIw7NbpvRY0+f+invG0fLD8ggVTWrmMlTaHcAQORiHhPz9FYzLw7izMcuXUZtpI4YIF4mJN7OOErQu1GqWpsjm5oaU9g7wMb5mMVJm8xlX5O7GX700I0d30u3e7foTeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724143479; c=relaxed/simple;
	bh=ACoKcvirNpvaaPTfka/NODi/Qq4lO1FWeGoQWC9ZgEQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LVPB/R8/ovqOWGjkX9zdPxtI3vR8ZDm6JBjRg11PnolEcSsmMNcMp+E52JSQrI1JiGy4BiNJdv1yUWlp8TExe26DzS8CKSQbfdiOTxJX2XwPgIxbRHePPAoRR2vA0tKwA9p7gaLS7Q9qZT5oe1kCegU6Skamf4VQx2pCeH2zxwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ATdK3lcj; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52f025bc147so6285159e87.3
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 01:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724143476; x=1724748276; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fuaP5uVIlhNOjKdFnLiti0TFBZrTydW9KqiKj5mZro8=;
        b=ATdK3lcjx0dme97cWbtmFpfJH7oGapUumZ9sZfbezVfvuDIzoxKq8QRUIcvN041cji
         EFe2a1ljSBUgSfTE2jqQcibb1VUpXRTwSwNxK5IM8yLzzJYAi170gNbkh54pjliJdDMY
         2VV57j6S8f7et5FeCWtG5VGb82ogEq7dt0E3byOer6RiEHY8dorfcqD/8/C5IaL9Wqxj
         +v3+8ggkl6um/cDe3vCIH2zDRwLsKGIHasEweHzvSkGpttFEURCfx11XUPP/TWN+lHX9
         H5sgyvbVOV0pZ0nIaGGGO/DtM2PmcOWvNkW2CsZJnNckDXb6PRKiM2UkbowhEX/gq7Xn
         LYcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724143476; x=1724748276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fuaP5uVIlhNOjKdFnLiti0TFBZrTydW9KqiKj5mZro8=;
        b=Tmd/5UcDAr6qAVa4skQC543coPv+yG6lbfthjj+q/17d+rCKidZP3IHKwWVITzwpge
         OZepPNMhf0YowToxzWm03DA73Su+s8ywnJ4W4IVH6LyETRqgriVvNBDr7ukI4tuCl6mY
         eEVIPhcuCwIOvGKilWPeNNL9euwN5MyD7OJYiPK5YrufH5iMFaFt+kMd/Ql22Ary8Z0L
         H3M6TMhKwFZTQhofY5gX26Ym/HaVDh5c4OeMVNWmgM2ESbl5IyrhL+VUozNq6JG6G2++
         /9FBBmMEbxOK8ICrbbZvLpIztN3qWjFJ0VuAac04/LfMUgSL1PFYeZrQekforblJYJat
         NtCA==
X-Forwarded-Encrypted: i=1; AJvYcCURYU+julF69jJ8Wx/iNZbiFn255j/0acTvythYpHIDwLE0t0rSVK7MoiqfESW303dYnsrBT1+bkDWFwEd7FjskCEj1p3c7M/mFKA==
X-Gm-Message-State: AOJu0Yw1dmA2dOMGIEItW8r3rc5Fk0nNqK7KISNtV1ZSI0iyiMvkbhv4
	NCG0vz2Y4wW52EWwL/5KhHgCFLsnYY10WAGqkPPaprY1AjqH62SqNq7Okfm6Crk=
X-Google-Smtp-Source: AGHT+IFljyfUprSxlzzNt0uKa9soJdmxltAzvfxFDydZduKSuBcQBiRjMjMwlN48DyfiOMVOy253KA==
X-Received: by 2002:a05:6512:304c:b0:530:aeea:27e1 with SMTP id 2adb3069b0e04-5331c6ec909mr8282061e87.50.1724143475819;
        Tue, 20 Aug 2024 01:44:35 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8383946973sm728037766b.160.2024.08.20.01.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 01:44:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 20 Aug 2024 10:44:25 +0200
Subject: [PATCH 2/3] dt-bindings: i2c: nvidia,tegra20-i2c: restrict also
 clocks in if:then:
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240820-dt-bindings-i2c-nvidia-v1-2-2763e9a9a1b0@linaro.org>
References: <20240820-dt-bindings-i2c-nvidia-v1-0-2763e9a9a1b0@linaro.org>
In-Reply-To: <20240820-dt-bindings-i2c-nvidia-v1-0-2763e9a9a1b0@linaro.org>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1347;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ACoKcvirNpvaaPTfka/NODi/Qq4lO1FWeGoQWC9ZgEQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmxFdtv5yn7C0bYAm4bo0cIML6vITcffTHEhj5j
 oS2PGAp0nCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsRXbQAKCRDBN2bmhouD
 1/BBD/4pLbwK94nWazOSWABSjKtItrzSv7WqizBW47D598qfe1CPjekuL/OScpQmQWV6w6H/k1L
 rJBQoDzKfsiegx+F/KZwsNTBLiyO7QeHnJm9YZNU0mbx0cYlEcI9TMctE5JkwPDwSlfvtMxtT0z
 cD7EH0oPovZYeqd3XdJzY9KFvZ2rqH4WD34V/Cc5o0JSlO6Ke29kN6mFrawaiJUTWD6m59tWlJY
 yeC+SGpZ8L9PqBbUY7OVFOSPFvA2VNsEndB6p1ipk5GVnIwCu6d1za02FbOUCzU4zI9TppQht/5
 TSKuwvsp9L3XKZ0miP5eF8RB1ATdlmtxbu+HxmqO93EkaxZq6YoUQzPchrlb57TciwLqgSGLftN
 oixY/QFs/dfPvYGkgqWgWfTpjDpQt3PmpotsvBI83i5wPFrYY8Ekh535Y+qshFv0wdXUWRbQ62u
 43b2dbdqXn9jib1gfy3+GLZ/seo36pdDOBwF96f+z3qFVmKhKmcduLK9RS2118cWliMIxCMtjNg
 8YvAxHcThVMfM8PUEdKdtzKN0dFToD7exDF6MPq/9AAR1CapzOtu6KgGsDnDN+3sN8gIwvi1lR+
 txsqKjp4Ns4CWJj7skXOz2Bik4R8T2EhjLnWezSHOPOipG/2IKxXDRz3qFadrdgYvrXbhO1g+iB
 iTQVVU5/ZxTH4ag==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Both xxx and xxx-names properties with variable number of items should
be constrained in each "if:then:".  Add missing constraints for clocks,
since we have such for clock-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
index 5c92ef51287d..eeaa07fe3875 100644
--- a/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/nvidia,tegra20-i2c.yaml
@@ -124,6 +124,8 @@ allOf:
               - nvidia,tegra30-i2c
     then:
       properties:
+        clocks:
+          minItems: 2
         clock-names:
           items:
             - const: div-clk
@@ -138,6 +140,8 @@ allOf:
               - nvidia,tegra210-i2c
     then:
       properties:
+        clocks:
+          maxItems: 1
         clock-names:
           items:
             - const: div-clk
@@ -149,6 +153,8 @@ allOf:
             const: nvidia,tegra210-i2c-vi
     then:
       properties:
+        clocks:
+          minItems: 2
         clock-names:
           items:
             - const: div-clk

-- 
2.43.0


