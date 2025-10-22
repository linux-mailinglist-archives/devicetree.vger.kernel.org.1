Return-Path: <devicetree+bounces-229577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8F7BF9E56
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 05:59:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05246560EE6
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 03:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 360B62D7DF6;
	Wed, 22 Oct 2025 03:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nDFEm7H5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171172D7395
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 03:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761105539; cv=none; b=j4XdzhlRSDudyA2+ILiXBYSR56rltGsWkYXo1By00fdZJtg9NibceqKCbY5mpnyQQdtT8g6wpWI2XMKdFNlupR6LDojrQxrA7vShVQdw2wltF8LAM7OwLVJ9yqTAC5HgeY5NF+rPlYeZdszrWMyy7tr3kWR/v+b4YH+6LYI+o80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761105539; c=relaxed/simple;
	bh=kvAMP3ctlHC+NcMNgJAgs9mnDMpwSkggmTJd2ypqC5M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AYI3cdoCQ7HIVqJhgL+JAbY3slHcisfLFjj8SPzjr9SO3sn3kiQ1PgdC8g/tzDCOaR5FZ/t6FdEni3WwDKbr6BXwfW5LnM/oqr+iKCr+YHtVo9ZGE+UxgbmMnehyJ4TjaYqpXwzOpNy0o2A2Sf0XdTKLr91zonsEZ511s1ltyyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nDFEm7H5; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47103b6058fso3178715e9.1
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 20:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761105535; x=1761710335; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sI4ASgSpPGAj/Dv/E2slB3WMFvZC6o4/Alrjjt2Ie8Y=;
        b=nDFEm7H5XueUDJznN5/7tYnwz3iK0QwrYwOyCuukBji2e7h+pwISx7EVtRQcGRzGpK
         qGr+1VZT5+JVjDICQ86Jp5VGoIa4m1v2y0MqHwxkRcggJs1WXe3YudCe6FCpNKOHMs+l
         pNIKXGr+HpZN8wu9voztnMoQbQ9T8jyDVyjBjbncnvXaVXEJDve6EEstKFp2R8OAH8ap
         OGs1usArY3zL+KquiDXPt2zs1csl+Gipbsygn0cR12SCzc9LuwmkJUPXs0gq5jWKVGQ/
         cabAR+CEG7G8vvPjsLbhM94j2acsrfODW9Bn7NErPK54pfxxDGLnyEvohnUxJRDtFYce
         l+uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761105535; x=1761710335;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sI4ASgSpPGAj/Dv/E2slB3WMFvZC6o4/Alrjjt2Ie8Y=;
        b=rB6//gSm6Y6E6k0d5o/sqBoF4uHVOVea279bqs2bgrfTEVXK2N01qbOv6Ha381vFHH
         1536UrA+YvBJN2yctc2tGZtKvpP/hR1PsWVyKdw+xZPUOjfl97gr0pfgmy9s9XilcILP
         reFitmo6vFIStx77Y6uF4HCUOfPle3QVsg9EKDRMhoz22TPv1+CuKNcIcPiAGeKLwng9
         E+oSOxchMpOc2vz2lBSx/420VsWKQuPRObGUi0nBO5oY7+/nM/1ZGzavqmRUCIOm1mhh
         +DVtSAFjwJJI1pMZ4+106MCpaA/yaPrblbpWtdnOShl8E8oC/6NZ+a77eZe4lTpSJdKB
         ZShg==
X-Forwarded-Encrypted: i=1; AJvYcCWR7/3Pf3A0op4I0qJzcp6/731VvylTn2D+dYAJ5i62OyMlH3AnWWTWhCEIM/aIUeOWqk/GaItZMcAX@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4JkFgBblsAWgrai5Jw77OJpRd3IKHjO1C0MZ2Aa6hJI4Eqk32
	l1SdXfMM3sZaWBB9Z+sMe5uzLls9Pblb/6rGOoPHWb2l3OBWF0YsrHztehFdOzLftsw=
X-Gm-Gg: ASbGncvckN4xLMQy2qGw+ZQ2AsQHIbjA0k52HJYJDUPfTcoFYlx6jNhxGa7GYHS2/jQ
	wmSi4u8pmW9jXxSk2a7Z5Vfs9RvTX5Ow/HnDLoleUngC/sTUE4bi9wDJebqUJX9uyWHPJXhvbFS
	DeKeF3ANxtsTf0FCj+YxcXd//9EmKlV6Eqy5GBpPKPvnoojIxGIVU2/LwvNYqRBZssrvzsccV8I
	dG1gL3JwVt59T6Mw2zTSkztUkEnpfYUCako191uwEC6jJNvfiJ9rGWOn4/lCSfBdoN2lTyiEfbz
	Mdy1KJoGgYxdLBEMBiK9eiVb+ojKJJYc4wQsNBOyWfKTPhPTIobnhaCzeTmuGza9avdBDMopDiI
	EggtnXeTsUnUL6yAIkPuUm8F9cJ+vqZJr31oHZQ706fueqklzlpFw6vrbwhop/nGpANnAyrzu6p
	aYjQzjr8a2/+Vvnovn
X-Google-Smtp-Source: AGHT+IHeEb3tGuV2cdLUPqnynhdT9+HgBOgYCBUb5B0FsyuU5f/KzVMWWrEQeBupy2nAXL/DwGwzPg==
X-Received: by 2002:a05:600c:3505:b0:46e:59bd:f7e2 with SMTP id 5b1f17b1804b1-475c3fcb2fbmr12453345e9.11.1761105535320;
        Tue, 21 Oct 2025 20:58:55 -0700 (PDT)
Received: from orion.home ([2a02:c7c:7259:a00:11f4:2b3f:7c5a:5c10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-427f009a6c5sm23637639f8f.28.2025.10.21.20.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 20:58:54 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Wed, 22 Oct 2025 04:58:50 +0100
Subject: [PATCH v2 2/2] ASoC: qcom: sm8250: add qrb2210-sndcard compatible
 string
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-qrb2210-qcm2290-sndcard-v2-2-32e9e269a825@linaro.org>
References: <20251022-qrb2210-qcm2290-sndcard-v2-0-32e9e269a825@linaro.org>
In-Reply-To: <20251022-qrb2210-qcm2290-sndcard-v2-0-32e9e269a825@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add "qcom,qrb2210-sndcard" to the list of recognizable devices.
Use "qcm2290" as name to let UCM to use it later. QRB2210 RB1
and other QCM2290-based boards can use this sndcard compatible.

Cc: Srinivas Kandagatla <srini@kernel.org>
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 sound/soc/qcom/sm8250.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index f5b75a06e5bd20e00874f4cd29d1b947ee89d79f..bf71d9e4128873fd956750e71311a357d60099a8 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -210,6 +210,7 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 static const struct of_device_id snd_sm8250_dt_match[] = {
 	{ .compatible = "fairphone,fp4-sndcard", .data = "sm7225" },
 	{ .compatible = "fairphone,fp5-sndcard", .data = "qcm6490" },
+	{ .compatible = "qcom,qrb2210-sndcard", .data = "qcm2290" },
 	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm4250" },
 	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },
 	{ .compatible = "qcom,sm8250-sndcard", .data = "sm8250" },

-- 
2.47.3


