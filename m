Return-Path: <devicetree+bounces-201112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FF2B1776D
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 22:52:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C660588234
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 20:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8F526B95A;
	Thu, 31 Jul 2025 20:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pQxYk7CX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CC5267B02
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 20:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753995102; cv=none; b=OlTdjkvZKucalNrOyWRpHbTqqXxKiMFJzSiRCik+Sm9xpMwhuaM0cp6jM7oPR1DpiiId7tkgL844wNSqHxvt67swAvFv+pQj0QerSR6mixknd0j4KnN11ByvgHpWy+qHSkDUiGPaOd6zfHtnnOsJL19Lu/lq4pzES/labfJvmec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753995102; c=relaxed/simple;
	bh=TzJ2JmpzdBdudyzzf/p05R89SsWQRe4dz/J8/0Kx2Ug=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eDmbG2NJOmF/0ob5ZtEWWQL7RbQIk0FqRM5Rsa5mg8S/jCMSUXWOIFHDudQcjiVuFK3iwMy9UnJEDRsE/9JqcQx/54DdhTZMlCR5Cd0TjhRKUqBYFyA+IHT3T/a+QV0JHCcyhXrslai/h62dm52GbsufHIzsPMequ2HWnq0jMF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pQxYk7CX; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4561607166aso10028385e9.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 13:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753995097; x=1754599897; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zf/LNXjHxtqIC/Q118TLyzaGDDqd8kl1KqYbnGndGhE=;
        b=pQxYk7CX3tVopZkxt14n6A8c2UPBJbtP1MatLbMheBDENBcSsmcVDdrKJGQxF7uAdv
         4co06YXy/mektcl4+2b5rGfoZIGGZSz2YXBML/P+DMNQP6ghOsDndUPVnp7kwBE1T722
         iNzn0sy4o0F47km2WTYla3JcZcK+0EBjDeNGwBygTrnrsLUz0ITmX8MnDN6pvH92Ujoe
         G3RiOYtpLpvu8RdCRRThG8kUi9ldeThTlw7Ii9U4SJhwGWpLR9Uk6Gu4OvhS+KDsexaM
         GhG5nlYALPLGR0cWaT5T8Iu1PrEuHx5OSizvNwZ/GDCcRCxetq/jFwQ5ewvvCBM2FFKr
         zjWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753995097; x=1754599897;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zf/LNXjHxtqIC/Q118TLyzaGDDqd8kl1KqYbnGndGhE=;
        b=I/wZvAzHIvverJ0yMtD8ww/4/OZ6uIMXZPtGeVcWiHL6gFIuGed1AISk39ZVoX5KlY
         LqkJDQm61yj85IujVVBOYv7a8WWM8Rb6X3ipt0CdQnDDVANDI1vHlGRrsgNKbsjs+JtG
         8XYS7BZyhpihPqBViQ36nwupfnxc7SU549s7CgjXCtG75IMY9lgrIqeTFG0LR3tL7TQF
         umvx4ZJWaGF7yykXQv6UOaBOjActaz0CN+yNjQEn/IBZY/PC49AzdmbEAkFJ0KQloutS
         jLA12Cne7xXTqJgapFsu5ewRgF7dXuECAx7rGHULPVxQCH5PEbaUkweHGFmsyax1Crsd
         ImGA==
X-Forwarded-Encrypted: i=1; AJvYcCV2Kw4HR57amEjP9rak+6icoTNaoAZQ96HkXt+k/Zc7SHzSgbsV6yTNrQ8W6pFWQyu7gCwzAzdsnvSQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzNQ/lICD9myoivDqeMXbkfopZc4ZgxCQpPQrvV8a/tKa+3FuXR
	4cGe4hJc2VBhGz1PUYGSehVA59f3/efF1nBZTv9+weNa0GY29ZQUBsaqnq6uOFiPBSU=
