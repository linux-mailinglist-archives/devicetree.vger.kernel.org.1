Return-Path: <devicetree+bounces-231602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FECC0ED3C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 16:11:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B32194FDE61
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 15:01:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412C92ECE80;
	Mon, 27 Oct 2025 14:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qmymfqiB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB4D2C11D7
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 14:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761577188; cv=none; b=T6mi02Qzcl5yq3WhV9YrrjKP4OWGl2pKjMW/047LPBx+99uAfPERbqTHRVkHu5XUHytbdS9KLtxZ62vLTYsJoSvaFSmv1wjcd65uxYPdeenA03ttbL+7hWDhDGUuU99JQRJPG7GOkuHjP1IJLRDpyFrj+enVkHfygkrBjNm6pww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761577188; c=relaxed/simple;
	bh=m/Ryf+3/Ba7bj8cfGk0q+ZCXj08lxgpxWe3j8JBvzwU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fBAmEWw7pLjL682oz88X5YwFojRd6LHHPbV+G0oIH9Rlixum+n3Eh9VRohK/7AVY5UOqbCGRO9BLNiLr8NZ4vkxQVdLNUWP8vwbTLvGADrNRxM/lsg349T9Me/0W69atPln5i+11S4OltQePJU9Dm80/dsaGDxzWOP0DQJ/kQQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qmymfqiB; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4711f3c386eso36090585e9.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 07:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761577185; x=1762181985; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AqsKQ8///0zondjUQyLirrRSCHthDErDWugJZ18wpKg=;
        b=qmymfqiBsR60du8RWiWwIg3biF015IVMQmnM2lvPpt9lwgBJqvA3BFddX7k5hV+9TZ
         IXYNSxwr2MRRxidnkN9ESrgigg23xD+VC6AwH2bamrF+oUTaMEr+Ou+wQaGIPcruxEqa
         /17WUVu+0oRrSu0VDe3PzZqOLgWERu/RJz8idjGP0F/cfFF3nSyPWvkAYa/mRvcWlfzu
         +lUSI64Gyp9y7SsT1OkRySzzbNp2QtYt0K2zK2SUmm5ZRSN/ZCvxY/m5BucdV3jYxDSQ
         y2YnBlXLfz/avIAahwkTRm6Yro4q6Ho8VKJZegtTC0U0lCpitU5JzpqqxLeEh9z3rGB1
         QoLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761577185; x=1762181985;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AqsKQ8///0zondjUQyLirrRSCHthDErDWugJZ18wpKg=;
        b=QulIseUpnFe2uNzPH3QbE5h/rZ2EwNzE9bQecJPOWSx1M+A55nVk1BImG2thgVvhm7
         tLMS+1nL+xkf3P2DTB1I+wQtUgl6hOXPfnvSntTbBWQYMeYNm5pYUtMHXqAcqHGNB8ss
         R5JE4MvYq3AOTeVhN+/EMSXkS9VPUSgqgZUItw9WV37t/nxzpQJutgOYPRS2q7kqL8Lr
         +BYTK1Nn5UKNQjCjv6MxTpL3Y6EmaMbqjZjIgOWtCR+BWUYAeTuDuNHxXQyeFtetnC0e
         PlBpNpbdcD1YMN8lUyV78ZIifOCAGK9AJunSb9VsWQsS0sXkmePEnUozrrH+bAoAv+CK
         5fdA==
X-Forwarded-Encrypted: i=1; AJvYcCViscxnc4E5KtdCS4Glo1RB07JneZYg5kuIYuX7J8tLtaQJbHWtZ8Lz5htPcgJ8Zl+cpf4O9MlAUpuo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw388sbLqEAEEUKVZ1xfbQ5R2ShJuDwldAVScYTV4UULGbmgxbo
	s6v9W5fbdciy0AbVMDwiZpn1MMTSzELkwE8becntoXjg4NXMbAd7b8uadfUTzM4MD8I=
