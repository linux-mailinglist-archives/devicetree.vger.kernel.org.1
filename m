Return-Path: <devicetree+bounces-71280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D12308D63CD
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 15:59:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CA562885A3
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 13:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B6C5183A9B;
	Fri, 31 May 2024 13:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oZRgm6IQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F757183A73
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 13:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717163594; cv=none; b=JvbnJJCQouZW+GzUC/T8hQYexxGeqGNfCZs5t9180UG9Nf+E8odHmF1GM30f7AjYbxGObpHGZEx5J78IQ6EXsoThyDUCcE2FjXMiUeoxdRaX2rGdx9iyYl6qRBG9rJVnFN84RW4IUdZvvdugeGlAMjYTpj+JDiTU6SmE45kAJPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717163594; c=relaxed/simple;
	bh=jPElexRLbwYi326AHGI8G3yBsY+3/avTUM0IA19IieA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QqlH7Dn97WRt8y46LjEj3RJf2KDQ1778KQdfXjY4MSqyP8wguH6aGzRfAdOR6TLITnVB73JMg4V3v25SJDOHeFWeNNoc2cEXgtJoI6k2zG+ufn0IWdkF8Nf3p3i7FPth31iXwbwhjKjcvEdPCkSJSrScAgUBqq48QZSPOtmWLwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oZRgm6IQ; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2e78fe9fc2bso26978561fa.3
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717163591; x=1717768391; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kO0h5DfS/tOmjTv2xa37X8/SeND3LWeqqvy20iP9u78=;
        b=oZRgm6IQc6JGukg1AsTon6/drIZQ9JPU8IKnLme9ECHFwZzQswXdnGCI23/+wkN7Gu
         fGaFphUnBwz/mxHyasA4z1XnV69cPSQkaqxLlGnQH2EtzEER0g8+8TUDwJHef40YhLld
         LTJNlMqfoywhh9mgaNzpXbpTYaTrgzGUngtyoGyltHREkm9IE57UA8ocdWxvK4XMLnjF
         2z305mH9ffYVnQ3wYOD2eRFh3KdEvbWtEnCQz4j5FfTYdaE5AvpNW8jE1bF26s58Por2
         yiBHgLHruSeMWCl4PWHWTfD1e1c+du2JRlxYZ0Q+nIhuN8CMGt6ldAtKZV/qPbWMEyL7
         /VNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717163591; x=1717768391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kO0h5DfS/tOmjTv2xa37X8/SeND3LWeqqvy20iP9u78=;
        b=nR4APjAN4nyW1p380ogBK8tbQwIIngzlIW60C3T3kVW0bfj+uwaseXED5n4Wo1RztP
         tLn7LL92vt1xAdB8wt+adeMflGhEy3vk3CN4+ssVI3fHPyOpYryRhd8Dfpg5ZXlXnnVB
         FIykOxkig51DIXtOwT+We//PH4EaiT1J1d3S38ztezVGsNLuYNK/Yzleh5BfjjXk0+kc
         fA7TQxzwqQkvenTC/kpAVJ5ZKPVMQdBydpdxwH9ID2IDlLaGzwXySFeDnYhqXvU+Hb1T
         ik4uF42W26w8xH8dh+bErvWvHNu/z/pyazinPbDkP6oTCAVzkTPMi44mAM09aN/V/v9m
         pMRg==
X-Forwarded-Encrypted: i=1; AJvYcCUVQaGeaDK16Yo6TsSDEGGjFOxdMQXKL9s7bDpEIW8HzMni4hKwsVbdqZD/q8reWP6RznBlzBQGe3jqkZpItDm6qsFG3am7VuWhkg==
X-Gm-Message-State: AOJu0YwLgVz1Qq9b4uNmsW+uQtym9/gEXvotM/GxTnaK9cI01OULgr3i
	1YsdhejNiOucfAXgpjTkemF1Ryb/8NrQ2mzSxJdOSnEe6R3EklBHllLx717qEbE=
