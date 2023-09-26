Return-Path: <devicetree+bounces-3516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF1A7AF299
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:24:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 6108D1C20834
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1F9F43AB0;
	Tue, 26 Sep 2023 18:24:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772E438BD4
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:24:45 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E025126
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:44 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-52f3ba561d9so20898720a12.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695752682; x=1696357482; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fImG1LGJjUdtZmi9fIr7EL8KTwVEILvKptZJzrzzi84=;
        b=XEKunLDPZUw2yXzXlMvXOrrJSmkA+OHZwr0JP2ug1tnLQ1G5tExU6lZaMExlbHxOqY
         p2GIyTm8eUmaQHSpx2KleUjYW4DrCYqv+ORR0uLZ3qx7HZVMkW1ycRaTBhHVtwvrE15E
         x6Ry/oTAxJ+NvRLQhPAGRxyF4pxTOxTRjOyTQDDXWnNJaDsPKY1oshtKCadkpoWKgCVT
         GUI3tuvwbdXyPsh7e5cFUMPlFxGsY7H/fC5OFbXCSRDv+eP/fLG4mnqrPRYwlvtfWca2
         8DXkdiBM2Allfcc5osumm+JaPUJ9z/CHidHYhnwkVbeqYgrYDNemkGM2UyjxUqlusCo+
         Socw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695752682; x=1696357482;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fImG1LGJjUdtZmi9fIr7EL8KTwVEILvKptZJzrzzi84=;
        b=d2l9jhzPaOPFTTjn6IrLXOiR3uDgKgjDGK9tB0OBzeiZUWCME7efvWXwVJbz2pTIws
         862y3WUbfDSH8aMNMEacbImS3GwM9HclyQBIVDBZGztVWKNCFj/3s2Pv81tiHoxrBLfZ
         OVf7VfMu+PRTpJnNSDYWCO2F+nP9nQ5T49JMVv9fygtIEjMTKL1oSi+CbcbBuf0utq+4
         yCztCyb9EDtRo7hxKDecCXJM3+2KldQj/bWBuachHgeV6XmVswEeldYEcUneQQE0tEbb
         r1/0f/ptQb3/jQlDVxWwBS+bPx8wfDwVh9Fb6EazfUYoV1PClSi6wBlgdGwvQgwsvoku
         l5Sg==
X-Gm-Message-State: AOJu0Yz8X+3NX9j8WkDNaUNGFMWPlBtSw4GoRh2C2mBHid0C/GQ1BkOZ
	abrS+QiuoqldO6wWPkOUzqh2rw==
X-Google-Smtp-Source: AGHT+IGyhzCX7pVh+DA0+lbZn90DwBp8MEe1mDcGOaXhO5brGM7FQnNVnsw4ZES8ExBZftUUH8qOhw==
X-Received: by 2002:a05:6402:35d5:b0:51d:b184:efd with SMTP id z21-20020a05640235d500b0051db1840efdmr5471808edc.20.1695752682485;
        Tue, 26 Sep 2023 11:24:42 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402151300b0053090e2afafsm7020643edw.22.2023.09.26.11.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 11:24:42 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 26 Sep 2023 20:24:36 +0200
Subject: [PATCH 1/7] drm/msm/a6xx: Fix unknown speedbin case
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-topic-a643-v1-1-7af6937ac0a3@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695752677; l=1465;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=3B0yIPSygi0wMpl7xpS+ZhhsZWi7J9UA34HRlycQuyk=;
 b=Iu9f1ructFVGASge8ugqNeXgxQC0RA2BFUwle16+fVrgAArXS0bQ1QC4HXS8kP4G+m1Yn6duX
 ykCLE1FvC4ZB+qXAkv5ObgAqFPAY+KWSMuSl/qkqVw74fcluxKFF3Oe
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

When opp-supported-hw is present under an OPP node, but no form of
opp_set_supported_hw() has been called, that OPP is ignored by the API
and marked as unsupported.

Before Commit c928a05e4415 ("drm/msm/adreno: Move speedbin mapping to
device table"), an unknown speedbin would result in marking all OPPs
as available, but it's better to avoid potentially overclocking the
silicon - the GMU will simply refuse to power up the chip.

Currently, the Adreno speedbin code does just that (AND returns an
invalid error, (int)UINT_MAX). Fix that by defaulting to speedbin 0
(which is conveniently always bound to fuseval == 0).

Fixes: c928a05e4415 ("drm/msm/adreno: Move speedbin mapping to device table")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index d4e85e24002f..522ca7fe6762 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -2237,7 +2237,7 @@ static int a6xx_set_supported_hw(struct device *dev, const struct adreno_info *i
 		DRM_DEV_ERROR(dev,
 			"missing support for speed-bin: %u. Some OPPs may not be supported by hardware\n",
 			speedbin);
-		return UINT_MAX;
+		supp_hw = BIT(0); /* Default */
 	}
 
 	ret = devm_pm_opp_set_supported_hw(dev, &supp_hw, 1);

-- 
2.42.0


