Return-Path: <devicetree+bounces-169744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09271A98113
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:34:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C226A5A1BCA
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FB1127585E;
	Wed, 23 Apr 2025 07:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dXWaERWU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADDF2749EB
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745393446; cv=none; b=jx02uDfSIuB1OFxmUNTPoj6eIdfAm08YD9Sv/Cpt38SLsWSuyfzLhS4DOo29cM6D0pOZbX5OHITDJsJemk+C0kbl/eWsycGCnhEh90cFVLOrgErgwJ/YqUKMDUa4t78tisXSWwAsJQ9I7lYDWp0LfDpYyasM91ecFjNJ86+oI/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745393446; c=relaxed/simple;
	bh=hyNieFNcuS/h91PtLLt8b0OUKH7mzpDZpGCaVOfzJt4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=l2j6JqyI9rUXs0BBexrl6E7JpetcCvEna6QxjxA0CdAQOufLXhIgleSxGh/jYPE78LYQJ0VeMfKVIm9pXSzGQ0zbqt6BrOe/aU42V4gKMWsIJIUM9rnw7aTN1YK481oAKIZR4dB+PGDNI6r78whdp53jYSSDhs3ElN50SylTDOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dXWaERWU; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43cf257158fso39260835e9.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745393442; x=1745998242; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GGM4sN065n0kuohgFrVzt2nCge5uH+nnpNW+1fSbZEo=;
        b=dXWaERWUKBYhIdjvKj3qnuHuJ+B1ELPXq2vgs+PbzpjpyJcrqtOsPmdw9F4ZzPXSST
         QUHvLE68xgQeYnqoNVnN+uwAmNhu7FeRZ7+ljw8vVS2MNGQfTND5nvonTtJhBPg+PSfK
         on/YHufw3+MY69vIwcKjBSci+M71yCJF4Zxni+JkO7FfF3qxHl3Uz7hvf2kSMoCQsx5/
         yiak6pdN7yFAPMb0eJ5M/Jtssizjjbvx4jqQHdljR3I+yQKsfBVVsx2dGJSQFmTKYNAI
         2QaFC/H1vXDrqEPrHtdtG1VmkuUV3PvjdWlmDwtFutxcJk3gTObpHEdQKGzyl9LOUlfY
         ANJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745393442; x=1745998242;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GGM4sN065n0kuohgFrVzt2nCge5uH+nnpNW+1fSbZEo=;
        b=OgrqXb1q777eJb8YPMAksEFpky/xqwYNhAVtJtfWFLpUuYqPAqeiBD5MC2fuhGS+Ax
         OCeV6yCwSbkOAdl/SEYY0KX0yVPkDbMWnkor5kSYL3tv/rmWutaXfukKhx2Oedbc81gf
         1RQMBovG+4OyvL53ve/XZZ0pIN8/WGMPUtXZPqy3qxSk+s5sPKVba1t2K+y8xqby+xA2
         KHKVUnTUxsZveduhGDO7MEAbRXHCEgVWttoW2tchCDZgZWXvCl4nlDZ+zgd6IfbcDWNJ
         YzjHR1s+TgQmBRjDKbnMk3cF/U5F0af3XR30v5i5MOMw2tK4sgMl4O4Q0NuBMI49msak
         yIlg==
X-Forwarded-Encrypted: i=1; AJvYcCV60T+eJxIsGZFFy6NlBgarIdYQ47SxdzytMVd8CkJR7up+YbLY4tfHrEEY5dpYrdDclHsnU8zieHCa@vger.kernel.org
X-Gm-Message-State: AOJu0YyF+B2k+l+J2CQQE8mnrmWJGCTDOkPyIPm7IxMU/A6Anbrpi8Wt
	katlOmVhS2oWO5bOO7SdXRCJcqPqlN/4QYhNjiQbHfQtSkICPBmE+XWl3bI8rxA=
X-Gm-Gg: ASbGncud8ln33iQnBE8ev6jaYpJ4j5Mpcb1L3zQd4BJPnV92DkbHOY/B0zRiWTbXTke
	Q7/f9yR9qq0yZN1iPWqvZKICWvmS5z+7pLWsv649XD+22RFvmto+/SORIOqKB0ipSLyJAJivj0X
	5idAdMLwRnSRhvJlrNasyfeYcr4fLoR1D9sETqbCwutbyThvPLRA+EfRO8RE5nrLb0AoOTMoDSJ
	ZdyqL73EkmYJrG1Hq1qG1fIeztsfnSBQMZt3lkSPLQoCq0BqGgwSqYbQaPlYULvVoMBiR/d0EXX
	eG++WC3VqHr8Qmx7BDfRb/FCTtOnElkvNvsQyOQvYR7ayQlImpsBpPY=
X-Google-Smtp-Source: AGHT+IGrdd00HBZwMyBAnnRIXBCUiZx6DleTy84BgVuyF9Z71TJR+EqNYK80pzcndTozf3SpVp1E2Q==
X-Received: by 2002:a5d:5987:0:b0:39c:3107:d68d with SMTP id ffacd0b85a97d-39efbaf665cmr13784126f8f.49.1745393442038;
        Wed, 23 Apr 2025 00:30:42 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:67a8:3ed8:e19f:5eaa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa493115sm17761699f8f.78.2025.04.23.00.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 00:30:41 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 23 Apr 2025 09:30:12 +0200
Subject: [PATCH 6/6] arm64: dts: qcom: x1e80100-qcp: Fix vreg_l2j_1p2
 voltage
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250423-x1e-vreg-l2j-voltage-v1-6-24b6a2043025@linaro.org>
References: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
In-Reply-To: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Marc Zyngier <maz@kernel.org>, 
 Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

In the ACPI DSDT table, PPP_RESOURCE_ID_LDO2_J is configured with 1256000
uV instead of the 1200000 uV we have currently in the device tree. Use the
same for consistency and correctness.

Cc: stable@vger.kernel.org
Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 470c4f826d49866a2af87f5e109672d51c9bc9cd..c0c8ecb666e178752da8e1d5c22ec2b632776129 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -773,8 +773,8 @@ vreg_l1j_0p8: ldo1 {
 
 		vreg_l2j_1p2: ldo2 {
 			regulator-name = "vreg_l2j_1p2";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <1200000>;
+			regulator-min-microvolt = <1256000>;
+			regulator-max-microvolt = <1256000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 

-- 
2.47.2


