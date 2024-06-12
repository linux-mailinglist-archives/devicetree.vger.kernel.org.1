Return-Path: <devicetree+bounces-75200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C2289905DFC
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 23:48:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 60867B217F3
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 21:48:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4899283CCC;
	Wed, 12 Jun 2024 21:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y+Z9KsJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815D784E07
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 21:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718228901; cv=none; b=CB2ixknsIAZEaKq25oH2TtFnfD240iNPwbUA1n/Lmnqi2PwerMFrL6+fEtVl0Gg5pikiwJaCEK2IXxBPP0h+xKT7fYRZGuIkasDgfm4YGcmOYqQ8YIDEumtFeGvBBQRCTrjyb9DREDnF9/pal1mSefrPzK8Zh2Rd6PhhrY5PNq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718228901; c=relaxed/simple;
	bh=52Tt3NW+ANKZQb7cZcBFFzPLEvp/e4YDY2iQa91g6pA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KTSqSrtm/rdNq1t6G8Vg6873wUV6YfMix+1js25VIMloW+Cljlcrb6wpD9oMWZM4Vf+qU8+frPvgB7iQUlark8s73NaqljbpSCq4QJ2btg9OuEvXZy+dr2KWCYRiVb6VEUHHo1oumtFjOYGWoqK9BOYl2+9amABx5q2QvzenrYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y+Z9KsJ/; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52bc0236f04so49645e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 14:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718228898; x=1718833698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cFE+Zn1tmEAauc9dII1QLXSVzsx3AjtBMpF3fJlb5C8=;
        b=y+Z9KsJ/AbUX9edUq/zJn5+RgW5TVpCmA5gt/0AND3cdsBUNrjPIvTvjwiaPb7yArA
         TeKKfszIp5QmF1eZd4IuZQp7gzHLHofyyZAQLxJejy5PMZc44nrIieQf2VAEW4BE8hPD
         Twv27EToG7kiMDAc7nDp9/ONwf+aFaVj+mORKsu6bbTQQcVeKBI2zAz9+MidV6nkvZgA
         gQlx3VKD3btMK23K0qw3fYsyANlUfejMDgeYJnx+vUkLPU8rNLFdtad1MKkNGfpIIQiC
         +5fMhxJQA9A9DF+XJ3JopK+2GyEcg1C4g7j1NV79Rs7iOrJy+rQeK8gfaewFGHyss9ou
         NRxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718228898; x=1718833698;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cFE+Zn1tmEAauc9dII1QLXSVzsx3AjtBMpF3fJlb5C8=;
        b=qLcvhP7EI2stmq/BWeTvw7SCgxdzDIlzCAAoDMc65Dafp1n5T1hU+Ho4SzsZtvBxNr
         N/WSZGrmlrrUsU6JUzh3ANoG+saKMM6xLlrtAq9nEdJJunOw//IecL0+lnvYZG39TBnc
         GMBjw8KfGBDoKFNuI/z1g3jcrgKTkmWZgETfGLUedMt6Xnm/hs7krvUh135gM29D94YF
         8YeO7xSIIlrE0M+3D5ZtfcaJG8BED7giFCQTTHpyKfiTo5dCl1/i8LI/4EuDOuW5FeO5
         uhADGGo2hY1/UEtXqcCBwZLcSpTbYW1PZHgk9W5Mypsr+HZTTtNG6VO0wZX3+41euvon
         1CWQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7jWvjZeJ9Mhqpvbf0B14gXh9md4mLiWUlF4iiSuY5p++lXl2X6+Z05LSpyJaRDnrtpbzhXpOoySozKQIS4fitHiA27UvFKdSuog==
X-Gm-Message-State: AOJu0YxDoFDLuchH3yVDn+qKIxKvnIIwhXDyU7O8nSjBlXGeviFQBttH
	2XmqJMHjn5xO//fMrxh5oRSu/zxjZE+df7DbLxbS08P615Ll3L9V0/g/rcCg0AQ=
X-Google-Smtp-Source: AGHT+IHBkY1T5rNg6UcaRlgOULtgIQE89IiT4QIFhldMkA5FIlJk2StjrJMJgXHuM9swnpPJsa33cw==
X-Received: by 2002:ac2:504d:0:b0:52b:b349:c224 with SMTP id 2adb3069b0e04-52c9a342daamr1496377e87.0.1718228897641;
        Wed, 12 Jun 2024 14:48:17 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c912a84d4sm940264e87.185.2024.06.12.14.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 14:48:17 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH][RFT] arm64: dts: qcom: sm8550: Change camcc power domain from MMCX to MXC
Date: Thu, 13 Jun 2024 00:48:12 +0300
Message-Id: <20240612214812.1149019-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Any attempt to enable titan_top_gdsc on SM8550-QRD fails and produces
an error message that the gdsc is stuck at 'off' state.

However if MMCX power domain is simply replaced to MXC one, it allows
to turn titan_top_gdsc on successfully, even if MMCX is remained off
according to /sys/kernel/debug/pm_genpd/pm_genpd_summary report.

Note that at the moment qcom,sm8450-camcc.yaml gives a definite comment
that the supply power domain should be MMCX, and it may be needed in
some certain cases, but at the moment they are not unveiled on SM8550
platform.

Fixes: e271b59e39a6 ("arm64: dts: qcom: sm8550: Add camera clock controller")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 4234c92aafe3..a429115524a6 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -2754,7 +2754,7 @@ camcc: clock-controller@ade0000 {
 				 <&bi_tcxo_div2>,
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>;
-			power-domains = <&rpmhpd SM8550_MMCX>;
+			power-domains = <&rpmhpd SM8550_MXC>;
 			required-opps = <&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-- 
2.33.0


