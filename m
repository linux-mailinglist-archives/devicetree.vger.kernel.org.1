Return-Path: <devicetree+bounces-3520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CB27AF2AB
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 20:25:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id E601AB20990
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 18:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7990E450C5;
	Tue, 26 Sep 2023 18:24:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF5642BFA
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 18:24:54 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92724120
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:52 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50437c618b4so12900492e87.2
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 11:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695752691; x=1696357491; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JSsmJJyHe36J6r6QQN8EBPervMH/lsHyGZmLHEQGT3w=;
        b=qRef7QQ4Y0aE/PfLnNoJhKKwy3B2TYzDdfrvuoUXh3IbUnkdzfkGyGIcQKjQqGeQ3Q
         wu4SEEUCpIhGJEttpiLU9ngucPS+xS0ifvAo4uVZGeJ6Kc7XruNokiJkEWrn1sLU2bUb
         0XPPMvT5S0m8nmY1dBRMq09Qss89sJ9Qv7MKrx4DpMIUq62Ov4yuftKLV/IPgFwlY6VC
         D8ZJH/VTqJVKA9Lqa9wMm/5Kdm9otCjxo/hJe9g+NptWcRe1nGV2ULiqy6DOWFLV1dqx
         /bLLJHYQn6OYWoEz4fHcwmF3x/erOoW0GEQdF1dWmbnfOrpwvzGy10dDqzys5cukkwUR
         zKDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695752691; x=1696357491;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JSsmJJyHe36J6r6QQN8EBPervMH/lsHyGZmLHEQGT3w=;
        b=DZ4FlHsoFQm0FbOX37I4TrXFKzjss5ZVWf7Tqh68po+kfclGFItADYniYztteLHAaK
         76CuxrLH5i503VGZ/jzvLXzjJ3DA1KCCE9LxE9yBwtgcApR2C3buV/KFC+YKCKtPAM+P
         Jxj4myOwAYFdNrn8NEuro/v2yQvMxfGryaFyt7x5kZeBGyvEzxcOyEmq94eDrDi+e8PX
         v9Uxd6IW0xTKgiYV5vZ9Kke4sWct5MHZsXQ6BFSOUDKq6e55u1XFLAiPEhHOepPN8HpV
         G09s7r6soUTXdn80dhY28U6AvzvAsc9eONFpnIFeFB15IjFYFa2rg3aP22mYeV75KTyE
         WIJg==
X-Gm-Message-State: AOJu0YwM1AWGgWqzbOfgYFGXJhlnDCD9/1VK7bzbBa51bfg/2ey8aT95
	unHmRHw4gB4CEQgphNMyFjdycg==
X-Google-Smtp-Source: AGHT+IFxdFFgpcBTFxSLcZfqdtgfPTF/TNGZldeq7ysgqWnx8RGOLQ5gHMDX+UzFDSjdg3j002TJ9A==
X-Received: by 2002:ac2:53ac:0:b0:503:2877:67e3 with SMTP id j12-20020ac253ac000000b00503287767e3mr8396426lfh.6.1695752690659;
        Tue, 26 Sep 2023 11:24:50 -0700 (PDT)
Received: from [10.167.154.1] (178235177023.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.23])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402151300b0053090e2afafsm7020643edw.22.2023.09.26.11.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 11:24:50 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 26 Sep 2023 20:24:40 +0200
Subject: [PATCH 5/7] arm64: dts: qcom: sc7280: Fix up GPU SIDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230926-topic-a643-v1-5-7af6937ac0a3@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695752677; l=1149;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=OKCYVjhQ/19k9GeBxxh+l0sjJaWU5GkjdhxKB9u2/vs=;
 b=9SVEap5bj9/9iIFUrp99rqRpCkF1yJSJnavWYyJzILyjurm26Pij46Bw+/KnOwd6frqVCvagj
 hxwquK7i3gkByj7w1dl5dnEr24gj8ym5NJr5mweF32LNem2LLWjiRad
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

GPU_SMMU SID 1 is meant for Adreno LPAC (Low Priority Async Compute).
On platforms that support it (in firmware), it is necessary to
describe that link, or Adreno register access will hang the board.

Add that and fix up the SMR mask of SID 0, which seems to have been
copypasted from another SoC.

Fixes: 96c471970b7b ("arm64: dts: qcom: sc7280: Add gpu support")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index c38ddf267ef5..0d96d1454c49 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2603,7 +2603,8 @@ gpu: gpu@3d00000 {
 				    "cx_mem",
 				    "cx_dbgc";
 			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
-			iommus = <&adreno_smmu 0 0x401>;
+			iommus = <&adreno_smmu 0 0x400>,
+				 <&adreno_smmu 1 0x400>;
 			operating-points-v2 = <&gpu_opp_table>;
 			qcom,gmu = <&gmu>;
 			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;

-- 
2.42.0


