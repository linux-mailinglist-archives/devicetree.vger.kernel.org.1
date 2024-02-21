Return-Path: <devicetree+bounces-44153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFDA85CF01
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 04:47:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B5322833DF
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E988C39860;
	Wed, 21 Feb 2024 03:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U4b1BMas"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E553D577
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708486965; cv=none; b=KJXHCz9am85ScEY7zfZsQFi3G3HwT2K55bh8GdTmg5B7VEcA0obXeJOrTT7yuK4tOlTZMJ5Q/MAhTx9SpIG3gPd6u9Wwd7DpdTh/9g/8M+MHWMxWQ2AIWMo+OsMbTsE+55l+lZFAs+BscgeywyNKqUwTtluJE/UJbvWcSPtieT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708486965; c=relaxed/simple;
	bh=tffzXa3DoKPMppUuLMobDKNhyQ0O38YNG+uD8DziAhI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ImvubJE1I6lv+6fxIXaStYrQcuQajqdd9DoVi5l70ffJnLEVvHM0bY4JdR06N4SB8dlMq+4lapqwHXIgIPjjdI2cSG7XpqmdxrETzLqczEseH7rFk5X02vx44sLM7xnxUM0ScjtJPkBw2a1ZyLO6GYEEBCw0bYY5kxWvmM1WPzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U4b1BMas; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3c0485fc8b8so4994066b6e.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708486963; x=1709091763; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=svQuwDqN8Aua2DyNWtz00OJaNcdfBXctx36EJVb/tcc=;
        b=U4b1BMashPY4WT2DowJFtxTiccNDDckGF4cqHAmqPJA95TVNI/x1seV1p0iHPXcjZL
         XhU92fB0O5SH6GYECldsVv3s6ziowBHqoW+K+BjgwoCE+jlli6SbxsiFes7wPigzJP2d
         JUsNcWC2EejKxc6wP+SHkf39zoEUWklz8Jsda2pwfM40yceJdGiqgsGD37dxcejLVIqS
         KrDjYES8vHJ7XqTth3BPfqehMyxSCpD4/ND77VobDsAZk0XJ0UD+sfwLjUqVDeUBchxJ
         yWTTLVUpKwYWkNypkycOkZxmXA39EB7DkTvGaLrU2UpkKBjz0RYTce0hdz0nM+BITS8O
         DduQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708486963; x=1709091763;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=svQuwDqN8Aua2DyNWtz00OJaNcdfBXctx36EJVb/tcc=;
        b=Mq4Tj9luqO6NMQ36s6qQgcwdbEe3pKMtNGZXIBhgGqVV5/mnhTQWWC2V2HzxFevpYI
         yAWT1cezyAmMWLCzQVxjEBkahNbQgUQhS/Hpz1KUrkU0D4yYfODlOoVRMS7wvt95e2kp
         xXy9AZaGOWQG30+CaMK06KZVxUpCeEeg6aQR1Zf8UUsl+0mL9sAlzkmKtZ3TmEZJdpEh
         1GpnHBXefhbLhZf3Q6fUOeC7Bs47lDBl2i2gazSp3BnV2xsT80MiaZcN9w7jSDj1zwqj
         TSn0CD0D/qtEsEOxS+W3IvwX/KCBp6sLY2FUtQit9DzXHOqNhr6ZaFC491ViLkybMe6h
         DkpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVc6IejbBJ02beXcetsELrGxFCBWZiTplCMTEHOJ6PNoKfJK5w/Er2HVd0WhIID3XHED9e75RbGv9c0pE8RX1SHwnu2oJ3969hqMQ==
X-Gm-Message-State: AOJu0Yypt4MwMozfLvsVqQ63XBEo0jA48Fx1wI/9HQHLImAy3bhjlQyQ
	CxqwyqKRIpz+LMV5gzWEqklCwBNDcoXTs5TvKmwc4IqRqbWKtj6jszylvR0yfA==
X-Google-Smtp-Source: AGHT+IFW552aIkFusnVl8li3La2TDMNzXU+uFGrlzGeHm0XE/sOH8g2Qe9yJOjIwA+A0mmrq+aH0YQ==
X-Received: by 2002:a05:6808:b0b:b0:3c0:2bf5:7c11 with SMTP id s11-20020a0568080b0b00b003c02bf57c11mr17768558oij.17.1708486963568;
        Tue, 20 Feb 2024 19:42:43 -0800 (PST)
Received: from [127.0.1.1] ([117.207.28.224])
        by smtp.gmail.com with ESMTPSA id o23-20020a056a001b5700b006e466369645sm4436231pfv.132.2024.02.20.19.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 19:42:43 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 21 Feb 2024 09:11:56 +0530
Subject: [PATCH 10/21] arm64: dts: qcom: msm8998: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-pcie-qcom-bridge-dts-v1-10-6c6df0f9450d@linaro.org>
References: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
In-Reply-To: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=963;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=tffzXa3DoKPMppUuLMobDKNhyQ0O38YNG+uD8DziAhI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl1XEHGC3zOV6q68tBY8dcZcSTIBlW5Uooj368m
 42fH9zvfHCJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZdVxBwAKCRBVnxHm/pHO
 9TCkB/oClG2z3p2G6fQV0sxntYgVm/ZxjfXOZYjAwzvhJpOnC2keT50NyO2Yrc0VSHgwRO+7tHD
 gdCbmOnB7KVevv2JuWKGC8OY3iLPKHfh8OISq8WKSpts/pr8+7QPprZBUmMUzamoPscjTgLA3BR
 19F41BF3YtFib0Y4e5GG/SqorNDqDA2N/58Gi1VGnU6xsRt32PTdfhTgfJzQEB8hIeDgE0As6Z3
 /QtdgK25EDUN6XvLVdLtgO78y26yMYY91W6rUMu9XE+H1Sj8YIxyBQptsEovFNV71k9FV090TyN
 YKX5XT2/dANqBwc2SbwJF+u9knWE83ccQzXNBvlvPtWsAOk2
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 2793cc22d381..5d85757628d0 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -972,6 +972,16 @@ pcie0: pcie@1c00000 {
 			power-domains = <&gcc PCIE_0_GDSC>;
 			iommu-map = <0x100 &anoc1_smmu 0x1480 1>;
 			perst-gpios = <&tlmm 35 GPIO_ACTIVE_LOW>;
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
 
 		pcie_phy: phy@1c06000 {

-- 
2.25.1


