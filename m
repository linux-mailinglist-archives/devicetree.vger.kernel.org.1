Return-Path: <devicetree+bounces-144280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE00DA2DAFA
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 06:07:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 226023A6EB7
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 05:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 278B213B2A4;
	Sun,  9 Feb 2025 05:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w0JhIudh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDB774C14
	for <devicetree@vger.kernel.org>; Sun,  9 Feb 2025 05:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739077614; cv=none; b=Fxv5RPQxyyduJMHSIkF3lUokL0pIwHKvOdQGFXkjzd8ohPUGnQsef+glvfXM3Ad+2QD16v24ZZ322F0lEFiCELqmdCKSynINaK8N3Wu6vJ1/oaFksbvZuVfUs3ppgiSwkTpajbXDNocG1b0Z3CxDLa/FZq9J7xSKmYgkyG2mXYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739077614; c=relaxed/simple;
	bh=NLSCP5E6ORI9H0QuM74oVHUl+a0F/vNbAQWYghqkTiw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kVhyYqm+zR7eEX9S2hD/nSAoIfMry/eq5urtos3izm/WGab7EIQHNe+6/Zz64CsCacwX3hxL/s4rcHTrB2AWN88iMtvOJkDM2yZ+4KM5aOkbmhWWEoba8Q4GLbaLQRVcekHyDlxJHDncy/ibtmt6tti9SHZE2NXhQDdyfBfvfys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w0JhIudh; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-543e47e93a3so3687862e87.2
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 21:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739077610; x=1739682410; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nTcdagHfVvJWdpzLDW5hzkEO6YN/7LPqkZiqmOtMZH8=;
        b=w0JhIudhmULBLKKGr9xFhxltuB1kZTIrqTvMYfwXDtrJzcik+WPA92TTLCiS+vqb9X
         XMXuD4riEbLT/EH/ZsdydrhH+uFmKx8mKomxyIfAZOhGdqb7pQ91YhlO0FjeXvl9tBri
         PlwfUXILGrEkNsAAdvBTZEPxtMU1PDgyq8cB1Aabh8GpkvKzCQgfV483qymlVL4Vn5a1
         DRSFX72FpMl+Cb3CaDOInb6NNy3d8DrC6efHt3bopcVRQ1w+BpOlBy2tG8wmRYVC5gME
         NDADXqCpd+6QeULYQfrhT+e4W7fPrRIBcWWqZdK2hrW0WT5AXHXlAzd0xjb3AAnOm6dD
         icNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739077610; x=1739682410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nTcdagHfVvJWdpzLDW5hzkEO6YN/7LPqkZiqmOtMZH8=;
        b=aGzpPG3FNxt5E1+5VV3L5zMDGenXwJWLM5y6U4ahhVP/8H8hi6y0bPrpb9iFJ6qr71
         LqkCKCGzWMpJD1nLJb2Cwrg5Gc7j7I+rQWpB0oBnJLemXWqpGMbJXHum7v/8MYCkgnZ9
         R29J2pjFQpauNiSB6w9oJNatcGq6JX0wL4iLTd+WUHop/wpxnskXgnNHr2W1MC0fipKA
         s2lTljRH3xV9mm0O+cKLIGQtGm7ZOvsyRb2/gxzTH/LakdfkzjWwTq1BBEhyC7Zl1RgC
         pcanvPyx3fxT7KLdxzACfDNAUptZyMfujB2T9KT1cn5zVSpSsDxTpqpwbUhirqGT+k9Q
         FKjg==
X-Forwarded-Encrypted: i=1; AJvYcCWJuRi3c2oDrWD4O87CD3HuV7UeIuwoCfx3qCwh3zcQLWD7ddfoRvkyeZSvIDtp2hTBtzuhH0DmJzBc@vger.kernel.org
X-Gm-Message-State: AOJu0YxlFkIukmBIpPHgpXu7xLop25sf52S0n8hry+b/wvipjL2aKA3f
	TSGTfCxV/Jcw2Dn0dVJJ4IBJHUj4PsyTXo+oOumyOgWPKC9uKz6KLuB+y0w2FRM=
