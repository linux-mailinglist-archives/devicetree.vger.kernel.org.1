Return-Path: <devicetree+bounces-194477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFD2AFE546
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 12:12:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A6C4716884B
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 10:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89B2A28BAA1;
	Wed,  9 Jul 2025 10:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RuGiAtFx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596E028B3F9
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 10:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752055794; cv=none; b=LpqC/MjL08toHQaS9y4XWeSyjaxoHGb/7radi9BD/eAD+scEg0/geSUYc9Hu12rgS1d3T8h1ws/7TQbAaYx4PgiDoSw6rdWf63XLepNU9G1dQqktkyM2gfvEE1TPr9HZ1q38aNLyk0v5Ja5Cv7u7tcOcMcE1YfDKf2AKzoOtsdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752055794; c=relaxed/simple;
	bh=famRRvFrFYpSXcgLA4nbJLP0BYRXxaou57j/60RhaTs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FQvLlF34EVbp1/5pkgaeRVKH6LimFFAv0lnSMepN/3dQ8wJWc9ZRknHsSot/DXYHSI6zkZ2NLEiFvPyfNJCjl87P8tQ9i/ggVOZqNeNLgma7rvpDezH0MjzW4l8fH5q3N3XHqhfklKEb03QfaJxMAer5wn0O0uVG3CM3iOU/zkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RuGiAtFx; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-454aaade1fbso60190115e9.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 03:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752055790; x=1752660590; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pMidPiz8WPRxgxTAsiQCyYCTxHgFambXMuO+HJdSTnU=;
        b=RuGiAtFxfe7V8SltGasThXEfB805tdDLOGRKSa8tRGZnt51aW8CAAIS5OSaexbmCfH
         kQR1Rq5AlylCmwtUa4FZ5FHjIBRtPOHZ2FvQOczz5r3Ki4AS7HnjWkwjdsjJ2KtKr7Mh
         d/10rnAn/j0G6sShLvQ3NTXVExhy0iwzpyB1My9ahCEGYvqaocFs4gytRSnLTt7Tj3gP
         38IEh7WLBKFLUU806CggYKFY+I0h+tMOf+FK+iUTVphygOExP4dw/5ifKVdkWcL78jO9
         yj/XN8lCD1cJuDF4qX1VE9WapJQQI/cYi3QNAAvqsNGWX+68RE/OeXxLnpgxig90+uRy
         knvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752055790; x=1752660590;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pMidPiz8WPRxgxTAsiQCyYCTxHgFambXMuO+HJdSTnU=;
        b=OtO4vV5g3TQRZoX2QGV14SVuwKSf1Lz+Fn0UmxRZsUSQ5spJlBGlP2/bbJ1/lzgxoU
         huCGKML+kNUU7uC8LzQILznkYd48ZsvZxr1zwW8qdDOrsUmJw9OQOobfrNNUTfB164K2
         HDlEKJWHbZ8H9oXs0W/fK5QIMMapmaTh/xuJlqCLF71OTf9BLuZCzWTTHagY2DXf9phx
         0LUhYehWTUTub0RqY8GBgotiUsdcDBHoNoQ48rzVn2lr8ZbRZedfCZUvZv2xjuJ+bTjS
         6Jm6LY1RY2EMo4YgyNS0Id+Mt9JJsURF4y/eVADd3ZyYZyJogy7t5ag47r6BmntW2tTT
         bwxA==
X-Forwarded-Encrypted: i=1; AJvYcCWMgPC2OQLzDd0V6mHY7o9Hk5BlR8d6qra2HSt6yD2lYgsHz9fWKCiNgq4HQrtn62wgqzn7EcDVExnV@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm3U8pk+8tgjr0MhTwY/t6aodgJW/N551arWQ1k0tVryciopB3
	Agx13Dm9uzu0MHgXLnPLTRpU0ax4RTqjVWvwBSPp9RRVUqV9P7N9AoJEmBBtTUA3SYkyLuYUz+r
	wc6pw
X-Gm-Gg: ASbGncuqpZ6NlYnH47EY8hzwBAwotXxU4tksA3ny8llXgQNAhEAOoTmqXJFn7+362Hn
	OYtMgCVjq8/dXa9+hv2ZjlwLOlZ+VUyV3F2tiF3RVrS9BW/d9JXnKNcVk4njZGfx9a0v2h7jsN4
	FCfV95If9S+JGpFQOFlstPzdsJhfRh2UPL5zgXqaHK8/4gYS89aSzLkHdbRPcdW0N3CyBMWaaT/
	40nIZulwChgfyoFxpDhGnqCvoX1273UFIACi/Sw/RhKLzaYxApsJ3lzZ1ApCj1luXS+OaW2J097
	+J1qfex9CX/fnvXG21xh91PZdMhJpWErTiN4mtXzTrpklPbgn9bWebzBuw5V1WktgSNVsR1Uky7
	5hg==
X-Google-Smtp-Source: AGHT+IEQkukkYSsMmMa7GE5Hjh/cy4YGqwOjr0P/jFLkEO6jYv+Hgr+mzq9RXN3BH/cGiA3SEVfLcQ==
X-Received: by 2002:a05:600c:4fcf:b0:454:ad94:4b3d with SMTP id 5b1f17b1804b1-454d5310e5fmr15844895e9.1.1752055790451;
        Wed, 09 Jul 2025 03:09:50 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:d3be:a88a:dbb9:f905])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454d5032997sm18342105e9.7.2025.07.09.03.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 03:09:50 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 09 Jul 2025 12:08:53 +0200
Subject: [PATCH v2 1/6] dt-bindings: clock: qcom,sm8450-videocc: Document
 X1E80100 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-x1e-videocc-v2-1-ad1acf5674b4@linaro.org>
References: <20250709-x1e-videocc-v2-0-ad1acf5674b4@linaro.org>
In-Reply-To: <20250709-x1e-videocc-v2-0-ad1acf5674b4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

X1E80100 videocc is largely identical to SM8550, but needs slightly
different PLL frequencies. Add a separate qcom,x1e80100-videocc compatible
to the existing schema used for SM8550.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
index 0d99178332cb99d3f02f50605e19b9b26e3ec807..fcd2727dae46711650fc8fe71221a06630040026 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
@@ -25,6 +25,7 @@ properties:
       - qcom,sm8475-videocc
       - qcom,sm8550-videocc
       - qcom,sm8650-videocc
+      - qcom,x1e80100-videocc
 
   clocks:
     items:

-- 
2.49.0


