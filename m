Return-Path: <devicetree+bounces-231605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD465C0ECB2
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A9A1188ACE7
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A084F30EF9A;
	Mon, 27 Oct 2025 14:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CHaC74dO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54C930E0C0
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761577195; cv=none; b=uaNr8fPCl9b1q1hYsbDYTUOAbfxbgdudG1gCNob3Zt0TggC17236mIW7nCpXXpZu8dYqdWF7QaBS8G03iYiGOpz39O1EHJ0lM11iIfhCsf4BkuIqsnr8H2s7nvSNhmRIyWyS3UsTvqUBD2Q7GxbzDsZcdSXblZ3IeJJl3hGzPXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761577195; c=relaxed/simple;
	bh=u/HvMjY0aylTChFeyIjWmvaFpyJNj26Jf3Mm0ByCBoo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Uzu1KoDPQLDOmf60SJ2WUpSXapgl2XChEb25thLjbugvoFQ1F2sibkyHnKBsoEL+x4R6mwOG815pyuiKndDnZnqdz9YoJrmB2Q8ojrgdonvJwQH3AXPjBMF71arm4t/oEkswaZGEQmA3CS6CC9lIHIsFPBbGHAsgvwiaGgos7UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CHaC74dO; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42557c5cedcso3232437f8f.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761577192; x=1762181992; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fTz5FcespsElflIzSbbQg61xL3ePspm/n5VPFrGBCxY=;
        b=CHaC74dOLpJ9Y0+9IpIPDtvN7sjZ2Gv3On4UYCpoPUYJ9eONj0wHAUN3M4ZTLSsN3i
         anDBHOd7fUSkzeEVC3KOKpog1HmwprP42Bb1Q1bR0+mUQwSVNJqq8cBzqdJM6PTtIJBU
         sAFjkopSEDKXqF8QOo/GBeh2PFP0jSUeX4DyTKsNVwRxPLaHKdD5i63gre60clxiZHze
         EWMC6SMrfsqnfdQMtEONzfsb5mNwlnXIvxkmcbxjLk0pKag6omGy5YtCbm4xJTw1N4ZS
         gltM7bdm/9TuAzuIQ+s179VamLi2rhqybsWZbOFD7QkQAd1DDkSJxlHKOOpoLfGVDZS+
         QJRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761577192; x=1762181992;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fTz5FcespsElflIzSbbQg61xL3ePspm/n5VPFrGBCxY=;
        b=wZzG8aV9q35yuasJ+cVx/iz2uQmWzeAi+27TGn0V+Bszrhmjt3fCMT6WCJezFUKU91
         fUkYi4sDbQl5ow1WoOaPW8aEcUSrVrkMBLbZmbjS2Cu6dJJW0fxhSsn+CRak2oO+hOsa
         9I8SS4N1KCt88hVJWGlH/fXU2DWTYD002Ig4SdaeyRpe9EQkXE9eBZZlM8w6otnLIRC9
         wlHvGx7MOdF162Kj8gtoCUQ0XPLgE9AJhw0qYA7ywmKbsAZoKChXTQNZteLD943GVVCD
         sRwxBXjnVQ44y4jjRUjHVOwYB/l/VikE74Z1Ivj+NRChZLmmJn3Dnbpz5kuizfk6ZGb+
         5Qew==
X-Forwarded-Encrypted: i=1; AJvYcCXBg3L7MMlGOJPXEwusDlld0xGvyhfwgIPjCaLhN/2g4goqARDgy8rDhfAtr8hX1Oia+JfzIv7eVA4b@vger.kernel.org
X-Gm-Message-State: AOJu0YwOK+ZOvbbEfLfu4jjVntNHeJWQZchWiuqJrm4vsrG9mNoHpazo
	COVyhc2r8vbQ9UmrsGaOPsvnffs2sUaufewvLyLSC91xQwDwevdeDbPLf5d8A5Vxk8Y=
X-Gm-Gg: ASbGncveD7487pT9Hb9uTV5HToD+80F1YzOLWdKFGS7y4MJjjLNZit+anORioeylPls
	45L8Xg7kNhLkX966Ij3HQ3/8EVNoD/Q5Pa/L7j2TrdFARpQioP9sCmD+2ZaEC8FXJru8uVVUJcK
	ObDzvIWz7p6IQ7/8vrw27BESgSMwKxnAjeIONcehJXxLTKlzkmEqekkCqTnIMy0gPBn58uq45f1
	Y3G9EyUhhnW7MZ/x0F19KH120r0M8J1RATwM2iT49Icd2nfk3HebEWwHCV+FRv9o4LuV8qK9x4h
	MYTkzrHOFqqJvtMFyicYo5ZsO/1GMOoUxrNWGyO7PcvR66qZaRjvQ/dASewlb+rbdQi182IB3qS
	YnOZiRiT4UyTJc6RdA9N4KSf4IsziQ4I201ggii2NMyqBZOi6M0d50e+euJVayr9/2i9HAr71gA
	==
