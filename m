Return-Path: <devicetree+bounces-207242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A44B2EF47
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:18:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4658318974C2
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:17:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B75972E8B81;
	Thu, 21 Aug 2025 07:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g6ntRx2+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADB5E8F54
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755760605; cv=none; b=NgvYZIaoN8jgAVchLMzKnTOSY7PcHTXxv5TJ7rNp7BmPbaw+Z7I42w5fhu2hauqyJ3R4iQAap2+IiBcYYIi0rBFLiWYKajoAbu68KTHduQtx7PNyHyPmwdG2Pz4sRxEI8lOx/LkMI70dk+YkBI9eysU9rwkBLdV+3EYMnSXkd4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755760605; c=relaxed/simple;
	bh=C4TnU2YDn79d1hZKPF33rnSJzJUcjFicRADIi/s+iJk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YhveX5AfBGl4xApQVVzqjgjFFZjIWLdtoFbcD6ErysLEv/o4xyjzOSrBgglvBq3tBCZqXm9eG1DR19rlDJcKSYvuQ1NlWMgR3SdBTLg1nd3RPk9/CqGHAtL2JrWQwkD7d+MQTM0w3vqEgGDQ7tFGe2miv/Uug0X/6lhKAl+66F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g6ntRx2+; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45b4d8921f2so2201595e9.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 00:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755760602; x=1756365402; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zuj+iAOhtgXhlr4DasU1PClq4DgoiYTAxV9eMIo4W6U=;
        b=g6ntRx2+Ry00Q+dCpbW9zZH02yuZ6fRl/TqGG6ZGWbrqKdCOxoZUedx4n/hGfDTVfL
         80rZgnDvqSqqUrJJEhzrfnoWHxOziOpxEIBUvkToN8zRKznh8kK8o7f6TKRZMCirCe4Y
         8pRQsvkNCArMqKtYRh7u9WsCP06JCAUEjPf1oi6BDKo3H2NYwvpCwBTUVlgFISPaZLk8
         QRRBHMuNukIMJ9AFRfjLqa+2SrsrmgQYr+Lff/WnOYLv3YGoWNHRUyQUch6K3D3Vad6P
         PFHRPKLO9X0841uhKQkMRjn8xIHEvrvD6IMf/VWMH8uRbXoiqGaO34+8nsck55TZe9+r
         OzWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755760602; x=1756365402;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zuj+iAOhtgXhlr4DasU1PClq4DgoiYTAxV9eMIo4W6U=;
        b=EMh2vDzEX19jQKGvq1sXL3r42iIyi4q5U5L98AYMPQkQMrvdLO6lnM/t80wJxxGqha
         i02v6uXXNQyZSVIw34bFiGQfug/qa5gprdnq1mwq2TRs75oAJuxsv+PeIIErygycUI9s
         nqjSjwJB3ytpO684W3a6yN8WPA+V0GXAamciJpCzYMdqo6ZJVZEev6RYBkFmnjhm3kgG
         0uAV405LPCZUr9/Cu8Vp6iQ8i6Y28SNNyG8mtYjd2GS/p+oU+peOElGIZXfpeRwdmq6/
         WXJlTas/VbHQ57M7XEwhaIAdtu1Swt7t1DHscEACUSSNMPWiV6zueIFZiBaSqJpEbzqS
         PpYA==
X-Forwarded-Encrypted: i=1; AJvYcCVADwNkwugbnTQ/YnwKcmua9CovuRhVnDQA4IhmcKAjI68olwCgbuH2yImo7xqvcFp9bOqoOhglMCJj@vger.kernel.org
X-Gm-Message-State: AOJu0YyeXA0c0/2cPJ+mUv0fp9BypgFM/isj1EkI5bnryr+/c7NiMsC4
	eOgM+1VKB3xsnc/RxDjiPceWY6Bj4lWeUguVXC81ZBSTqvtqGZOiiiGw8qODSCvpHto=
