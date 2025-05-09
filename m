Return-Path: <devicetree+bounces-175428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD063AB0E14
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 11:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AE984E20D0
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21890276033;
	Fri,  9 May 2025 08:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c3PGZCVQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E60274677
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 08:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746781192; cv=none; b=sHItboSOrPWFXaWTi7VqSwLn9vOH6TKozpY9INyrDerRW5vTj+UN7NuVbEJfvNUQ3W/NRlAPGqKmDidd4rEBrmTpENIgWe64KBYg5HuWx3GopG5y0aP5o7hsXyTU86umLBy1fDTJJ9YN1TrUzJHe08FQdus3gZM/XM5+1WJIBmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746781192; c=relaxed/simple;
	bh=wFSO+bW0reZeJiU75auO+mE0Vw0w+a9HRouNJGN1GmI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rKDIe4HLlenw7YSdZNShL4AgH0Gq9A2oivHDYlLjRb+70ygOuvXCiULC/4UaIIohUZ11Or0oxAGmn/G8HDQMx1wPbMhlQE5wNM7PpwvS9JR5oIrZ51orjKY6CAQfKJqzXg5FuMytpwrGLMUisRm0Y3bM9Y35NIe0MK9AVbTA1q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c3PGZCVQ; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a1d8c09674so587755f8f.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 01:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746781188; x=1747385988; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ASnQFcWLigUiMmzLp6e/Ns1g9XB4PFwbLTaJMqYMfMM=;
        b=c3PGZCVQ4/0l7IqGD9UnY+rxidqiAANcXKWo4aAWabPlkgI0nnkSywci+fa8A2t8iJ
         wtJNb9zsge8MsR0m1/XfxTEVS4XGmT2Ve+T5vQjH/CgMOGjOTe7QGA3MKZaTObG0WW59
         GuOOrIpoJnYn8+8VLaejQZ/DBYLz9jsCxeuOQ4Mh+P2XkUFRTvTs674FAlM/QQV3RiWe
         7DXyGlw4QaQnN7q1ENwTIh+EfELAfO9o1qtz/uQS+KRiau9mFPjQRMewADVC/O+EHZBM
         SkdApxUjTd0XgzszFvTWmeOS7e2wNfvCvBnh4C7JFh1IdelV2DCbVT2AnocNt9wJgOlu
         +Yfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746781188; x=1747385988;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ASnQFcWLigUiMmzLp6e/Ns1g9XB4PFwbLTaJMqYMfMM=;
        b=Xgs9IWJL8kYFx5NfIH6AkFVva4m2rAAWDxGtNemTUqYbt7oEw9uhBfjYo2rnSG2bOH
         b0Wv8jeKuGzJ7N6HyqML2OhlINnjb9+NIm/dYpCevhB1eDeceyeg78ytWlr3CEwMDfq/
         8qP32kBMus4B/NDk6snnUDojQlF0ZW7lBL2OtZLl1Y+lrmMGPma9A7sH32a7A5cLp9pJ
         mii0KGPxaQoNP/9ChXV6GJeRwaIW18pPXnMJus7PRnl/8WUv2HYiuDEBHIzzFjZORDNW
         fk4Jx/4vfC6wfxkP63gxbXlbQ21yjhWqVWKFRKMyhbLV59LsgUIKqUDtNTIwLM2/ZOab
         Hg7w==
X-Forwarded-Encrypted: i=1; AJvYcCWNqFDcTIyW8uE7bvOhEisi7+85nLSALwG4xW0R7nbNMUVVMfFPXd1jMtEJJ3Bx89vtMxaJS2GWW/oy@vger.kernel.org
X-Gm-Message-State: AOJu0YwTcL0+eB/19FPqc5hbucvwCeAniPc2RNxmd3TPz2vJ0G5JhAMi
	95ncYSA0smHH6FAEnAopbsPuLIc3xQly4D9I0Sjjg1GO3hNc9sgXssatYr15gwI=
X-Gm-Gg: ASbGncvmqDianxIC4NL2lWVEJQoOzLyqs5kbefZe8grgtw6hl6DOSllvSUj25sQ9ddf
	WC6opkYuwRRzhHcnQ/f+2/XWsfDMtpVpj77mdChFseJ+JVbpYEMNkACgovjmls7RvVaA/TAuh9N
	wYEpHEOHAVeE4TfWU1wcEbh6DlypRZ10VwVeqjiBzvzDQJLumY5fY1Xbseke7NBqjlbVBtfW3D2
	3/bGqyfGjS7Tfe1FgICZ6k+Q7fZ4lnP307OfXbK8ft2sU0OVa5j1RlswmngX4qag2vXBR+/BtUd
	6ssCFVEEeQA/1VU/ADnaHvjZLmbRfUB7CZm38P4H32EmCRIlauntjdPQQSCLlA==
X-Google-Smtp-Source: AGHT+IFx+LSi2P1gg9frBl/nSRpkctm4QwBWfWv5N/4i2O+LQgr/nmgIxLSi06bFssUOA42kmzpd6A==
X-Received: by 2002:a05:6000:2485:b0:3a0:af63:c35d with SMTP id ffacd0b85a97d-3a1f64374ecmr1989939f8f.19.1746781188481;
        Fri, 09 May 2025 01:59:48 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442d67df639sm22369115e9.13.2025.05.09.01.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 01:59:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 09 May 2025 10:59:42 +0200
