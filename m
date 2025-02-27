Return-Path: <devicetree+bounces-151931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 457C4A47878
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 10:00:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3CA8A16D562
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80089227599;
	Thu, 27 Feb 2025 09:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QvGh4gH4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9CD0225A24
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 09:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740646841; cv=none; b=Zf8w/dh1CtNP8VTMgev79Veo6+lpMGCMVxUetM7sUpyAVFj5dCzLAzHcg3PyQGq39ddE+oMyRXc6f8o9gL/4tfqxQkymdqT2X1r6qET18FZv+k9dRaNwYuBx3JEzBoX0KStxcKBqDnR1+wxAA3zMFEobiNfSpUPdWeWaRBUfBzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740646841; c=relaxed/simple;
	bh=cGYHXokxVyCZVHTLRKLJGEGhLm1BHzPUmbHg+wxc3W8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IZBm3jx/VE+PPP5NQGN3iN4cAIVMmdMOhroF9H/JKDNUdsGWzwObJeIRoTCChc5zN+02lrSAifafskYNOGJo6Qe5m+D966O4PutmleY14a5tWIn2o2rmEBL0BQNHjAS3HJiUSqkKK/KVI6lo5GrizkX22bNRcmzbNqy/4MJ2sog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QvGh4gH4; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4397dff185fso6078295e9.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 01:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740646838; x=1741251638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NUMcWsjzRSuUJt/eRA3M0Z08Ceit+E/KlQusAzGZ3Qc=;
        b=QvGh4gH4mdOHfjNkZ19W6fJyDEu5CyQEqhZJRKdFub2JYV3KFD4uUJS+u2XGo1Gghz
         n/OOcXVl31dd6b5YfkU2UW3nUWPIztZNbyQ4UsUa15VqUCMkHODoTV9KTYOQfwMvYvbs
         HpNFQJmCuFkvebvaHsc0HOoPp4amyEBGNrMHE/NHQ/wTS6q4igTmhp+GULtbPgvEbf4K
         QFmHymyJc2gSOJWSMlYeyhqFtV7LRrw/aArsmbsa/pKiVr/XT8LIxvGyIkgEy+Uhmr0I
         WMJuSvXpaHXCPHey7BQdZb9ilh8xZoj12JDFmSCoerQpnK9kOa1Y93nE1q9SHFCxIxy7
         v/8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740646838; x=1741251638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NUMcWsjzRSuUJt/eRA3M0Z08Ceit+E/KlQusAzGZ3Qc=;
        b=MExB8Vwms5W1OhgpiOMTBFHIJdzrsBOX9k+YTOnNwVDQhsh96vtqqHHFQVANBTsvku
         HP2pPq9WERnCeL/zbdQk2AIajFLW0N9tAmETvjnB2lniolZGUQjKwKLW6LXNsItGC5Af
         xuVJtLLkELuWfZaGbrnpMfZFqUbGJa440Dflu/US4SWLYuUvw5h04NUR2WFCuHOGFIsW
         QNfrUJDq2/S0qQ4Gwr5kze+iQyx5GxJAOlRXoYwPP2VzlbSNHKjjJBR+gTqoRJmtEMdU
         m0NVr2/tVREINYUhXOmsavK7vtaH4f6XZRaAM3UWhTUNeRMSraHGggQXf6ZR0RGk/PGJ
         l2Qg==
X-Forwarded-Encrypted: i=1; AJvYcCW6cBKCLPY+kDyw+XoIq8oIWeSufo+sauykcKe6/3104LuopTe6kuTg+25nYBXOGtg7hEdCvBCESKjs@vger.kernel.org
X-Gm-Message-State: AOJu0YwE6B8hmjcbvtIPxv4m3EetqlVZYfXgYMm2EnDaO70wUoSbBVqF
	zV4S+3N39iiBOLc9L29uSlQzqXti59btP13kkBwoqy3ExL6HkEdEko1KNG5JQkg=
X-Gm-Gg: ASbGncsBWwCGRhaGLd6VR0B1XxlPAXfJQmtyA1Dp+j0mFEdAi0wg1f65QNTQ5HpRf5e
	VKeLa38lCUhTjpbHeRIRxnMw41W/NzGaRIQF1EiD/C/BtyGT1N7N0arbMqf7DOb9nE6AxV/rOHu
	2AUCs92kukFQlRXC2M67IvJQJychL3vEJPvWXnDMeJPFj3KBHFcIVtjjQatCb29d/6NTrEJgWFo
	9b3dYNnc3O021kh2sj26JIvdSiTAO4sC4K/vWpjE4bDPpx/SrKjDbfiaN1zYGLCiwMSkaC0Qxon
	jJwEp6IMjvjz8ITF89+prpLJf3PI0wpuE7TZ7n/wFZdHqE4=
