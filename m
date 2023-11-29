Return-Path: <devicetree+bounces-20156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDDC7FDFF5
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 20:00:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B6BD1C20E40
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 19:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81335DF14;
	Wed, 29 Nov 2023 18:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uDSibUdF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64CC119A0
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 10:59:49 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50abbb23122so200578e87.3
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 10:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701284387; x=1701889187; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lnGcnoNWNxYJ5LHFVrJjGBCQuuXXbkPVZWF1kgt7oOA=;
        b=uDSibUdFAS/421inLoohKdxmrZqSg0kYBkoTQ8hQPygjtsjpLhC7sMuNY0MlSIW5hP
         pmS7WrgTaBugEbQq3INXT4ld+ZgsM0ZMNfR0pFFkIhE9/wv7B71krwdwp6CutYl92Vb7
         h0SR58/GzKKLIIrE8D+qsHqjIFl1dXvWwyqest4Ipldy7MJ5tI72vhcnCrcjBpjMZfhw
         SjAw1ssSpUjpQK8C2OtsV14WLM7LPmS5/rQbSnDLAN6HANzN6BOJzBNifm4SFVZS91Wa
         ky4vr6cPqqKQdydYnfSvRtDSVb3lcpupVkOOVqqDEa8ymDOuRaO2MfIapR7qx+5Dy7JD
         3SFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701284387; x=1701889187;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lnGcnoNWNxYJ5LHFVrJjGBCQuuXXbkPVZWF1kgt7oOA=;
        b=BzX4EJpwr5HBIebblOxsrMziimo/GDYXOfOeiYl+/r+ZnWMbfWpbDgmPtl1NHrJAB+
         J3JSd+SfQ4WIUXsatwqK7DZ2Tj1L6dhe0UYAyyQSK8N7PeTGUVViskCi+IhtJXZ+9vbv
         2VWoQO1GZ6sxsKjrYHN/0AbagQFYzHGYrXUSwFDXPnrp+7B3ekXGCdy9M0LXwrBbiNKG
         AtQ+aHvIzgtricgl57Y5FTz3blUads7dTKHTbaSYXk4wM/87dB8/w/U70sRSYup7VUX7
         QL2Tuya+f9mTtnD53rT0LruO1Y9LmL2HOhiusA8sVQ+a5RCyDqJebF8/724PN1DGgBYj
         QFeA==
X-Gm-Message-State: AOJu0YxIqrLEuzuVlBBPY5qRn36CzDi0GZKYA74976O0F3DBjwFX5+Bl
	tXxb+irylJ4q0m8yl3kUjL6MFA==
X-Google-Smtp-Source: AGHT+IH/0P2l8fz8UPKkQxCN4CqZ3p7c/w0DYNi0k3AmNkoJCqQqfSSpXsOrbD1b53l0JOT4PQKTmw==
X-Received: by 2002:a05:6512:15a1:b0:50b:c457:cbe2 with SMTP id bp33-20020a05651215a100b0050bc457cbe2mr2626176lfb.16.1701284387741;
        Wed, 29 Nov 2023 10:59:47 -0800 (PST)
Received: from [10.167.154.1] (178235187166.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.166])
        by smtp.gmail.com with ESMTPSA id o11-20020a1709061d4b00b009faca59cf38sm8160232ejh.182.2023.11.29.10.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 10:59:47 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 29 Nov 2023 19:59:31 +0100
Subject: [PATCH v2 12/15] arm64: dts: qcom: sm6375: Add VDD_CX to GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v2-12-2a583460ef26@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v2-0-2a583460ef26@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v2-0-2a583460ef26@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701284367; l=718;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=druZ2Tf30UXyUj6qQ5Kb3ShmK1CnSMbZh5vHm6E5a7Y=;
 b=HEm3TAZz84JQRknTXQafnd3Nnamgh+9atipFBnVNp6a5pu7VQewSDbSe/lzleQhY87uPYuPOl
 lIADpQaM0IMCA3/cBxxJsB/pcKtmxGV3KXhFvhe3PWPuI5Iag3B33Xf
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The GCC block is mainly powered by VDD_CX. Describe that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index 2fba0e7ea4e6..d6d232586260 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -934,6 +934,7 @@ gcc: clock-controller@1400000 {
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
 				 <&rpmcc RPM_SMD_XO_A_CLK_SRC>,
 				 <&sleep_clk>;
+			power-domains = <&rpmpd SM6375_VDDCX>;
 			#power-domain-cells = <1>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;

-- 
2.43.0


