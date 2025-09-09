Return-Path: <devicetree+bounces-214735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9710FB4A3EE
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 09:40:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F8111C204E3
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 07:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0534C313264;
	Tue,  9 Sep 2025 07:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fkWxPlvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF388311C07
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 07:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757403258; cv=none; b=AiwC7ZISNFURXSF8XVOUFJlzUco3UaV1+nkFlWcPJBelvCdTEIg8G5Tf3qyhlKmCDoaZ3twjFFkQ+No3/tuxDpSJw8dguZo8B52EGVKavwnM4XRzJVYEh9wZjHEBshVXnkz5hTc09NXHoFWYgT9lACR96PzUA+8HxMohKxkjwM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757403258; c=relaxed/simple;
	bh=jhpfAllvRjUQlvp/6puQsgbTZIwx8t1Hc8Kbpiklwqg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jp+3l6+7dGzyvofIrzDiJ2G1aKkm8OAep8ljTRSw1J9Ahnk/oDfBMvmMYhUDaY2ufGtsvTbZYVzSNlugq5j01oRkiZEuGEBiGTxS4U0ArT3f6MMtsbFr2mjzzBuEirPY5v0EkUqi38pknzWJxtyxmPzbYoFEhYDo7J92uojOpNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fkWxPlvT; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6188b793d21so8429316a12.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 00:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757403253; x=1758008053; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xIWkj5abBOD5CGfZVD0eUu8lpneYawl7S35HHz5a778=;
        b=fkWxPlvTk8Yz5W28fD5Ou8a5rKWK+aBNnAElaRHKB0Aw3LdVivejDErxjksLcUN1S/
         R6pHuPv6wyRi/uaZQ1CqpWBaD6L0BlYHnmUbSeHOe1Ont785OMU7vS9tl1QBaPcX07Ka
         jHQVT4A0mXgWOI8WJlBk8Ll2oTXbRSkhvARWyKzjleBx2D9tUzhcmVlD05rW6ZdgHuZw
         J9LCMVZoHI77z6Mypi0AvfuXat6qzFsuGXLhrEZv+4CTJFyQNyjYU5QFU52tkiNklMFd
         KueBig/sO+11xU0NNcMy3lhNhor2c1be+ejrqf4rwnozug4h9+N8qU037Q11Zc+aiyoA
         gvqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757403253; x=1758008053;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xIWkj5abBOD5CGfZVD0eUu8lpneYawl7S35HHz5a778=;
        b=hhjQ7u391Oxba3e8/nqyUG4NFfSzoH0NRx7id1hN1w+EdYLTbgxbw6H5vabO9rEaGg
         l3el8IC+TYM6BeWrROYZaxvhoQvW84BgXt+12xGxCD6odt3YzIY4GbrdPWD+u+lOWSxk
         gyH5QhI6Y+5GNHMfCXFvTjJ6Nnu6vTAvVJ4bbfc7lh7WSRwxWP5qTVHrppCSCJP1qxQZ
         F+q5OY5JIaXqaTgJAHdVsGKU+kh+xbXQSvmk4n0UIGd7+Pr1eEzGTvmpLvCXwcookLpN
         /5diC4aKE5BBVquEiAxz39RPCwTZmmhIRiEqmjwLTZD2pfwAArdY84dAcfJZKWc920xs
         3J2w==
X-Forwarded-Encrypted: i=1; AJvYcCUgHWpH1AzWWXk1OMQ819HLzZrtwye/xc4fpeEVokzw+xTs7ixhuzs/qM18sqLbIpZvQBqRxUrnvsJo@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcdfwn9iQiNaJcyf4IiLsb40c47U+8GxDJhpBpPcN5ZO5BdL19
	5WmidDBrqgKXjn/f3FTYzsvMmvZDSZt+r+QsXd5ByZKYR9oaRdhKYUR8mrq7AiShFJY=
