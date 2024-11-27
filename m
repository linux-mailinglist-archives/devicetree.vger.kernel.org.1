Return-Path: <devicetree+bounces-125002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6806C9DA7EE
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:37:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72B17B24A21
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2F21FCD16;
	Wed, 27 Nov 2024 12:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="c6xpPiwo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83391FCCFA
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 12:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732710610; cv=none; b=Eq5uR4+Ryb5jRF4XP/IHB/4CadSi5edHhE9mxeex15sX8ckiW7hacMv2dOKQCESk4KlC59eBV/S1iYmN9ktGOsOuB+hlTasGCnayokJ7DWxpopi2K2Hu/qa2YU+CK5YJbYwErKa/oJy4wpakJu36/t9DCOYglgEB0IfcOcvJL6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732710610; c=relaxed/simple;
	bh=Vuj6kK0EJ7CHZhxp1LbnuDzYrHFVMG2293bs/7UUbfk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kAUs9RchtlpiRTgJ7hXI8BZD8GFe4He/tdWlPyTfZNXp8fjgDL7le4uVIjzPEyjghwU26cOpny3FzVYNqReJd/02D9dtKj72fOqKYgkit6mB+Og7R3OZ3mGIHQdwSbB2v+++Xyygbtw03gSTUB3eOaEW8xTha8PTf2xplncAI5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=c6xpPiwo; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53ddb4f8450so535563e87.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 04:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732710607; x=1733315407; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cEFUpzbKvTfhb0tLH7vWZRk6FYNLH55/qvFLVseGYTQ=;
        b=c6xpPiwoRbxpaEFA49OVbY8+8sE0r0HTY/odAwiXcGjMsy0pu3Mv+YCAc4lXSEzrGx
         Jj4K60ZuiW2SMSTFGbL8CgdL3WSBwch+4ue8H7o7rNYbm5jQrDMeMYx0OTGrpW7d+6gE
         mkrnrb9p6DbddPlMNjXdXZRhovsII/5GJuRRjiJINVqCXSrngAtYc7sDIFJ+AnCUwrKH
         HdxBHSSjh6TeK6zhic+yRLazYfGdz04lSLr98uid0ex0Hitug+47l7KmfY7ExXd1L1wY
         0PP1bBKRg6eCtyTDCW4j/hhFwT2nqPCyGWas18UcEAm3oTsGK3Gd7S7TIJFKY9TWIK10
         1Kxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732710607; x=1733315407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cEFUpzbKvTfhb0tLH7vWZRk6FYNLH55/qvFLVseGYTQ=;
        b=XYvjrN0Hx3MEsywms8Cf0o+vrnuHZx93RyBCVsB6AhmqApJ0xZQaNF8Jga6jiGpnoa
         FDk8pfbeNOnXHl8j7Gr0qOB1JM7PykP6QWqsI1t1S0uBvkKPONNr4t79Cp79KVqFw6MT
         DIVaFTD1ylYCwF3HCwum5t1JX8NXGfSR8tV1dPdpQH05k6bWuQRGTKbh9dYlMhvaK+7X
         o/9R8fjztHtZSMJ6bcU3iquNrSwNrcjgbtPb2GQ6T3vaQX4tE5ruXDyk5NTEY4Y2iXFU
         9wxJDFCG9AGm8vJrzfn2t199boTXr9CSznG0OZdpnHR7DKH4DBCUJa+0iLW0Hm0m+DBu
         wtoA==
X-Forwarded-Encrypted: i=1; AJvYcCW4Pki9Jmz1cVwl1VgWON+lAZcR2DU0zeJYx7uO9o4ZI90fdWKNqT+xgyHqXw7buMUfxH2A4dnQMWKv@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4tRi65Hd7spLnzFJdTi+XulgOgUfESOqLg8tKZn8D02kFURk8
	gyTzYbV8cH6Ka+SLdUg5Sye0FLN/IWCdmbnWaOm63gtPVnUM6hhM9dEo3ZCYs3I=
X-Gm-Gg: ASbGncumhHaNCNIUlkYbGCdxL+p6LKAUiiF1qmpyaX6brZm+Nf2I0V/X4uiSpEOPGvT
	m5D4NK9TDLtaJcEmJcWwUaxdBdnK23zkfi3sKMxLOKrVznVG1S+3hbga260A8yKV3xF6rhVmNCv
	zo92BFm2hUa2N1Kw30brg/yyxkVVM5rNdrENdrgyd5HZ/P8B1s6T4/3ixHARoRrPYc5eF0avn1p
	x1edu+KTN4cv2cckJvLkGQhS1blN6tpT0Wa6ZbOA0jqerm99PSZ6wlSegQPV+2ghngBvYXdTMZc
	YlnSob09TLNhbimIIByuO/ZtmqrYrzrAm2eHNto=
X-Google-Smtp-Source: AGHT+IGowptFkbTEAuQlP2B0QYnkmEvdwwGsERNzdVAtmUweyyASYJRRN2IvILq4TFHcbz3FkjIJkg==
X-Received: by 2002:a05:6512:124f:b0:53d:ee0f:2562 with SMTP id 2adb3069b0e04-53df010fa1cmr286662e87.13.1732710606739;
        Wed, 27 Nov 2024 04:30:06 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24953a1sm2276621e87.228.2024.11.27.04.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 04:30:06 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 6/6] arm64: dts: qcom: sm8250: Fix interrupt types of camss interrupts
Date: Wed, 27 Nov 2024 14:29:50 +0200
Message-ID: <20241127122950.885982-7-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
References: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm IP catalog says that all CAMSS interrupts is edge rising,
fix it in the CAMSS device tree node for sm8250 SoC.

Fixes: 30325603b910 ("arm64: dts: qcom: sm8250: camss: Add CAMSS block definition")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 48318ed1ce98..e5a4bd25ff23 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4481,20 +4481,20 @@ camss: camss@ac6a000 {
 				    "vfe_lite0",
 				    "vfe_lite1";
 
-			interrupts = <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 359 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 86 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 359 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 360 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "csiphy0",
 					  "csiphy1",
 					  "csiphy2",
-- 
2.45.2


