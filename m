Return-Path: <devicetree+bounces-162626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFE9A79156
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 16:38:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D3D21890BEB
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 14:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCF3823DE8F;
	Wed,  2 Apr 2025 14:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EihaTqL4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EDCA23BD18
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 14:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743604604; cv=none; b=XLhWf5vVwnQ97T8VTFeLeJb1L6SR24rc+GBPkbZzkcrEYI7WLBu5YyihAsn1RqhHeMcFIcyHgUcfNPYHHEi0hwVl1v1pqxtu4VPmR9keSqCdK4bf9UpQzvgU6xtpUzfB9FqMjhfgp/dLA7e4L0ojEr/yDSwFWMjP5ZeRsvlVRDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743604604; c=relaxed/simple;
	bh=NM+r1eddNSJ+PhsAt5mpIMaaO5aqtw1lqIQpoUzxeuo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q4CLVZ9KY5OsIVinl752PItbXM7oUC/RKCGTZc1B9gZtjeNd3dhqVwfqlhDO/dKfhc7+/H4BG0CZeTghpb1MXXgbIEyM3E47ODHwCVsoGJdEa4iZFbHkXvXmL1XNCu1KpnmE3zlNSK+jcA7pAGy1vXBcwFch3C8cpm0JJA1R83s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EihaTqL4; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-39ac8e7688aso5270272f8f.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 07:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743604600; x=1744209400; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WlNr7s9//ER/SikIA2XjkSmK+up9sy8cyHVWwjM89l8=;
        b=EihaTqL4a6U473j/OG+Dr4vfcb3duGGsQ3R+pZ8968I0BXBBV+dxuE5iYpHVgLzUEf
         8kzsNTh6JmZeFaVQGbEHikK0wzYL/KHXNTY1jx+ZqfKhWNM13n2UeLf/4Y/kHD8ZzyKt
         BjEd78lo+vDVilZyi/xC1EnEFofRHvW+f7gi4foDDk/NvjEUBR+BfKeDToJg7uaOjlCx
         K4XH4ObbTlbKw/57M4PkNo9K2jUC1CUmW4RseEgNHXrERfHwAy3UBhBIUDn9QFogbV1b
         FnmkTnahLbtkQySgifBau66tEZOM3XzivavSOD2n2AeM1JLCqFCLtPonpOES9THsuw5D
         MU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743604600; x=1744209400;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WlNr7s9//ER/SikIA2XjkSmK+up9sy8cyHVWwjM89l8=;
        b=XwmQAIhbsZB0RjPXJKn7iyNv+qONt0vCO2NpVjwDgNSeNaFCosvEt5HbZ6d57RGkt+
         8mBf8S5tQpqGoBYwSbh7fCsgFbiYhBSz3tLR9/pw/KSQNtHlXtG7uQT1GAEkKWaJFRnL
         eUrn4ve5eD2Hn5JquZ8tXBYqiE/gODt93uCt2xPir1rriaJhPFai/iKTrWVs1UkXaj88
         4kqCnA4SdOKrAE3DvDGab5YwFtc8vDhvQtxMy1w0u8KRjsWkpWCvPGsv7eu1/Jno5JGR
         FnNFnjJTrRVdoHN3n4o7CvmdUxB3/O6+/2sf0rie1XR72sMf/mhZT5ljv1dU/I18H1+F
         HhSg==
X-Forwarded-Encrypted: i=1; AJvYcCUIwiKStLjj2shAbKUH52QiRxFpwx/eOmBTZ/Ftsv1yR8ahwgFbpyTIAaA4oCltWJwvIZICYzxqIBtH@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn07qVZjwkhB1JbTOq6KxswvwrAzh/d7/XHhHwwdgKPk6GjhHi
	iAts5JT6jIf9TGscxsMzek/0cLns0fNgtUrQSjPLtoK7+6VkWDFXUfLNejdR1lQ=
X-Gm-Gg: ASbGncsmoN30OAQ50Y4syIvJLPY2mY3zah+kUUdpnK2H7QA2gbM9YcbH0FPz/iT28ow
	pXkSJpJZc0oCwlWNqzBsRN7yxTiuy+4jvLwHjEYZIIP1EFcPSvqlqBc/aI4bVknswKqR0hxHeeL
	3WxTaF9p3buHjwBtLOjFDBmigWHzUDOUXJRwsx74t/5HNWY7sekkdmkKuGDUltAfeBRslNkMc93
	tTaPundzetVU3R0l5OABaKKWX7ttKO2JFwm0S/Xehrmq/WOpH2W2rMvKUv4X5hqhigsZlbsdH59
	XvM9xcyhxGMceXvDn8TOHLlQZnLIW+Z565N7MJ5wQozQew36L8uwJv3+
X-Google-Smtp-Source: AGHT+IFcoBoCC9BmmEOzMP3U/FDnU+7IhugBotKCAX7qSMOx6S3uyBr/tGFAZRODEe1ztN7QMsfesw==
X-Received: by 2002:a5d:5f55:0:b0:391:22e2:cd21 with SMTP id ffacd0b85a97d-39c297e41bamr2609766f8f.36.1743604599866;
        Wed, 02 Apr 2025 07:36:39 -0700 (PDT)
Received: from localhost ([213.215.212.194])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c0b66d29csm17396769f8f.60.2025.04.02.07.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 07:36:39 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Wed, 02 Apr 2025 15:36:34 +0100
Subject: [PATCH v5 3/3] arm64: dts: qcom: x1e78100-t14s-oled: add edp panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-3-ff33f4d0020f@linaro.org>
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
In-Reply-To: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
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
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn7Ut0ZIzB+XdAppA9QOZwn9n08ERbMN6V7fJpA
 8Wz4niUuIOJAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+1LdAAKCRBjTcTwaHBG
 +J6YEACTC2p9NkWyqoxpsfbz8IAmvp9I25A0PJ8pwu+woG61rttN5y0Dbq5kye4TA+O64PyRgMm
 4Jb7rcXJxkvK8q/+/ZEH2ZgUER8H2sOXLYvmmqKbqNzHnURqGHahQ7okHtiavXEs0HVIB9KTQHx
 beTZ7pS001+OWS0Dtd+1TtLWnQbqK0wr0DID1wKN0Sw6kIIXGTwzEA7TGw5wzOfqxiy6EuimjSc
 enu/AZ7oRhc+0ksmUjEvlnwo+DehQ5r1QIA0d0ZF2x0CK60zx6YH7OrFU+y0u65xpGckL72ljCZ
 GtmMPsdIyKoJWw1B9vnFZm371LQN8SKeAPQr2+DKLyY3eRN++a338cgsvakO3YqOEKxI7PGjv4Z
 EjSW5iDSQ6TiCD+Ljwhl223FUrZ7rGtd0ChlctmkW3GjuEw8cBcv8r012oM9kp5BlzV0X91g+SB
 2JVtduFeu6MOhK7liW2i0m2l188EkvEju8T9gfTLmfy3ux03W2FnmIF8QkMnXnsJrtkfpnRldAe
 zaZM+YCPV8pRcjuq4uWTExmbFKHQkYeuYiL0hxsUI2EWbSd4dG2tum7RSaqIWo7G3f9HFcIVUIw
 nO4nJlY82B8fJhUImzNkkULIrXBI70WtYrzOC41CYzgt/LQCg5LVdp+rM50Ngc3WpOpj8YiGPkP
 nk9FjQewWQBW4rQ==
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


