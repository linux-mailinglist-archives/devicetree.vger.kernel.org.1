Return-Path: <devicetree+bounces-34145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A63C8838CD9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 12:04:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5782A28AE73
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 11:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B745F878;
	Tue, 23 Jan 2024 11:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mc3kA+i+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5615F845
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 11:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706007729; cv=none; b=MebMUXfRluLhxE4PyMJ8vRyL91S74gXWsT/qVQr9DrRc9g7H1V4hue39kCzqJLQP2pm4pxoIcNpwhkgwNv1rE5DXzSf2VF2waSiq66fJcDfNM0YFyd/AoEp1g/mCulaw8KRP5OIzVhEGHpBdUiikju2kIBFVIDFhigzZ/KQIOxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706007729; c=relaxed/simple;
	bh=DRJb0q1Zs5m9FHxncMp+WtocUGeWENIn4hFZ3jMpbf4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R3gMYuS95Z43GYDrQ8f3HxFkvMN87pmh1+KvCG7oPdjtNVj02R298KsHNjwXNwYo4WMNrxM2U2YMlGPj2NRoF4gtMXR20IYmeWIrD7dLklPxXbmAX+EQ2AMMVk/dG65d97v64ROiaZuWQbXKeZvcuqH6n1D2WqVjiPOk0/FCBGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mc3kA+i+; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-55a8fd60af0so3148902a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 03:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706007726; x=1706612526; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQ/D28R0YKKKC1gDIsfGpJEeUBBXOwP0F91BqOnJzCc=;
        b=Mc3kA+i+nrMXCzs1IArxoLT1jBHBqYrn+Hr2n6vdCy0l3nBKcZWYkI2tsbk21gW09n
         2DKXleG6T0ziUsNvb/OJp3NRiaONy5cx5pXpGrZD3+8f77s8SMCq37jTtLljzNehnnvV
         jfEa812qPC5JCyF6DyndkWF76sMmXUIFFZhDMSqsBTbV2mwC3oDKLUyTDvLJRPk7jXLQ
         x7Z+eOd6HFPMImCXLlQ8dwCPRfoGVV4R3PJJwsIeP5pC46mjRKwYgYOWZEN1MpPxvmKQ
         RzbNzk41w03+9fek3sS53vNUUKFxE7RGlxpR+90rAN7P+/reubhjcrGUuQXc9cevHZf2
         Yg8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706007726; x=1706612526;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQ/D28R0YKKKC1gDIsfGpJEeUBBXOwP0F91BqOnJzCc=;
        b=EMyWThmmCrubMTHGObo3tBP1QKwDFTad29AHCtDxqzIuWgSYmynWC5UaORhlSFNgXG
         irEqVae4g6nsGrCwwoTF6nUgIgAhqtynTmp6yLIzl11R4ZPliT40TbmKOcLwbsNBj3x2
         OyzfyXcWu2LrSihSSjO1pjZvgxWNoOfeL69C+6piAK8oRtL3a3e3i7A9R5ed/3xjlWr2
         I76qehUYHKwzJQ1KmtkWUwWVlJZx+Dyre1w4XDQ/HXk2bxJBCyLDJC3+ERZPUbpjtGgp
         0SWFzUa6oVh+btKwzZpmiYfukxoDCignw2Iu7K93g3nmmqtW9uMCwGpaBMsW/inJAki1
         ER6w==
X-Gm-Message-State: AOJu0Yyq7uO9wLuGV3U5uy+GErvJYCvsiTavKih87UzH7k+X36PVz5Xx
	AGodUSB0mxA6xH765zHekBWJ8tc3zppiOLmP3kVLRaY8pPPg9gmkdMSQMOzJiLhxB+n/x/uV7z0
	g
