Return-Path: <devicetree+bounces-142298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 188A5A24DE8
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 13:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93FAF163F93
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 12:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B62A1DB14B;
	Sun,  2 Feb 2025 12:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TEdI+7XT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C5A1D79A6
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 12:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738498579; cv=none; b=Mqh4xh/tkjTM+qHcb6ea1Fvx3q+DojcRj6qaI0qVleSmey+cJilz3dB82ZEErZ7LXcCSfzSVyjJCeVKUqL1bgGScNvoJTyBrh8nXcqe76uzKwUeDz0WESy0vdcOB0nFV19yHMccMjyoUIIOBUY5iHoED89EcpYj94KSymSrN4ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738498579; c=relaxed/simple;
	bh=qi1V0XhBkBrxty8uIfZTcLxNTnebQC4tHcL8urIKw8w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZSQbt2IfFBfbJ18mJbZo515BeAhai3/IDLL2ZV+Wpdq2n20wTkRy0hNLrCvlsagRbwCp0SZa43mrcHcnGKuycXuEjudlqqsFVt7ieXr5fEeVAb4ZLetILX3X8PHDzvf6TY3jvhSOlEsAxKvXVBG34W25ay/RB+Trkib5cbNggZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TEdI+7XT; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5401be44b58so3745920e87.0
        for <devicetree@vger.kernel.org>; Sun, 02 Feb 2025 04:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738498575; x=1739103375; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4GCW5ssE11TCosEFHQR+hT7DqL2XinuXrF8Jh/KlSvs=;
        b=TEdI+7XTqTEubyvnS5zVcYGozhu0Va61rbeAYZVVEC97eyhFgM8o2F9FEo7aK2ADMT
         IYP89MxOJcSFyXssWNfXWAPv7T8m1/N846X01EH4OGrY1Rfcayy7uibbEcgqEeGEtATK
         yRTRyYWE8DJC3BicZ41XtlGscwHn3qMEBP4WCZJZHOml71DJy2oQ9Zu7GwILTpXE3t1S
         NY/HFNV6MTRwKlMOK357S56nnKx9cQdjfgVozCuet9PRVqil1jKwDdoPK3dPwqj4P67y
         aiSR8HGe7WdKMjT72+irLwGmIORRdseqMAwJSvOTYvUrdvoqElZ/tLRl9vgwCC2MzpYe
         21FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738498575; x=1739103375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4GCW5ssE11TCosEFHQR+hT7DqL2XinuXrF8Jh/KlSvs=;
        b=LeUWsv5g9AZ3SCjD99Zs7e/BksV4BZVT6136rGMtmH3tnGKWXZaIQPHfg5hLm8sCTw
         EUZds3a5vdX7rZsvMuVUeG24NiBo4kqZqJUkNzs9qRp38imdeP17vU3TKHY9ey49pHlt
         eTK8NkGJd5VHMDa0Z+jFkcXODBfE4ZW2ehn0gMes/YJNikJSF1mmpkJoJ19oyNKZq26V
         eJHDx3Oj+WugPstfZF1afSuIMxUOiP1Mj4u1NvSULDsbIDkXEXjNSYraWVzxjXMhP+mq
         0Dv5pQh0W023f1yS0ZXX0JNgLdMR6axESkQguV2FgRZ2AoJSpFtWdcov98xHlU1JLfDG
         9Q5g==
X-Forwarded-Encrypted: i=1; AJvYcCUNjH0TBrOSpDQ8itwp04W4UJ9eFtsUIvdbG/uWZGKgQKpYctOI1RD3vBdDgv+6znzu9ERocOiU0QnI@vger.kernel.org
X-Gm-Message-State: AOJu0YwJmRDRpvYjhuaBQc5cqAAi+IMyUYyTaEaTe2oXuErsXp8yArJa
	fhhI5G0SBHcX+E5SrL0lLSN69rB0Qp5MM7CiD31JdOCyFyM6e71HM0Zuqi+dAUQ=
X-Gm-Gg: ASbGncs8okGK6lXMee1S7MrGsCB4A+e7/N6MrvZH8ILgQfeFrdYsAO8391ULkXt+R1q
	gxfjXJHkOf9SDgoc01gDd3fF75K7CcWLTVOiON6rHZb+i7s8He2R6Kh5NkwokXL7uD3ayBU1gJQ
	aWAg5vWPJgTJLBJ8C1TxtI5WEc6uZb4B1uwy+g4CLfksIk0jT1iwGhKWgZYADAXLvG47UDoRsyy
	23lHh3nngm1pU7D3Km4n0pxbwl/C/3Z6zbwgh6H1WBmD2l8jaIf68UW66yl5hPTaACOJlXm/pHc
	kuFITdVZeWzywKeZuonJ3/g=
X-Google-Smtp-Source: AGHT+IEStuw9o+gIF0rwYX/wMSf2YaSVPtLa6hRhzgOqIJakeawWoXldDD53yCCCQJw1KAq/Lvfg5w==
X-Received: by 2002:ac2:5481:0:b0:540:22bd:e25c with SMTP id 2adb3069b0e04-543e4c3e341mr5506950e87.50.1738498575292;
        Sun, 02 Feb 2025 04:16:15 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebeb0a4esm950663e87.114.2025.02.02.04.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 04:16:13 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Feb 2025 14:16:01 +0200
Subject: [PATCH v3 5/6] arm64: dts: qcom: qcm2290: add UART3 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250202-rb1-bt-v3-5-6797a4467ced@linaro.org>
References: <20250202-rb1-bt-v3-0-6797a4467ced@linaro.org>
In-Reply-To: <20250202-rb1-bt-v3-0-6797a4467ced@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1323;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=qi1V0XhBkBrxty8uIfZTcLxNTnebQC4tHcL8urIKw8w=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnn2IBpNre0AfGfgYIuxjDMYtVtRRhCxGUwpA4C
 ULnjgth8a2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ59iAQAKCRCLPIo+Aiko
 1XDrB/4lgRe6AgOcOU5otx1lEGNzlnAQIJC+2WkA/BSJEcC9D0A0urNkcZ7wB3cm2b3onQ0i/nX
 4iyXBRrCdB+Nj43n4Xhp0BGH9o9I2X4uKqI8qaKzuymWRE1yAswRN3YclV4PYDiyQIK7gkt1SOc
 xDpn+nxciNzU3zgd982gUQ7VKUZV9g68Da/8bKFc6w7Q6iwrR4WbdCa4jzCoFJQC+ZNJRL+m1fS
 wUJa6dci0Z8mz2GVZpV5Q8mYDgzz1f6UGMK6i96gB5CfabwtAbSoXiE2UPZezZSVHn0hzaJKLtt
 IK++NOU2Q33+A6j29Ras3sdtYG0jDMeiSWxNnuBo/sKbv6ME
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On QCM2290-based devices the SE3 is used for the Bluetooth chips. Add
corresponding device node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 6e3e57dd02612f3568f07f1e198028413f463c69..30e9bb6c1679aab13c3f3f7f6455f2483b2ba0c5 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1239,6 +1239,21 @@ &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 				status = "disabled";
 			};
 
+			uart3: serial@4a8c000 {
+				compatible = "qcom,geni-uart";
+				reg = <0x0 0x04a8c000 0x0 0x4000>;
+				interrupts = <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&gcc GCC_QUPV3_WRAP0_S3_CLK>;
+				clock-names = "se";
+				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
+						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
+						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
+				interconnect-names = "qup-core",
+						     "qup-config";
+				status = "disabled";
+			};
+
 			i2c4: i2c@4a90000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0x0 0x04a90000 0x0 0x4000>;

-- 
2.39.5


