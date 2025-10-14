Return-Path: <devicetree+bounces-226517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 48912BD9671
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 14:40:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C252B35480E
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 12:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83BF3314A7A;
	Tue, 14 Oct 2025 12:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jTtX8568"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D1C3148D6
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760445599; cv=none; b=uKGEvUp9JAQgx/8omozfsNbeUXyYIgEyT8h4o0+iW0Aelsw02EQ3w0+c8/Rr/CGGw3iTqmDpxZzUqHJCDpm6QKh/IdApmzI4VqohsgX42f70+IESS486OdW3YNmsrlw7y1GsbxQGVcjhArWtZ8D1BuDZcAPmDrLz8lV55FvTf3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760445599; c=relaxed/simple;
	bh=m/Ryf+3/Ba7bj8cfGk0q+ZCXj08lxgpxWe3j8JBvzwU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JGgxBFbFdRVfMvWdIcU2xyy0VP7XCuBg/q4roc3+c0ijMD6hSbHvJLAXa3SWxPYMK2ImLSaw7fK6ph1tbAosBfTyfUhNKqKVL6bpXAoJvyTHBPs1Jx6JFAWJjaNK9qOfyjqYKNJgooQo5/LE72BxYBakJeAZERmcUhYA09mj3P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jTtX8568; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-46e61ebddd6so57099165e9.0
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 05:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760445595; x=1761050395; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AqsKQ8///0zondjUQyLirrRSCHthDErDWugJZ18wpKg=;
        b=jTtX8568FMMcLM+uNfA5rNmnbFr743xZ4UOPJpmHipXlreBFwrScRGZCgMvOX9a0vT
         xxn5X0124Xa+abeDVK/sIamJdFAlmpAuCWipfyborP+PjJGZMDtDfT4eASqRn/Z394sr
         G2tvVJkHGVMN/ztRlqM7E9KWiMqcKQlFhWk7MN+ehnNKnN7UkYg7pxxY74y4xhr+EGoy
         ghze/qr0vK8FHZAnZU+3KBS5ZohAo2sPPlbtX8xJRJB5wNqNQmvhsFBxmuIYNfXdQRFc
         KdhwEeaztJj+z8xlf9gjzbUEYVeWS72Aswnwwu8PA3U9uzq1peobLUSwusA71FYjE7Va
         Dl7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760445595; x=1761050395;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AqsKQ8///0zondjUQyLirrRSCHthDErDWugJZ18wpKg=;
        b=WJqznc4hcoj4ZQsIfCMTapXvMZlwvhDv47GJ9fGAhBBEezUL8uAdS/QqVTrnzDzQqJ
         y/Xxpq7UANWZTcjKHKQRY+bZBC1yzEWY6QMSAgI2tpqgJFtf4SwqI2cbkz+mfNilZlvs
         oVd+7o6n+huAnEpMVpvZdRhDKDq1hjrEOuBE8TaMSTpWT4GkhLZRah++DmowXJ7l4rou
         sV9W7+DQGl2Neuecto/ah645ycKrJXs4vJ5gfLAysl+S/89xl+lmN/SsTi4EPVDKeuJf
         PRianP0u15zePdmc0nv3xt4d6ukOwVAAG+zNzbX+0AqEBPw3H+eVJfzw943jMR27EXDq
         pYEg==
X-Forwarded-Encrypted: i=1; AJvYcCXfa8qPyg22Ez9TckaFg6gloeRIDI0A+6qzYdA+J8Ago/NSaG3JbsZnr5YRhsQKw3vV+2lwRoU5lpdg@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbi7dWPm9tr/zV34IqOKGDcGUTBI8/hf05NU5sapMTLy/V2m/W
	g4wih9hms/9UNGn+fNZA1Q0fcpO/vKPsRYlwYshG2rhLajg/ifr+pU4IL4tSmAjfa34=