X-Google-Smtp-Source: AGHT+IHTDMz6XNfpTi+LmtTKAIY5g94GE7WhSFqjW195a2/9eQ7mQPF5ElSN/faA+zRYLtVot+5Jxg==
X-Received: by 2002:a2e:9b56:0:b0:2df:97b1:d4f4 with SMTP id 38308e7fff4ca-2ea951dfaf6mr11700491fa.33.1717163591661;
        Fri, 31 May 2024 06:53:11 -0700 (PDT)
Received: from [127.0.1.1] ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4212b85ec87sm26762735e9.27.2024.05.31.06.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 06:53:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 31 May 2024 15:52:34 +0200
Subject: [PATCH 16/16] dt-bindings: clock: qcom,sm8450-gpucc: reference
 qcom,gcc.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240531-dt-bindings-qcom-gcc-v1-16-b37d49fe1421@linaro.org>
References: <20240531-dt-bindings-qcom-gcc-v1-0-b37d49fe1421@linaro.org>
In-Reply-To: <20240531-dt-bindings-qcom-gcc-v1-0-b37d49fe1421@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, 
 Del Regno <angelogioacchino.delregno@somainline.org>, 
 Loic Poulain <loic.poulain@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1288;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=jPElexRLbwYi326AHGI8G3yBsY+3/avTUM0IA19IieA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmWdYk/G1ReuN9dxfhXHg56tRK9Pz0Eern7567T
 RBFD1MBAMuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZlnWJAAKCRDBN2bmhouD
 16EUEACYkVjbL+jap8zdZYYVcEZTIC8H8YqKHT+6pko5DI9y7GfwORvU+lBl8IrZMqaULD5EHf4
 M7+UZ2LFOfSnsT3v5fYDsM9LJ+pO/gzIrkI7SbuqcR4B0HnUlHudvGj5bxSqfB4X39My8ZbPVjk
 rkueUXEgezMc6S8aRLyhUQ65LmHrZZMPLxoe26PZzO8wgMMDAy6mDMp9bV9kz9T6LmcAEJM7Fk2
 QF2+k9dbICjYGrn3vqHgflPeUuAgvUBVKQmDBUgI6OOj+PuaXskLTJDvdTgAAXF5ncb1Zwpjjor
 57Xdi6bJkp/fjVoNhIfz3tMjgzKsk6Qxzt+9QiHYwHD/raoS2Eu6v5FiMtc8Hry/3Lah4jJ0t/Q
 qBATFkBAsbq6au5E+3VjzKMezb0POot5H3i6o6KSg3aF7RafT5NflHK43BtK7vE3Y7FykSuLC80
 cZqNfFV9mXcIJAqrD3DOepPmb9p11uXsmoxtAdHLeSh7k8QmABrmU0gzv8Uq+QPCMRUQiIHmlN1
 oQP6tj6vuQXevHAq3YzL5P7L4d0xjp0nKJOEcjPOYVGtCMQAbdp6uINZ0TKel+F3t3cwFC8op+S
 pa46itnpfD6ysQp+7elVcxUcjXXlTSm/xAJrWwL76c0yeLhBPYH6s0dF5GhBYE0a0ER5xpKgtj0
 LWtSKeHOGXdxtRg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Just like most of clock controllers, the SM8450 GPU clock controller
is also some variant of standard Qualcomm GCC, so reference common
qcom,gcc.yaml schema to simplify the binding and unify it with others.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/qcom,sm8450-gpucc.yaml | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
index 36974309cf69..3c2cac14e6c3 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
@@ -34,27 +34,15 @@ properties:
       - description: GPLL0 main branch source
       - description: GPLL0 div branch source
 
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
 required:
   - compatible
-  - reg
   - clocks
-  - '#clock-cells'
-  - '#reset-cells'
   - '#power-domain-cells'
 
-additionalProperties: false
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