Subject: [PATCH v2 4/6] drm/panel: visionox-rm69299: switch to
 devm_regulator_bulk_get_const()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-topic-misc-shift6-panel-v2-4-c2c2d52abd51@linaro.org>
References: <20250509-topic-misc-shift6-panel-v2-0-c2c2d52abd51@linaro.org>
In-Reply-To: <20250509-topic-misc-shift6-panel-v2-0-c2c2d52abd51@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Casey Connolly <casey.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2466;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=wFSO+bW0reZeJiU75auO+mE0Vw0w+a9HRouNJGN1GmI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoHcP+ZjUj+MNthAC93tQv3yVpyEM9usXDnu07Lj43
 mCpk3guJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaB3D/gAKCRB33NvayMhJ0SYTD/
 9VRHzPDa8DYPUdooooCuzwmLoXMZnZugd889qT8G8CNT/ZozZGTaiHrOJpsKSK+EknLoqyZJT5aOUS
 AqWLY6WHZAGqJbOJLRqb8FkkZh1OQl869dnu4BkwAXwc53gHCC5pTmGD/DaOBYERoN1BMUTd50biBX
 CkdgdQJKrsvt7K3QdW+5VbrxgzjM8aIrrf7DmpPnVgKQNAh5ZlW4OG+YnpTrsF9nr6M7doqweQ8nYa
 8NxOTKZjZVnFbtc3feajhdNygqgDFPgNPWE5NSFWXY0qrgUKOXsjD/cS8tcA1f1sOkVKkmYrOPz/4b
 WsVA+zPgI66uPgYmJ+0mO82IfeaitLKGolj8qwKoX7p+bJCY3d5rpMj0XbhfG834BHWNAEShJgLGnO
 UW06Uh9IfoqcG33stlgxBhQAupWS79snZWJ8KLHwyhPi7IqgkDae15J11/bmo00aOo7SvTs2W1R5XV
 B5qcTqFwgYsTvNrXsjl6LAG9MZBcTCcbvSc4ih+7M+yL1nHwhArjcT5KvZIRnMyGch+Edj+WzmKmqk
 cVmCodLXMqBdghsH3f4N00AN4qKv8Hk6P90LY5XnHbDA22FX/MdFKFcSHZKcup+yEU9ut9HARqWyt9
 BW/CP3DfhEtcqfG7CoWtpnnfOViR+TEgbPc/yzy67uNCK9D+nYL6OlqrW/+w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Switch to devm_regulator_bulk_get_const() to move the supply
data to const.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/panel/panel-visionox-rm69299.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-visionox-rm69299.c b/drivers/gpu/drm/panel/panel-visionox-rm69299.c
index c3c14150a5546512151fb15c8e9a91269ca21c65..fe921d5fb1942c47c5b849e827c244d7fbde25a3 100644
--- a/drivers/gpu/drm/panel/panel-visionox-rm69299.c
+++ b/drivers/gpu/drm/panel/panel-visionox-rm69299.c
@@ -24,12 +24,17 @@ struct visionox_rm69299_panel_desc {
 
 struct visionox_rm69299 {
 	struct drm_panel panel;
-	struct regulator_bulk_data supplies[2];
+	struct regulator_bulk_data *supplies;
 	struct gpio_desc *reset_gpio;
 	struct mipi_dsi_device *dsi;
 	const struct visionox_rm69299_panel_desc *desc;
 };
 
+static const struct regulator_bulk_data visionox_rm69299_supplies[] = {
+	{ .supply = "vdda", .init_load_uA = 32000 },
+	{ .supply = "vdd3p3", .init_load_uA = 13200 },
+};
+
 static const u8 visionox_rm69299_1080x2248_60hz_init_seq[][2] = {
 	{ 0xfe, 0x00 }, { 0xc2, 0x08 }, { 0x35, 0x00 }, { 0x51, 0xff },
 };
@@ -43,7 +48,8 @@ static int visionox_rm69299_power_on(struct visionox_rm69299 *ctx)
 {
 	int ret;
 
-	ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
+	ret = regulator_bulk_enable(ARRAY_SIZE(visionox_rm69299_supplies),
+				    ctx->supplies);
 	if (ret < 0)
 		return ret;
 
@@ -66,7 +72,8 @@ static int visionox_rm69299_power_off(struct visionox_rm69299 *ctx)
 {
 	gpiod_set_value(ctx->reset_gpio, 0);
 
-	return regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
+	return regulator_bulk_disable(ARRAY_SIZE(visionox_rm69299_supplies),
+				      ctx->supplies);
 }
 
 static int visionox_rm69299_unprepare(struct drm_panel *panel)
@@ -172,12 +179,8 @@ static int visionox_rm69299_probe(struct mipi_dsi_device *dsi)
 
 	ctx->dsi = dsi;
 
-	ctx->supplies[0].supply = "vdda";
-	ctx->supplies[0].init_load_uA = 32000;
-	ctx->supplies[1].supply = "vdd3p3";
-	ctx->supplies[1].init_load_uA = 13200;
-
-	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ctx->supplies), ctx->supplies);
+	ret = devm_regulator_bulk_get_const(dev, ARRAY_SIZE(visionox_rm69299_supplies),
+					    visionox_rm69299_supplies, &ctx->supplies);
 	if (ret < 0)
 		return ret;
 

-- 
2.34.1


