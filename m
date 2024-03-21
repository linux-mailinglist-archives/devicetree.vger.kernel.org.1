Return-Path: <devicetree+bounces-52181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1352E8859A7
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 14:09:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FD79283121
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 13:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958D384A31;
	Thu, 21 Mar 2024 13:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ClqK1oAN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF75484A24
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 13:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711026539; cv=none; b=lV/Duq3PefzqaZyDEueYI3f2n4TrAZYRA1e+OnlvUzptc1tK8PEps149SF5sqW8DK3qWJSZCEfKu+O6PJJ1ng+lM7axkF5acdIAQFz4juqAT37awo+W7HstNgScOc0isgJb6HtmaJ5d0fNI4aVcU8DL1l63w96SC287Rttdu9Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711026539; c=relaxed/simple;
	bh=c14pcQ7llIjx8mdlZCcx/UxdVlyVw3faEieM5GK4g1Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Roartteyb5gP14hgzMjk0vIuHIw+8S966i/CK4iTW+rs+l8+IptzrmkJFTXnI576+Cn/QvE5kQx2d4s7I/y2XZI7N/I+L9a//eCjPTX2R4y5Etmak5mNPyPlmEWf/fbge8TaaNfX0aoxLxzMMLHjo4uJDx8tFQPotOko9wJiQew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ClqK1oAN; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7c8dd755793so22777539f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 06:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711026537; x=1711631337; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fieeCMbDbkwr4TB8UmD9bibJ0Comg/fOeaeZF9hfHUg=;
        b=ClqK1oANTYGRXKhXRD2Zm4MZpfe5sludkvvr0ENPC2VWdDvXLL6BGdvGX18DTTWzz0
         KP9UTA4OYUEnZfZyNLo91jt2LhnCI+a1GfqTqp8RbYajmCUSqqZhC2U4iGdvB5bPFnot
         1B1Ya1vnQOX4j9MbX7qWFpNGkLbH/W0cAzMA+d+5Wy6ujel0GPHinWDEgwPQBn/26FKR
         2dJcIarMy1HrDrP0ADjdhscrOlVRbi06SX90cX8PxGEAXs1Xz4tDh9nqXciO0DTS6gTZ
         POYaXG0U4Rc/BJXVsaPHkvofE4NN2WhFIABe+d5oFKnEhtbROOckV5pfaem69DISy7aD
         uI1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711026537; x=1711631337;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fieeCMbDbkwr4TB8UmD9bibJ0Comg/fOeaeZF9hfHUg=;
        b=UVJTrDS4RGWKW7yawlhyOvJCUClyMaYJgKbV0VpFIHPgyv8hdscm1RSjA1hNzKljGQ
         d9586/wQM2k01+jvp0FVtqvmfy5xlaH9xuxbb0yyHAW7ezfyOG/DTXqZKpVeLEbmQ/ny
         FR6X0nH2ipT4nV8h257ePv/USKu2pcQlsaEEWav9UK6SscsY5wqklGUgVNpcmraAXtEh
         rwBCUft3+rDcS06zJMCROHwYI1n2eTeo4PI616wLLvxAgHUOzMjnQJ+7jQ+lt8JFvSwB
         ZZr2RFXrzhKMZD5Mo+ng1DiwcQAka2myXXfibVgg2t5h+lEqiXOuExh2+vOOJxaN1gVf
         alLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDNXRWYhQRpJeIlvrA8F9HshRAFpqYV+DVi4Dp3E1g8x9/tTJFeg7KriaJ2EJQtXLYXQ8ZECpacabu38j+c0UAz+hBXyqiqt+82A==
X-Gm-Message-State: AOJu0Yx1Nzz1xTkazq/5CTzN0ZUGVjh4tOn/RMxvwIywe5GvAazAgKk8
	B9nsjFmOJ1EmYkIY6DehoyVlslQO6xLF+2Jhg0rSd/D0/9uh6ySP1FGTflo3bbH3mRVpSEJLqSg
	=
X-Google-Smtp-Source: AGHT+IGxTbaq4S1vZ5iHJph2Vg3zsNE+Ti2W0flAfFr7/pds+Tq30rnkmP5QzSsgj0OPYqYEx+gS+A==
X-Received: by 2002:a05:6a20:5481:b0:1a3:6faf:c0cc with SMTP id i1-20020a056a20548100b001a36fafc0ccmr1838079pzk.20.1711019861269;
        Thu, 21 Mar 2024 04:17:41 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:17:40 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:35 +0530
Subject: [PATCH v2 15/21] arm64: dts: qcom: ipq8074: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-15-1eb790c53e43@linaro.org>
References: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
In-Reply-To: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1264;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=c14pcQ7llIjx8mdlZCcx/UxdVlyVw3faEieM5GK4g1Y=;
 b=owGbwMvMwMUYOl/w2b+J574ynlZLYkj9I87juUeyJOlTUEpJ2ZUqi9jl6rdWZWyP8V9kE63Px
 Skob3ipk9GYhYGRi0FWTJElfamzVqPH6RtLItSnwwxiZQKZwsDFKQATObeL/TdrT9jLAs9LQkU8
 GruFdRf9+5VT2W386Vrd3XO7XX/Ke8zrvsAdcmZLimi87sS5DGf+eU/bUJ7XwlanurrN+WCahZ2
 eZx6PZdyak2+v/hdav9NSIPj47crN7Bt7eizvp2SE1zYsk5n7r+d08OtXWV+u5SvMMmwU0Vq/Zk
 mcWWmD++2MLPbk37dMZI7O2ioq6vajSDovTZol0U/bIe/m3eRV3yqDXRqD7X6nbcmZ0PlK8ZlQw
 DcL7iKxKZs9js068fMG/8nZbJrBlT80trZnZx2fLrqJO+y90aIVAW7V5+OnNr9Q9sty/Os7R1yB
 reOp7o3IaU5HU72dVXseHP9RUOYYXx76I3/xdY0LHIt6AQ==
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index e5b89753aa5c..12324841d1b0 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -864,6 +864,16 @@ IRQ_TYPE_LEVEL_HIGH>, /* int_c */
 				      "ahb",
 				      "axi_m_sticky";
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie0: pcie@20000000 {
@@ -929,6 +939,16 @@ IRQ_TYPE_LEVEL_HIGH>, /* int_c */
 				      "axi_m_sticky",
 				      "axi_s_sticky";
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 	};
 

-- 
2.25.1