X-Gm-Gg: ASbGncuu4lTmK+U0x8tK/54uJNxxb2hyhh3igDQvTWHBeqZ4VgVXmziOZmxj2wfYHW9
	Ye+FGbtz5xfYZTycg4OSMR8Dh6r83Fj2cpoHholJcrZnwCrZaoKKHKR3bP+e57WpNMatTrVpQTB
	sRZqlKxyOJr1Kzh9KQVK6IVhtDLNWoy902+tU7SzD+lOwWvrmyInTu+ZleV+P5ZUDv7YnZXvgAD
	wbT/ZHimYlt0OCEL5dp99yawTz+jksW1z8XdY7ERxAn7jyiE8R91+8DcOQmLdY1wnYClyLWU1ka
	9JStXQ5hLk8FL9Hq9G97JtjNc8K381aSzOpoD+XOcsBGaMcseeU0AvxuJn1NBndCslWPNrh4cW7
	5UQvtUs4OT6WJi5WSAw86b/hDotgZDf6l3A==
X-Google-Smtp-Source: AGHT+IE0JfJPrysG+ilt1P6XQou5Dh9p7qghCInAMInYwMKKh6nyr5AwYwkSehYOlA2CdaSMSROzTg==
X-Received: by 2002:a05:6402:3549:b0:62a:91d5:8844 with SMTP id 4fb4d7f45d1cf-62a91e4cee2mr3840644a12.21.1757403252689;
        Tue, 09 Sep 2025 00:34:12 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c6a264285sm226976a12.2.2025.09.09.00.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 00:34:11 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 09 Sep 2025 10:33:35 +0300
Subject: [PATCH v3 3/3] arm64: dts: qcom: Add missing TCSR ref clock to the
 DP PHYs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250909-phy-qcom-edp-add-missing-refclk-v3-3-4ec55a0512ab@linaro.org>
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
In-Reply-To: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1849; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=jhpfAllvRjUQlvp/6puQsgbTZIwx8t1Hc8Kbpiklwqg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBov9ho+JLGxomLt25iZX5/tjQqlJECZ8uFp2zeL
 Cl7wISPeSSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaL/YaAAKCRAbX0TJAJUV
 VuLyD/9OQNNgomIbCRgZHuDmHgU7/hgXhVD19B2LyP53pmSJQuX9lemU59oQC9bdFE/7V6xdrh1
 Z50yP88jFTTR8lZyOOOJs53p2XvAUO6nhURGYwqcpp/Ff+2LCif1YmjDJ0XkElCQhvXG5g3mcsh
 HjOmNn0Doqa/WPo3nqrD3glt629ywhGJL+V1knazqdHeYKxD1itncWZhZV9JL2hp69N6d6q4w8Y
 FIVRbk2x9LsLnwi55yBFBc9TyyP1VGLvdj0sfXiK40neFOlm1m7gEP7i1gZ4cxApLy3Pb6bTuc9
 x8WcopxeCZQk0CPms2xx1fGJHs/ehMnWi6CGx6aPpKuRMvGPE5NfqIVqwpXg3HqJaPjOohYDXmR
 cbnjjvSHe00nDQKfc78qogtuXwzW1R9eYpj26kqhETBxBoYDghOIbyOMOOcx3lmIoLySh9ai62x
 I2FSYg0aDEyudcMjNoD5xLQ9C60Y7cVFvUogx3f1OpTgchckqxoJ5yakVGSEfPwR+52kndrDKLH
 gc9Y/7V5NKRoNL1GLatG8VOfVfds/6XHyoxQnhINTP2p0Q55vt2UgELkNvY6dH7HquMumMQwVI7
 T8fy5Tc/tpV0oAfqEJYExzKYTC3leASB7xzYx4u4YU2QpDWdojmziwVDU0xazZuqLF6Dhdd+5wk
 QLJVT9BLUrxd+Iw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The DP PHYs on X1E80100 need the ref clock which is provided by the
TCSR CC.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So lets attach it to each of the DP PHYs in order to do that.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 737c5dbd1c808300041cc8897ca1f7450e16e019..551fa270e6ecbe6462ebc1736a36be65534d3ae0 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5670,9 +5670,11 @@ mdss_dp2_phy: phy@aec2a00 {
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5690,9 +5692,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "ref";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.45.2


