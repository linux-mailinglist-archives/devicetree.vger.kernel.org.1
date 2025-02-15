Return-Path: <devicetree+bounces-146910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA43A36B7C
	for <lists+devicetree@lfdr.de>; Sat, 15 Feb 2025 03:43:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B75C7A13D9
	for <lists+devicetree@lfdr.de>; Sat, 15 Feb 2025 02:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DAB6152E12;
	Sat, 15 Feb 2025 02:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oEL4Ke/+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0939EACE
	for <devicetree@vger.kernel.org>; Sat, 15 Feb 2025 02:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739587408; cv=none; b=SSYkqV70QCqM0HHdGjt2Q1BfcBwjrMLtlOB74MzC3uSFvojYyGS9NjOi4Ut/qyRN9ibhOUTkvxOPkA6qctcoUZM+aE2oi4ofU4jV//BkkPMGk5ZfyRAha4VssP6tbXVUbVLis+gi/Errjusk7FfXzB9/96gVvJkxuVRcxO4zAEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739587408; c=relaxed/simple;
	bh=9j/9FIaaWBBCwyXbC4atV4Cu86L4USLeemodl+MqRFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=T58BlWFNMNLxZ/ZFEqf9HWEhuLSpDeou9SpCXCUgJ4kXFYy/nFyw9JvM/9ZoP/Rr7proXsHn9ULU8iO5+DJuvlwaY6n12oAgen2qRqM237DDLc2SbqTh9WN7InEelNg8I8w8QWAv7sRT9Bni4whV+GU5HiQd8uYsghclQ+31LHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oEL4Ke/+; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30795988ebeso28240661fa.3
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 18:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739587405; x=1740192205; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KsytpkeDWch9OOUacWu/ahBywG5zzK36WOiur+uJ4is=;
        b=oEL4Ke/+0MmdCcg7/qGQrHy/NrpaBmxnpRQQw20FXXx6xrIlQZmn86+i7K60uLq7ul
         l1Yu+ARoq/zb5oLsNzi1V7YkSx0K1cksBcjRGiVHsXLEoOf9HZYX3i4YcnaGdXcU955/
         csrrf4eC54NbYdQGF5P7S6rj8P8mJrlqb87Cuuw5E9T0+XVudnLFdRF9DMsQRnDe2iI0
         NKUsjY7Z9uZDRxTNg5MnAqisoKyzj4FJqBdoQHaKqsk+2VBz035Euug/o66mK3ZtTXIV
         tV/PqCHdfFSOAm42UCs4tdhBI4z5Mtp9nIdJ+OT6Jy3X3AVTxRUASMUVUW6rpygf2PQm
         MA6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739587405; x=1740192205;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KsytpkeDWch9OOUacWu/ahBywG5zzK36WOiur+uJ4is=;
        b=gdozr4GZ2/5DUrm/N1QHNE9MVuRJhhsPs49eKvhKkV3jSkyqidiI7eCKz6vx7GIscB
         vGigOLviGFnWiaIIg7edxTgGWo92kTGHlceO870AfYHVRe3ktTioPNCDjgUMaNTp1EHi
         C5o9ZleOtnOLAdjF7l2n0imZhN6XR0widMafyOoYHgOLgSKwygKQNpr45t5mM1OKWu/x
         vT/1SXAlw3YYTq+atpUPt+kdmyEK6HMSqnx805aBwCSlpx+9Hg2NxPt4ZXX1KbAE8Y1u
         uLA4pXuOpTk9Gfs06Eqx6QjH5LVWHbQmozuWfO2oIZa9TDTv3iVpyNDrmN73lzkVIHlU
         99Og==
X-Forwarded-Encrypted: i=1; AJvYcCWNgU4okQJiq5FmTWGU0yqzf94NzR/07IXr/PP7crb0IGjmOq72z714CuGo0g5RCd3F6WFqFgzGGfOC@vger.kernel.org
X-Gm-Message-State: AOJu0YxfEeWIxGCWvI9va8Hj0I4BpPlqCgbNKVEcItmEgyOtJ2H0lab2
	8o4zeI8BBrdlzJwRqUnFenumDvU+la0OjDYnsWuGiJxRp+LcMzNNLX4DX8E5h08=
