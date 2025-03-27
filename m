Return-Path: <devicetree+bounces-161198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E0A72D4E
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 11:07:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34024188A923
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 10:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1936720E03B;
	Thu, 27 Mar 2025 10:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hIVhyRMl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF4F20DD6D
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 10:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743070005; cv=none; b=qRJFaG4OXyszaJ22GFvIB5nAr+5NAWY2AQlSjNy6q86ZOzroq5eR+Y95Jzjgf7YF+2tzDpj5okdcmXWrBs6+8g6ETl8n2Ln1sNkPqg1H7jmEU59+RCSSXoQij96y+EOCIAn6uQYOPAL5OXRd/Hn9nuEo8o2hwfxhNXWed7fouvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743070005; c=relaxed/simple;
	bh=nzVmJfufed+ekMZEjdRDlysNfkHvhI2RIGmGqRITGrI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EMInsRxXghJhrMl6AFTan/aIktnM2N+ruIlK/R39UDUZjB+pPL6/MwkaYWM7V6paevT5nxsqiGXaWHMgYjLNttd5xtGXCgXX6kVNf/lyzXR5GWP9K7xeR0NrnM56Qnij9avXi1cnqmQPGyMlfwTzHWWYRFLTC1RWPc5nHtjrfPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hIVhyRMl; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43bb6b0b898so7723555e9.1
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 03:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743070001; x=1743674801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fGhDhYESbCVLGZrKJ7EvUOhY/AIfq8zAGCvPtzsm0PA=;
        b=hIVhyRMlKMflEvXMQV5ueApdn2nsXlgpeaCM9JWCGQkxyJulKbXdd45LpKvySlItim
         k65fJ47tK3jbdraszg9XVWmZzLlIt1dyxTxNhiTACiQPr/ulfYCogspa21ZyyzsQHayL
         S5tPVKrTIMI4uF2GR3eHR9BFADKcW9g18hnDMaBejnTc1T3HqTahJXS/meA20lFGWhy/
         igohQcXtGV1cziaT3TWlYj9PlGJZIFNEI2cHDDGxpRk9mDNwe1PdrAs1a1dS+7TnBjY4
         47GjbWeIac9/B4oR9dq0Lsa/Wix39xD2UfoGVfsNkTLSECZ9WQxh1QxtlnpBRMS+5hgM
         a/9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743070001; x=1743674801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fGhDhYESbCVLGZrKJ7EvUOhY/AIfq8zAGCvPtzsm0PA=;
        b=J3vC505uLbtji4i0UsC1iENPCW3RFHhOYna/nGTORrMIdYVKqM1fv+vA07YNPy691+
         jbsN7H+S8SNg2Z5jaJkWfbJQ3zpyJIjEPPd5iKvMnR4vyADYjqmWyd3eaEz360zmBh9w
         CeNiDPvOqgupeUiBDqhIypiLxutEiK9McXQeiBbb3ObRkyvloCKg+slA2KfGIz9Pq5oZ
         n/5ww2fTryQEIxyuPd+CI/ZTTEiYLIAVJIqnKUN7GDwcQyYLY1Ojh+Ez8NXPTur7FORW
         Sd+0UuuYiMVcxBNbWIG8g6wci4Drw29mQNa91D9egflF1Pj9oorG3n8FeoHm3EEf0ngk
         R+Fg==
X-Forwarded-Encrypted: i=1; AJvYcCXHigaChhdfcs2KF3KA0BBLY0aqVRec/EjsWTnew0ifCItk2Yl9LyfRZGFYlsQPfn75m0qpSC+K5NRE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyc8QFKk+Jwt23hcZ95mMuxyNhOLfPLXeQvJ2gDvcWDoahh/bbm
	PUX3jBbjZeIf277EJtPym6/bFTM/w08rOYB2VGJJ/YJormHZg1V7UGMGsRImnlg=
X-Gm-Gg: ASbGncvmiO/Ipy0OPkj/y4ghMYz7OtIHsYDXs1WMPflohYgwBOcB0hyB02BYjS5ST70
	exR1DO/Fgk9f89z7Rf9ZLYkTrajABjRByvbLdD3R3KX9gwaYhF14PAKDXZjOY5J39QmyOoCgSR6
	JtT4iaU4XCMNOF3qCI/m+3BgSI09+w4diDiHltKjoHKVdS3VER9OyM1hnApBCQ4kcGT8gHU9jp+
	9lCa6UVCTc3TSapy+098JCdwe1E70WlA427+cf0x4ZAxFgXBPNUZmVD0zzFGRXdGz4Bq0P9Rzuk
	Yye0eBqBeCrpOGX6j7aeJI1jIxAHUDoOo9/tOxINSp99Ahex1ew9BFIgcz3UymguI1H7M3Y04sb
	1LrXR
X-Google-Smtp-Source: AGHT+IHbYEkEV56STjfU0lTRDtdedS8WvMVSd1pZC2L1XQBbBW4aRCx0Kn4wXUGWvcbo2+wiKfBSJQ==
X-Received: by 2002:a5d:5f42:0:b0:399:6ad6:34 with SMTP id ffacd0b85a97d-39ad1760701mr2932999f8f.35.1743070001456;
        Thu, 27 Mar 2025 03:06:41 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39ac3ce3dd1sm10843204f8f.88.2025.03.27.03.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 03:06:40 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: peda@axentia.se,
	broonie@kernel.org,
	andersson@kernel.org,
	krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com,
	luca.ceresoli@bootlin.com,
	zhoubinbin@loongson.cn,
	paulha@opensource.cirrus.com,
	lgirdwood@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@oss.qualcomm.com,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 1/6] dt-bindings: mux: add optional regulator binding to gpio mux
Date: Thu, 27 Mar 2025 10:06:28 +0000
Message-Id: <20250327100633.11530-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
References: <20250327100633.11530-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On some platforms to minimise pop and click during switching between
CTIA and OMTP headset an additional HiFi Mux Switch is used. Most common
case is that this switch is switched on by default, but on some
platforms this needs a regulator enable. One such platform is Lenovo
T14s.

This patch adds required bindings in gpio-mux to add such optional regulator.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/mux/gpio-mux.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
index b597c1f2c577..ef7e33ec85d4 100644
--- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
+++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
@@ -25,6 +25,10 @@ properties:
     description:
       List of gpios used to control the multiplexer, least significant bit first.
 
+  mux-supply:
+    description:
+      Regulator to power on the multiplexer.
+
   '#mux-control-cells':
     enum: [ 0, 1 ]
 
-- 
2.39.5