X-Gm-Gg: ASbGncvpfxUx0QKHjwN2xdXI0j1JNwc6NrNwvdVp2B5AAxym9QZb1kBKrMCrQx9MYVH
	DdT4QwTWogB2p/uEsdOjfVhmiz978s0Auv0ByxFtUku0La5V7D4mGzjoKabivIQHuzDNbqnd+c+
	CyJGs+Mdyv9ETuXberArI5TqbU7tFUqeizGBH8MZJz4pwRkP9xS424P37vDflAZ/ww6VmYkV7N4
	jT9SvOHoqn9wT1NsBxfNLjan9B780kkhFhwKBL0s3ARQ/g2AKtQhFovOi3t8jzRRjw20IbOkSe2
	4xX3nb5ChzWS/XWtYc7kaRwj4nOc2grwKtFcDrW17NWTsVNmxbFtc4KWVSG6R+h09xpAYS27m8Y
	NUjhJXWom+hO1kcTuafPKVrnznpZy89UuR9krYmt++r7jRaOSjqIJMUvNlcFgCP1V3jwG53bF53
	/Og5veSKqm
X-Google-Smtp-Source: AGHT+IFO7Got2ubevHRfgj5QqQ+su96RPdM4Gxx2kUrMjZfw7k7B7E+Ut+HnbXiTZsiZtBSeBGG6RA==
X-Received: by 2002:a05:600c:83c3:b0:475:de68:3c2e with SMTP id 5b1f17b1804b1-475de683d45mr63857665e9.40.1761577184642;
        Mon, 27 Oct 2025 07:59:44 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952df682sm14624801f8f.43.2025.10.27.07.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 07:59:43 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 27 Oct 2025 16:59:21 +0200
Subject: [PATCH v3 4/7] drm/msm/mdss: Add Glymur device configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251027-glymur-display-v3-4-aa13055818ac@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=961; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=m/Ryf+3/Ba7bj8cfGk0q+ZCXj08lxgpxWe3j8JBvzwU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo/4jQBp5H4dDRTqI5TaS3RfQjAj9H1dixDkmAz
 ixmM0LiGYeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaP+I0AAKCRAbX0TJAJUV
 VsLgD/9+wwEnPPeWGdL3dWWtgOTfnTcC8jpTFqVVENytsh45QdKu9O+0P/fh1WSXFMjpsRrAbs6
 WKbRfNOvZ03Kmw/sVbytPerJ64AkkPGZlGirnte7kXlFkveP0Ecghp2yBfQG2QC09wehxpJz2v/
 PlHSdIQ/2SFYE6cqk5A+Pcf24WkliOJ2qsLI7DORwwZzSD3ThX7woyimkMSVzC1ircRJTIMpeDw
 QlGQUFaTPTuXH+NK1Nr9k86yqaTUACN0Taao4LLRtu9IbruWMZn30BCWHAgdm1+TTpLKVZtSUpL
 y9DPFsoqv08g04uof6sf+iKJ2s6ipoYUHFZESnu8PbB5fV1Zyjuf3mNbC+wbNuZG3XTZN+T8G6g
 rGIQ118FHxRuUOjcr6FlAacjRo+Ja0vq6LSAemYm++pPa3pAR+ArtAvSpq1IFj17O3J90rSZH/K
 zCNy2Hc32837x3/jwgJm2T59ASUNXnJMMyhUiFCkWWsjIsPFMY6Yih++ai84+ft64EQZUa1w7AL
 2mjbDUYfKDEL1CsNDfoKPsUVkPc4D/ILE6LTsQBfr3DLIsbME7fgIh6UPnemG/pSpud0TKg5k38
 yDSl2yyq9Tubt7bwohbnH6rADGfrdlFjIVjkbMmmhTXD0HBdncIrt3bCJeHJm2diXhvfrVdQYeF
 iYhgQ0RhQ/2E6sg==
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


