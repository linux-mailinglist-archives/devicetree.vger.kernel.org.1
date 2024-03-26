Return-Path: <devicetree+bounces-53528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C3E88C938
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 17:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 853F61C64D4C
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 16:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0C6613D28E;
	Tue, 26 Mar 2024 16:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZTAnYi0m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8292813CFA0
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 16:28:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711470525; cv=none; b=XMfu2ViYcNZ+fLYCLPpHwTBnfWfHfm3QemdZzZsJoEhkU46L9BCQ0KD5MUlSDy6iShSju79KHWFR9TJe60iR0+DTdOJx/IInFXXETzXFR2ixFWZ6eri0BPejpYSNWJCKnWJpy/Py/MTp7S7ElOEQgpfgEZ3gcmQzIMGL5X+XCAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711470525; c=relaxed/simple;
	bh=QJBBmiezhVqZHMCXX6MWNM2zXfZMz1EwtNGa1/Y4Z4A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tfL3lVC7a487Ks0U8+79GlLGOpd9MlOZJylwPzXBzR13yj6A9A0zySOAzH/0vKZzVanUVay3PBEuKyBCZAREn0gcIZV9aD6kmVrtpGzuhd4K/SQHxKKnA2pNwXyyWhyWHTolklekCnBeejpVely5RRSYiI+qj8Y7faugG1saPCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZTAnYi0m; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a4702457ccbso737280366b.3
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 09:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711470521; x=1712075321; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EW/GWJggK7nU0fxkPt2O7/667iB2+8Bxf2l4HJ5fEwE=;
        b=ZTAnYi0mQi8qKM1WRAb0WJVIOtZP8EmgOMao6cChIX0ncUOP45mhFQGzIYltjLda6G
         wCJ6BdY60rBgmCzc9du7p6hj5lKAdvxnSi2pKNqtaXrRmuqVLU0C5ot0Up4E9SHgzQDI
         UM35REPM9Rw3RzOXv+PDT3gkExDfPyPllbFs9Rr9E8hsrCOfmbc5b8lSTsZENS1ZVcRf
         CdanizCeuWfewq9ri+cSGZ0ZZcRYG2qFV+VRDXMhRBePR4uINcbjxllXcU+uvrw7mZSQ
         VMQZAlo9rgPAf2W/shs5Or9AhnHnEsltElIBzGf7I3ic9Yyx+QaSoXBbfG+KmsxHYg4V
         8dAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711470521; x=1712075321;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EW/GWJggK7nU0fxkPt2O7/667iB2+8Bxf2l4HJ5fEwE=;
        b=rlr26jLsMGvhps4NdPHi4fNIDzaJJmydo9kV+vT00AT5RAzeNThbq+cQ52mwfI4SLU
         rr+G3iTb1MP2lg/xNr/2qXQ2L5m1ByU65PBgIgRhTP171b/pn42gNr+LXji4GFdao5dV
         bN5a1ISTRWknmKzucfVM1wNnFlE8fDeRsw+/wFMLiww/mDv9Lvc6XgTRo5+mFVX+TSHi
         lMzWnjBoThQDaLK+JWys4rW8dW0wqysMScUcMUsENCFz38x7vqTOx0i++CtDP+TMlete
         dnoxF5kWVardQJrGP25T2cyCS+cfpYswKUPvIcBJ3FfrA1m0JP3EcFZfzdQ76IME/Hr1
         Eh8g==
X-Forwarded-Encrypted: i=1; AJvYcCWHFyleGxq4meKRf8WDNVQftgntSDEbzgsKutfVTFFaWpFBHI3kd9Rmfare8l0+HKbwMKK3UpXjttL1+wMVGbA+X7/AkzPYB8LIIA==
X-Gm-Message-State: AOJu0YwCAB+qDrY/+orHP60JXcJpv0cm/jdpqgul9zMS+JYVbskVkuZe
	jdQfVp972jd9GD8fU+zlTkOgEEgpCk7XrgGEI3DrRnGulUGoMA9mXvHNFL+pj8A=
X-Google-Smtp-Source: AGHT+IHOSQfLEwojv/KKHmJUm24E3wz6dX9AroqG31OnfqQjS4iLKz6hOTG6ZStXu55DBb3wOeEYGA==
X-Received: by 2002:a17:907:9727:b0:a47:46d7:a89f with SMTP id jg39-20020a170907972700b00a4746d7a89fmr7402855ejc.30.1711470520629;
        Tue, 26 Mar 2024 09:28:40 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id x20-20020a170906b09400b00a469e55767dsm4375051ejy.214.2024.03.26.09.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 09:28:40 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 26 Mar 2024 18:28:17 +0200
Subject: [PATCH RESEND v6 2/5] dt-bindings: spmi: Deprecate qcom,bus-id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240326-spmi-multi-master-support-v6-2-1c87d8306c5b@linaro.org>
References: <20240326-spmi-multi-master-support-v6-0-1c87d8306c5b@linaro.org>
In-Reply-To: <20240326-spmi-multi-master-support-v6-0-1c87d8306c5b@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=956; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=QJBBmiezhVqZHMCXX6MWNM2zXfZMz1EwtNGa1/Y4Z4A=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmAvevL0jG5eKJuWruBjANklXgLEfVuGtbxiNM+
 xhKhNcKQKWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZgL3rwAKCRAbX0TJAJUV
 VnwmEADJ4iN67j8rHWvs2HWvetWv3gougrJB2YgOUuSSA6APHfnzmwJaFYowcvPY+3sRjfpUrn9
 4SiaDrtpyJ2U3vyOc0y6YL6ZaL2GnvOTlmNtNIjbYufuXG/KXurf9e7kzE5YPtgmiUgK4nLzLsH
 enBVB59bERrULzYIptkGyLJqbLo+Bw4ApykWGQ4qZ2brT9ux2bv4W31jL67nPZblgdWLgzvEK7I
 xKsUEiabJ3fDYud5jdlkG3BLFvSynWGMmQNB8se2tdXkVncPxS48fVClWAZyJWQkIdodlorFu2p
 gYeqOa4y/alUT0BPGf1WTlJG2OTdnRyEhqCPUSMSeCmfpLzQn5OV64l/IZHEBIyCcDR4gQRXqpA
 w+esb/7jNhQo8tTZZtbFIDCN8WKv5feSAYfQ4tc4dV6KcS4+sXYlzpKc54ux2e5etQDuuUDIvK4
 ESYzpnNNatu2bWfYuBDN0ZPeXiF1UTEA0Z3Ou+5WQHk38kv8xa33NFAKmF2dfjAbkIN6R946lAH
 kT5SBiYAZl1fuolCGg3S6zRkfjkNk7Ew5WRiAzlbf5o7tj8YgYFsJgMIbjh0llyIHA+rxOUj6Jo
 eWc9vvP/lPJW5Q95BD6KjcnH0VoJviqtIE1SMx0uzh8GpewPOM6FwrTXwNQRL234uaxoe4lp4E8
 5jNaArqzx4r5ylA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

As it is optional and no platform is actually using the secondary bus,
deprecate the qcom,bus-id property. For newer platforms that implement
SPMI PMIC ARB v7 in HW, the X1E80100 approach should be used.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
index f983b4af6db9..51daf1b847a9 100644
--- a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
+++ b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
@@ -92,6 +92,7 @@ properties:
     description: >
       SPMI bus instance. only applicable to PMIC arbiter version 7 and beyond.
       Supported values, 0 = primary bus, 1 = secondary bus
+    deprecated: true
 
 required:
   - compatible

-- 
2.34.1


