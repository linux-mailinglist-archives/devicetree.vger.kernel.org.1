Return-Path: <devicetree+bounces-142198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EE5A247E7
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 10:18:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40B947A2B79
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 09:18:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 741B5152166;
	Sat,  1 Feb 2025 09:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JQKKSnD/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542091494BF
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 09:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738401509; cv=none; b=mgHYIv54F/wRllo4gPh2p7w1BBBSRktSQ1r+Wgf1dbdd8JLgLsplHVSmBax1Yf6uOAhAwlcIW6qdvZ3QtbsjCvbfVvUICYSKMZ6pDRUTYArHFqMgIacWitCEzjGt+uqZK22maRflSo4Pk0P25ww22L3sux+pZotxjSXk+vXOsd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738401509; c=relaxed/simple;
	bh=/d/geU3OxC4Nkibrq9A3Ew2gwBiXmZo2CHTH+6Gy0Vc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U007/2aB+tDfbRWjxp5jHHsfz6iRdw8WUx8QXFpGpILgycKNSRH20wSsTILIuGgjuEa2rYb3pPyT0TGhvpT/U51RZld6akuzcGpXy5rYF4CEcYoEUedX9RqjRyy3aHDqboKTeOilccFsGQXssVCiuCxmM4p8p25Xdxeqps4ytm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JQKKSnD/; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53f22fd6832so3022782e87.1
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 01:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738401504; x=1739006304; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Dk7ljpeNS9WkTUfxOFg/JBajDxdcbPw39k3Tq9ImKI=;
        b=JQKKSnD/ZD0kAB7DVqyPgBlNlTx8Bh2RPkCa9drpt1jqlqGWZTFAJTION916lMKi3V
         gvqbAirFaagHFBUZnoWgWqiczdR6/Ip/8ygjgdZDh/5m0a85czdGki3ORmBDhjZ9aDJU
         vrq+eHABBY8NpmFgQsMuLXvmPZS5HFx9S2GtVghba6dN0+HRHuiZPNIDHeVrb+HxB73R
         6HjhvQYaMo08gX0K4vleWhZdL5tNoWOWpQyvJbpOq1thnXXMCkZbyR71kGMt7RWGQFC9
         yxqDJAcXM8LuSBIPN5MSAtOWSHFNroGFBfAEeVgmHJ7taf7QD0dZJpxgENOrCmrB6a8G
         lXRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738401504; x=1739006304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Dk7ljpeNS9WkTUfxOFg/JBajDxdcbPw39k3Tq9ImKI=;
        b=CF0lA/kJJ5D56GFWE9RuUZFPCmF/k9SFGOrSU2RW2vj2+Y6qTE0Dnen9kkFm2FUQZ+
         gXs3h/vNnij9+AZC+nd7KXAHBFYrp0gazq1LG1jjtzL53kyYUeHv+r+YU3UFbK7/auWZ
         gcMWwdPqrucaSSyhhiSyMiPxz45AegimwJbgeaeTzHTdNeWPstnzOD8sU5fYSWMBfBNz
         HuONFLZ+Ro1qfGwmRNLlH2U85nk4W2Ag4V4AhFWnH17paItMwEtw7+JUbEJ6u4mlmksq
         d+PZEQ7xF/ZQ5yuX0Hnk+Bvafj6+3sDnRH9IpAnjpYy7fSW7gphVyySWcyWJIxsOB/1O
         cf3A==
X-Forwarded-Encrypted: i=1; AJvYcCV24LVb14581p7D0vyeMqpg2IRmsQUo/3Su4Le/DTkRUvfeUpeCxZ8pxB7GwpeMniOgX8SkC7q0uDrO@vger.kernel.org
X-Gm-Message-State: AOJu0YxGefnPIuG40FUIC0SZugn1EZtq3HOueaq5t4O6XbMaZRHR8b1/
	+n/ybZoKCr3wHVX/7Au3VrdNK/VitGAqXHbpkUdkVNsEh9MEAJ2aBOIrvNnm3hI=
X-Gm-Gg: ASbGnct/gfGwDmjgtMPcHLDOPFwXqPJQqJID4m/ck71Tty5w/s4+BJmIJw8KnylTQLg
	N/k5LxMxkyZIZxTwlONPakK+fXiYkj4MlkbadfP10pcvprx/cAOLp9ckn6OH9JzAExvAERqeT4d
	CRrt1CQvODMhGiAsXMsO/FrkZs5gE7DPUUUZChabsHAuTztjRZgFiT6/lMpBxUo1TzsBa0PHO0L
	Vmpa+Q+mnWW+8or1w1oSmxsaX+RRGGYKPhlTHRNuetF4gUDCdCUN61bgBk4at6y0quqwU8t7gZX
	RhfkS6rBVvJY7PTDaZYLwf0=
X-Google-Smtp-Source: AGHT+IGiRfjDKtaRtE74/3E32Xgbx+xUI+Z6VTOl4MviUCpPu0F+jCWREENY9yhpuR/ad2XyiVRB8w==
X-Received: by 2002:ac2:5d6a:0:b0:540:1abe:d6d2 with SMTP id 2adb3069b0e04-543e4c3163bmr3579004e87.35.1738401504395;
        Sat, 01 Feb 2025 01:18:24 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebe0ff47sm711234e87.93.2025.02.01.01.18.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 01:18:23 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 01 Feb 2025 11:18:12 +0200
Subject: [PATCH 1/4] dt-bindings: net: bluetooth: qualcomm: document
 WCN3950
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250201-rb1-bt-v1-1-ae896c4923d8@linaro.org>
References: <20250201-rb1-bt-v1-0-ae896c4923d8@linaro.org>
In-Reply-To: <20250201-rb1-bt-v1-0-ae896c4923d8@linaro.org>
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
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnnebbzl89z/LXYWIUNKnCvqLJKCCBTEZ+5EeSD
 phOp0niv6qJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ53m2wAKCRCLPIo+Aiko
 1XTpB/wOUCuCsDnm0sv7LN/SmT6GcnhouDa4Jzkklz/k4zPqobHgUhqUwI/h/6OgsmjprUbDiYe
 neToqxBkjZPhARR2AppFVLNNVTkixM9TjItTaVkF6jnEkPe400Zmc7Spqa2SszmRkCOn9CGBF1j
 b01MJladUlpuRymUxSB7/5pWjqKGhlST8/5zi6iXQsHYGrN6Lptb0j5ZF4tqVSwelW6AcSkQxOS
 3p8hExOr62p1ckoVY57dfcfJ1CCsW3+BhSKu7xqMk292Mb2P6UxQBj0hfcrPy2VxL90CH9gLAIu
 4Ns/oCBKjIFlU34yhCVieV3C93JnLX5eCxCMlUmwfn8tJfPD
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


