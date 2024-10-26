Return-Path: <devicetree+bounces-116016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFC59B1A42
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 20:00:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DC0F1C20F69
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 18:00:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7667C1D79A6;
	Sat, 26 Oct 2024 17:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="meCUF9iV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DBA1D63F9
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 17:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729965597; cv=none; b=HEojd/3mDMJVjh2xki4Zk8jNrXK7xeYv8g3Pb718YGlxA7D7GbKNSxdMaiEsvvB4zIaQdMj00HnxlQwLAgKfIrriEcmXZZ5ycfy23NSERoopmRlwFv6Oc8hMFhe/TP06GnmNZVP5yKc3XF8lq1IadtWoJLO7Z38GCP2SkVtCyi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729965597; c=relaxed/simple;
	bh=sKr/BvUYAOgHY4ZN/Rmk88OHIStViu1F6gSvWhlDBxg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IjuKSPEdoPkEr/Jx+aKWett/SqdNxf0MePPG4y4DA2xcFHFpp8tJqEtIxHX6PmC9SszgL74phC/KLXodZhJaMr06yMp2teJfreZ8Hy5Y5v83XTIfNJAzYUr3RJ2EN0zHyvgTTSF5Ij9wBWLDbaBft8TqsKTRC1Ix2Vd9Q52CO5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=meCUF9iV; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb6110c8faso28234091fa.1
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 10:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729965593; x=1730570393; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HC7ge2GOnUS59w3CE63WILUVafzgzFctamSgq8O3ZPw=;
        b=meCUF9iVHngXK+oq4yUEm5igZ/abXODbOWbYK9OcAw0tESS5DgFH0+tYrSYiT9NZOx
         ULwfCumTh7j7oWPDEhJ3VOAPqooMz/lKZQZt5O0Dl+lyXZE1/vGM7tIkJzc0O17j47ow
         +JNmKsWvjmfH2le+ICd79iUCVDed27IUxMh1reFXMgKFjrghiR4B57VPQpKjJfPYGydl
         xaAO5ZdgHQUbczUNmA4FB9nyZ826CRaFR0roz7xPM86EGHkJrUktKcQsHuhfh74uLKnX
         7S94PGiOvisv6BjwHizKRYgXPZpaWQ2ByqDfgjowDtjDDp26jGAKRLW6wlO9vVn84MPp
         b5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729965593; x=1730570393;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HC7ge2GOnUS59w3CE63WILUVafzgzFctamSgq8O3ZPw=;
        b=tkJBApL4gsEAoW3LHB9/i5QHL5dpEsZdtgp6N4jPuIABz6/tZSj1wyQK0S8FpzQ+mp
         OQNcxeVkh/0h4yTtMXCssx+gCEAGlhUAW4y6vPIJNlqwYINe0LarhDmVrZkE1QXujexa
         nuh/xxLf7jLtPbrr6a3wTEM/flPSrvoAxNnmjTkjEx7xGtCcueKacSXM4daEIsfs30qC
         K1zOM2cszwUD2JACamDwEWiO1l5h3jfTe2Ghf0BDZ85POzT5lunTwOo0Us6ahQgEc5Ut
         VTXW/eoz8E4ySNVohdVChpX9SCAw5P7sNUVr7w/MagJ2yN1KWOWbljvpRhYf0mdRs9H/
         XyOw==
X-Forwarded-Encrypted: i=1; AJvYcCUe8X3DxjUqQYi/VMQOqVj/lrVxLonJyFS0nuf8AJKlvGIaek7ATEc9wI+UQWBKCvM5RcAxbXVEafEF@vger.kernel.org
X-Gm-Message-State: AOJu0YyNvnx5t0Gpj/9WYrlKSFX5SBUhn+k3cxfuitdcFmpCOyN/eYD6
	IuVUv5NdG09mKYm+MdjYCDAB+RPoxieyfKDVHWDH5SKz/bkojjLK2Z1ouO+6gmA=
X-Google-Smtp-Source: AGHT+IFJvk2eNmqZSTIMMdLk2drsnkEsAJMC4XT55QA6zfIctduoHpgiK823S4bxnu7DmuXh4AFEog==
X-Received: by 2002:a2e:b8c3:0:b0:2fb:382e:410f with SMTP id 38308e7fff4ca-2fcbdfdb11cmr12029921fa.26.1729965593257;
        Sat, 26 Oct 2024 10:59:53 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fcb453e53esm5970631fa.71.2024.10.26.10.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 10:59:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 26 Oct 2024 20:59:41 +0300
Subject: [PATCH v2 2/2] arm64: dts: qcom: sm8650: correct MDSS
 interconnects
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241026-fix-sm8x50-mdp-icc-v2-2-fd8ddf755acc@linaro.org>
References: <20241026-fix-sm8x50-mdp-icc-v2-0-fd8ddf755acc@linaro.org>
In-Reply-To: <20241026-fix-sm8x50-mdp-icc-v2-0-fd8ddf755acc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Rob Clark <robdclark@gmail.com>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, freedreno@lists.freedesktop.org, 
 stable@kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1617;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=sKr/BvUYAOgHY4ZN/Rmk88OHIStViu1F6gSvWhlDBxg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnHS4R7YHfOs4vIQeSo2IOXxytBfzXP+eHYtHzL
 0nOcTCBSWGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZx0uEQAKCRCLPIo+Aiko
 1X3rCACPYqXa+RxJnVbTxsJwFRK+SLlbiS+cH1oWzz8Dx17wMpLr5kcR+oSiY42YGNV5g7xNtNy
 cmHF6Lce4m8UGHXobrl+NMJXqE77MuIa6xh7ND0vZ+FgVRWyXbEK7q134sK2u42WXJ9O0kPQYhN
 GlPzawZy+sg+iwfe6IkLOktfij65TS2pzSnyMgAg5mV2qZIG7Nw5/FeSh7fuU8DPBUq2OMB5YL3
 MEUnkoWEki/n0DbSZWzXa1YsfYbdJH8JBvNa8tMttePSFko4o2gEuD8XzmQTgqFNEEHCDRYv+yC
 +/OPUfSRK8hNGyZ303ln8mAkWa7Murcj4CemJEVCtKQRxw+A
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

SM8650 lists two interconnects for the display subsystem, mdp0-mem
(between MDP and LLCC) and mdp1-mem (between LLCC and EBI, memory).
The second interconnect is a misuse. mdpN-mem paths should be used for
several outboud MDP interconnects rather than the path between LLCC and
memory. This kind of misuse can result in bandwidth underflows, possibly
degrading picture quality as the required memory bandwidth is divided
between all mdpN-mem paths (and LLCC-EBI should not be a part of such
division).

Drop the second path and use direct MDP-EBI path for mdp0-mem until we
support separate MDP-LLCC and LLCC-EBI paths.

Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Cc: stable@kernel.org
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 173e092b15e2..4b54063c0e0c 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3455,11 +3455,8 @@ mdss: display-subsystem@ae00000 {
 			resets = <&dispcc DISP_CC_MDSS_CORE_BCR>;
 
 			interconnects = <&mmss_noc MASTER_MDP QCOM_ICC_TAG_ALWAYS
-					 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>,
-					<&mc_virt MASTER_LLCC QCOM_ICC_TAG_ALWAYS
 					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
-			interconnect-names = "mdp0-mem",
-					     "mdp1-mem";
+			interconnect-names = "mdp0-mem";
 
 			power-domains = <&dispcc MDSS_GDSC>;
 

-- 
2.39.5


