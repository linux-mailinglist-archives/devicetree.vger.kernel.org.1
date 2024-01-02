Return-Path: <devicetree+bounces-29180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CA0821CBA
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 14:36:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5663C1F229CD
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 13:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 431F41549F;
	Tue,  2 Jan 2024 13:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mM2ELidf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9413614F89
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 13:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2cce70ad1a3so43187281fa.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jan 2024 05:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704202466; x=1704807266; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=34J+ataehAS0kN0wmOzRLl75fKygJv6uiWJvejhyOeY=;
        b=mM2ELidfJLWDbefbOhxedBkg1X/iJgGgdnWq4ZA95w8W9aVfcaL8DwabDa9oVOeEri
         OPJXL4hOxktd80nInSAf1f85MRyVNTxVplWKYvpJkKVE2IXAp7bIUePwxiUEiUyNm0ZR
         crgvrmhtl/ACNkqXUjwSvGqSFByapMAnPWSeHcNvPXFMTUojCuOboEvq+ieNHCFdAhLw
         ixfE0BNYZgmv0EVP1n9YKwFbzjVtyzwhL3uKGgFKn7YSWtFA8PpTHCz8Dx8uMyp2qg35
         2eM7rC7B0iFn1vlP4CKYMdglS7KQFvmAIlgYNG2tuSrbSSahohAWsvn0RJqlgSYjv45s
         6J4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704202466; x=1704807266;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=34J+ataehAS0kN0wmOzRLl75fKygJv6uiWJvejhyOeY=;
        b=FF/9XrkiBJPfrXYTaxWcuouas5VsJihABZWln3xeBO4O/zW81teS0jt9tpSdk7hSo9
         Muc0lkC0RIHpIMVbaVguG4Z+IGfrfC+2XZcJVBW9rBxzutPfHX4RjHtaZ5A85rS485Ie
         oNRyVg8Gop5jAKyzL0kpy/dVLcS9iDShnLN8F1v3eh8ahrudWhw+2x1bXVtdLyH7Bw+A
         MUBb4ipWhffDb0RT+yyHyDtcQA88WpdggFemsUdFIwBRzSvfxGuruU7sPxYGAlS5HNcY
         Pvs6UggBnGzpZ41mjEJd4jkC+Agk3egQTuFZP7V7p6LyHn9O59h90BrJO3AP3cxteikE
         PEEQ==
X-Gm-Message-State: AOJu0YwpnVCxim7NummdlQudrjBuRO+8mru0uRSfevuEdhNZyS+Z04FA
	eiy9Awt9AXCcjUiNzkIMrZLL2a3FtfGFXaluIO4jSRIwtCo=
X-Google-Smtp-Source: AGHT+IHXrc9Ym5F9eqiYgXkxGm+4L934dDO+blkfx9684d1nMXyIuClUdc1sNa3SYeW03dvIreCDIw==
X-Received: by 2002:a05:6512:6cd:b0:50e:7f56:bfaf with SMTP id u13-20020a05651206cd00b0050e7f56bfafmr5489178lff.129.1704202466366;
        Tue, 02 Jan 2024 05:34:26 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id u23-20020a170906109700b00a26af5717e9sm10950923eju.42.2024.01.02.05.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 05:34:26 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Tue, 02 Jan 2024 14:34:10 +0100
Subject: [PATCH 06/12] arm64: dts: qcom: sm6115: Mark GPU @ 125C critical
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240102-topic-gpu_cooling-v1-6-fda30c57e353@linaro.org>
References: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org>
In-Reply-To: <20240102-topic-gpu_cooling-v1-0-fda30c57e353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1704202458; l=716;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=tdRYL6qoS01TCJIXkVVITyvW8ksCa31Ur6gaqfY9lys=;
 b=435Q94/MvJOGykViraXp5aKhBpHNva5jUKmeYVW4xChvmxipKqCj72crKrLG/+SbxQrwv+Ryx
 2qx/6EJr8i8CFqNZtnV/nTHVCFoYNxVegFRghav3sFpW54/+9xoJOaD
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

If the GPU ever reaches this temperature, the "critical" signal shuold
definitely be propagated. Fix the wrong type.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index a8c819d53104..be51cbaeeb7e 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -3313,7 +3313,7 @@ gpu_alert0: trip-point0 {
 				trip-point1 {
 					temperature = <125000>;
 					hysteresis = <1000>;
-					type = "passive";
+					type = "critical";
 				};
 			};
 		};

-- 
2.43.0