X-Gm-Gg: ASbGncvLHrR9WfpQAv1BQ0qQN/9RKeEmSiI0QOJRmji+6QPWOAnzNjoiIy2HM9A8/+7
	Z4ulxWDx5U0N3tklDU08sWzCc/Qk2rCra38ghcEygwKiTw9ao5i3i03o6RXOetrcTJFOkxixcLW
	Q+a/lKNmSy9kdj8wv2CCWSaJ2cuK+Bz0VHiUTEo/rAe9SDreeU6XzCxnEWB4VwMF+oX+hYU1fZd
	p+L0ifsfSHbeJA3STEunp0/5wO19sprKwzd7Q60gwXE2gfrpZN2DTj5St2/py1njPwiP7f8B07O
	16lLwUIXZUWX2RRAIlmGTqgVBSlsAqGi2OV5ydDNPMx3H7gKU/5wSEjuXkAvVNgFUNUkTXVbAuM
	1d7bVdpFrQYRSXdxmvkcwjhSKj+jDlq0m6qOM2ISdOb186S4BqjSehIkxOUP7krhU
X-Google-Smtp-Source: AGHT+IEBtM9baJ05rMQ8rmvvoHC3YitZQWp1OkVogVqW4nzyS+HV7tOa2ALIi9aP0/Okii1jJTR8PQ==
X-Received: by 2002:a05:600c:138e:b0:456:1824:4808 with SMTP id 5b1f17b1804b1-45892bdf9admr72814715e9.32.1753995097349;
        Thu, 31 Jul 2025 13:51:37 -0700 (PDT)
Received: from localhost (dsl-217-155-193-229.zen.co.uk. [217.155.193.229])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45895377b3csm77261535e9.13.2025.07.31.13.51.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 13:51:37 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Thu, 31 Jul 2025 21:51:27 +0100
Subject: [PATCH v6 2/2] arm64: dts: qcom: x1e78100-t14s-oled: add edp panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-2-4782074104d1@linaro.org>
References: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-0-4782074104d1@linaro.org>
In-Reply-To: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-0-4782074104d1@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1020;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=TzJ2JmpzdBdudyzzf/p05R89SsWQRe4dz/J8/0Kx2Ug=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBoi9dWGuoo93gmwB77kCPGYwUlsY9B8O8a6EL6V
 hiUNrfCis6JAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCaIvXVgAKCRBjTcTwaHBG
 +HVQD/4uG2m55fMJmbjfHg8fX+MUj5tsHp2hIHNB19uXmOC2pXqHksIZXlWW/vdSEWRUn2eQnym
 p7mQYpuoIyl8Zl8uxd+tjz6mY1tNabZ3nW8llV/a3hiqrCK3CZ5fkWtcG1f0Coe1Miyc9y3gPbT
 cqSq6w4+btRyy21R9x8yF0acSKX0RU+SlcZ1oXqAiyS/j3PNItTTzeA7L5YM4ggtMmn8XAo6B6J
 AWpyNOQdo164fGka6KOkvCyPkNmGkzR9iLJOEvi4pV/gZbNJ7F0QT98+ReLcwwZpnwBfSiFXfq0
 JgpU2NHwEPWKZV03M7bN6x7k35IPYJPJIk60uyZYgDW/mm14qezyRD/WaxLBLeymT0FYQwiAelg
 WvpBlopfiUdsjNmeNazTI15wxNQVDWiN92ffx/DTGdamh8QnV6zXgpJavERvu44ujbgc76Z1Aln
 DyeOZp/Tr0YP1SZrQD6puIC1a1BZQgZzSdUMN6XQrRCuHJ7s/twRjRXoQp6FG90m3ZnAY1WH14N
 S/mtw90dpoUFCL7nbs+mKyuYBqZ3R0Cam97xCW6yvXeSZUuDCTzIdN4DUtKhixvv79huUee2zrh
 CIO4s33To9p9nQfJ1BOhojulPP31ZWjDHzfO2twdbi55h+RqHaH/j+57RP3KrFaYCEm0g62hZ6Y
 IOOb2OFxwOjqaLw==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

Add the Samsung ATNA40YK20 eDP panel to the device tree for the
Snapdragon T14s OLED model.

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
2.50.1


