Return-Path: <devicetree+bounces-79837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B358917042
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 20:29:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 144F228A495
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 18:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9BA817CA14;
	Tue, 25 Jun 2024 18:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VT6AykHP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CD317C7D4
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 18:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719340104; cv=none; b=ZtEwLesriyGH2qF8SZ3taXrwLUuq+LcX3JUjajrXbl/mD9sFZv7NfM9D3NnxhmMqu1jVklFDCO6fLGY42TOhVldalFDYIs7LHpsTXoNmPY6wuyWj1+C8j2w0ObdeKL/gx6tjPWDOom/wusPa2qVamCWr/77LlwWtvW+yeRDp23M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719340104; c=relaxed/simple;
	bh=hlAsvCKJeJlsvCjk6T4iu/SvTfq4qoydQ2dHeLtqkkA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b3uZzXDcbNW4wQvgqaUYLIJOZaXDagv+YCC2gL9C8JmQuuzx/QDIxU9V8B4xjllRjA8ILLDCZlU+mc8AVfw0/0K1uRZ0pg9hA2ZhSkmR+aA2+L+t5QxHUR7Nolrl/1VcPKBr21fd//hldcjGgKTfiVXqQ04KZhZLabF9t7DK8RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VT6AykHP; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-57d457357easo3949789a12.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 11:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719340100; x=1719944900; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xNl1LGe+OUBjKkWza/syUNm4iRQsXOqi9TzG6uI03xo=;
        b=VT6AykHPus/YVtB0DbJKyFvP92iUb59yDh3Cta7j8SMj6HaSliBYYuzNsbJaVOzRue
         e8+hoF8e2NkoMcnCuGySNDN0qfh8lm9njH0Dr3DuNLJFiioIVvrg0oy7OOoiVahliVzR
         6sTzxpbgL/yf1fbLvjQL11/hc2h7zY0LLrRsAPiwXVkuxr7XfcCagZUfsdSkCsm9W+1y
         lz/V24AajqW+SQjKxPPGAtM7O3v5LzEpCFelS1KM1KiLrqGnEN5uN4fwYz9x9+uGQTwM
         eZlivp7MVMmmGVPPa15fZPvsapmucgjfKxi2ikC0o885d/VyHDl6EEcfLJCKSl2ZNQir
         bvVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719340100; x=1719944900;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xNl1LGe+OUBjKkWza/syUNm4iRQsXOqi9TzG6uI03xo=;
        b=VI3Zf1wNJjApVtvOuqUYas0KN4oKH+jR+ZGeyjcC2c7psUhNhVBN5rgfZw1KyaZhHp
         FR+iPHKDAbGVfO9Og6G2L9OLRrpohu11YQk498PeeNoWWNhbdIo+u6ICw8GTLSAze2bl
         iC69V0V+WFF13IlPNF9VSTZ3yybBWreFgWkSjZ8cqvbeLZXHRgtRFUa+laFL7FehEAUQ
         i6Tf/0qSLvYAMpF6OS8KTUoNl2rNoHs5Hv87T51lIzEWgm74i3g+5ENY76fiBfDZGEaB
         Adv2rT4m/U1Xay44/6UaHsCXOwlReztzJ/gvkYzDk86pgbURx11Q0VOTZunccSoNFXZh
         b/9A==
X-Forwarded-Encrypted: i=1; AJvYcCXg5uRjuAAk2V0XXQUFIdjiNvf5pHxoVIyb+TtlBxpZ59nGWt4vImtl7PO5mdQ3+9VZaui2pzOUERYytjzdoiJO2iVRgRo/IdmyaQ==
X-Gm-Message-State: AOJu0Yx86Le/i2buY/cz+FUh6wH/7Sw3f5b1lFpTFR33MsI/yA10yMFH
	BlLGKFMjD24SQrRST7cRaHc48tPmSnV2zUXF+8WSKbdRl4h99+xU8eS0FhoeUtjvwFgBh425Egx
	aCOE=
X-Google-Smtp-Source: AGHT+IFZf75V6EVKFoeMMT86fpiVICPajQFEHJC9qNUtbTjyoSjlwEE+EJZ1PD+TboCYI1SSsb8bUw==
X-Received: by 2002:aa7:d393:0:b0:57d:5600:2c94 with SMTP id 4fb4d7f45d1cf-57d56003448mr5183567a12.0.1719340100400;
        Tue, 25 Jun 2024 11:28:20 -0700 (PDT)
Received: from [192.168.215.29] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57d3042fd72sm6323136a12.48.2024.06.25.11.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 11:28:20 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 25 Jun 2024 20:28:08 +0200
Subject: [PATCH v4 3/5] drm/msm/adreno: Define A530 speed bins explicitly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240625-topic-smem_speedbin-v4-3-f6f8493ab814@linaro.org>
References: <20240625-topic-smem_speedbin-v4-0-f6f8493ab814@linaro.org>
In-Reply-To: <20240625-topic-smem_speedbin-v4-0-f6f8493ab814@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1719340091; l=874;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=hlAsvCKJeJlsvCjk6T4iu/SvTfq4qoydQ2dHeLtqkkA=;
 b=IRMR1HRLN2YRjxVqz6xKwmuxF680eWYXDX4vQzB+gFNVfylWuVcDos2bQwzKA7wmZ4U3gJ32x
 gg7nzrlgLmLBSFRvmSiO2FyHkPwIZb+ULPTqUvjdw9Y1u9Ob9HaCm+V
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

In preparation for commonizing the speedbin handling code.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a5xx_catalog.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a5xx_catalog.c b/drivers/gpu/drm/msm/adreno/a5xx_catalog.c
index 455a953dee67..c98ad4ea558c 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_catalog.c
@@ -116,6 +116,12 @@ static const struct adreno_info a5xx_gpus[] = {
 			ADRENO_QUIRK_FAULT_DETECT_MASK,
 		.init = a5xx_gpu_init,
 		.zapfw = "a530_zap.mdt",
+		.speedbins = ADRENO_SPEEDBINS(
+			{ 0, 0 },
+			{ 1, 1 },
+			{ 2, 2 },
+			{ 3, 3 },
+		),
 	}, {
 		.chip_ids = ADRENO_CHIP_IDS(0x05040001),
 		.family = ADRENO_5XX,

-- 
2.45.2