X-Google-Smtp-Source: AGHT+IFAR/zqNw50nHwDi76ySdj7Hl1VbATouAR8F3pbM/yDUa3A8kzUc2bpZle6+uIQsvhVUiMyVQ==
X-Received: by 2002:a05:600c:4fc8:b0:439:9496:17df with SMTP id 5b1f17b1804b1-43ab8fe76d2mr54409195e9.13.1740646837915;
        Thu, 27 Feb 2025 01:00:37 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba57145esm47170715e9.30.2025.02.27.01.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 01:00:37 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 27 Feb 2025 10:00:32 +0100
Subject: [PATCH v5 1/2] arm64: dts: qcom: sm8550: add missing cpu-cfg
 interconnect path in the mdss node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250227-topic-sm8x50-mdss-interconnect-bindings-fix-v5-1-bf6233c6ebe5@linaro.org>
References: <20250227-topic-sm8x50-mdss-interconnect-bindings-fix-v5-0-bf6233c6ebe5@linaro.org>
In-Reply-To: <20250227-topic-sm8x50-mdss-interconnect-bindings-fix-v5-0-bf6233c6ebe5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1397;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=cGYHXokxVyCZVHTLRKLJGEGhLm1BHzPUmbHg+wxc3W8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnwCmzyG921aczf4S+Wf/fUUMYMyLKKPpZOnTHRwHd
 jtJu9COJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8ApswAKCRB33NvayMhJ0V5FD/
 4qJGfeqekL+VtYWZLzxQJOqkkjLmoS3De6ahtaP5vgOuhg3Q2tof8+1vftHTJxUxK6ZOX4G1sqzsdP
 Afh5mo/dGHFC4biu/LqwJ+j7WJrOo6li2dY/nwl0HwetI/6fdXTwOnGnCtTBJ64exXpPV4bIsT5iMU
 jfopw2wcATQLIXkEpKlaZVPyUyyaqNLdJumssY3bFV23RuMpfL7od5FEE3JCRxOpNKCl3HlBYJF+Vt
 d3QraFgjVuiBz4x86tl9SjICN0twKkpqk18D16ks/PfvtkA81cXr4RELRHIohz5k7zwaZoVRFXhUiA
 EfCZ/zKCLYYH/Cz7hz4hcGfaxbv+eEz146MW59Kn6EcDD2Fnq0/kxOfV3YLpHQ9J4JjyOB5OTKml2T
 PtFkgomFBZO2FW2qSS5JDyDfc0ZplwElrRZFd60RYx6tFUFhO4z+w4Op2713eBDCIPzQACFHcT2Cl4
 ntM7uwfluN7Vr4rOdz30Z9eXzoNjCjMQ+g34+5E5tExqAhtG20qRWsDHIC8Tkfw5bldIduBkF+lMCC
 E+EGMDUgjoa0Q9hbSvpg6GsHGAcesaLRQAqPDsXzaMR+lBmr3diYu/5wa6qbyFxSnG0fGA59f7Vrfh
 LceUU7l6WDfQ820wcjYBbJmL0dnfSbmLIKw4AbBRd5bZV9WsTvRxvkjXhqng==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The bindings requires the mdp0-mem and the cpu-cfg interconnect path,
add the missing cpu-cfg path to fix the dtbs check error and also to ensure
that MDSS has enough bandwidth to let HLOS write config registers.

Fixes: b8591df49cde ("arm64: dts: qcom: sm8550: correct MDSS interconnects")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index d02d80d731b9a8746655af6da236307760a8f662..18bcb4ac6bd8433a0f10f4826f4c6958444c080f 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3355,8 +3355,10 @@ mdss: display-subsystem@ae00000 {
 			power-domains = <&dispcc MDSS_GDSC>;
 
 			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
-					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
-			interconnect-names = "mdp0-mem";
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "mdp0-mem", "cpu-cfg";
 
 			iommus = <&apps_smmu 0x1c00 0x2>;
 

-- 
2.34.1


