Return-Path: <devicetree+bounces-52480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E9C886CC8
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 14:23:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5B381F21820
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 13:23:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A75B547A64;
	Fri, 22 Mar 2024 13:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r+l4N9pL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B0A46521
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 13:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711113762; cv=none; b=gH8G+GOGIvNFKMUPga0qiWU/PpflDvUKsSBLCRKMsTL7EYhbtpW7mqyjqKqQx+dA4xXHfSV32EjPrCfF802q+xw/ZsB70fGbjdrmLvCbCh5vOhyXpK2Cqf7RgiBEfsNw82Up0li+WpHcchq4pMrrRxDa3W7Q8C64GnXq2mLjVa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711113762; c=relaxed/simple;
	bh=VRvzJp7F3pTXsdpRrJnsX5QXf0DQXJcBRvykcAY4DxI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P+sRuzvvIdrox5zGyi/o1Sqslv+2ID9Rll/vYQbLIgmHwI3m0PgDCIuC0vZF2x3L4oCeD22IgV/7Spsx3GjFtkbzCT+I9nRqPCcEPZBMKn03FmMWFOJqB792D90lYlCnOdtHAXFD2XcNSapAW8aasIzRNmUnn8cm2T2zy7RzQtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r+l4N9pL; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a450bedffdfso257304366b.3
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 06:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711113759; x=1711718559; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6XUaenHWoXhfDkhnV0aXHNHBLry4TB9gcfVEB03TUiU=;
        b=r+l4N9pLj/GZsD8fZHdz3I2EKHZkmPOXw+OZZrWzyHes0p5mDw5mgPnMHjVLI98+H3
         TSlhEDUnPGrA6zddaBHhtPa11blzP7G85shh8u7fGAZ4o12TG5TEOEsQqa4TCGgisNUg
         VMVqmtH2q8MimyUgVe3npsRFS+PGEKszxvwifXUwlztwrCX7xbbDz6pE51SKAdi6HyNR
         bqTPWSmeFqCygHG6bKRIPesc1HV8b95TbpCgUvFZ74qhASSDwSTFaa//0ZOwky7I2aCH
         BJA7N5zfQKGB3Zn4oiwnt2kWtu53m47dYL/RRyqykmaEw8/SqCSBV8jHu3iA1ABFYi8P
         nTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711113759; x=1711718559;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6XUaenHWoXhfDkhnV0aXHNHBLry4TB9gcfVEB03TUiU=;
        b=jPuVt2Lu2ZY9NwOcFk+ccbbIXh7pxRm6ChMKauwP3gqgDnE7q3i1AmawSpwc1odFWA
         Sslih44RdIDxQ6jQKHXwt72Qk299LlXVnhFXZpXma6YeDePGX/eZMbkcgOMsqQ0r1TYA
         9AnX67ZvrhDyIsz7DU6MVgjBkNUraiq7EpDlgIkmWA1WYHNepvpsc1DmhalnHbixjoOG
         DWghfMVP/tm47DUedA9PYTSe8ym4yxEt8IlEMsqQnVoTwHRX2bljsP7wWMv3/KRpYmYD
         HXTqJFh/p7ld/8XqLZGQQrFyR6Xis76iscYI2Li5iM3oRVBmmdM0CNM4x/+VkqoWA8la
         HPhA==
X-Forwarded-Encrypted: i=1; AJvYcCXeVtm2L/BzrnIGz12+Q/Q6BSnS5aW8+4wgH1AojcGLdH+n7CY7Y/Lu+l39ttDt66Z4hOd2oEdoLAqgRw7Jn448+bLIIU6LF6wCSw==
X-Gm-Message-State: AOJu0Yzl3LKtIC7fxkX+J0GifH0QIJ2xBwDIpghfIHTl1Pw6c+3xcl7z
	f8SKPEbr1UBcIcKM6rknAwtQNtJz8z0dS2lSGmup1DcRZ0JtPWdZk89cggp6ZVc=
