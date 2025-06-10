Return-Path: <devicetree+bounces-184308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F18AAAD3A66
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:06:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6A96178C38
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 14:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F2902BD5B6;
	Tue, 10 Jun 2025 14:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="phRFrQBr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6808D29C335
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749564376; cv=none; b=oqbkQao0MjimuNW37830D/nKlJuQgdFJYEJ0uh3VxkkELP3uesD8Jq61l4yg3UJww9NZr0MwCpo2oEwFYqLwsEGcmgaXu+oYXk7Od8J9Gjm8wUKDK65Ua68wyRu1Og0l6csW3bOdN8ojjPSdNt+x8JhGMXfsqhoIhzgSZmDMysE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749564376; c=relaxed/simple;
	bh=6p3gmVNgeWpM5P5NgnZSHUvO6bicpNKcBnOP1+C75sg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mHmFilCse85MVGjs+tx9IMI0O34tkFJYW9eirWtXCknwCPeuuishxSWsTnjlUrxkG4XedD8eUS6iOpUz8P9P62luwXsjy43xSHQWe1MFZHCuBD8p30xm6HGW6bdpvGCpivo5OhInPcnkAU9g0+eApI9cUY0oHPbZXNfheo1Un1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=phRFrQBr; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a4ebbfb18fso482433f8f.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 07:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749564372; x=1750169172; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B4X7DaN4+Map/kL0OnjyI+6NxQr2TtGJmMy/gmAt3s4=;
        b=phRFrQBrljrcRCzfuzcSLVY8F1cEMQM0goN6M0zSxW66J6znJU6Q9pZLGeAiqVwaIn
         az293bo4P7Dk+saEKLx0Wyi9vjaeVwbuAP9ZFU/YpV0lMYn4UNww00h0kDC+h9GDJEC8
         fQylDdg8BwZpzdKTI+FAt7wB0VWnxnlS0S3vQhI2MQgxuGPLsOImfPJzAKhFseG0ctf4
         7fGU0Q//YtXIzFap3d+uSZrrmQNF3g6LqQ0FT+BWwS0PLNz7rrfeRQFtv16jFveWhCtI
         S2brltkB+K3b72TobMlfZpE+r7LBkpo4RNTsd7rZ1eZ+ajyCekbA2AUqsX5k0/63KUMz
         QwWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749564372; x=1750169172;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B4X7DaN4+Map/kL0OnjyI+6NxQr2TtGJmMy/gmAt3s4=;
        b=ZKplMnmWLhGp824bzGJX7cTm6ChgfRci/2Kcf59S74cNaPhdNrs6dse3jSxO5lGmW1
         80xAHcpJG6G07QgsXlPVJXDdc8T2ZtB+a+drkw5nr4NCr/M605XlHpergmSqwzssNFYs
         CxbXl+wQs34dzZsiSevvdKueVw3OZFhKSZ6Oni3CVu5ZYQh0W7WrpEa7vLkNQ03rVfij
         WA3aCC0yqzVhL7r/dUqlJOLVvqqTO9EpmIXLXevmeAFXA//v5GpNDuTb8FtGVXNYBDPr
         PTGhFZTYqEqjnEznxGHbFs0cbrh/YgSoRBTGANwRHWjSs4eJqSQDyoRMu48riBC4LvWV
         nwTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOkR6mZRIcJBu2K7atxKY3cnVfjT40oDnYP6g/eI3+aH+HqbQ/aEQXzGrT8sx+vOkMTNZvsDKLSpN3@vger.kernel.org
X-Gm-Message-State: AOJu0YxfxSPMgw3+InqC0SDEAtGZw8tVnc9+LAAuied2SsIY21tbIt6X
	nNGs+MU7Az0Z0dYe9K6lad/636w+ocWRmOsEDd9n/WwBd7ooz6q+Q+sf6bJ0PuqUVso=