X-Gm-Gg: ASbGncs3nhlevdLwNmbcIeWLPBajTuD0BhuKW7l9mpokfGrZ/jrqQVH244GcAOeAjwo
	Zvsoq91mK7ELM03ayt/8aYmo53OULwWWZ7ytyWA9KiplMdQ/ieQfwSsWEjDAzxjr5f/moc/8Av6
	e9yS1I69WLDx0PAHB6VeX5T8ReZPUrwH80pxmX3zwbvQtX19ggz00MgGy0HnI4QqLBYpRQbljCJ
	3/xT0LDu8mo9pavkPhYa2wD6iWlSG9FSlxFiNXbOUFOxOmBuMTPgCwDQVeLMDreERWlWYRsx487
	sxOWdrCG6nPfmfo1F+iXcgLNMmDMfjeD8Aj5e4dfbcBZr2WducbznLTSrJA30lERQHbIPfC6mEf
	Jir7FviPuq+tFNf2oH5SQJTcRzObtnLf8OSDqhGtHlbom3jGBU0ikUA==
X-Google-Smtp-Source: AGHT+IGJe+v/D/zvvcQHp/h5nCArCNPTY6V4BGLZHSguvhpo3s0pSr4jaX7kD4c1ukZkk5jOAQdaRw==
X-Received: by 2002:a05:600c:4e90:b0:456:dc0:7d4e with SMTP id 5b1f17b1804b1-45b4d82c58dmr10894035e9.18.1755760601907;
        Thu, 21 Aug 2025 00:16:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4de5b52esm14411455e9.20.2025.08.21.00.16.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 00:16:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 09:16:34 +0200
Subject: [PATCH 1/6] arm64: dts: qcom: sm8450: Additionally manage MXC
 power domain in videocc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-1-a510c72da096@linaro.org>
References: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
In-Reply-To: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1344;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=C1mW1P5f/eV3xTX9/EGe13scB+qV+ElK9sPewtfbTHI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopsfVmLcLIyJiavTq94HnPflRqEsshLo/CKvwgiqa
 feb8OqeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKbH1QAKCRB33NvayMhJ0WeiEA
 CVVnYiAUPOjrJ5QDcNOt3nRoMD7B99TrNJ+AiZtfT1B/sCBQ9xx0tY0RtrbUBWR0qSSVWtQNF+HwQo
 CxMMpErEEdOhDmmJBbEZx3AfikF4sGrGwI+m7Da9Pqs5lJIv1dNtYUMgY4E1jygUaMgjLmeJtF2fug
 Vhhuy/1/oz7ddkUjLQ0+rkwoylqXUaMT8UwOTZ68Ax5x3g83RmHRXmkqFqIBSUqgafxGDJ37t7HuXZ
 TwJfXGlE7l8/wi5svVeBEVcSMwzNnX3JyuRSB06ae+XriOfLS597Ztkb24z3n3kwuVtgwJUF1D/yU1
 kaD2VJEdgTZUpinUU+TehXox8WTKZshGWkZmMVQArz4RbBuverNrL0rI8mJBiDW5IYGufMiocEU149
 FU3/lhNe+dibdj8Fb96AW8CNMkomYvFhl3+nnVNN7kioQIhhL8I+eYvUX2G13+h6vkfDC9NyxD430O
 T6hV/aU0dAXfVHyEeLQe4N5TebyArKbCoJ2HUT788GnK55hL1zTonz0ZRfTBr9VRUdzjMwRHix2uVD
 BISHB3Glui01T1Xak2pnSLSFSNbOrjLKc5j8b5vf6BWnwvdioFSGokotazFXPG58qkCR7xbqPaFa91
 mAwfVuRwcv383PKuJsveyP2MvsAj69lsaNFcyTX+u5E7EDgLWVgGfd1XSN2g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

From: Jagadeesh Kona <quic_jkona@quicinc.com>

Videocc requires both MMCX and MXC rails to be powered ON to configure
the video PLLs on SM8450 platform. Hence add MXC power domain to videocc
node on SM8450.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 2baef6869ed7c17efb239e86013c15ef6ef5f48f..8f6db0d78f738b14c776735d6b3ae9233b165026 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -3199,8 +3199,10 @@ videocc: clock-controller@aaf0000 {
 			reg = <0 0x0aaf0000 0 0x10000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_VIDEO_AHB_CLK>;
-			power-domains = <&rpmhpd RPMHPD_MMCX>;
-			required-opps = <&rpmhpd_opp_low_svs>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.34.1