X-Google-Smtp-Source: AGHT+IFMT7cq/p6U5lZbQ/UZ/wU2nRaG+ZU2xJOExzaN28htNK1eQGiRtGlQH9vKIq8cXLB+nbzu4w==
X-Received: by 2002:a17:906:230e:b0:a46:d77f:37ca with SMTP id l14-20020a170906230e00b00a46d77f37camr1654728eja.66.1711113758864;
        Fri, 22 Mar 2024 06:22:38 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id m22-20020a170906721600b00a461e206c00sm1014176ejk.20.2024.03.22.06.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 06:22:38 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 22 Mar 2024 15:22:23 +0200
Subject: [PATCH v3 2/2] drm/msm/dp: Add support for the X1E80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240322-x1e80100-display-refactor-connector-v3-2-af14c29af665@linaro.org>
References: <20240322-x1e80100-display-refactor-connector-v3-0-af14c29af665@linaro.org>
In-Reply-To: <20240322-x1e80100-display-refactor-connector-v3-0-af14c29af665@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1607; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=VRvzJp7F3pTXsdpRrJnsX5QXf0DQXJcBRvykcAY4DxI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl/YYWHMWfb5XeXykySFpfSgfGEkbi/1xu5RtIP
 mFT/7v5JKqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZf2GFgAKCRAbX0TJAJUV
 VpJmEACuCgSMFMohE+PmYWIPPDdU9bXmOOpIjgkIEhjwqm7w9Oha2buji2b+JyOiuz50Joux6CH
 KQikLlX+6EMMc5zwiaq3NMAjRxL4ofMWGcrQ6jFwowQs7xFMvRjWsEACQTL08gdkJBm1KJzh0TV
 vPU9KZcVR4brLS4xKD6MBlaJtFzpL7wXM697i5HHbyBr8pjAjBWVizntUgu0wWOJ9twd5VG7tX4
 SJeuJ5VLkJ1p3X1QmbIptBQrMsirEJKJ3Sy+2AzrfeC3/zJWTz0yJ7jC5cU0OiKF8PPuk0To8Xh
 hjYWBmLAlXAiImP7pfsDOWWoQnhms5RHonAUidXJJeR/3eYlnVqYnQbV8sZ2virffdkcz5jPfxD
 hi6r5mscDmgRub+yHCDrWbBGGfslDTyn6996Nr3urquLoHoUdYgWf6T0qgVGxNx93S5iPR730b/
 TnbA99VBhvKWrJg3+8tYxrhDioWoeZMV9+kETPKwoMLx4IscxrmBm0W/j+slZsavstQ42b8WpPL
 +1Frd53yRw4mCdE2GqMcNfLS4fUvulzu1yhvcUQKClViXdNB4BJdZW9lH5/2oku2f18k/9JguqB
 cufYg2+vD7dMdAnJbR+nt8VrDIX04sRlVWnTYK3N4dfkH3r89W8YoP7TRjbFlMpU2i0gE2x7slM
 IFvVOF7/nyPvJUw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the X1E80100 DP descs and compatible. This platform will be using
a single compatible for both eDP and DP mode. The actual mode will
be set based on the presence of the panel node in DT.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index c9763f77c832..95f6cf949fe6 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -171,6 +171,14 @@ static const struct msm_dp_desc sm8650_dp_descs[] = {
 	{}
 };
 
+static const struct msm_dp_desc x1e80100_dp_descs[] = {
+	{ .io_start = 0x0ae90000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
+	{ .io_start = 0x0ae98000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
+	{ .io_start = 0x0ae9a000, .id = MSM_DP_CONTROLLER_2, .wide_bus_supported = true },
+	{ .io_start = 0x0aea0000, .id = MSM_DP_CONTROLLER_3, .wide_bus_supported = true },
+	{}
+};
+
 static const struct of_device_id dp_dt_match[] = {
 	{ .compatible = "qcom,sc7180-dp", .data = &sc7180_dp_descs },
 	{ .compatible = "qcom,sc7280-dp", .data = &sc7280_dp_descs },
@@ -182,6 +190,7 @@ static const struct of_device_id dp_dt_match[] = {
 	{ .compatible = "qcom,sdm845-dp", .data = &sc7180_dp_descs },
 	{ .compatible = "qcom,sm8350-dp", .data = &sm8350_dp_descs },
 	{ .compatible = "qcom,sm8650-dp", .data = &sm8650_dp_descs },
+	{ .compatible = "qcom,x1e80100-dp", .data = &x1e80100_dp_descs },
 	{}
 };
 

-- 
2.34.1


