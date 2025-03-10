Return-Path: <devicetree+bounces-156172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A87A59748
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:15:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 474673AB48E
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39D4422ACD4;
	Mon, 10 Mar 2025 14:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="of9/8G05"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E79622CBE5
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741616121; cv=none; b=W7O5KdU4F4tohBKFvwGcM19jwvn8FaO+lF6mKe3big/XDsvc4G+G+eHODus4bWB3zqdiGGHKVzsnqWqqfE3nDwXf/xIHJ3mfLcs5DszhQtlEEgke3P49/UBRZD/lH9qo/FmgNBjmcR98psHomg8zKYSc8wXwiPDbN/7aybf9sVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741616121; c=relaxed/simple;
	bh=VEQ4+hEeDHQ0ccw84pNvHcnSY7FOHv7KlXvL5LFijkY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Fohf8FIPf2OoEqZRLqmT2O2XinwPjzIVvrVaqTUhCup5GSUID+a3a6eXlrShKilFD7zgAtxLSvQm4qvpVNRgqiJVe4KPx1M10uY668Ow4sps2VG9gGTQm/23/Ww0B8sHM4OrLRynq0tYJcX9c6FQWTLr0xcOMjf3G3av8T8Oyug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=of9/8G05; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cf05f0c3eso8483975e9.0
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741616118; x=1742220918; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bmb5F0W6Z7jeeDJaB9XNcpqLpScSh5IgdYNKbsZAHXk=;
        b=of9/8G05eoTWP0n1P7No18h6mnOnOt6ib1x0GgJsWjwnrO7rI0pguTogo1gu++Kv+5
         9k8LvoZVIJGtPjb98xPj0H6fgfo5/B3jA3GTu+1AoPyBNJRXWY0mh6OanUKVwiFwr5CL
         cYWBZSW7H3OtymaTs+gL3BovQePuUlUm1rq/aqHgYYYBCzHmDlzNcJ2uwFrBbnI6e0Ee
         vsSGXnk1/+Fi2Ti5iAvptxY42l3DsOTcKIcLRXKbX5Cy1Kn4iHAZFzq6707cAZhVE+gq
         ykO5ex/HPMbp19nRzydbX4iJKcHbf3mBsmKaySK8ku1lTlNawwuGWVcvdFHlhRnZ7N01
         0/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741616118; x=1742220918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bmb5F0W6Z7jeeDJaB9XNcpqLpScSh5IgdYNKbsZAHXk=;
        b=ITDSW9PT1bHC0GQTnsO9E0rjTzF7DXGRhagE/1DhesDBTLUkrljVZBdkSfwtqXf9ky
         gFEYRWeT4FTvuSLLZj9sXv4TROE5/PDrfCEcB8FAiNCSxU7QJ2vUxLg96CTpJSVANom0
         Mosp1+mqg4aHXDNp6noH+7giMTkkBQR9nrz8p+E/AX1y/4rsgJ+vvLbxu0maCcUWF4hD
         ibj/60mE/tLHLsoI7bmqCPoJnBzsitYpysbpXRCbX7Fe9DkmnSjMMU9Lcl4AKxCdufcL
         obQ+qF2onBKFa3rndLw/AeTH4DX+68TIL+qL+4wYeyI6nG0sMTEGpYRQLXaGPFyOsPTa
         Z6Cg==
X-Forwarded-Encrypted: i=1; AJvYcCW7EkyRXl1v6wFND+/RKIvI7ubTq44CtNyQSSYyt2owi/Lt3Emu2XHVkGqyYmN//0W5frG3T1VrgeJG@vger.kernel.org
X-Gm-Message-State: AOJu0YzKU53f0iEYnGPYlxcUTKjhuxxTeFjaDOdCLnh51zeZ7MXAXxLE
	yf10ieN4vwU8fqnkhu16bCrWdHs36KcHbysFdtOJD2pw5Lxffg43m2kimGodZs4=
X-Gm-Gg: ASbGncsxw7wNLFebmDQT8rzzijiVtcJEuVk0GAZUsVkp7pzdlTuO9t0/fGnVMAl64WP
	uIpDn0pNlrcbIEKp68yZQAN4kGNWaoJAYkDgc+2nsQ7hOBnzETZWg9tQEMPs8swGu81DRzE8/rF
	KB8bGIWcKve/X8e+rKNTTC5eixdKKVaQucJ4EOpekI+FGV7Up3N6h0UuAdL3IZIOQxFycj9SWI1
	3pJ7tjajCdFUeYUS19XTsAu45+nW8RiiRqcxsPCy8qN9vRQUdmSuXPCKKYV9woVSsxDAGStpKLL
	XKbYEysBXqWHvfdBczbnnlNv4uO0MCX57F1sZXrq38evoVpWzf7Mxw==
X-Google-Smtp-Source: AGHT+IF6nMeJGjQ3VoeuLz0WsGtCfmOBe+MhQFbZffoJpmsn4bCNhptkAG0B7rxQUATmUtt6M9GZBA==
X-Received: by 2002:a05:600c:154d:b0:43d:160:cd97 with SMTP id 5b1f17b1804b1-43d0160cfb3mr1473885e9.25.1741616117589;
        Mon, 10 Mar 2025 07:15:17 -0700 (PDT)
Received: from hackbox.lan ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bdd8da097sm149824545e9.17.2025.03.10.07.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 07:15:17 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sre@kernel.org>
Subject: [PATCH v2 1/3] dt-bindings: arm: qcom: Document Lenovo ThinkPad T14s Gen 6 LCD and OLED
Date: Mon, 10 Mar 2025 16:15:02 +0200
Message-Id: <20250310141504.3008517-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310141504.3008517-1-abel.vesa@linaro.org>
References: <20250310141504.3008517-1-abel.vesa@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Due to the difference in how the panel backlight is being handled
between the OLED variant and LCD one, it is required to have two
separate DTBs.

So document the compatible string for both the OLED and LCD variants.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 618a87693ac1..6260839fe972 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1123,7 +1123,9 @@ properties:
 
       - items:
           - enum:
-              - lenovo,thinkpad-t14s
+              - lenovo,thinkpad-t14s-lcd
+              - lenovo,thinkpad-t14s-oled
+          - const: lenovo,thinkpad-t14s
           - const: qcom,x1e78100
           - const: qcom,x1e80100
 
-- 
2.34.1