X-Gm-Gg: ASbGnct2krTSuCnPXGib15rF4Zy3na5wwDypmT847kxg1rSO0XYjOUZRnX6qlI+RyCv
	PVfYNQvGdxS+6dxaXlRKj9/XD1wSjDCK/udUJjlbbosEavrbCw+0hfh+5cG04z1OZN5Zor0s68Z
	2IFL4JJ+pnPk3QkSMj6cQQp+nf3s8OvauKG/KJThhtuy7P1NXvQnSVr1AVumMxeFkElu+9neD77
	mwe02QqyAl48AXdkeTS82whPzqWI6Na0OzDoR48SDlgipI04gbpMUaOVEpxzUqp7nXgR/jnF1tg
	eS4NamsbEeJf+Y14rLBv+fA=
X-Google-Smtp-Source: AGHT+IEFXe5K8k+ix/TTKVKq9EFeSW9km/qit2DCh/DLsirowioK0KDRuuwtMc/zx6EiGq/Gs8hrxA==
X-Received: by 2002:a05:6512:2205:b0:545:576:cbd2 with SMTP id 2adb3069b0e04-54507bfa112mr584003e87.10.1739077610224;
        Sat, 08 Feb 2025 21:06:50 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54506ef1733sm245576e87.1.2025.02.08.21.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 21:06:49 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 09 Feb 2025 07:04:46 +0200
Subject: [PATCH v4 02/16] dt-bindings: display/msm: hdmi: drop hpd-gpios
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250209-fd-hdmi-hpd-v4-2-6224568ed87f@linaro.org>
References: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
In-Reply-To: <20250209-fd-hdmi-hpd-v4-0-6224568ed87f@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Simona Vetter <simona.vetter@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1438;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=NLSCP5E6ORI9H0QuM74oVHUl+a0F/vNbAQWYghqkTiw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnqDfhYclpOw8R2du6T24MrpOm7QjiPhE/g7GXP
 i/M4vlXimmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ6g34QAKCRCLPIo+Aiko
 1bNlCACw8jnIu5ritWEfsFqRqlft4maCais+D8f7xJZLStAU3zaKpA81oDi+4en7jDRNdsZKwTR
 gggCP29ILVZoZGLRsfYrFUbdVnSjGejPVwCyXS/x4+tby9pkAeheeDOhHxx3F1+XL4FWqUv2sdR
 RS/kMmNkTQI//eK08wp5ld2x+RDs66f/J21yrExwXeahWL9KacJuD1P1PRPUTIQCzsNw834YPny
 exHq0VzE1nH4db6YwrCrf4+h1hoz2IIXXh2LAIjesZE1cT2n426Kv5wR96kCUi0Ovzz++zkiiGR
 uwA7gar7slMJunZwgXtK5+AflEVpxjcM8yBfnXpM4OSqNowq
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Supporting simultaneous check of native HPD and the external GPIO proved
to be less stable than just native HPD. Drop the hpd-gpios from the
bindings. This is not a breaking change, since the HDMI block has been
using both GPIO _and_ internal HPD anyway. In case the native HPD
doesn't work users are urged to switch to specifying the hpd-gpios
property to the hdmi-connector device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/hdmi.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
index 7e6f776a047a00851e3e1e27fec3dabeed5242fd..a5ff7045a14be3b8106b3edf0033a8028a684529 100644
--- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
@@ -62,10 +62,6 @@ properties:
   core-vcc-supply:
     description: phandle to VCC supply regulator
 
-  hpd-gpios:
-    maxItems: 1
-    description: hpd pin
-
   '#sound-dai-cells':
     const: 1
 
@@ -178,7 +174,6 @@ examples:
       clocks = <&clk 61>,
                <&clk 72>,
                <&clk 98>;
-      hpd-gpios = <&msmgpio 72 GPIO_ACTIVE_HIGH>;
       core-vdda-supply = <&pm8921_hdmi_mvs>;
       hdmi-mux-supply = <&ext_3p3v>;
       pinctrl-names = "default", "sleep";

-- 
2.39.5


