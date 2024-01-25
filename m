Return-Path: <devicetree+bounces-35056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C930583C342
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:08:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65193B255BD
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 13:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1CFB56758;
	Thu, 25 Jan 2024 13:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hB6+OKT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4225A55795
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 13:06:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706188002; cv=none; b=NbAn0th2zl9Ep37tARX/3bEpku1MKD5IzZ/xHur/E8l0k2vFuWrL/GVx+9ARoFrr5jlElIGsN4f5JdA5eNinPErBfNxzICXkiLWjTA7f/+llo2WXsi50taKhD/hD3jpy+noJ14A8PLEQKYgqVmrJGT+vEe2cMtZCGWTZfXw3xN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706188002; c=relaxed/simple;
	bh=evYnu3QuudYg3vSYFXFPI9JOdAXgqDFA+MTb5aqHvxk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=f7+nbRmdrW83sBeWM8Am9kaD9l46PPICb4lKgqbcsd5/c+Ri+Afg7GaXpNLMpRknfnUvcz772axPhbPLOYwTj3zQEtVaKU22jf75mYIRnVksPuJgtPGWShH8sZSFeOwIQ3kEadtyba6UgZMY8/rQuPL+sv/A7J3hB1Mmt37gSXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hB6+OKT7; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-55a6833c21eso5179146a12.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 05:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706187999; x=1706792799; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fg8gFt45fS4TDeXPLD804quwOBK0D43uZtoHVR0hKM4=;
        b=hB6+OKT7OHKHJm1LETvtn21l4taq9/meJxSsVlDoqaNrngN3fBcknCh4SxEXiexHVo
         tJ81cP59BJaXZeKdI6Fet84TtnXpXCt+HVEUkJIJEt/LJdPfaew5RdXBTvAe7MJM32Xq
         rTHNCOHvckp0+ubMn4bkKH96Z/1SwZerrjXYWmZ/uVU3TxKSWqSeCgAGrxALiYXn0inj
         jSgUCxHkXcazRTLDSQsvXLqVVf3mVI5q/37/q9uPYsnjzQ+dQBfzfTHQsU7TqeqGM6EO
         iBrp2zsJDBiEYkwUSuYbnmcIHPuCCZjPfOIAxe9q6NdI+C8L985/C6MS5nK52Sp7QZUF
         o4MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706187999; x=1706792799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fg8gFt45fS4TDeXPLD804quwOBK0D43uZtoHVR0hKM4=;
        b=GljytQXMXMrAtXn6OYJgJxwVQ8IpU5uldZtj09M8sEFyzYw6vC+FwBajFRrL/Hjw6n
         4XK74jrRfSTTq0MAg3R+5FDX9I/H6UivUimg4oMBYy5T1VEQwtJYcKin6xzOHHdhmSt+
         fW2Y9b71kZEKUhujdvWLJPsz/KVeISTZmxBYDn11DcmxTJLHpMOfOBQKtiiC8tcTSJky
         zpDUHzBjdlza5FDaEfa31lNjW/wqNB5cl2naBD9pNBRTQymVQtbK9RKfENfYUzPm3MjB
         Ufm94hv/WiemyIYK6T/RMwWvSPdSRxzi4b0/lTubmCxyrhm6yezgsfUOZ5d6u3RsHvTc
         0lQA==
X-Gm-Message-State: AOJu0Yw+2oF+pc4MhEguGXKZWRkbzsZvEHOhdzJDxDZ/ChJmmHRRHpt9
	73mnfELQSzaB6fDvz/Ki/VCy8UDdnUrrNsgFGaDWza7D86anIrhH8FSVlTdaDeQZnmMhOut+4eZ
	0
X-Google-Smtp-Source: AGHT+IFjTdaK93LlmCb3mMx6m5IycjkfiwGdZ1VpLJHzNIcZ9oqtk8bbpaI7KpCqDNTzZ6umS13i2Q==
X-Received: by 2002:a05:6402:310a:b0:55c:7aff:b456 with SMTP id dc10-20020a056402310a00b0055c7affb456mr614343edb.17.1706187999636;
        Thu, 25 Jan 2024 05:06:39 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id ig1-20020a056402458100b0055ca5ce62ddsm1873315edb.12.2024.01.25.05.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 05:06:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/6] arm64: dts: qcom: sm8550: describe all PCI MSI interrupts
Date: Thu, 25 Jan 2024 14:06:25 +0100
Message-Id: <20240125130626.390850-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240125130626.390850-1-krzysztof.kozlowski@linaro.org>
References: <20240125130626.390850-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Each group of MSI interrupts is mapped to the separate host interrupt.
Describe each of interrupts in the device tree for PCIe hosts.  Only
boot tested on hardware.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index ee1ba5a8c8fc..80e31fb21055 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1713,8 +1713,16 @@ pcie0: pcie@1c00000 {
 			linux,pci-domain = <0>;
 			num-lanes = <2>;
 
-			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0", "msi1", "msi2", "msi3",
+					  "msi4", "msi5", "msi6", "msi7";
 
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
@@ -1804,8 +1812,16 @@ pcie1: pcie@1c08000 {
 			linux,pci-domain = <1>;
 			num-lanes = <2>;
 
-			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
+			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0", "msi1", "msi2", "msi3",
+					  "msi4", "msi5", "msi6", "msi7";
 
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
-- 
2.34.1


