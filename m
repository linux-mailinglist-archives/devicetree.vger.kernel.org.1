Return-Path: <devicetree+bounces-206905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 45409B2DF1F
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 16:23:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D8CE1C8383B
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 14:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF05276054;
	Wed, 20 Aug 2025 14:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M8iRmPd9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AF0273D6D
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 14:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755699476; cv=none; b=VbCf/AVfuek//3wgEWSuPKi/07+mlXIkZaInKTpAR+/nsRSHWXRPOBkf9Nj0bY/LgsGGCszkyiQSzZ6MH4Psp1tGBv2hMiNMdF7QLhIauzeFdMqvpisph8JIcMt4+kSYOsoFF5LnnXbKqzyZQ7yPRDqRXncGrqVDdFTOhMnVYl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755699476; c=relaxed/simple;
	bh=/izB6gBIA3K/m3qcFUJBSak3FLjzHZUWp+/J02pD0ac=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aGF3LSR3xNkrXkSB2MPUVTRe1ehGZ0JRyYeOF+Xl96oGktFVkp84XMGKvQBPBUZBl2z7vC+iPnTHwp4SF0KF1zzAOjt4Sp0SdmpKUm/ZAxm0knbhy+M18DeLPpss3h4vXSc6AITFCHSauo7mGa3OAJUJfzX47K1iqhzZddZxcbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M8iRmPd9; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-61a54560c1fso499300a12.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 07:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755699472; x=1756304272; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=URpbi4pDupU0ar37Ye27L+XUpBCcJFcEEzJPkVZbTwU=;
        b=M8iRmPd9XszNlUoEXrBZVD41GxSBPYo79ra6ztA3dHWLh37GQl6wxsciITtLCV8VdA
         SbDBG6J6mSBXLky/TfKlEPQdof8yk6cYC3WO0emBBC1aEUwaun8S00Tn5i+6EMb4NjY/
         s4qAFtyp0VcCcMNePIFmuP58TAPKjMgBLKVkrqhDzZduR8qbdzM1Ns+AJMYlwANqwb7D
         jGzI7rOBvtNGSoXXEWo9J1BSfC+n86MN1uLOQp3lscz77iusXQaSkEPzfYfnEKiMrQky
         sPR670NLV32wC8eBq+4NVYoIdFZ8h9173vANg3eB9L6NkYNytmv0QF/QUbz39k70cdQt
         ZSVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755699472; x=1756304272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=URpbi4pDupU0ar37Ye27L+XUpBCcJFcEEzJPkVZbTwU=;
        b=ij3nXUhwb4a2TzfdT/YJvT/38VYZiA3WXDfy+D8lwRAb6HCQqqa9AK4pp/Vy2MJWTN
         8jHP9d6McdT7Anc6MbQDdyc3UwRzMQx7BES2lUmh5Be0nfADqbMMJ6RTsxUMSGJeg1bU
         bAIrezPvU5kumMN1ZKd0wgLGre1IDgZQBzxqXElMNBeo1eIR7/LE+FJltsy9qd+1cJgd
         MfB1cNAJTWP5vluRwExlW7xiVJ6XyNswoym9TLbvCWxGphPE2odJL2tIcB24Bc7+DTTb
         yIzPkH/9SqLCkaORYt1RqsyonqtZqTC8S4qYV9S9XZB8NcEC7r2yqDhFTFtHyGNDaod9
         8TgA==
X-Forwarded-Encrypted: i=1; AJvYcCVvzKUIddk2E5YNxTC1gTdIvYCdOeErAhklpWdRe/33eFo2RjVelW2oZBvB14XBb5Fs44o9qRcWE4qN@vger.kernel.org
X-Gm-Message-State: AOJu0YzFpz9OPtieHbyHBzZPn839ha7myDOi7aWOr0fUd5BdOTMUNYW3
	h/Q2CBnfj3pEfDe2mXajYAmIv09q+0qxtu/pwmzhVEXDbqiiXU8VM4W8RGyf0S10CzI=
