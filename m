Return-Path: <devicetree+bounces-84220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE68E92B5BB
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 12:46:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FC2D284A02
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 10:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D05157497;
	Tue,  9 Jul 2024 10:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fEr11I1O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1555215699E
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 10:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720521958; cv=none; b=JFcCqsgwXYa/Z3vZa0r00f8dKhm2xz2RsLBy0i6H/nX9UnLiPii8ctJD5kpU80wtn+zmn6izBOLQC+22caUVBIHM0NxqvBlt/kqBJMYJJ1FzIzG1x8R3g6TlyVXB1omVfapUSc6L8zhQ6tmdth7Cb772utiDy5siCQ1DI4RwFc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720521958; c=relaxed/simple;
	bh=4D54MBq6zoAcYkfe7iD2ltE1UzYmVaRiFpw+gSQkiFQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eKcPHjeqBKK5W5OoBYD5qZ71eePDj6A++3dqgmUhMPjH2hPnnlR/3rUtZ4AYoMeeVdmvZxfG3cquT0FITb3n/8IysfDZRlLjVcyODMJysIuS4dHg84e0ZsadqqjQAHO54Tvzhf8K/IiRmUNYg2WEdu4+Q1OzXxESODxfqGEgb/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fEr11I1O; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a77c7d3e8bcso492677466b.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 03:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720521955; x=1721126755; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OCdrWwyibH7SidMAd8gXxhcbnOnPffTnyQEY5fVW104=;
        b=fEr11I1OzCK500TytfuuvEz3wC0K2XALleau/t3ifocJ0lwCwxzl2l9IuGb0zU0rQa
         s0NlR23kSP1maB7UScBAGUBhYReO41YonPZyH1tlHl4FyDg5ROjZqpx4LAgtj0wo2q72
         r8DG4MZRLyGabkIy5T/RZifzfSCYZQV/tGgIKiq8bw402idly2Eu4bJMlSBu7BAdRrx9
         QnED4bmAkEcuBjZZwjaPXSiawiDWt6HgthIffaaHRmoa92QPzgz/rTzjCFfgzNUiGBZ8
         i8NE6+Az5V+iNcO+muGzvsTJbhtHT9ssW+EKb4WptgSx8HoE7q28YFSUpylndLgJMZtm
         PqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720521955; x=1721126755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OCdrWwyibH7SidMAd8gXxhcbnOnPffTnyQEY5fVW104=;
        b=aZmtD6QoY/gWf1uND+RqE412o4+EtknOISGMtRvaQGR7uChZDzQZ70u5YwZv2Q5Bdf
         ApZhS9dc4WXO/f4rbN0ryLozCfrQW/yQP9VrNpf8yO5E3iKEhmxpizJz1YAYh4fBNK3o
         idRZcjmUkQVf858Uj5PiUar8gLVhfLfmhcOWyvvciS/XrvO9lFWF5d6P+pHode5Y7gsm
         yh9k0rl2e1Mvx8ydZxa5JPBw4vgiQ66GcGImANI5yELLRman3kKIFDRFDFfBC6sqfPaG
         icBxVzsPYTcPSIvN0b8zaoJ7f8tLNWnKoAzij+oTfCGqx0JnJfRPPnHHRw6AK7Bcv9mm
         tz7A==
X-Forwarded-Encrypted: i=1; AJvYcCVf8IgKGmsC7a3EAgvyAeIpPFhtVjOKUjdXG7jUW97fC3pnWBYQLbcOKq4c4PjWswjoOCzwOUcs+3/WH9rLNFZ+x4PQKA6sG1Sxxg==
X-Gm-Message-State: AOJu0Yypy3da3m/vXCZCI3JdO/rJGYqtn9NctUYp/PzanUkILRIPRIwG
	Dnqxkp1G914bPa3VCs8yMH3sV0eYs8yZKiLg98We4QsiaCQjvG4Yw5uDic0BEo8=
X-Google-Smtp-Source: AGHT+IEnddeAQttVIjPlE5QwA1Ejq9Sgylm5fg+WQ2PeIGDvlnpy6g/83mPoUVgnq4+Ux2PORfhdCA==
X-Received: by 2002:a17:907:3f20:b0:a72:554d:82af with SMTP id a640c23a62f3a-a780df5e5fbmr146263266b.20.1720521938009;
        Tue, 09 Jul 2024 03:45:38 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a7ff038sm66295466b.115.2024.07.09.03.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 03:45:37 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 09 Jul 2024 12:45:31 +0200
Subject: [PATCH v5 3/5] drm/msm/adreno: Define A530 speed bins explicitly
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240709-topic-smem_speedbin-v5-3-e2146be0c96f@linaro.org>
References: <20240709-topic-smem_speedbin-v5-0-e2146be0c96f@linaro.org>
In-Reply-To: <20240709-topic-smem_speedbin-v5-0-e2146be0c96f@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720521930; l=874;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=4D54MBq6zoAcYkfe7iD2ltE1UzYmVaRiFpw+gSQkiFQ=;
 b=WfLMIj4SCvcJlhKnPfLp36Ctyq2d6AHSfVTYR87sgyW+uMP6er36Q2p56z8XMiCz66+azs3NP
 ysIMX7TBRifDWp6wRSAsHAMRBbWj13kMAR33/CyVT8WKhZ6XMnbO7V7
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

In preparation for commonizing the speedbin handling code.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a5xx_catalog.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a5xx_catalog.c b/drivers/gpu/drm/msm/adreno/a5xx_catalog.c
index 633f31539162..105b3d14bd75 100644
--- a/drivers/gpu/drm/msm/adreno/a5xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a5xx_catalog.c
@@ -129,6 +129,12 @@ static const struct adreno_info a5xx_gpus[] = {
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


