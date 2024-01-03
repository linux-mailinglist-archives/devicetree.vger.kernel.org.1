Return-Path: <devicetree+bounces-29440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C75822EB6
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:41:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F6EF282F75
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:41:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37EF819BCD;
	Wed,  3 Jan 2024 13:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h1ixBfMk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CF01CF8A
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-55539cac143so7208820a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 05:37:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704289038; x=1704893838; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUTCpmfzsSKDHjYlRAYYiQ/aykX/VSlVLVDx9q/aHss=;
        b=h1ixBfMknoaC4l+AUBd8AJxLIjHhdyqHNtr3TRY2V1hHkTm9QeSDGOvrG1GzBlZq+Q
         NVCTPRvFcjckYbw7Y6qRd5AoJ4ONtTKVESzq/rubsJ+DENS23TMIeAr1KGrbpqCe3Yw0
         v3sW3Z/obnwJ2/V+id+HCUx1KE9Z08MaYUzqTfLd6zhT5GjX7m4NQfn3DE/ZOzhK35ei
         smQdQui0GNmWoXV4sodszlxVuV4gNDVT4wV6TVGPOaABi2MEYB7P68xFTYdd7u/U8NRv
         l4VngCj4nKauf9etSdvfoWYSBL6LGYEU1bF43kR/SmQ31yXvIM0q+5JAyUJ0BfVJsHvb
         eQFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704289038; x=1704893838;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RUTCpmfzsSKDHjYlRAYYiQ/aykX/VSlVLVDx9q/aHss=;
        b=ZcMCTR3hgtxWVqKh++hqTvSTtAlfu/Nw+XaTVE14sR+x8w3XlxBE3Iwcn3h5ZUWfea
         UVozMcM9oGbIT7KeJKTxYV5+NgLXie8Y0e7ihCSIIZm28maTKsBMY+RRm/tSVmFBdnfq
         KAaplabd2hQ7PxDEkRS2e6ObFSCsEPBvAqS1bNeKcKr+J9mpa4RHjf62z5M2dEioeqjr
         In6syW3cbcsz2rtqS/YFdZG6GRnsKapzbidYF0i0kmR37eOv4PZmPABwlPjd+gqwVcNM
         ozz+3UWYGUxWfAlEVzcdG4yQ3ZyKEfxCxWgOM7d8k13jKABxuJVAhpBVbH36KTRrQKUT
         epGA==
X-Gm-Message-State: AOJu0Yxt97an/IFdo81hhR8xvXt/hVtjThF3fOYGgs0dvclEJZtU/6fD
	5pmb9VJwdJ9F6dpkQwRuqGeAXMn3KAx9Yg==
X-Google-Smtp-Source: AGHT+IGb2r7J18V8yKKCdqerodJ+VgX/4qpTBHIyyTYZHgIVHNAnqdK32Kg08Qc9J+Leig1llChqKA==
X-Received: by 2002:a17:906:1cca:b0:a26:9776:5ed8 with SMTP id i10-20020a1709061cca00b00a2697765ed8mr8882690ejh.91.1704289037859;
        Wed, 03 Jan 2024 05:37:17 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id cl2-20020a170906c4c200b00a275637e699sm6474351ejb.166.2024.01.03.05.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 05:37:17 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 03 Jan 2024 14:36:10 +0100
Subject: [PATCH v5 12/12] arm64: dts: qcom: sm6115: Add VDD_CX to GPU_CC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v5-12-99942e6bf1ba@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v5-0-99942e6bf1ba@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v5-0-99942e6bf1ba@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1704289018; l=911;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=WDI26IliceRlW0YgN7X8GrPWGyVd7988pOYar0kAAss=;
 b=01bznyiO7SHJ7u1n+mr2x5/l72XfL8vU3ZTAqXysZ9MQBbaRmXXk4/moJBIOB2Jy+kHXEQjaM
 l7nr6hxPSFuDoC/YFopLpiuMznUulnRmARQvej1R6ze5B6MQZen2SfK
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The GPU_CC block is powered by VDD_CX. Link the power domain and
provide a reasonable minimum vote (lowest available on the platform)
to ensure the registers within are accessible.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 30b140e1cec0..ec9a74acc69c 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1723,6 +1723,8 @@ gpucc: clock-controller@5990000 {
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
 				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
 				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+			power-domains = <&rpmpd SM6115_VDDCX>;
+			required-opps = <&rpmpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.43.0