X-Gm-Gg: ASbGncun07S61m99kl00v7pJMmPaH8i++yYNOxAOo7+5hSxeN+d2e6eJ1C9+QTFjf9z
	gl7Pcaf9QLXUqzL5sWhpuvn0rFb0bhahF4D/ViNncacdrod/zcjKxCZtlGWi5oTFPgOqfiCbglI
	b36ulix1NiPdVQPPE4JqzL0IRlgeSInDd/j8maWRnUvWoEc+K3F3yScMTuGCQ2fQYUBVY97fr/V
	mldv3tniq1cd0OyICFyu4c2XsVJFOrbqqK+TUZNYKvsvF7Ec8MmJ9c7ZkpsVuuuRxaq3HQYYP3C
	hI3sa8r8LV2zKDTfPgyjTqGerGQB316ylawx5UyMTxLpmva+yFgbsLH34/FLFNFDH00GqJqFyWy
	3Hjt/tMyZcpim6nxU1RXXZ41cOPRMGbXfH0dIQUk=
X-Google-Smtp-Source: AGHT+IES/Jpr2bblhYPYlVvqT4FUQdP5A1r73/aT+walwE4It2pGENTB8ZRS/pZIeQZcjJUqlIBmrw==
X-Received: by 2002:a05:6402:3553:b0:618:227b:8848 with SMTP id 4fb4d7f45d1cf-61a978521f9mr1217721a12.7.1755699472423;
        Wed, 20 Aug 2025 07:17:52 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded4796f3sm186541066b.61.2025.08.20.07.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 07:17:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 20 Aug 2025 16:17:38 +0200
Subject: [PATCH v2 3/3] dt-bindings: display: rockchip,dw-mipi-dsi: Narrow
 clocks for rockchip,rk3288-mipi-dsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-dt-bindings-display-v2-3-91e2ccba3d4e@linaro.org>
References: <20250820-dt-bindings-display-v2-0-91e2ccba3d4e@linaro.org>
In-Reply-To: <20250820-dt-bindings-display-v2-0-91e2ccba3d4e@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "H. Nikolaus Schaller" <hns@goldelico.com>, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1104;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=/izB6gBIA3K/m3qcFUJBSak3FLjzHZUWp+/J02pD0ac=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopdkHcAbOwcQtqQgqj7ZYeVzJwPpe0IzMwnRAd
 uYCfwZnO0CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKXZBwAKCRDBN2bmhouD
 1wg0D/9GLhAD7MQiXQ7UofV+rdMNcDfh8bSRGHzYgh0CW1ZfMD8B+RvKKD4E95jNLL9hAuECz0v
 ovPUq9BoXz/WW6WfgIobTk3angg8dY30rG59XdQGmsdxouZ8s7Hbn94Or3nan3LLC0CChJqBAPA
 5fSzIQMsm1rZ6cfIP/ZF22ZEHF11eMcK/bRE3Jg6+6aZbFhVQ94X0AWHhY3OezSwClM148lwnLW
 oiPop0xxBGVJqNegBJFeL3HbnVHj47geT53xq5Cg5FW7wD18sjwX1r4RutWrR2rs1E+W2W93L8P
 6zlsOQBGAG2dH4kd2NkeVGbnembzaE9TAe9eb5p3QhEafEJVo8N3E29cGqQMtr1+cu2NWckPgVq
 HuLtBwuUaYsrSKbbPc8yrLiJPcvuSKycZtoI8EoH45A/slz+8NYm+K14kDejdLFt7vRC6Y4z8yG
 Ef59nXFgGEj1IssG80ofef1C2dm8c7i6WfQvH7pMj6oiBuqGfsu7yoPTw8TIStF6jGTJMYfVc8r
 6bzMS5NlISJSmvIbMphzbZ6Rs3n6ZqyMKZzOglCbIxEYm1h1DlGO10auQm10ib6/zVrfA/pfSIa
 w1yzKXXO8Syn+jtNF1y5a44WKVMe+xSKydRTpiFZP+1+J+nToDDVLKFJwR9J8Qzh+s5FQhs9Nwl
 veFTqiQi3OAnk7Q==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The binding allows in top-level from one to four clocks and each variant
narrows the choice, but rockchip,rk3288-mipi-dsi missed the minItems.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Fix subject typo
2. Rb tag
---
 .../devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index 0881e82deb1105e4f92843380c0183569f688f08..c59df3c1a3f78ae0d345dc725f4dfb3eedb3de22 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -97,9 +97,11 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 2
           maxItems: 2
 
         clock-names:
+          minItems: 2
           maxItems: 2
 
   - if:

-- 
2.48.1


