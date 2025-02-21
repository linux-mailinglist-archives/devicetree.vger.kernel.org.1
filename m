Return-Path: <devicetree+bounces-149447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBECFA3F898
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:27:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 246813BF73D
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 15:26:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00845215169;
	Fri, 21 Feb 2025 15:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="efBoMt0N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FA5215050
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 15:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740151505; cv=none; b=W4U/c8CHRNGUpsHvWfhQVqf0FmSN37kAJ3ScEFfRrwaIvrDbfFMKRy+qZf8amCGEJqhk88qH2Nyfzhat5YvFTpmkxacqJRWvJVSGo8W7uKdOkX3Bdmz9zj7TdDkJrDc6PYemkU1a2jGMh8/9vsC7QKrEwUOYNOpgKY6VdLO1ZW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740151505; c=relaxed/simple;
	bh=vM/Rhh3m/LDu1luem1JmpPvieCwNMZVHKpBxAm5wGsQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AGKUl7Y1/eKU8GcY26RG+rOjNrBa5l4FVkQIByFhyZSumOig86mBBEVrZsY55OXQdSujMagIm/35deBIxp8nWgEFx/WAvkAc5XGrPMbSXm0nqJV5DxrR49DyY2OFLtLPikf6MJP0530OP+hy5uXZRvCfar4U6FWMxft8YnS8gq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=efBoMt0N; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-abb88d2b67eso28370566b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 07:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740151502; x=1740756302; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FX08Ji8HI3+KbtFLo37LoGENRgVWTP1rrMFXfNP52RU=;
        b=efBoMt0NLPT8jrQQfyVgmzP5oewRUdasxn12YU6jseLk/TE6SMVvhjyk5lkFVaYAgb
         K3YWIvnZ6l8/dk+xvWHu3ibPkYypp7eBWgy0nqWeXWZSv4eVb2glnkafCiwrWdOnH+2s
         Hd8FaiMn/Ym0XBD4x1Ii71N4CMl3AcCV+fpzuGhH5SLjd68RLiDVw+TJHSMh5ld1zaUD
         5QXdltpK5kLDIDgJEyJLE0xUGaMxtfoF5My0iHv5zySqZrOs14GwxMTDvAODeUVWadsO
         VrS/l5EcD4EkuvISBfZwNCLql2m3NNNGJVO4NOEqoetg7IhiD0gkK9iPZWtZ3UkNYWzC
         n1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740151502; x=1740756302;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FX08Ji8HI3+KbtFLo37LoGENRgVWTP1rrMFXfNP52RU=;
        b=mT89GB8Nn914puweF+D9I9I2jSLPeIZE0QNRf3cjgZibbp7eRgsZiSZ0TtR4joe5uA
         +xYZ63FtPBkxkcy2mhFU27/sYmVzS9S+U5Q+5AODE5E0Of9D4wE9KBUeBcbu+JPO3h6t
         DVy9clvnE/Mt1nCM2XMXiYGlcEejJFz/Xb+gN6bCMty6EsIjcLtmBbkYi+OGmi0Uzn90
         4GopbmcU6wjZ0Y5hzkXPQm+LWirmsAzvzfI+2JkkDgL8rLTTBjWYGflvIziZUibuMOWu
         Zyf4ON7TyWFm42KsRpuxGE7Vhvv7JFKmc3IE4IlhjvHmXCLXKRAeYEPuRyd3blR1Vb2G
         64Yg==
X-Forwarded-Encrypted: i=1; AJvYcCW8ok9a0ai76iIvz9sjVR2/NWrnShUihFWyiw5S5VN+unq+97MnaPArbzrj0NNmjDYcDty4rQhGo7rF@vger.kernel.org
X-Gm-Message-State: AOJu0YzI1o+31sUsp0bim5Need9LuZt0bzStHhnexrs7eyBKQmoAE7F4
	IfJdwnX9gp0D4RfV9LrhmGheKWuQwvel6I8kStJ7IpJD9Ug+x31dUm4jB9tdWY4=