X-Gm-Gg: ASbGncuc0B0HAAdTvPjg3byp21x2QwAn77Bl8fsHgHoiHaxZevhlTv/8UjA8kpwWsMT
	YaBrIlqx9bGahG9A/Jqb6nl1X3Gk0oApQ74M1QDQkr1s9EwFHAwfrYcUQbtkKKsKwAsAYVv++wB
	IfOROlszJ05nuggbjNzBjPQDhAd+DMgAxDNmnzlOYRFk4WLg8Uh4K5F3Pts5XUqgJ2CwAVBbbqS
	Msn7+mkr8hZgoGjmeCyCDW/vorJyHi/FMRp5zmfXrJHpSGQLjl2LEPlW1xtk0EEHWQegPIpTwSU
	f3rXId4ly2pn94Ni3X4vFkU=
X-Google-Smtp-Source: AGHT+IH7WIIVkhfGtPcFAsIIJsecPvX1Fe9bGVWlnqNjWhLb/C0tLsYzYgcbeTOXetDPY+4aKQlAwA==
X-Received: by 2002:a2e:9995:0:b0:308:fac7:9cc9 with SMTP id 38308e7fff4ca-30927a474acmr5962741fa.14.1739587404031;
        Fri, 14 Feb 2025 18:43:24 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3092937d001sm1242681fa.16.2025.02.14.18.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 18:43:22 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 15 Feb 2025 04:43:16 +0200
Subject: [PATCH] arm64: dts: qcom: sdm850-lenovo-yoga-c630: make SMMU
 non-DMA-coherent
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250215-yoga-dma-coherent-v1-1-2419ee184a81@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEP/r2cC/x3MQQqAIBBA0avErBsww4KuEi1ER5tFGmNEEd09a
 fkW/z9QSJgKTM0DQicXzqmiaxtwq02RkH01aKWN0p3BO0eLfrPo8kpC6UCy2pihV8GPHmq3CwW
 +/ue8vO8HOScBEWMAAAA=
X-Change-ID: 20250215-yoga-dma-coherent-ea255630fd7d
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <quic_kdybcio@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1369;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=9j/9FIaaWBBCwyXbC4atV4Cu86L4USLeemodl+MqRFE=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ/r6/54dnr1tQv5Hi2KWSflPi8nUc/gW4ffS9DazC0vT5
 D3Pjsl0MhqzMDByMciKKbL4FLRMjdmUHPZhx9R6mEGsTCBTGLg4BWAiL4XY//AI2jNvkTrgP/ee
 CF93pnJNzAJtpdtKhVHWdyzM3121fv5/Wq3fv8zi2u2zU6qT79V/1n+mrNEpoPm7bdPR62FvfBJ
 K76Ue/fvg2SHujJpPwa5xLGZ2d1W1f7xwnzX39UX2r5rFQjrTLh7wTe7/It1d/kLlRc/Oxc2RyU
 oZH5tKlzQwmLVEFpYHldz3nFi/c4bfvfi5mnu1spdVRUnfKIm0edY+U4Zn0rNJeQL3d234s+3Lk
 amVTXoTD5z/5eGwQi7ARK9R2/7yZ97tJ5i+n6x1ST277WthxlRTgQ+mwXqN9wWlhUNeXmtTiZ3u
 UDnrV+SWemZ9FZmLGdGFG61XvPX5ZMCh1c/+4WGO/WZNAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The commit 6b31a9744b87 ("arm64: dts: qcom: sdm845: Affirm IDR0.CCTW on
apps_smmu") enabled dma-coherent property for the IOMMU device. This
works for some devices, like Qualcomm RB3 platform, but at the same time
it breaks booting on Lenovo Yoga C630 (most likely because of some TZ
differences). Disable DMA coherency for IOMMU on Lenove Yoga C630.

Fixes: 6b31a9744b87 ("arm64: dts: qcom: sdm845: Affirm IDR0.CCTW on apps_smmu")
Cc: stable@vger.kernel.org
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index f18050848cd8892666015c8182971ff0567747b7..67a60ec33e8cf701a672696e7c7bd85120950441 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -342,6 +342,10 @@ vreg_lvs2a_1p8: lvs2 {
 	};
 };
 
+&apps_smmu {
+	/delete-property/ dma-coherent;
+};
+
 &cdsp_pas {
 	firmware-name = "qcom/sdm850/LENOVO/81JL/qccdsp850.mbn";
 	status = "okay";

---
base-commit: ed58d103e6da15a442ff87567898768dc3a66987
change-id: 20250215-yoga-dma-coherent-ea255630fd7d

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


