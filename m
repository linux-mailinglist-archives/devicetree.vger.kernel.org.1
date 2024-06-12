Return-Path: <devicetree+bounces-74921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD2E904FEA
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 12:01:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21ECA1C2323F
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B226616F835;
	Wed, 12 Jun 2024 09:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YY3r+vbX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5D916EBF3
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 09:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718186384; cv=none; b=ZS2FhCNnHTXqF3F9vCyW9nNbiiNka7PUqvjwVc6HsAcQR+1nqf2NSNigLf9/AmxUL1VEri4cLenEMuPTjWLGzK9loVDJAxEtAy3wuf3hF8uZclEOQxiPXg7n3N4FLdDkOrs/4EEMTNHP6T2Tqjjy4pI2x6zmf5vdUezmNek4dYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718186384; c=relaxed/simple;
	bh=D7uOWa4uDmtjSwf30b3ABIP8kdvr21SmZRUP7Dp4FOI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZJDrfJ078mJ0eOfj4E1mMtOhg0KRfAnptecDp7XDFz2MVyGwqsA3deKFq+eiG0JKEeZBC2d3+R4fjLqOBuHqjtAuIkUGzNGxkISwVcDj0QwZ9R5n3+KCdvzACTR8UEPLi+/XdPQXwAJPg/tpGmyTjWerl6gb5ZxhW8Xw+5ixuKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YY3r+vbX; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52bbdb15dd5so2420338e87.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 02:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718186379; x=1718791179; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pbxciSj28k5Q0p0UZvIK+bmv47cyvDnbr4Z/LAPTdSA=;
        b=YY3r+vbXfC/Y9tf1niSqtVV0/3OIcMZhU6SmrZ2DUMyPrElUKoVeLyjY4pKLeeap2y
         /9kEYkHGCf1WwBYTb2XpSOamIzY5rV/IN2GQZJqVZqxR6xv94w+Q7AGaMOcuHqlgKFA7
         /3T0gMQWJDamYP4FJhlxBspox7+EUWx3YQBKi7WTjf5fpPhgvFuxSijedHgZxAY2G9Ay
         /C4KCYn11sfyASLBLPjvJvVjdn+tcNKKEB8g9WfY4QUt+a6YpZktkUVkt/6O+Y4X9DT0
         fHqUQkcmV2NJBtyVNHFx4V+zmRXiJy0+Ak6Q+H9XPt+H4R2hrDN3gUxVNa1q8zl8/fSZ
         6AfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718186379; x=1718791179;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pbxciSj28k5Q0p0UZvIK+bmv47cyvDnbr4Z/LAPTdSA=;
        b=rFSiUBWpGl47PZgUFJlxJWfPS02qo/rW7B1Tj47usfhLPIDAh6L2jWqbK9XIDuWJix
         AZrv7w+gSBkmq3NqxeRrHEO/JOE6+5ohuIqPU8YNzx0vPIOw/G/1gGhvfrh5LBCg+yum
         I69R0qJCq58fnNEgQ9PCagl/w6yVIuGmgDh73HAfSFSgnhpJwljdYUff0gjyRQ+c1rT7
         tHPrqY751XByJWxAZ/hXhnd+xWBDFlkna6WAqAZ+jp6NV3MiPkAZNZArHRdXAgWx+UYO
         oKHSdzLsniu9xcB5ENjE10V3s0aZLq61yf7sQd7ldxnkZF7yspMSdGnYnfV3afLyJNoM
         C6Lg==
X-Forwarded-Encrypted: i=1; AJvYcCWmKd/qdrxq/ix9xl+euN6gb9p/gMjUd1ALFDfWz2EljY4GVu5fsuurwusLxA0/zd3oXqAqtD3grGG2ULIqz/1jnevJJNSKHWWxqA==
X-Gm-Message-State: AOJu0YxLJ66aus7QLBv+KwfAoe8F6wWmyuFedzGaLSaMAA2cbbGRwqwy
	YowcV43s1KHjM075aHqc65AlRlLNbwzSowuT47ALEqL+S/eLGX0lJN0ve+3pyp4=
X-Google-Smtp-Source: AGHT+IGUI7ZvsPCAH6It2x7kbWRHWUG4+wkOTpCQNz1t6NvaP/51Vx/SEMUet2s6JbBXdCB0wJkuWw==
X-Received: by 2002:a05:6512:48c6:b0:52c:8050:6f19 with SMTP id 2adb3069b0e04-52c9a405e3cmr744956e87.60.1718186378791;
        Wed, 12 Jun 2024 02:59:38 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52c8907dae9sm1408095e87.129.2024.06.12.02.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 02:59:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 12 Jun 2024 12:59:36 +0300
Subject: [PATCH v6 5/6] arm64: dts: qcom: sdm845: describe connections of
 USB/DP port
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240612-yoga-ec-driver-v6-5-8e76ba060439@linaro.org>
References: <20240612-yoga-ec-driver-v6-0-8e76ba060439@linaro.org>
In-Reply-To: <20240612-yoga-ec-driver-v6-0-8e76ba060439@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>, 
 =?utf-8?q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Nikita Travkin <nikita@trvn.ru>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1967;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=D7uOWa4uDmtjSwf30b3ABIP8kdvr21SmZRUP7Dp4FOI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmaXGGc7P4fHzcaQPT5coScEFYPOsIwqMDo1vug
 ZyBzPFUb6CJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmlxhgAKCRCLPIo+Aiko
 1dp4CAChpYYB0Dn6m5M4lVLAbzOSVD8fIzavlY6uPQ60E2Ibf4v2h6fimoQIbqT33YjjJ6G2Ilx
 9+WaFciLOuIl2OExCw9xAa+wLodOFssGHIwPyduinYilbm3+yIYjo+87Fmdnbvab+Bpf+zpm1Mj
 VHIOxTu85t1BttTOBvCFRHCo21wBRaCXdghRvd2HY0yDDNS9gDkXhYqS6MZEjk3e5W23lZEH5sV
 LCF71QCao3VNID7GqvWx9edsIWl7OR8p6JEGPae43yjD0RV+YZWv88QH/BjDK8t/ZRJXCcWI8QG
 r79uKtqRVJK11By5K5Wy2KZ3ZLSOPmoNNM1lC2XLNRKiH2FB
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Describe links between the first USB3 host and the DisplayPort that is
routed to the same pins.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 53 +++++++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index a0125f3d92b2..23b101bb3842 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4031,6 +4031,35 @@ usb_1_qmpphy: phy@88e8000 {
 
 			#clock-cells = <1>;
 			#phy-cells = <1>;
+			orientation-switch;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+
+					usb_1_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&dp_out>;
+					};
+				};
+			};
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
@@ -4111,6 +4140,26 @@ usb_1_dwc3: usb@a600000 {
 				snps,dis_enblslpm_quirk;
 				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_1_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_1_dwc3_ss: endpoint {
+							remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
+						};
+					};
+				};
 			};
 		};
 
@@ -4601,7 +4650,9 @@ dp_in: endpoint {
 
 					port@1 {
 						reg = <1>;
-						dp_out: endpoint { };
+						dp_out: endpoint {
+							remote-endpoint = <&usb_1_qmpphy_dp_in>;
+						};
 					};
 				};
 

-- 
2.39.2


