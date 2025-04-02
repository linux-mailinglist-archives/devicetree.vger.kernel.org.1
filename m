Return-Path: <devicetree+bounces-162553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4628CA78BAB
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 11:59:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9BA3416FF3D
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 09:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C87971078F;
	Wed,  2 Apr 2025 09:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v7S1Qi5H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C5D23536B
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 09:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743587929; cv=none; b=Pk1A2KKN/B2iCyuWAXfITpF9w4Bo8Gj5t6gU4OiJ+btNXLqttjEqykJm49/9vzCjiTEG9+wEhz47tkoeaAXwkkT3+IXUrTtvBCMCUdUW1R7mFZbdAH5cuOUh3MiuO5iSmV+7Ld45S+8AA/A4LK4j6ulmeWj7QjjyP0sAF1X3eyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743587929; c=relaxed/simple;
	bh=NM+r1eddNSJ+PhsAt5mpIMaaO5aqtw1lqIQpoUzxeuo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kb1wLkyY2SoAtLSelpq7OOY6cj0Lv//0j8Ozn5gx314abvwulUMCaSTwoJmrmhQibiTftasXAx0Ua1TZzJE1vDFA6O8eCMHIkvRl4czIgldMMGOaqc0JzshCWp03k5/KEHBE1L7Ta8PE7LoN73wjfz6Z8LEoQut3bYmeQmR4h5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v7S1Qi5H; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cfe574976so45145845e9.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 02:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743587926; x=1744192726; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WlNr7s9//ER/SikIA2XjkSmK+up9sy8cyHVWwjM89l8=;
        b=v7S1Qi5HGFFAs563CZQMWl7yRSgGBUi67wtBQpU/p4pohJHANrTHFbzzkQ9557edUr
         1Qau6T3EXCAVOXFZ8w0bll/VeAQ7ZwOkoFfWmIfZhk0843DBvE1gDknAlNAkgPUcsLGD
         7B7gluzfHx2OhrmUapKQWwWQC8bh6zhgpSwcxtowmpH6cN7QUEw7wW3xghl/M6eAnAJ3
         kF2Ak/PezryxI6ckhLE5IHVoykzvIM8NcHkLXV8HqeUJIflpa5pXY2ZTFPTLkC1AIjDn
         ZcWjXg020rAv3epz0p0EDMvyDGs5Pn33bNkclimlr06+2s0nfQHbhcAXzbIWbGVTepOQ
         c3hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743587926; x=1744192726;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WlNr7s9//ER/SikIA2XjkSmK+up9sy8cyHVWwjM89l8=;
        b=n4V87x+ehSwmAPAo2IfQmX3wSQlN3HYKv48pFpunMCLbrdkXSxl5KIsQGBwjc5BNyL
         FqI04Pn++YFoVo2Ja5k/X9itSfsy3fzHSfjOBEgEqvLFbIXtFFKJF5W8EEObG+RFLMuu
         1RgjzNOKQuOSAUHVZx3HPDOathBJT2mrsNB7MrJtZkIy37+aMHlTeEF5KgcpQKuf5kYm
         6P7Fvpw6WMX6yCk6nOD/c4DXS7Fdq9eaV6J4SyHVfDkLACMqStSFC/9KTB0xMlhyi/bS
         xbbGU+gADLZ3V/fXbkqw1ZCE8mbAw8P0CejzdDxDwjQII3SlEi7qMu2ZPSil437ksa48
         91kw==
X-Forwarded-Encrypted: i=1; AJvYcCVE0RFbIgRX3j3krEx0F8Vqqe0tGSmfqfWZ7IxiORTaS7nKNACpicOipXIvzzV5vdzizRMT/bdGEyy7@vger.kernel.org
X-Gm-Message-State: AOJu0YzGl3z20Ft9+VWoyxBGaTw0TcaVshjssyjyfa51uq1M3FFQjvc8
	VzEFJFRKIvfR8PXSiQZvDRbZBdxlbyV3MtKP5//l5qsdVFmacQYSCM58MYGE+Jc=
