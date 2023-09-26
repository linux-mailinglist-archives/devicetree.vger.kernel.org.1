Return-Path: <devicetree+bounces-3518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 788297AF2A1
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:24:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id C4FC8B20951
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB99C43697;
	Tue, 26 Sep 2023 18:24:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D3E42BFA
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:24:49 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5CF3126
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:47 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-53447d0241eso4042875a12.3
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695752686; x=1696357486; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1mXLi+0rIXccn25x+LJrv2RkBxKqdDr4aU+Gv5GVsoM=;
        b=qvdlTL4BzurGFCOGcZshuDnvSoaEC9Mq/N+iKHOo4GKJkciE5GyDteT1HiOH6cnNdS
         nU2G4VfEPPWJcotzqBtm52lE+xkBacPjXscnEZ/jfgXIMMeSQJeTpxmNV4jQ5FM/oQLe
         RAht6h1kgw0wDtNosz2Epv7oLPmzdngwgIhJwMv6bnkEY561e2Tgl2e1Y5SE9+HE8bT6
         Arbep1HaJaAU5vBy6WXgUjPQDEXZFtUEP2t2uqXrB7Mqbmh2uBPLXGV6wGIEYhq8uIlT
         yFsgqVm2+9ZZy3mCZIAvShjXXA/CeG1P/gElwVML657qUEMXj0zX3p1rubG8ii76HR8h
         Tj6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695752686; x=1696357486;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1mXLi+0rIXccn25x+LJrv2RkBxKqdDr4aU+Gv5GVsoM=;
        b=luJkFlSoNv1vnxarjifSP6xe0yU+1jP/pjRPk4LH3A1hGfpCfBJaRrfsHpjBcarVFb
         r92u/O2JyLUXNB1C6kiIz9DbS2J2gzrRmq3ftzyVP7/4bgaK25CZ3CvYdsVN/9x5+96m
         NkIUL76xyvTGSij+HGtiA9XdF5GqbIPEhkipw3ddPghsM4NhGwS00TAG3rJZmGBfmD68
         jhKWwBVbJik3H6ZQOzCTDLWJjMTzTSCTOsC8L7lO7BaxLfeWaT/+Np2kRFRznnVUTkDi
         eR9LJ23+EbZgesV/I0V5JSxsR66hj3MubO1i3woFe62Oy3xGdhIbZVVMg8mXkA5lID/L
         65Dw==
X-Gm-Message-State: AOJu0YyBIPqXiwbM03kvph1q+FJGCBR4WDynC4QwtzXYGKrNeffVqTNc
	Kdeydc94qDU4XW/xOls/Nn94ZA==
X-Google-Smtp-Source: AGHT+IGh0ktD94Pk4wwsYiXRvrPoEyd0YO/XrDphwvk3G5mbEos4//shaUTYKbj122Zo01fAUAE68Q==
X-Received: by 2002:aa7:d7c7:0:b0:51e:53eb:88a3 with SMTP id e7-20020aa7d7c7000000b0051e53eb88a3mr8851616eds.25.1695752686393;
        Tue, 26 Sep 2023 11:24:46 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402151300b0053090e2afafsm7020643edw.22.2023.09.26.11.24.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 11:24:46 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 26 Sep 2023 20:24:38 +0200
Subject: [PATCH 3/7] drm/msm/adreno: Add A635 speedbin 0xac (A643)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-topic-a643-v1-3-7af6937ac0a3@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695752677; l=751;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=4Rw51EV+m1pbTmR00ftxlMR26PkphHnsyFSR2kZ1LeI=;
 b=SXUVrGfcSRMs/58bky5kYAUilsScEIoXeRRt6NDpibqMT9twn8G3KlhPx8o0SOlAHp7e6EZAZ
 ljAxQUAiqQsAsx7kSjWbCIUQoLnRFJOt84DDBQzWxWuw9V//8Y+N+Ur
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Downstream calls this the "speedbin 1", but that number is already
occupied. Use index two.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/adreno_device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/adreno/adreno_device.c b/drivers/gpu/drm/msm/adreno/adreno_device.c
index 16527fe8584d..4977fd759b5b 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_device.c
+++ b/drivers/gpu/drm/msm/adreno/adreno_device.c
@@ -460,6 +460,7 @@ static const struct adreno_info gpulist[] = {
 		.speedbins = ADRENO_SPEEDBINS(
 			{ 0,   0 },
 			{ 117, 0 },
+			{ 172, 2 }, /* Called speedbin 1 downstream, but let's not break things! */
 			{ 190, 1 },
 		),
 	}, {

-- 
2.42.0


