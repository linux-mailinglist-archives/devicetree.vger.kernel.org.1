Return-Path: <devicetree+bounces-136913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7786DA06D24
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 05:37:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C99CD167735
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E3672147FC;
	Thu,  9 Jan 2025 04:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pj0tpkKH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B23C2144B6
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 04:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736397366; cv=none; b=hmV3/mcDw+an4fikDuq2y9e7FYlpmnspXO/yLF5RbzXKorh552ZPiRBGU5CzfbEkDMcX12Qkr5aXztGyYg3tQKr72t4L0N50TsOuOoJqxveL5N1FzecdQ9voJWHf8mCFgROVltLQgAzj3I2f90zexg66MhnXSDHpLremoZ5a0KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736397366; c=relaxed/simple;
	bh=bFoUxd13xqGzTL8i0Uke1VWxv8nz0uckVKpDL5fYKp4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lazKRYmjMRq05M293xNzH3rnlydQnsFIcqpTpoZ3T3fEymgFNPTn4CRDG/kNrIWgJK6p5YIfaSnvCuAT/3/pZNPKl2Ptp2JF/KtbQ6y6PIugtRM0PY7Rsqo0VDSVoCExEu88uDczg7UiM65oqL9bmlXaHVRwVB/7i8L/m90J7MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pj0tpkKH; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53e3a227b82so419772e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 20:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736397362; x=1737002162; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tBnHSa/ei6D2pomsNrU1v/8n3usXWfC08yobzI09Jro=;
        b=Pj0tpkKHWmRfq9IupCpqdtxOrU0ZJnk2tNicleGk3isY33BEPZ132l/2UyX9xB4K1f
         TAMOUjd++y+/sG1gxLgptuQiGOP3nT91i+ZGa+cPcQGGNg3KrU6+4nuZx8svAPveyWNY
         BUNWYn1aYTlR7/5wsngTB6teLEqyUq55jOL1XurX5i9o1hNKatMQXFpib4RkgRpa6Qmx
         pqmevoBglaIgbeQG23sNyGOVcw0mbMU7ytuR8DZvVxXhNC0uOn2zgJ4f2qipC1a2ofOq
         c9UlfbyIBuHMNzDFuP9YyzxeJuT7TLeZs/eUOe5QKpBqvYq3uRmOg2FzWhyn7aclciyy
         U/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736397362; x=1737002162;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tBnHSa/ei6D2pomsNrU1v/8n3usXWfC08yobzI09Jro=;
        b=vz3IMa9yUphmGKHNomwjJBQuhRurFWYymndH7yw/LYbhl5zLcbR0TtBtf3a/rU3vai
         +NDIwWicquy7Ol735QemzlWDA+zfHiRxBYHFsDwwkFpo8X/6SCrb/NK+2r+nTbaVKprw
         NT9SiFb5bb917d5ZbBf3nYNRlI6TR5f4cR3wxfqKuLzRlmCm1QF9TNNyOoebJX+DM1k5
         IwDKMyJjA052FW9w1jUeYKunExwXDbfGbAsiKSVnISugiRiHnTCzsY715D/RXbejkqqn
         1aGDQXtd4O3V2H6F+whmHBEvEd+ujEXh+kHLMx4OEckJI3CBrjNACstfStK1dMIc3CcO
         dWlg==
X-Forwarded-Encrypted: i=1; AJvYcCU6HlNJlubrFbTqckpz7pj4t/uNxZjILVpavecIz1t0ZqYYeTnXzUfUpp6yLqZPuTlBCkssnaB2BIiy@vger.kernel.org
X-Gm-Message-State: AOJu0Yws5wuLEhzEnyIXnhTnBbE1/QOXUZLF49dlKFoWHKINDW2+rf2w
	zMH+eyyARuUsuJtnoH/K0zWXRkuc2xk24DtYiWlxktmCTfwVL5QYLMcWsCdcx1+jxXq4C5BdD8P
	s
