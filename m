Return-Path: <devicetree+bounces-56526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A8689983F
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 10:42:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 84831B21C94
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 08:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 285931607B5;
	Fri,  5 Apr 2024 08:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MC3IN0Nz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E7E160791
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 08:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712306504; cv=none; b=maklIf0hDy7XWWqz5aalVMwp4Ef3XWDGYCSVW6d/Pyv2SUxATGYLiE1uqC5Wlp8k/IRx9WLoI4m2TX5gaTn9YvffxXIg8YNp6u5rRI401XlxzZnx6AQgY7mRL369v5H7giJaJy2RHVGnELMSPTiB8dNxAndL1cvmsYn+1oktbSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712306504; c=relaxed/simple;
	bh=y9m5OXZo9fWQbl7jhCOhUIQGZ8nvXgwDyvDJJqVcd6w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aP79TtFIyd+/Q/ClX32Bsr1lf7RV4BRJDkMr/985CklRLisPSsZ59tJs1bIZAA5+bN7BBTd3tUSKnlvkiMVSm+MogAAaHv6omFF6qXLHzr+N9ThsLWQk5KrDBVo0qgX638UuOF7Ns/PI8aNEbJ/ZdD4Bc5n/mPASYv/O0MeQNbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MC3IN0Nz; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d86e6908ecso1021451fa.2
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 01:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712306500; x=1712911300; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=spb6697ES9tKN5pBQWfHJLIqG/6QeQNQA/25IsUNPBw=;
        b=MC3IN0NznIPimP059GAoorxDufnMw6vHnShnHSGyiNEAbksPuz+PdxonUnJQw0u0Ue
         U4caCZ4ZKff4mO7xHtZ8vxT8w0o1g+Ey4w/Cs5n4zSZErxAXcPo8yP0dNI7maHPNgi6H
         Fq6KIz82Ak35yXChywblKg4f5FC3hQm0vF4LfAQXtwLOViUj5N4mv3UvdDzEjAflMUbk
         siEm4ymLtIHsY/yr69H20XJ4AA4bdZTFKReNxRhrg0IM7wGT9X2Ki961F+ag4xcS0or1
         20EQZPq6iOlnC0UbgPz5IhoQ7YhriW5xMETE8tCFI9vb3LRkG3lPWJCLUaFULrx+ST9J
         leGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712306500; x=1712911300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=spb6697ES9tKN5pBQWfHJLIqG/6QeQNQA/25IsUNPBw=;
        b=vIIx+XIJAlXPcKgq/bT/rNs/Drg9ivp/BRDdllA2U686ajh+Y1aGXhoXA+wWsVpA1p
         SJjsRF3rJiq4fJLHuIeoqAFnPXogiy1m4W5cXR6L6iNPM450a4Eqto+IY9kLjJOx+5/a
         78BjQ9pbuaSDpB3diNwuZAcQF7pNb1kZKFbMzt8p7chiNgZloCp20hXidasU+X5GXLNZ
         NpAagBr7hOEW6vALJ45VAj4hmjv0Bn/b7FjIXKxs1j0JB1xGW+m/0USthvlQwNwjtKuT
         bgBXT0v/qxy/bTfY76DPOuxBUW2sfRVkFfaJhZHJETNSnr8Fk4ncR7jYcNPBbrV3xOeI
         eadg==
X-Forwarded-Encrypted: i=1; AJvYcCWYbfN8BWnverRzuIdD0HtIVTbc7FuhdRTtUwcA3W/Sj0Y0EfC92ZIn4YFvnX0qXgz14g6az9c57R347lfIGyJdH7/WLrk23K8Miw==
X-Gm-Message-State: AOJu0Yz8o0Jq2mmc03E+YCPYVHAZ+yNWtu4cvoYifqcl1xsBuY1ilxJd
	SpyOWAsNCr+mcX0L8Vf7AOeXbHysYjnx8gcj98qsFaLoFXwn3rrXV9Tqa8TQn3A=
X-Google-Smtp-Source: AGHT+IEthjZxoBWTyYrykDhAmO05yKCnP9Kxxsc14FPETpPEiRbZkTbG7cBkSGtbDOlRlysEyAg8fw==
X-Received: by 2002:a2e:b282:0:b0:2d6:d7ff:5d40 with SMTP id 2-20020a2eb282000000b002d6d7ff5d40mr854824ljx.38.1712306500761;
        Fri, 05 Apr 2024 01:41:40 -0700 (PDT)
Received: from [127.0.1.1] (netpanel-87-246-222-101.pol.akademiki.lublin.pl. [87.246.222.101])
        by smtp.gmail.com with ESMTPSA id y3-20020a05651c020300b002d429304a20sm116880ljn.8.2024.04.05.01.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 01:41:40 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 05 Apr 2024 10:41:33 +0200
Subject: [PATCH 5/6] drm/msm/adreno: Add speedbin data for SM8550 / A740
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240405-topic-smem_speedbin-v1-5-ce2b864251b1@linaro.org>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
In-Reply-To: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

Add speebin data for A740, as found on SM8550 and derivative SoCs.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/adreno_device.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
index 901ef767e491..c976a485aef2 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_device.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
@@ -570,6 +570,20 @@ static const struct adreno_info gpulist[] = {
 		.zapfw = "a740_zap.mdt",
 		.hwcg = a740_hwcg,
 		.address_space_size = SZ_16G,
+		.speedbins = ADRENO_SPEEDBINS(
+			{ ADRENO_SKU_ID(SOCINFO_PC_UNKNOWN, SOCINFO_FC_AC), 0 },
+			{ ADRENO_SKU_ID(SOCINFO_PC_UNKNOWN, SOCINFO_FC_AF), 0 },
+			{ ADRENO_SKU_ID(SOCINFO_PCn(1), SOCINFO_FC_UNKNOWN), 1 },
+			{ ADRENO_SKU_ID(SOCINFO_PCn(2), SOCINFO_FC_Yn(0x0)), 0 },
+			{ ADRENO_SKU_ID(SOCINFO_PCn(2), SOCINFO_FC_Yn(0x2)), 0 },
+			{ ADRENO_SKU_ID(SOCINFO_PCn(4), SOCINFO_FC_Yn(0x0)), 0 },
+			{ ADRENO_SKU_ID(SOCINFO_PCn(4), SOCINFO_FC_Yn(0x2)), 0 },
+			{ ADRENO_SKU_ID(SOCINFO_PCn(6), SOCINFO_FC_Yn(0x0)), 0 },
+			{ ADRENO_SKU_ID(SOCINFO_PCn(6), SOCINFO_FC_Yn(0x1)), 0 },
+			{ ADRENO_SKU_ID(SOCINFO_PCn(6), SOCINFO_FC_Yn(0xd)), 0 },
+			{ ADRENO_SKU_ID(SOCINFO_PCn(6), SOCINFO_FC_Yn(0xe)), 0 },
+		),
+		.default_speedbin = 1,
 	}, {
 		.chip_ids = ADRENO_CHIP_IDS(0x43051401), /* "C520v2" */
 		.family = ADRENO_7XX_GEN3,

-- 
2.40.1


