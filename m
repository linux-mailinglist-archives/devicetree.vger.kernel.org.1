Return-Path: <devicetree+bounces-5119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE8E7B54D5
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:20:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0E310282B60
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC8C21A261;
	Mon,  2 Oct 2023 14:20:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9072E18E11
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 14:20:34 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3C75D8
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 07:20:32 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-533d6a8d6b6so19254328a12.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 07:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1696256431; x=1696861231; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P1hZYPziDEWmtdRiUaFpSGZqLrCtBE6eM/yrVSmM+ac=;
        b=zHyiXBuX02GTWjhbEMuVda/7vb0nTmIEluWBJOJWDh2BNkmlDQBkhd21LlSqSRB6IQ
         g8YwPujM654dlXByMzho0iNUYZkt3AbpzyTlX9YYEBtOsF7FULUwHWsvF4xBr8vbC33m
         6NKDX016MSIA6YTit/C1QUxfWEJ1z1nqDPoD3o18aiCOagFA57zqH4YFo5bhnJN8mgCA
         EmzeElY+M7gA2wglSjZMquE28BrGGXkJZv1Tii3E0rWyFatyK0+/JG6fYfmeHVNmEIz0
         Dyul+Gn6xAFOYE8qY+To6TFUdcODa7XrvJszfpPXKDOaRjJC//NdRckE2rtH/oxcISp9
         WNiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696256431; x=1696861231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P1hZYPziDEWmtdRiUaFpSGZqLrCtBE6eM/yrVSmM+ac=;
        b=OYTs4cdwB9fIn30YFsBELNAR6QugrC3dNSID5/D2X74pMs/Xn9ODrc/oPxJV9++IuR
         GSyuQ5qGp3YooQNGayR67/d520aU33uzverrFuz/9PJ7OlpX/IoxRLzSWh12vbo8VdZs
         zENfkmEcFm3vbZkJn23Uz8k1y2Gdp3pEaRW192ZgGmExiV0f/nO1BhEriMh+OFYQVazh
         KPlbxK2fw8ejsqUsxsXwZudc7UAQ0IY0u+Pp5qBheCbNFGjmXYkwSL9QmlTxp2+LYuUq
         AheUTX8MFGGRdHevApVEltACSgKFnZZ14Q6cZtaj3DJeLg6R1Dj7tXpMwUQMew7zDDbZ
         trxQ==
X-Gm-Message-State: AOJu0Yy0tRGQ3Hr6UBjVXMQLXNeFNCqpr0BNcipJ/yuA86o06FSOITpL
	d0RWpy3+QwIgz8KAZpnDJzmbfg==
X-Google-Smtp-Source: AGHT+IHS8qXn+yYgV2nDhPjPMgXw9/Id9Vs7YQjL3WRjgJE3pFeEWP9RTn1o1Ihd/bOo2hngzdHi/g==
X-Received: by 2002:a50:ee1a:0:b0:523:3e23:15ab with SMTP id g26-20020a50ee1a000000b005233e2315abmr2670995eds.26.1696256431036;
        Mon, 02 Oct 2023 07:20:31 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id w10-20020aa7dcca000000b005309eb7544fsm15583356edu.45.2023.10.02.07.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 07:20:30 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 02 Oct 2023 16:20:29 +0200
Subject: [PATCH v2 1/3] media: venus: core: Set up secure memory ranges for
 SC7280
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-sc7280-venus-pas-v2-1-bd2408891317@fairphone.com>
References: <20231002-sc7280-venus-pas-v2-0-bd2408891317@fairphone.com>
In-Reply-To: <20231002-sc7280-venus-pas-v2-0-bd2408891317@fairphone.com>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Not all SC7280 devices ship with ChromeOS firmware. Other devices need
PAS for image authentication. That requires the predefined virtual
address ranges to be passed via scm calls. Define them to enable Venus
on non-CrOS SC7280 devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/media/platform/qcom/venus/core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 054b8e74ba4f..5c6baa0f4d45 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -881,6 +881,10 @@ static const struct venus_resources sc7280_res = {
 	.vmem_size = 0,
 	.vmem_addr = 0,
 	.dma_mask = 0xe0000000 - 1,
+	.cp_start = 0,
+	.cp_size = 0x25800000,
+	.cp_nonpixel_start = 0x1000000,
+	.cp_nonpixel_size = 0x24800000,
 	.fwname = "qcom/vpu-2.0/venus.mbn",
 };
 

-- 
2.42.0


