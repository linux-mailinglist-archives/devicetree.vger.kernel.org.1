Return-Path: <devicetree+bounces-52163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D4D88584D
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:26:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EEABB1C2278E
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB7F15820E;
	Thu, 21 Mar 2024 11:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XFueSOaP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240C958AAB
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711020376; cv=none; b=DVd/Cxz1ikPPPK154zVrrxhR85yTICTuR4xxDz1k0T5knL6sV2ejk3ijf3xU7+nAUu8YoG8a9DJjFKjmYnzPbkkIICSpPsfcXfsXf2PpYy0KpTMQjNPufygrQbf/SXz+rQ96ZqcU1sDpn7/GdnLnUXNw+B6TKsfp937PzJrOhaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711020376; c=relaxed/simple;
	bh=yWkuUR18jPMmj2reJbrWdgmyzSEUec2EHqek3B1pzRE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pid5PXoIke9GBhYeHRl+6Mc6HNEiyrU8Q+wNuz5FCG2yMw15ZZbfayvBRsKDKPoS1cjyBFKumwRGsWn1hAQ80k7aU0Q1N33dyXcfHT4+ZGpBSdKegVE9XKftSv0LZTx+/e7ENlZezUq+/vc0zAPRIH90+HSKwmijp0coeLZOSEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XFueSOaP; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2297d0d6013so501766fac.0
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711020374; x=1711625174; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h/SOi9VxHJtNBJHMJ34ByOBUF3g+OERNiKvM82IKoro=;
        b=XFueSOaPt2WPtbi2go2VAEcDKA86va+rMbSHGlpLJdXucVSw1unVZaBaTLCpUL8jHR
         K8vMYLXUSL+O2SQBdNYPUYBRoT6ZhwFiEiO7b9kufRtP27IsesJAiRTE0nYwTcRuLsdp
         JElWDyDjqU68C4Ikv8c0Vehdh49YaMg9Qsu0/8V4FDNELKDppTEz7slTOsN8fZfMc2IV
         DvmPBvXyy3TWqxSFf6cZ0Nv7ezaU0dluPNdjxHSUqibQ9SVmydDeZ5fUzT84mRid3I4s
         7KIOMq9KPUxMFE6TQ1PqoKIMFaJCofmXmb6+2kFFVLrgrB8933yQO/QT8cRvUvXarWas
         +n/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711020374; x=1711625174;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h/SOi9VxHJtNBJHMJ34ByOBUF3g+OERNiKvM82IKoro=;
        b=CjZVTdZ2rUPTsa92GPQurR0CD2CrFL/NkDBbtRHX50P/ibkQ2XjSmQi2xZDQfeUsHT
         l7NDfdQh8g1pBEEsGs8uRwLTgae7ngc3QcVLKwL7H9daHJ84R7od4J20VXUz1zTPohzB
         CVQqzj512iYCtlP3w/v91C8V7qg9kJVEQN+DS2t0tGqhx+UcECid3E+kBgbsf+uGlC9E
         4M37V6gh+ATvU4h/IQ5yxeeqM7jbS0UsVJB29M1V6+xQoByuPjYSNHHDK3fM1SGxJhwK
         Yu1r9jj5RYq3Y24+ZRtq5wCwx7Ak7y7w6VNRnxbqMBXLDzgrRIjlTpoUVJ3hhqKdkWaL
         zjQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLL1/v40kMQaJJPGpFpmZXIZKdKF679Yjtttdhz8r1ONNcFUiVAiy7musMCpsOSPWMe9hWljGvGta9lKsKVtGnr7t412h0W06XtA==
X-Gm-Message-State: AOJu0Yx4GtjDrTn0woEL1ifi3XQ5BTckRDbkUCywn65gQGJcNfzgX/zj
	V2kLdJnGKhlKlkyiiKlDNXL7L4+MX9nBehmUAyE9siTwdy4/om4DWkHcs629F/uvfD4sepDpXNI
	=
X-Google-Smtp-Source: AGHT+IGy5wVwYOyJosO7SOl0XicomUu3UswJe58V9mcoFBn4JDeomKaOhMDqKzWMrI6apKRSWcaBVw==
X-Received: by 2002:a05:6a20:b319:b0:1a3:3e4b:ccb4 with SMTP id ef25-20020a056a20b31900b001a33e4bccb4mr3664679pzb.62.1711019873618;
        Thu, 21 Mar 2024 04:17:53 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:17:53 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:38 +0530
Subject: [PATCH v2 18/21] ARM: dts: qcom: ipq4019: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-18-1eb790c53e43@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=907;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=yWkuUR18jPMmj2reJbrWdgmyzSEUec2EHqek3B1pzRE=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcNMBCAkRq//G1iDfV0LggacNdzW1RMW9BZA
 +2tMfhNK1KJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXDQAKCRBVnxHm/pHO
 9TDCCACin93VyqWQgdOI9X+cDB33tWn9xCeLW1CUbpPuvh3DGm8/UDwh0TaQTU6OfvKjxnYZYMz
 7UuQJgM7rb4L1l7iMYahEixO95jVIfy9xv5G91A9KJBrxDgbl+pH4asuA+yMghzQwz01fd6pe/Q
 iZSY8hUfvyyw/z+NwjVLW3DFGXcO+tjULJwjuyUM7V3yBhwvWr8+d22CglHhpwYkyC4GImV0Q8W
 dTCxMnKDuo9nDxgiegw7tNUQEVi2Ju3D3SwLObcxWg6lx9fjppwxsdgPkACZy6JKgsCV0aly8wD
 XaCV3+wWSy71VDLA8LeoYLRvXq2viXrpBt7bFYXs6KvOYlws
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
index 681cb3fc8085..f09c123d9fa2 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
@@ -470,6 +470,16 @@ pcie0: pcie@40000000 {
 				      "phy_ahb";
 
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
 
 		qpic_bam: dma-controller@7984000 {

-- 
2.25.1


