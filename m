Return-Path: <devicetree+bounces-142266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF0AA24B12
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 18:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B4FC7A3225
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 17:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9757F1CBE87;
	Sat,  1 Feb 2025 17:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EEB+hGJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B241CAA6B
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 17:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738430958; cv=none; b=CJp9z/jAvCPUb6tFR/ZAQ/VQyow4XgAad34zh8XgqXUoY9aAg4M9HJeZXTvolnfGzdhjnSLErYlo1DJfVaPA/aZ/6dK3zgmsq9bDXpQbXBxWY2auqEsQzKhfP/aqoS7TlJUtTuwLB7sNvNJmJTaMZXHub3hU9Sj2em/SRJ0iJOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738430958; c=relaxed/simple;
	bh=/d/geU3OxC4Nkibrq9A3Ew2gwBiXmZo2CHTH+6Gy0Vc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JFaDa/dF3761tVDdlCdcWG05JrP7xHG+KXqnlRbUgUwmKIeQ1ggclLjtsQII9qOhOdGQZUsnZV1qQPNVdtNaCQvh9kE4vDV2burgpf3/IhO3u6HbJmJmySpmz6JYk2lMxPUy43IXobSbcJeKZMxHuG7xC+CYbETqDWomFmcKXxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EEB+hGJG; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30795988ebeso28041401fa.3
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 09:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738430955; x=1739035755; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Dk7ljpeNS9WkTUfxOFg/JBajDxdcbPw39k3Tq9ImKI=;
        b=EEB+hGJG23MUswaLIHug+zBcLaUI7FgHBF7+31DvCX+D+AsY+l2aEyGy9Id1ZVruIA
         O9ljf+Bh/HRUstbg27Zm4m15lPZ0Uimkri7CYLVsOiYF31OTark2MDaWoecwS6eWpIMS
         Je0MCtBtgxgx/xwOgIgHk54XMUTKKLu8oJTt8x0esWnzo7QmEBm08HZyIE6onfVMgUJF
         x7YzxvFv650YA/qvjF9v45MHUdVkIgAqGmLzJ6lIhaUv4buLAqDXsEtkXmATkZfkf2Gf
         UdK8rVJe/DHJDFYd6UcitkcUDmfi2IpCosIpA57V/Kh5AXDLdl9nbYEMo/914o6Cb2Dd
         zysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738430955; x=1739035755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Dk7ljpeNS9WkTUfxOFg/JBajDxdcbPw39k3Tq9ImKI=;
        b=KeCgTTcgRmhL0L7ufTjkROvPz6Twyw0uzaIN7pwJZCsLGDJluti+NFWvhoF0SSXvih
         DK5UGs0Ju8tKW3y0H0pxOK+JW1jPcnlOL7yIjwMPN4YNY5+1r1aH9Jy8WRf5Iyl2gX7W
         OYDvas0Jop8F2uqH8U9F4/tI6Ux9qQwf4zRhhvgDLjNLlEaESfsfG9EYKQwX8KzMfsKR
         L/syXC9M3Vv3AH+40kaVyew0KuU/fJm8o5AlFeSwBegC0rZtGIB3f4NxvI9dl7Y1q7ey
         Rp9E0iYjDo8z40xSM0Ljw28IhZaWYH0R2eK8sPLHfDUp2RESfl8oKsQDTw9sljeQnpxt
         wGBg==
X-Forwarded-Encrypted: i=1; AJvYcCW+t/jqrAxmwXHVcIcv4rE3OAzM/nxaC6XpHCI7hg9yFjw6l19xNh00yczcLS8RXSenLo0gNOF4WUPT@vger.kernel.org
X-Gm-Message-State: AOJu0YyTvoduw18YR0XhBW2A2W9MQYBOmL08DZcCmYIpx1OjzfiWWKcs
	EvEkl0WM5POnz3vLZhoq5iiM/l0pXgq5qO/z+/xKvZgJD4vm48gt8SQLChwljEc=
X-Gm-Gg: ASbGnctrfKP4QS65JO+rK9BBBj5RRU9gSvD5IWN/OU1TPDaAM8B+oJ8lZ8AB1VYml33
	m3QPvZFdhGl00xPuDj81B5bF5QA6Wdluzfguw2VAd5IrkVroMYSSphmM987JvKsPaTCUq9WyACl
	Cf+JJB0uGfY+kDCyh2zPA9iUwNQNAxrG3xoGxMDF5Ll55a2lfmllggerd2bkgDI0EtFLpjNEIOj
	0YtpxUdBMU+6Age26M2mZtsGolr/g1my4bxB3CJhe31hBa8QAG9DUS6vVz07D2ZINXKTXGxxvvA
	OxTT+F2r6vsGIRrXvy/LPac=
X-Google-Smtp-Source: AGHT+IFQxLdgqV1VuCmiSKzy7E+QXwyUiqyAdxyDy1lhNZkJAj2DiV+iFyftVtLTyzS01O4ux7Ueig==
X-Received: by 2002:a05:651c:504:b0:2ff:a7c1:8c2e with SMTP id 38308e7fff4ca-3079694dd06mr58095141fa.28.1738430954016;
        Sat, 01 Feb 2025 09:29:14 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307a3099ec4sm8852161fa.48.2025.02.01.09.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 09:29:12 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 01 Feb 2025 19:29:07 +0200
Subject: [PATCH v2 1/6] dt-bindings: net: bluetooth: qualcomm: document
 WCN3950
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250201-rb1-bt-v2-1-fd44011749bb@linaro.org>
References: <20250201-rb1-bt-v2-0-fd44011749bb@linaro.org>
In-Reply-To: <20250201-rb1-bt-v2-0-fd44011749bb@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1201;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=/d/geU3OxC4Nkibrq9A3Ew2gwBiXmZo2CHTH+6Gy0Vc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnnlnldnpgRM0nW8PS6YIAuy4YhrJbX7cj6BYnO
 B5keQ6cZ2SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ55Z5QAKCRCLPIo+Aiko
 1V2rCACNDKB2CIDYU4QR8+Ha7egrR/zbrKOgsECRWLewOohyIlcnXo6fluZVPXOuLXYY/fixjks
 YgDHawSRviONkIGOwNgN4/X+UCdXiu7KSuw6enXbGQaQEVBNtibf5gAkitbd2CmwxNa0ED+aNOq
 Wjcl3CC2MDkrUxnPnitHOBYvSIbUtSQSMbKXZrkm1khH4ueV0Rwao6VnvUdXJ/YMmlxdOqItlYm
 UxNJWpp7RiUl14118a+TgBlJAYgSAuzn7XE8P4seuArTn6vGNDLp7wCJQLAFHN8W3B2QGFkv0q1
 uJxif8MdAL/sz/wvo29d22rFhq+dzE4wKfBkmf1E7Srwwr59
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

WCN3950 is another member of the WiFi/BT WCN39xx family of the chips. It
requires different firmware, so document it as a new compat string.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index a72152f7e29b490003114dae1e36df85cba384df..6353a336f382e4dd689d1f50a624079aa83b2ffa 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,qca2066-bt
       - qcom,qca6174-bt
       - qcom,qca9377-bt
+      - qcom,wcn3950-bt
       - qcom,wcn3988-bt
       - qcom,wcn3990-bt
       - qcom,wcn3991-bt
@@ -138,6 +139,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,wcn3950-bt
               - qcom,wcn3988-bt
               - qcom,wcn3990-bt
               - qcom,wcn3991-bt

-- 
2.39.5


