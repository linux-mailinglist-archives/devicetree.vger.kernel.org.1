Return-Path: <devicetree+bounces-168152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE568A91AC6
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 13:27:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCE60447890
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 11:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DFD23ED40;
	Thu, 17 Apr 2025 11:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z9TAXcW0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460D223D2A6
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 11:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744889231; cv=none; b=RnL+7NQ89PfLe5K+q7D0Z6vfGJiFfAGxlMpIMeFxyx3+cLUu53JQ75k1c4Kcp6TPL3MSjJdkQbKZRwSNlGxM8nTu9sX9I9uWOS9P+vwOzlUr8dbDoCA7cdlaB8rKgf3SGnq3N7AX7GgrYbb0OzRzE18hBlYp9BVHHk+9q2EQkj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744889231; c=relaxed/simple;
	bh=hDddIwvlTDMzReVuUyCkrtqQUet2IXs5iUQX60KMgaA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fbZY4dtRhs/X5eLQuTVfXbBXPEym79MOTyOn27sTw743lAg/hqOIG63u0KswOUmMUwwW7c5+1aCv9vodl2tHurZLdtDhcCHysyME8bRO7rLFwlAebWzSw3aDi7ZdjRwCg99rvukk51kO4D1OuNcMW167rqkFigML8DpcSDcehbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z9TAXcW0; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3914bc3e01aso373443f8f.2
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 04:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744889226; x=1745494026; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jgi1FQ5Hy/QuNveGTgtne5MVjuvQZSqeo7o4egSVbSw=;
        b=Z9TAXcW04nmtXvI8nRCsOd7I2QIW6PSILHCk2GSJud/vZu41UniREoRfcZgrxRp2JW
         oFoHV61ojvGYAK2w405TO7LorskBo5q7NbuNcRMxDPJU0x7WNNpUQ7ZDLz5tM3CW0blt
         9J4Zc+djEk9UctDU8Wy9sSrj0QjsTziG/IpOsmWhEtDFc6QP7x3BCemH7YX4FsQrJ7em
         2oYRlESbPsb+uAl2HR7vOrR3+Ub398FWoclcE2wF7PtXBGq1D7o3P8+gD8xp0cloeNZL
         QJWbPn3WBevby+lwERiIvY5D04gbG7AwRvoXPatyn+yAzkeWfdfptcYYalWUShCaynO+
         nJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744889226; x=1745494026;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jgi1FQ5Hy/QuNveGTgtne5MVjuvQZSqeo7o4egSVbSw=;
        b=uNPP8/NtuUuIuXXhQQeejzMtTNl7TS+ewFfhrqY8o2rG1MMOJC4/cQ6vNSzoxk8I2i
         tVHVxEprFNg8qTYCq83LF2Pi+UsWqW9LhF97qO/TfvRpP9je64LMeJ/4xyVv92krXLQ+
         IoMml3hG4KDtOVHkzfq7bKlNmT0/28yqR16Wvb2gvhVrmx0OOiBb/BxNS662guDthAJ+
         5UeAJuG+7WuDrAYgsaERMuahU7lMxtKOX+AlmGWQebMDpZri9Vv1cQ+zYfpo8y7Bkyt/
         6/C5xSJ7z6zaPTeK2s1ioxfXhXi4kgpDvnrMSCBIHMmqdFPSVWZnln26o3xLUiy+Eorh
         9Izw==
X-Forwarded-Encrypted: i=1; AJvYcCVoJCwz9g7elh+aSmIAsVlVVIhinig/xvzU1fT65s3ry8m07FaSUCUtVmcTKSt3vJnSTf21rruXmqDU@vger.kernel.org
X-Gm-Message-State: AOJu0YyoYgNsj+5avmbl5ZE7On4fg+YUkhyDsliLXQydsDI1jwXmb+FQ
	spjm57COe+kcPBcXsaAQBTsdwUbj7EabkWNQRZNH4MJpt5xLeKvmyinLkgCXmLY=
X-Gm-Gg: ASbGnculRvkj9xJadnSook/VFiTLfNy1zZooj4aQi6b8dZgdPszvdy2R0y07yUqLC/M
	qPvWphzLZC6s6CLvD91M0TYQLuGjz2tpCZGjD1NJG5Nx+/M13Ho5TdnuPyEZJuPjJ3qBAI4jwDV
	AM9rYi7DwKJu5I0CXLtopGq+g3HBnC6rGdAVHxzCjqqxN2lDjqLEeiTcnRh4fqQ2phQ3wmeRnfO
	jHsP/Ly3X8xaC6AqLzwCFNbzRyGFx5ygLtj9jJrTRn0uFOGnH7/6XsMJLKV+QQRfwWoYNJ9cwbG
	KGAVCzPWu1zvBWCPduaMKHhnRqyRcqj2o/FZgOzzpt8Zv+4Oxh+qZ46pI7q1M8oOU16HjBipVS/
	4ZW+Nyw==
X-Google-Smtp-Source: AGHT+IGN81sMeD9tcxfnFwYfOV4hKuARvvD9rpzZ33eZh0pIDM265CED5xrBR0aBqKfLf+uRTRzidw==
X-Received: by 2002:a05:6000:430e:b0:39a:e71d:ef3f with SMTP id ffacd0b85a97d-39ee5b13fe8mr4740139f8f.5.1744889226436;
        Thu, 17 Apr 2025 04:27:06 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96400dsm20144063f8f.11.2025.04.17.04.27.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 04:27:06 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Apr 2025 12:27:02 +0100
Subject: [PATCH v7 1/6] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250417-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-1-3fd4124cf35a@linaro.org>
References: <20250417-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-3fd4124cf35a@linaro.org>
In-Reply-To: <20250417-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-3fd4124cf35a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2

Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
of previous CAMCC blocks with the exception of having two required
power-domains not just one.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 46b79fce92c90d969e3de48bc88e27915d1592bb..17e044dbb3b6de278d446eaf448561333e407843 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
+#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
@@ -5116,6 +5117,22 @@ usb_1_ss1_dwc3_ss: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ade0000 {
+			compatible = "qcom,x1e80100-camcc";
+			reg = <0x0 0x0ade0000 0x0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,x1e80100-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;

-- 
2.49.0


