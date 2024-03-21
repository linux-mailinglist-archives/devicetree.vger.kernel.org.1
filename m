Return-Path: <devicetree+bounces-52145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 285218857F4
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:17:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1A3F2826EA
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB4A5821C;
	Thu, 21 Mar 2024 11:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sd/8wlw5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DFD58129
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711019817; cv=none; b=aKMBPIn+QC5e4IbaGv6h9U5oUPde7Ro7jodOnDn5xjupI+KKXfI0zlg1m2cnY+cFmpNuAYJyys0E/hhcCu+qcVcS01eSIxMZIC9dbs1Xt3WdbA0xiOE7rF8sS/62UsacIXA4KUlo4l1YcJN2d4HzqMbmkBUSGUIQd4AOjOPz7yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711019817; c=relaxed/simple;
	bh=IUhajlMiebMRXpZMv8IJ+rUpDu9cL/zwabR+phBMHXo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r6UYpCDg3tK7TxK5yU+ZTuf7XRsm3vzxT6VOlUAcBsNpaZQVls+/w0XcEweZRz+ODEFY4N5Jci5TiJnZejnQtNu8pmcgjHtMyXNmPvMgVyb7YTXIGZ+4OD6s6+WoOqb4VbZ1vRtvl9BnZrRqm+ydDI+sK4wQeBf0fmLfRev8Y/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sd/8wlw5; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6e703e0e5deso650558b3a.3
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711019814; x=1711624614; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wpm9hzU7yRxndVe5Gx/goNXu2viD1OAzuL4ognrEobA=;
        b=sd/8wlw5O00twv0VLgHZuyESVrLwWXQ6Q0PgxJ1q6zY0d9nXoQ354qRa4USPRk08OK
         umeSb6Kgu9+H1yng/YNhGGuDar31g6gzbn8kT/6FPRnWhTZpWYIK17p+/QTrOHqMz56q
         +nyYnOUpKVawiSy2c2FnEtwlQb1VkUuNNp14hatSSN1qQrouZurIlUMAdfk147xQHFBp
         zAqNiD85rMKqrNlqXEor9nvwRlpEtvpGUeWgS80HYY8FCA1k5kHw+diRcWsXjGwMrvL5
         o23KBHk0MFArN2Swhv7uPrUhpkhqEXng0TLWQ+qzpADrEiTMgFlut6nCF5ZnLuiMBZGh
         4qxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711019814; x=1711624614;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wpm9hzU7yRxndVe5Gx/goNXu2viD1OAzuL4ognrEobA=;
        b=oFS0r7+aCGFhVTUK+l0Syj3KX817sLv8mICVDp1FnUXo4dgxRHEqrJehiPY14lwmyf
         T0cduu/azNm/Y43H98W8qqJ7NzzR9kfcd7Dx7tNaY5M8AX0UJ9hwDBqPKrPdf0vQfrgg
         FoS2sj1//sGGI8zNR+wykMRfB6fJPNGIRbDFhfp4JFK4c+KEmup6XaiGSV5ppV8sj+mq
         wxoZeigZAkgIGHHqLDVOLq4mzBTngcoezPe/biMlQOVnS/d1jhLMHCMtKuFWhmH4zq+b
         eRrgYVyVIcTKsnwTjNGnW9g/NO/nthWznYuDpa5iIRIktGxw0WWI1newnmvbXbHBCYu2
         DMTA==
X-Forwarded-Encrypted: i=1; AJvYcCXSok12ZCEc46LkPch6aE9smyPW5MgQMYWBB3edlzVMw7qqYVbsc1uUMq4+0maw3XnNRIN4R24UNeevdcA1dCjZzH26mIhckF0URg==
X-Gm-Message-State: AOJu0YyaDLiZyBKLAy/w9vGWFZxDEJtszBNqGW4l5k4YLwH+NXdwnkwQ
	7mmi3OtoXhUx55AVdMX4IpyaO9wsC+BlVKBFHRqVjfnCTu3GzzZXTS3T6FdQ0aWbivQRuQ/ozyE
	=
X-Google-Smtp-Source: AGHT+IFQb+EtsRBxl4QG/ciNRDtQvLa0vxCY7Ds0yjW248XVpLTakMgJOPT/Q1MjZ935yTTACov7+A==
X-Received: by 2002:a05:6a00:4f82:b0:6e8:c6d8:217f with SMTP id ld2-20020a056a004f8200b006e8c6d8217fmr2248910pfb.10.1711019814009;
        Thu, 21 Mar 2024 04:16:54 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:16:53 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:24 +0530
Subject: [PATCH v2 04/21] arm64: dts: qcom: sm8350: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-4-1eb790c53e43@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1223;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=IUhajlMiebMRXpZMv8IJ+rUpDu9cL/zwabR+phBMHXo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcJkQBTU7cHMjQHCmaE8rE5vqzECiSajk6OF
 58uXgQKlRaJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXCQAKCRBVnxHm/pHO
 9ar9B/4lkmGZ9w867Lq+7Ob1yb3R8dwMvftktOgUQSmPnhqRIvQc8Xs10jR1g9dEEhft8UfUTg0
 BUUTD3UDVxPZE5jGB+Q/Hy5It4wqPlfcVeadsi3W6AUk6eRWlTzAlZArG9g2ASEbJENOhl/kprZ
 IvU2axd9wH9oy2j2rPO3dTRgIcrKYYWRmrfL5PCz1gr2ztQI4jzHZ3T501tNMl85XikHvKvvntV
 3zYGzO3PN0ipEdoeLKrzL74DDNImbXnQjoHwycHXH4LvPNuVBY7SPDcFPoj84CJoT1Sx3k65LvN
 MiEHka6VZz7y7a/Y0WiekYEuFnOTbG4akpP5xzeTj6QgCAWT
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index a5e7dbbd8c6c..a7346b817400 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -1572,6 +1572,16 @@ pcie0: pcie@1c00000 {
 			phy-names = "pciephy";
 
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
 
 		pcie0_phy: phy@1c06000 {
@@ -1669,6 +1679,16 @@ pcie1: pcie@1c08000 {
 			phy-names = "pciephy";
 
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
 
 		pcie1_phy: phy@1c0e000 {

-- 
2.25.1


