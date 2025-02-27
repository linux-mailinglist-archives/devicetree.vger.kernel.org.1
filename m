Return-Path: <devicetree+bounces-151810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4DBA472F8
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 03:35:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8FEB168C75
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 02:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF2121B982C;
	Thu, 27 Feb 2025 02:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fe0Iwat8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902341B4223
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 02:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740623121; cv=none; b=I3hKFzCWu/hbhqx6iMbjXChlqtICLS9rjZvThsuYJUUq9qLDthxvjmGnB0voF7M0UwTXLHdYgrJ/3fI3MB1zpOttb65q8ZmBW3BvsC/XN1succW6IVybs6rOhsP77+wF5WJSWnPDfGYBg252Coa3b3vV8x2VutPaosmnqpkKAAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740623121; c=relaxed/simple;
	bh=nAUeCQaacPy4eDcat81zyQ4FPPYgERyNRUqIhBqqdZk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MtmeWUx4pMQGl16i86P0yUnvZOdQlnxzsTejMu4afIk1g9+Z6YpVv953ZZAu/EVx/Sh1Ni1WVYqsSOqJVGrEc8WoqJKv5ob1pYTES1M7beiT5YxX0aOm8Ej+Ykyrs1fGUGM91iTGdaNdyn025Gv5tdCOJyWUjAAkzzkMOvNlPTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fe0Iwat8; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-546210287c1so382143e87.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 18:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740623117; x=1741227917; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q5U2PqqsAittXp536ew/SvCsut9jyzjmr2ENiR9whTM=;
        b=fe0Iwat8PSyTJHnfernuyaXQg+VzMR7fYt+dawgcoy8UrssofBvXn3qZDXII07mBzI
         Zrpaoep+biBhvgySYGOAoSEII+aIw2GOVC1xwAh0/9x+HHvXz1yj2t3fyYyIxW7+zR9M
         /BPe12JT6sPoCENA5boLHHEJEDE1Sew02uHyyC+lsB6N1+j1ssPfQRAhTLl+4tjFvUmI
         D9khVF7SOB/Ob9es4EPAyfTabH4iwOPbuPVFU0fgjMnQCpbR06MM2zfZze9Q3dtFQvBx
         Z0MbCvPKcODqr7DjpaSabiNN0YnyNb95vPjGnUWJUb2YXwZk9PmkcZkBn4qwIiF1bdwT
         Wvmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740623117; x=1741227917;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q5U2PqqsAittXp536ew/SvCsut9jyzjmr2ENiR9whTM=;
        b=hS+AYM+NU3CAXauVaNj/QPnZlW8ZzApvI+c4+XYS/JvsAucxZnhvZk+NtQCbnLOj9i
         OaNngEwgwf5tjZIMAvcgIClhLS9mTZVSO1fO/ICGnverpmDoKq+KvQI0mr3QtZTs1Evk
         ERg2OPSfLaO5inK1Ssm6y0WTDCDMJh2LGkJ4b/aYJAQKniZgUXdB4dD3y+Ebfdkt8Z3b
         eHorD94HHzLvYOnKMfBZh4RqRdgbUmPcEjt8LxPZmuQkHKK9C9rBYqYt2VTV3+L8mV2r
         xEVupcd9k9lhdLurEHITDVdbp2MnHCt+GSnLBT932lVqULvXrNZc/cYwBdR7+sbEIcSl
         b6dw==
X-Forwarded-Encrypted: i=1; AJvYcCXUS2Z2Nl6u0G0Qd4YirBM6roGvmEKdmqGldPF69n+sQWh6u8efjz/R+ziQzdvd4nzTVZiWeWlRbFzq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2oVWGDRsfiQr2E+YxZSTiLTBVbKPbFdkx74kFBJHVu1fZNTyq
	yZvuahf0Txzqr0dP5JhFYuJfOdDe0/hWSlPwgvelJcso+lj/dL7C9oXcxgfenSA=