X-Gm-Gg: ASbGncusQ5CPmOxhT6T4Mq4VXkYPjO9G3XmIC/Lv2/qbSAOSFC1FTbe93aIDR45ksFD
	4IdEdFmmnYIgpCn0IeHBXl60wmxjHuIVOyRSP4dxUifR7W4ocqelR31Q9GHysb+XdWThimZ66L1
	m4X/05vrwj2lZon0nBUSd8fiU8idT733aPh+/hhJbAZQuLTZVin3m0ZaDIJK1xR0lE+2PQNoMdw
	cQpsFHDo9LXNPJQEnSV0+2txHhs45oSWqiZD8AAQW9ZTV3OJO1Ywe3aE5oWgnk1ar2+RTrVFzG7
	M6wsxOeoZZJA6208NpawFCUjSDCnnMh1JMvHE2wwNv91pnxmzNDpOBjUAcwfCwZ3Z+G4qLjS42J
	6FobBXg==
X-Google-Smtp-Source: AGHT+IE1BPh9K0tsvS2irh9slIs2O8I2IOLea/2GWBdBPLJ7P+lih7SyOyAlCDTffkcTPSwFJR6kEQ==
X-Received: by 2002:a05:6000:4025:b0:3a4:eed9:755b with SMTP id ffacd0b85a97d-3a53315704amr4816797f8f.4.1749564371436;
        Tue, 10 Jun 2025 07:06:11 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a53244df06sm12734469f8f.69.2025.06.10.07.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 07:06:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 10 Jun 2025 16:05:39 +0200
Subject: [PATCH v6 01/17] dt-bindings: display/msm: dsi-phy-7nm: Add SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250610-b4-sm8750-display-v6-1-ee633e3ddbff@linaro.org>
References: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
In-Reply-To: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-clk@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=918;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=6p3gmVNgeWpM5P5NgnZSHUvO6bicpNKcBnOP1+C75sg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoSDu/qPyxSZr5uQgETQ9z+HGRjh6JyUCMstBR5
 md4b/PmrcmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEg7vwAKCRDBN2bmhouD
 1w0PD/9GgT8PUxfu86n+kcyB03P7Gw4/ycsNaJmnr0wzsebLzXby5oB6UEvkB4/MCKHhdpfDL/a
 rCvIquz/8M7jMhEgVw2yLc0MWBwcsPSOi5z6iTGHLz43eN5J5517ETTrsG45jucq4LgZ928YkKR
 /VNFmPklDDRNd0KZhw471vuGhtJg9/O7GJunrg8CAyJ3igcEL8Xa1E8mG2y9RG2RRffqzyjgeCO
 fp8uDttlMY1wsSc5dmzQl1JyAyBKfVVkKnZOiRXyurhb7i4zK/skjmu8LxsX1nuYO81VWbU0b0l
 fA3C0eob3/kyHYnNqbhWIDjElj0TF7hCB4FR9bfD3FDCeFDCb2U4GcBGVULVfTV37uIV8kNLIhk
 5idnNT7l5NP8UICj6wMB2HSt/wrAMWjfLKYabTLOy3C0Fw6vsKzw6dBg11Qj5+ieoQfWodyUWgQ
 C6AV97Yil29ylhmXcRpw32CoSVhidWRKQ7uGB9Eg3ATYfAQq5ZXgxYqCE68NfIbeMd6rM1HK/LE
 DwUHSLE8r9CMzY/PwbNSo/AQp8gSoWo+bnDne2/YBayYMzpOTQ1t/uBMnVyY6Cy3ssEGcolks0Z
 y+tYb1Wb7L/25zKlBFGwYvb8QAP1/E3ahn3jtAl93W3Da8yDfwC7zmqAfJ+ImEz198M1TOMqs1Q
 COEegQZ5A86rK4A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add DSI PHY v7.0 for Qualcomm SM8750 SoC which is quite different from
previous (SM8650) generation.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 3c75ff42999a59183d5c6f9ad164023d6361ac07..1ca820a500b725233e161f53cbbbd59406326876 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -25,6 +25,7 @@ properties:
       - qcom,sm8450-dsi-phy-5nm
       - qcom,sm8550-dsi-phy-4nm
       - qcom,sm8650-dsi-phy-4nm
+      - qcom,sm8750-dsi-phy-3nm
 
   reg:
     items:

-- 
2.45.2