X-Gm-Gg: ASbGncvxj4uq4JDf0XZtJS7xwVwseIj7EOBXm4dQGMGyIqcmWoGoFhycHo3RBPOMdqU
	eEjyuXa9Y08dtAVl2ncQelfO6P9TZ55IEJM8tzTXijrrqZzo4zMvfaawAHpIZxKT1VuvQYyqYHO
	JMZoqbl4GBAJQv8BbYUajfpKTAULaZytu4tgGvrVKTtgisO6YSOYv//H0P4/+C5/Z4n5Q4KoW2D
	wtb3+z/J0i9F23TWraSS8LeyAzq/L5xAdK9e7A0jhoAbLFy6UnhPTshEDnXmZTxibcFHiWyjUFT
	HNIhAKeOAGwWSonNm/5UrD8D
X-Google-Smtp-Source: AGHT+IHNpliUbCzShTHU3YELA4A2kOZ8c3cc6bdarZT0RN/YgBassMDYaqQENO1wTf98MuMXuQ9xwg==
X-Received: by 2002:a05:6512:220b:b0:540:1dca:52bb with SMTP id 2adb3069b0e04-542845c52a3mr1607860e87.28.1736397362546;
        Wed, 08 Jan 2025 20:36:02 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bec06e1sm73866e87.191.2025.01.08.20.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 20:36:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 09 Jan 2025 06:35:49 +0200
Subject: [PATCH v4 5/5] dt-bindings: nvmem: qcom,qfprom: Add SAR2130P
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-sar2130p-nvmem-v4-5-633739fe5f11@linaro.org>
References: <20250109-sar2130p-nvmem-v4-0-633739fe5f11@linaro.org>
In-Reply-To: <20250109-sar2130p-nvmem-v4-0-633739fe5f11@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=866;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=bFoUxd13xqGzTL8i0Uke1VWxv8nz0uckVKpDL5fYKp4=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnf1IkEzuENDcUEcO0yq8IH9HJSBlZNlZ96P5un
 s4G2pMI+vyJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ39SJAAKCRAU23LtvoBl
 uK/UEACfZKDyD2ZRlKrK0nQ7XUI4Xg0II/U+NjC//mQGfymuOwLzxtzekZ76kaNWGnUtcnbmvIQ
 7byw02C76jPzUi+g9MLHcFllLdEYRX2o4JTveJo5ZfOTNGe7bkVdJpsAcFr5rcLUhdUsmL3ex+k
 Olj3xZ4gGDGy2c6RNiM5EdLfIwgeO795TpSK1UanTuE2vi2OJz9ZCDjrczsw5Fw3hS/8R+NGMby
 XDnv9a9WIEdZdx6QX+CPF2Z2Bffg1pELrm5lupfLMakBoqKfBeVxx+Aul9/xDxPWctGoSsg2puz
 +0Sn4RdLOCv7UX1M7kNR1HXlyhnAvxgw31cGrGXqgXhrrY+WTqChJf6LqK6VZi8+H0jdIFTQfX8
 kWEgJt0sOj/K3PKEZoTYxshnv+nQNxAS8H5isSDoybOqQlqDdFNpoqXtVvg9W4cNysNZbBtpqHc
 dw5/PQVJEJn8nS4vzkR1txVQ0oKV0rfEdMtNQG8LRNud8nxqwjolYU4HAChN6xj6fC8SdVpHlQG
 n+Wg6zpQ25LJmvkqFnwSxl6D3lO0gWkwsfU8oj2z2HLzm1HBMbuS3p4nc2aPLP9JhFIol4/FcxG
 e+2IAnE8NAPgaIR61l04tbHdNlQyAKVPJe3jLerCltmW3lTRROUHo7tLftXKGvkHnucY+Rw5Oi1
 cKfwlasmdca2hRw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for the QFPROM on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index 80845c722ae46611c722effeaaf014a0caf76e4a..9755b31946bf9d4c1055a993145d06c274b61a37 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -32,6 +32,7 @@ properties:
           - qcom,msm8998-qfprom
           - qcom,qcm2290-qfprom
           - qcom,qcs404-qfprom
+          - qcom,sar2130p-qfprom
           - qcom,sc7180-qfprom
           - qcom,sc7280-qfprom
           - qcom,sc8280xp-qfprom

-- 
2.39.5