X-Gm-Gg: ASbGncu2jUDPDRTnFeJTR4LsJ9TJ74Aw96BXZj5F9ou9l+c3EswnCxTmGoM4m+3Fqun
	x21SAQn7wGHXQkLkIkEeI1ypdshsc3WKMEdbcRlLys/PzkLKYTAQNVdnpqHhq6lebPpmukv0kY7
	zcLqEXH76f5u6mmTM2QstDWXb9bV4HyAsh1FcKc55jxpDHHwI+OArrTXNNHzSuk2u4PCi4h/0pU
	2LwECmzVy1oNxpaALHQIW24Mqsgv/0xyvnLdyTfR8VyxkX3fVfdBlIiDxCciWY2vfuv/5H1MIcF
	24T863JKAh4uxuc/2F5BGnfXPk+AFKLrXg==
X-Google-Smtp-Source: AGHT+IGGp9KrMaDyRbIC/wTKqo5mY4JxnEPl4O+DeJ+ybSnTzA3m+DKpiJplqcNL8wwlCZUgExesLg==
X-Received: by 2002:a05:6512:2347:b0:545:27f0:7b6f with SMTP id 2adb3069b0e04-5483912fc82mr11153371e87.11.1740623116670;
        Wed, 26 Feb 2025 18:25:16 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549441742a0sm48067e87.5.2025.02.26.18.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 18:25:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 27 Feb 2025 04:25:09 +0200
Subject: [PATCH v3 1/7] dt-bindings: display: msm: mdp4: add LCDC clock and
 PLL source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250227-fd-mdp4-lvds-v3-1-c983788987ae@linaro.org>
References: <20250227-fd-mdp4-lvds-v3-0-c983788987ae@linaro.org>
In-Reply-To: <20250227-fd-mdp4-lvds-v3-0-c983788987ae@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1289;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=nAUeCQaacPy4eDcat81zyQ4FPPYgERyNRUqIhBqqdZk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnv80G1AVXjPfLNQ8ur8MgA/B8hG0n9UdJwoFEA
 3JcymoX9+mJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ7/NBgAKCRCLPIo+Aiko
 1UNWCAChp9UJAPMKWIwQHWroB0P5YvcwUfqq3siqgw9PBarSlLO0xCgLeBDo/2zRn2E+OHq7oxB
 EmRoXMsWHJwSDbHd8/uyWb66SkpVKZH+xtYPJyBTBj7it/qpWjOMK7EZM75sHAWwwTnGgaimA+a
 /cW/3uQeNEnukCV2+c6OzEV5W5tkVLvoMuvzzMcoraJPl4sTKCU5++fBGoSYx5ZgR+Wih7rOQ/C
 l8v7QSCRHn0omGtFc4ZyVSG/jdTn1bcAFVzUXf954MGo5XJwxeRwGPM4dTCFt4kD3iBzdMoSO1f
 Z+5iseXm/gQaIZ2W5cMZcQ5bKfMJYmBK4k8CM0b554psYjFr
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add the LCDC / LVDS clock input and the XO used to drive internal LVDS
PLL to MDP4 controller bindings. The controller also provides LVDS PHY
PLL, so add optional #clock-cells to the device.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/mdp4.yaml | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/mdp4.yaml b/Documentation/devicetree/bindings/display/msm/mdp4.yaml
index 35204a2875795e2c1f7582c8fab227f8a9107ed9..03ee09faa335f332259b64a42eefa3ec199b8e03 100644
--- a/Documentation/devicetree/bindings/display/msm/mdp4.yaml
+++ b/Documentation/devicetree/bindings/display/msm/mdp4.yaml
@@ -18,9 +18,10 @@ properties:
 
   clocks:
     minItems: 6
-    maxItems: 6
+    maxItems: 8
 
   clock-names:
+    minItems: 6
     items:
       - const: core_clk
       - const: iface_clk
@@ -28,6 +29,12 @@ properties:
       - const: lut_clk
       - const: hdmi_clk
       - const: tv_clk
+      - const: lcdc_clk
+      - const: pxo
+        description: XO used to drive the internal LVDS PLL
+
+  '#clock-cells':
+    const: 0
 
   reg:
     maxItems: 1

-- 
2.39.5


