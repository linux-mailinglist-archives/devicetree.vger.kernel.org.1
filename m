Return-Path: <devicetree+bounces-3517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEA27AF29B
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:24:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 288F21C2086A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 607253FB24;
	Tue, 26 Sep 2023 18:24:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EDC450C5
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:24:46 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9008EF3
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:45 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5347e657a11so688744a12.2
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695752684; x=1696357484; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rdOeaLeHcwftMyYfA8G29tOCdXwXQaoJFb0mcu8r5zw=;
        b=i24kSgq2i8rJgR+WoHufsvGJOPIKXRKuuFpXtAdJkKiFHCf2dGEb1X1ZjjLieX90hm
         tIDtmI9LbwoUrIYh7QjeMuSOLcmBWfjZ50bg5C7iHdOnfylSZ/02EyNGxcSX4i20TzGz
         q7nrmI80zuurD7OUCpjWmNa0E5G0B4gUIgSclHeqQ+AX3pj/iwg779o0I6wiODgbYnJ5
         sAu+uCS0zl0OJeKLDRyZbjNeygz+NOIGQNUZdljiChK8JYXAnvS44yMnawqa0Sf4kMq2
         G8lk1J9wzHnhVWsgHSWJglcGVvodjSX5rvNIYH5hZFen3/n0J0zvFc4o4FGK/4026HQk
         hRcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695752684; x=1696357484;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rdOeaLeHcwftMyYfA8G29tOCdXwXQaoJFb0mcu8r5zw=;
        b=NPhZxyP5eplMeu8PKNVrcoacv7g+ot5xpavIrXCr/iCQTicskVYHetTmi1e08jwgx5
         k9Pf/aVUnWg3HET49mI9FPoB6VJ8pbR7p0zcACADWYz9GIt94zpXwR8C4DXC+MSsUBNN
         w5v2k5O6y7jM28TUb0q2WU3eBd6g+7Zhl/Ueo0OARIVfjtgXYm5JACYY/ur6Cz447EKU
         /74iGTPe9R93jBY2LWAk3yZHUZCRJbMkKN5bUV1ndLS0ad+YhFpbemlVsfMiNT5b2UUL
         zZXgu64oNbYlnj5P/SwH5YhuruNTGgIj0UT880dOq7E1A7T2UbA0m1wNPoXktl8ousON
         JKQA==
X-Gm-Message-State: AOJu0YzFTgmHa88ySBd5MeMw1ncavPYfiz9NQR9pf382NjokJNS37Zi1
	wMADKcF0nK2oLfq+ILZVWX5w6w==
X-Google-Smtp-Source: AGHT+IFNPKWtqP96Z/0gyVWxTahuOivQkjQlQvuDt3caSQC/FoLkRgSGW7croA7ASQ1ChCEC2PL20g==
X-Received: by 2002:aa7:d0c2:0:b0:51d:f5bd:5a88 with SMTP id u2-20020aa7d0c2000000b0051df5bd5a88mr10428662edo.38.1695752684159;
        Tue, 26 Sep 2023 11:24:44 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402151300b0053090e2afafsm7020643edw.22.2023.09.26.11.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 11:24:43 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 26 Sep 2023 20:24:37 +0200
Subject: [PATCH 2/7] drm/msm/adreno: Add ZAP firmware name to A635
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-topic-a643-v1-2-7af6937ac0a3@linaro.org>
References: <20230926-topic-a643-v1-0-7af6937ac0a3@linaro.org>
In-Reply-To: <20230926-topic-a643-v1-0-7af6937ac0a3@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Luca Weiss <luca.weiss@fairphone.com>, Rob Clark <robdclark@chromium.org>, 
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695752677; l=810;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=j4J3bf93En8hfomc6iMl3gRDui2N6DxaHKguZItPSOc=;
 b=Z/8uVHWeeJiYMBhmKxURKKCY6E5ujoQW1IdowESmbyutCxeRpM55YuxSzaiPf3F/h1M6I0ebF
 Yo50w8YlEoVB1iHo9jiNgpsMDNM+4THYBPUM/ETvorOic57gT4f4kk5
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some (many?) devices with A635 expect a ZAP shader to be loaded.

Set the file name to allow for that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/adreno_device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
index fa527935ffd4..16527fe8584d 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_device.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
@@ -454,6 +454,7 @@ static const struct adreno_info gpulist[] = {
 		.quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
 			ADRENO_QUIRK_HAS_HW_APRIV,
 		.init = a6xx_gpu_init,
+		.zapfw = "a660_zap.mbn",
 		.hwcg = a660_hwcg,
 		.address_space_size = SZ_16G,
 		.speedbins = ADRENO_SPEEDBINS(

-- 
2.42.0