X-Gm-Gg: ASbGnctJIIax9xrmIudNC+3BS92IbUTg2ViUklPr2nx0kbTwnG4HYzOS4ROoX+idIQ9
	yrB6EZCX6lyFAu4DrOeh0gT552USjO7ITypPG3cOEvNLtxq4QS3hxYwJfAe3WvVLHRkLKQLck9I
	GoSNq+0XBKubFE1cz373hldaarG52acPvSNIy9f9GP3jaODn4Ac2XR7K1YxWEvi+2tixJM4GWdq
	O+sALHEUyPAkbN1J9AJS1+JZf7q5cl2dotrChMzuyywgGYLRZPm2C97Zt9HwYtfSnSOf4QA2woM
	LtP4RG0cBUCzCiX+rEOO9LoB+LbfrsvPrak25VJKiqdiYj1MxfkSanzBtIoam5c0MZVR52uEiZb
	FnFlrYR389NRR6MI11Dh2K0QIXwCSpteXRrjdgYmEbqY=
X-Google-Smtp-Source: AGHT+IF94TkmrblUuMOmKKw3sDw0waUXWJ6Sn72cPvNn8ob8Njw4rB13rXYCle6cWXXhQ2X4WSqt1g==
X-Received: by 2002:a05:600c:1547:b0:46f:c4a1:1da4 with SMTP id 5b1f17b1804b1-46fc4a11f37mr63636725e9.8.1760445594948;
        Tue, 14 Oct 2025 05:39:54 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b9easm245813815e9.1.2025.10.14.05.39.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 05:39:53 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 15:38:29 +0300
Subject: [PATCH v2 4/7] drm/msm/mdss: Add Glymur device configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-glymur-display-v2-4-ff935e2f88c5@linaro.org>
References: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
In-Reply-To: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=961; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=m/Ryf+3/Ba7bj8cfGk0q+ZCXj08lxgpxWe3j8JBvzwU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7kSC91TA3eE2/FLce9JDXX+AHYC/aYLGbE6qH
 N2iL/WtXQmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO5EggAKCRAbX0TJAJUV
 ViKoD/0Sl157HvmbXuKIHDPa3XoBGzAdukbIe2ps4MXbFV6J6LNYoC90LVs6GeC+xTT6W8KVuIv
 uUJO9EJCnjsYddbeSEzuA1mREDoYnoWyXcX/bTvFKAOCtcDMEOaJ67vfF8Vu8pbCvYjcLJx/OqM
 1o20MDkMgza430gTOYMyqXa2gY5QreP1kdOwC5GM1DJdZmkopVYBYDqW9K/jbsIvpvwWVeq3hYH
 KQkWMON5+SlObVOM9AUBEl7P03csVQ7Yt79Y44WxGFyuO7ZgEw7sLfa7P5TMemoq18YGDh0TLe8
 vD5xP5vsp4mo9OiYbMHHKOHh6YsA89Py0da7gR8FinkIlVMck7F4npyorCRFcoZg6/Dr+SWWNKG
 LBUC/p+34urTE6t/bjsLZDeoj4dRXdb7tehEFrpIIY8Ve7JRvgyKOtSr3NO8VZMA7dHe3HedcgW
 LwfMMyA5Vti+iAQVPyo8cK/S9KNJkDhgthQSEqzPtFj9yMwxUg1GK4/Yq+aRjO8fXpvVQ5n0ZX/
 +ogmfphhy8Tka/TDOGfteQMc/U+GRR7PmxkW/MfKbJ9fIU5eWFrSQ9eqD6LaKnMZdLM2NTPyw03
 tzGCfR7w/wgnuufAzwJIqPydCpqdPc4BqCk1VF47snbP4jmqwMc0gvLsBBsbFOXhjDYmyHwklAF
 AN+FcDKHpISSmHQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add Mobile Display Subsystem (MDSS) support for the Glymur platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 2d0e3e784c044db8ac0c478446d211a982cf0350..60bd6af83a8846f2ad751ea625a20e419c80638b 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -553,6 +553,7 @@ static const struct msm_mdss_data data_153k6 = {
 
 static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
+	{ .compatible = "qcom,glymur-mdss", .data = &data_57k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,sa8775p-mdss", .data = &data_74k },

-- 
2.48.1


