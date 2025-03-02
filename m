Return-Path: <devicetree+bounces-152992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C81A4AEEF
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 03:50:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72C25189479A
	for <lists+devicetree@lfdr.de>; Sun,  2 Mar 2025 02:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D7B428E37;
	Sun,  2 Mar 2025 02:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ij8evwgD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB703594F
	for <devicetree@vger.kernel.org>; Sun,  2 Mar 2025 02:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740883806; cv=none; b=Wad1BEUtyDj/P8OoATtfQcNgGmVg9JPwD5WHOXrMuSYa4TPz3iOl67IvvhAEvGFz1KtL84BlZNjENuS1S+qtUVktWi/4BTynLg9zgOGIbLOsLKe73Nd5Id7I/HOhz2Tuar41cEMd0Gt3ExUM8gr45qsyGvVBHkfP56S9ClXUWWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740883806; c=relaxed/simple;
	bh=6ScO6d/vD41aSSHc3m/TNsRC6O9XMMje0w18/CgtKz8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zgw+diJDRPhVVmqHF33HlkK/OyLD7yub0Rglo/pz3skAXpfKTetmYCFgpbI51oaCaA65gt/GzbB2yCZ0XTYHN8mBl95fPHumb11Q6ShwRcWA9a4f2X4vGXXr2K3id7a2hcqqYoVMoCpqbRkd54NW326tp222yLJ+B1xnTZw+dQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ij8evwgD; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-390ddf037ffso1563334f8f.2
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 18:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740883803; x=1741488603; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l2dsCl7aelSQACC2hAibA/NG78Rv8OzFHgcMb4grt70=;
        b=Ij8evwgDClxjlp7aRRkY0MPflAHB4vWSlNW6KEJgh+0topDBtTtfND5BKOS/cllZuQ
         KqdfebTv8GJGJsXGuJjTSfXVmOGejOIWBi8hyFd3fZGhPLR+3pwIhX/KpOQ+N9N6FS65
         WD7HBXC7TjOczgrFLhc07tPQWAiveJSUGihDDqxSTE/JejV4jmqx4fR0J8JFXYaIFVR0
         KR3imcQpDZAkxoUkYXXLChoBRKcdqjjlNSfSKa5JwbHsvwbeXALC6ulNqnWtJF83rngA
         BtrCtsAbofZZUBSr3ObVd8gNVWmz8wbDDQQ0JqzfkpsNNDme5TX5S8GRYL4VSwkXz3bF
         BwKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740883803; x=1741488603;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l2dsCl7aelSQACC2hAibA/NG78Rv8OzFHgcMb4grt70=;
        b=ptIAriC+qYJ/PoqMrHFvzXhUlhehDZZe/O4xAwwb9/5h4CkueqRHRjBj/8JfrjON2t
         DNOr++Q1DR368S8x5AhZcy4R8pd164blEpOMXsWb8iymVsJAqDVCz53tmeQsIfqHXvkX
         OoBlamZrSMKznNB20iOnsRnL5aSDiKrCbJwsgFs+CtnCqV4rah9Mqg2u84b2Jgv/jvJT
         N3kNTyMb7rptvxOidBJauABXmAxMOSz5D2aD32ad0XAFxtoC+2jQjlpjYJLZCN8CzK47
         +6UDN6L6rVq0sUk6Np7afzO7Qkkk7iZN8+4Ua9jWGKqWwUBm9LmyzdRe3JMEhz90sPMd
         ChoA==
X-Forwarded-Encrypted: i=1; AJvYcCU4/JYOkX7cBCkOewts3oSOIczoMjRYl3Lck0/df0obYeA82yhMH7OE59lmAKjgyVSZ5iHwqDFmwCTw@vger.kernel.org
X-Gm-Message-State: AOJu0YzDgsyvxrpk4n9qypgKzYz6xTExnW+NgmMq9lHhJu2wBCvscoho
	UrrkuVceO7ZDtORN5pcGruV3OiuYAc2bhbMjJa5MuWy3m+vOhRcscVjtW/HWQjs=
X-Gm-Gg: ASbGncvh6cM/wfftIJpx7Y7YPNTiFl2Q7uaebBsFxrLqc5YKuV3msspukLQ4ORagACE
	eQ0s/CQ2KDL1RIbUk8uCAXGaI3vDVumkYdIXSLNJc82/yFkWY1IOI1mmcuIs8EgTh3TZQ79SRIZ
	BUJn6+yJUFsABhlcAAVlMazyhIWKT9PGPi1OpsUfeu9Xm0sTaolHqhDguTF4aemBaBDAL9cRKqM
	Y997vEdrwbPn9/ypLIMzXqTNmirV5wUIi4gr5NcrG2M7SADi7G4Vn298W6qgyl6qCtGFY/jhno3
	d1s8yL4mwbNtuQyhFT6iIwl1ycWGoE8197PfrusOzY5pIw4qrsuing==
X-Google-Smtp-Source: AGHT+IFxHCKQFyUj24+tuV6wSHKQy4LhNfQvVRey7/Nm7Du1PU4gaJP8VBFQeZCerX6w7bwI5hKemg==
X-Received: by 2002:a05:6000:4022:b0:390:ffd0:4138 with SMTP id ffacd0b85a97d-390ffd04350mr1322985f8f.24.1740883803448;
        Sat, 01 Mar 2025 18:50:03 -0800 (PST)
Received: from [127.0.1.1] ([2a02:c7c:7213:c700:e992:6869:474c:a63f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba532b0dsm137845975e9.13.2025.03.01.18.50.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 18:50:02 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Sun, 02 Mar 2025 02:49:51 +0000
Subject: [PATCH 1/5] dt-bindings: pinctrl: qcom,sm6115-lpass-lpi: add
 QCM2290 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250302-rb1_hdmi_sound_first-v1-1-81a87ae1503c@linaro.org>
References: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
In-Reply-To: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Add a compatible for the LPASS LPI pin controller on QCM2290. It seems
to be compatible with sm6115 LPASS pinctrl.

Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml           | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml
index f4cf2ce86fcd425b7522918442de25c836bf24f0..ec1cd684753ad22050ae349a2e7acbb2545a9070 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-lpass-lpi-pinctrl.yaml
@@ -16,7 +16,13 @@ description:
 
 properties:
   compatible:
-    const: qcom,sm6115-lpass-lpi-pinctrl
+    oneOf:
+      - enum:
+          - qcom,sm6115-lpass-lpi-pinctrl
+      - items:
+          - enum:
+              - qcom,qcm2290-lpass-lpi-pinctrl
+          - const: qcom,sm6115-lpass-lpi-pinctrl
 
   reg:
     items:

-- 
2.47.2