X-Google-Smtp-Source: AGHT+IHhucYcNoU3tpaY64qWm4OHaBuQqtRit8AElkIwAwfqv1bYtt/hH7Pt7uGACFZqBuWs5q+q7g==
X-Received: by 2002:a05:6000:4021:b0:428:55c3:ced6 with SMTP id ffacd0b85a97d-429a7e52873mr22632f8f.18.1761577191849;
        Mon, 27 Oct 2025 07:59:51 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df682sm14624801f8f.43.2025.10.27.07.59.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 07:59:51 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 27 Oct 2025 16:59:24 +0200
Subject: [PATCH v3 7/7] soc: qcom: ubwc: Add configuration Glymur platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251027-glymur-display-v3-7-aa13055818ac@linaro.org>
References: <20251027-glymur-display-v3-0-aa13055818ac@linaro.org>
In-Reply-To: <20251027-glymur-display-v3-0-aa13055818ac@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1580; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=u/HvMjY0aylTChFeyIjWmvaFpyJNj26Jf3Mm0ByCBoo=;
 b=kA0DAAoBG19EyQCVFVYByyZiAGj/iNPIUineIXhmofimGiCWnLycyUP46iKlGWzX11Z/Hcj+r
 YkCMwQAAQoAHRYhBE7z7hFOeo8qyqfRuBtfRMkAlRVWBQJo/4jTAAoJEBtfRMkAlRVWBQoP/AqX
 o5fDnRdKoS6q3XpzWKqrQ7zMv6up7tNiJzjI277cfvSxLM7uDtj2Ia73Bq3MKvuS79y7rfkviR5
 TTHt4CnxLQjDNumvwrZJTR2H6kKuOR6zihzyXsosRKceuYd/rCMlSkHcTTtM45EQDTtiW3+uQUD
 gt6/z2wnM7LFVcloJvfnSqUGI17uKwF94SU0tQdtJsrXFU54j8zorO14GarzTputEFstffK0ifJ
 7ty3mGzzXhW5ZRGTMQp916xDdeFgZpoZkqrn6Y88nrutiLfRGno/Q2idW+n0Fh/F8axD2sR3GLS
 xRsqcpZthvbjVgrCkdvSnK2ut6szHGsVV0XePv+0nh61oV3vCd5tEh9VASBPvpjHCNrzUxZ5Tmg
 BhYLUL5oQ4+wxjVR4/ELhS7QrMJNOlMEJidEtXDrRm3rDmOkyTNri82aS+lOIIdyKKnroXz6zFK
 tBJMZHACT7EthUbiGqcmvF66zd7gNWhLL5BAT7ILrUj/URdLJeOT3zDXRnZgM2f4MG23VliFeTt
 z2z756NNtgd+1dK3XpUwRz4eT8sLhtOHPdHZkKiU2q6cPX//CUJY0TzBLJupKc6yu3dXzZJG/vG
 YPlxIv/fh/BUFgMEBcr8DTnj4V9u34Tzib4G8KY0BD2dofnj5NmMP2ahxtNtNa+dq19V0H/LPcC
 qC4V4
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Describe the Universal Bandwidth Compression (UBWC) configuration
for the new Glymur platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/soc/qcom/ubwc_config.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/soc/qcom/ubwc_config.c b/drivers/soc/qcom/ubwc_config.c
index 15d373bff231d770e00fe0aee1b5a95c7b8a6305..7cca2afb68e3e9d33f3066f1deb3b9fcc01641a1 100644
--- a/drivers/soc/qcom/ubwc_config.c
+++ b/drivers/soc/qcom/ubwc_config.c
@@ -218,11 +218,23 @@ static const struct qcom_ubwc_cfg_data x1e80100_data = {
 	.macrotile_mode = true,
 };
 
+static const struct qcom_ubwc_cfg_data glymur_data = {
+	.ubwc_enc_version = UBWC_5_0,
+	.ubwc_dec_version = UBWC_5_0,
+	.ubwc_swizzle = UBWC_SWIZZLE_ENABLE_LVL2 |
+			UBWC_SWIZZLE_ENABLE_LVL3,
+	.ubwc_bank_spread = true,
+	/* TODO: highest_bank_bit = 15 for LP_DDR4 */
+	.highest_bank_bit = 16,
+	.macrotile_mode = true,
+};
+
 static const struct of_device_id qcom_ubwc_configs[] __maybe_unused = {
 	{ .compatible = "qcom,apq8016", .data = &no_ubwc_data },
 	{ .compatible = "qcom,apq8026", .data = &no_ubwc_data },
 	{ .compatible = "qcom,apq8074", .data = &no_ubwc_data },
 	{ .compatible = "qcom,apq8096", .data = &msm8998_data },
+	{ .compatible = "qcom,glymur", .data = &glymur_data},
 	{ .compatible = "qcom,msm8226", .data = &no_ubwc_data },
 	{ .compatible = "qcom,msm8916", .data = &no_ubwc_data },
 	{ .compatible = "qcom,msm8917", .data = &no_ubwc_data },

-- 
2.48.1