X-Gm-Gg: ASbGnctJqoSUndDFUp9aaa/ikIidj1MrHYHGJRX1ZEOxOPAzWpj5uDSiJSjhaZaddtE
	oKPU6fzRIKeQzPoh4pyfG+IN071UKdC8DP01+wxMDFoDJSzFVVst6C5xowyZGXJX/94Pxv9J6+k
	mMjgivfGczPlpg7CvLEj/n5EXqC7bLhiaQ56pi0djkCdWNO0NsYG2s0niZKD36CfyFB2DDwnLP4
	+g4B+iU3bmT2m4ej1421oa35IroTqmU1is0mLR3dsMOzGqD6Ok5PasG0e5l2SS2ag4EOQ0InYJ0
	NMR5F4fyuc0hhKlxvPvZ7YOq4eV8MzYzgTSjSELGsq7MWl5v8Q4hcq/Q
X-Google-Smtp-Source: AGHT+IFTrd+aG1QnoeDWN5Twws3fGm4IGPhSV3zclRttiqm7JC1zigHY/sr1x2gYCsORgZ8e0lDQ8g==
X-Received: by 2002:a05:600c:68a:b0:43c:f4b3:b094 with SMTP id 5b1f17b1804b1-43ea9f8dae7mr37628625e9.6.1743587926052;
        Wed, 02 Apr 2025 02:58:46 -0700 (PDT)
Received: from localhost ([213.215.212.194])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43ea8d16d35sm34705285e9.0.2025.04.02.02.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 02:58:45 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Wed, 02 Apr 2025 10:58:33 +0100
Subject: [PATCH v4 2/2] arm64: dts: qcom: x1e78100-t14s-oled: add edp panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-2-41ba3f3739d0@linaro.org>
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-0-41ba3f3739d0@linaro.org>
In-Reply-To: <20250402-wip-obbardc-qcom-t14s-oled-panel-v4-0-41ba3f3739d0@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
 Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
 devicetree@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1087;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=NM+r1eddNSJ+PhsAt5mpIMaaO5aqtw1lqIQpoUzxeuo=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn7QpThFC4dZp45FqIClVwad+jsKVUrk56+VO/Q
 SuTYwy/5FmJAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+0KUwAKCRBjTcTwaHBG
 +Ml6D/0b9LsPEQpFxaORUDI4PxBYS0vegaZinECmfYatrMEJZ0CRoesXn4RqP0Rkz8O1l+VdZ99
 vRmgfsW0Gxp1qRzh7oxa6sEk+K5Hk7ufI4Qig7CntNHwZwfkqW3+jos1MTZypwEGK3CmpjOoPNx
 mnnwxfzaOzUxtu8iuKdI7fGFSXYYQnNGlggPuW2NkKHwuM6juYbGvyrr7Bs0L1DPiF5PpDA53sr
 V56jVUWnss6DVU4pJ9v1vsiOpJpg9BVtH/6D07SJ9o8wbM0pYair+IfFdkLLvOidUGySWODI8vm
 7BScqTbK6wWBpoxSF6q1nuZOqYatUDUHF37LBjr6A450gAcTbqJRpk/PQkV2YNkoUiOll49GriQ
 5FwnWfq1AAuRBQS/CoUrVhUfVwlLh1WIB7wELoflpqeMK7ErAtd3b6pcRle5U8m4R1RnFepnUfp
 qnOeFQDGX1M3wNQn1/NN86UR8XZdOhJjf3ZRQQqQ+fBTel/uBb6TMhJluZzU3Zi3D8UuDmYMvIg
 LXpsSwKSCJ5zcMB1oP2zL0MDpRy58QWFgg3nQMSX47RUY6RYvXfU6Qp9uxEQCNOQnVx/CdgZyz6
 dfRrpSdK724AJ6HvUuCW4jPS+ZdI2xc8NqjpIe/i21nws4gS/pO6wemnISaryic2YzSxoIqOxrZ
 XjJZSTNiPXOlmPw==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

Add the Samsung ATNA40YK20 eDP panel to the device tree for the
Snapdragon T14s OLED model.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts
index be65fafafa736a0401a5872c40f69cb20cfbbd90..d524afa12d19b2a6f22a24b9bed6b6b40248375f 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s-oled.dts
@@ -10,3 +10,11 @@ / {
 	compatible = "lenovo,thinkpad-t14s-oled", "lenovo,thinkpad-t14s",
 		     "qcom,x1e78100", "qcom,x1e80100";
 };
+
+&panel {
+	compatible = "samsung,atna40yk20", "samsung,atna33xc20";
+	enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&edp_bl_en>;
+	pinctrl-names = "default";
+};

-- 
2.49.0