X-Google-Smtp-Source: AGHT+IFWWqS8372HH7wb5qX1syXLHclPL2G8c1ikx7ZjkwZYpmvE3jXF+zH1+zpwV6q4Mao7jl3CiQ==
X-Received: by 2002:a50:ed14:0:b0:553:2ce6:1447 with SMTP id j20-20020a50ed14000000b005532ce61447mr390037eds.34.1706007726408;
        Tue, 23 Jan 2024 03:02:06 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id fg7-20020a056402548700b005593c83bdafsm11430074edb.45.2024.01.23.03.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 03:02:06 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 23 Jan 2024 13:01:25 +0200
Subject: [PATCH v4 11/11] arm64: dts: qcom: x1e80100-qcp: Fix supplies for
 LDOs 3E and 2J
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240123-x1e80100-dts-missing-nodes-v4-11-072dc2f5c153@linaro.org>
References: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
In-Reply-To: <20240123-x1e80100-dts-missing-nodes-v4-0-072dc2f5c153@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1044; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=DRJb0q1Zs5m9FHxncMp+WtocUGeWENIn4hFZ3jMpbf4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlr5ydtIofnJg/IfxCtIPZv5J6pSbBJyZ90spNS
 kXaNfMkArmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZa+cnQAKCRAbX0TJAJUV
 Vmh3D/95FZM7aRFpnp6BP1fcHJPLA0qOi95fQsRIA59t5LwzJQw4SzC+VEl4HOhSGn5AowRFK05
 tvMsw74SD8fdQaokyU3Y9/nn8rXoav58YaAKwi/wck1gDa0QguJcJiUaqPC9iUQkkitC/rishoj
 ptfy5ZQ0FGDkOg4tP8d5TaNkSF1HLnp4HbRDXYnVTrGLIJmnqA1impmEnyODyULtEXg+99SKAz6
 OTtDThkrlcYgmhZaDyTRrzJEHzSQlWqNyvkNjpmE3OP/EDldfwNpNLus36lK6vYWiAnKho4Va/q
 fV9y5OLRDQZmw6TFzo0Io7mDn4I2LJYqbGpf9UYNSe22hFQAMOk2OmHAyGm9l/MY0kn+BKG/ETL
 nAy/xhYVAEcqYg0qiKHi1FWtm3m+YrSKVrD5D8xgvVTSAEEIns0llZsTcB42ivzOiw+Q7xnNrU/
 bk7tgMSUCN8fmU9H8bXb/TLpxgsE+yIyYxyGTI4zgzW+JrIzfpP1/2ajlzgtqIn1oOxE6l58toZ
 VbkGs8aUDdZd2MU86w2oLFkAMr6o4o/nze+fV0RIHT3yDFo0LZH6gt12nIkb5EBluOiYp3QjPYH
 YGI9Fxzy0N5w+86payCo87h+CKPRKwtrKCRq8fePnJS48+xyku2Z/gwFC6Py8gx7FmGLFeBp5y3
 +17gVSOap5hEJXg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The LDOs 3E and 2J are actually supplied by SMPS 5J. Fix accordingly.

Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 8dbf6d0eaac3..e76d29053d79 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -261,7 +261,7 @@ regulators-3 {
 		qcom,pmic-id = "e";
 
 		vdd-l2-supply = <&vreg_s1f_0p7>;
-		vdd-l3-supply = <&vph_pwr>;
+		vdd-l3-supply = <&vreg_s5j_1p2>;
 
 		vreg_l2e_0p8: ldo2 {
 			regulator-name = "vreg_l2e_0p8";
@@ -367,7 +367,7 @@ regulators-7 {
 		qcom,pmic-id = "j";
 
 		vdd-l1-supply = <&vreg_s1f_0p7>;
-		vdd-l2-supply = <&vph_pwr>;
+		vdd-l2-supply = <&vreg_s5j_1p2>;
 		vdd-l3-supply = <&vreg_s1f_0p7>;
 		vdd-s5-supply = <&vph_pwr>;
 

-- 
2.34.1