X-Gm-Gg: ASbGncsQ9wBZObUquyeahjqXbXxb4cOdQzklecj8k9S4CGyLtuEGQh5pvGAQBUxqdN4
	6tr2K07F/hfgTpR+exi8YI4VTd3Z8TF1zDJQLAl8fnlw7ZQ5JsJdX8f0Ab9Zopftjwed1TLcWg5
	8vE3cIfxFTof2Q8RsTv1rWVA74Kiky0LY6Qh7x9BbYVAXIAJYs8lbAPtUYPAgcY6Jn7kjT0IN0Y
	njqxV2P4WSPTQsVDLzwCPDevAfOAWptbV3UA+6w0AOujaalf09mriSIJQ57a/FK+fGkXnLVYxR1
	G8weK8pK6RoF4JL2bgQOl0/rQF83gyk1CIdRe9iXdE0TlSvC0EgQCX2vCwP6AQzzcgkT0sBP5gP
	x
X-Google-Smtp-Source: AGHT+IF8JcIcNLGFatnCq0HaW0NuMPpymfwFQbEEmh3gv2V8ShCQQ5aDqao2hSWR/5S30IuJoRYTIg==
X-Received: by 2002:a17:907:3d8e:b0:ab3:2719:ca30 with SMTP id a640c23a62f3a-abc09bcce60mr159917666b.10.1740151502274;
        Fri, 21 Feb 2025 07:25:02 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbaa56026fsm865456666b.113.2025.02.21.07.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 07:25:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 16:24:16 +0100
Subject: [PATCH v3 06/21] dt-bindings: display/msm: qcom,sm8650-dpu: Add
 SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-display-v3-6-3ea95b1630ea@linaro.org>
References: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
In-Reply-To: <20250221-b4-sm8750-display-v3-0-3ea95b1630ea@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Jonathan Marek <jonathan@marek.ca>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Clark <robdclark@chromium.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=943;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=vM/Rhh3m/LDu1luem1JmpPvieCwNMZVHKpBxAm5wGsQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuJqxZqvLkS7Sm+pYTmPzyxyD1ah6V8UqL7LVk
 Al+B54YAxOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iasQAKCRDBN2bmhouD
 14yRD/4hpTeve5G8gpNhRpsfE3K2tTI8bAm17okgIjLbmJY23bAm77DYOU+IcwU5VTIX+1ULQ36
 WayQMxJNrIp79EZQpLnwa2CIqN3/GP6Cts43HcA9M6kgu+nZ82zRLxEpGbMmCbvd71nR77S9KC1
 kH12EHfJAQ3FFbBkjgIdIo9of80KkfXoJjpefixITeHLMUpjekpCfupRGWzaRYEXIVW2ngfEVSG
 o6eifaDoXymOLra2l7sUZgsyv8Skk4lU/VowYgPq5KjHjmzWBVuR8vXNEbLUp0YZv7B3RAlD6vO
 4rIoqo6kBn9CLIRydM/lJmAHyXWtCCbGQLOtvNEMH7CQmok/ZZF9UAAn9EMYHY60tXSh0JiNvDQ
 FkkysUSPmNQ8nJd0wOBZg2I9C80uQyoe7EQL3DGrXKZbM5MD4tBfh0PVNjoiCtNeYFPpNaq3yqY
 8u68VBeehIKcpHPcgZe1JXmfdmsM7/172jbTkkISwcf6K88rGd6BqtpnDWFnr/0zpDH985s36TM
 CBx4LpwdSq77hY2BfPpmHUaGSu5dOgpxujzk7poef1twZJ5TBbP6M2FXQ1cLkspEjddfVe5hRwD
 c7qYE7zzyigGubfK58FbKxzyy2azap7z/epPZ7eEM1um62pbzqAHnx4/DnvN1VdnubRkLFSz0Jx
 BbN0FwMN1cttThw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add DPU for Qualcomm SM8750 SoC which has several differences, new
blocks and changes in registers, making it incompatible with SM8650.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index 01cf79bd754b491349c52c5aef49ba06e835d0bf..0a46120dd8680371ed031f7773859716f49c3aa1 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -16,6 +16,7 @@ properties:
     enum:
       - qcom,sa8775p-dpu
       - qcom,sm8650-dpu
+      - qcom,sm8750-dpu
       - qcom,x1e80100-dpu
 
   reg:

-- 
2.43.0


