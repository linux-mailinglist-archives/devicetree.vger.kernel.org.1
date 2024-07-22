Return-Path: <devicetree+bounces-87259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D5368938E52
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 13:49:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80E301F21DC9
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EAF816D9AE;
	Mon, 22 Jul 2024 11:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nj4RTrxg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43E516D31B
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721648922; cv=none; b=c+Tx9uAC9venFG6BJaubDzhe2ktluYX/lVlTs6QgWFboRT/IIsk1D9wg3Kgrh3s6FwjoHj8gkE2sRtZ3xE2fr1DbE+zNRwWjBcpj4kNFiT5j6jKO5TMgg8r8JLq43mdxlHHH0tBezGV0BVCvsOKNIUVddM3NCbblDq0z+WaOPYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721648922; c=relaxed/simple;
	bh=wD61BJEe+DtpldLoB47C2K14wZvHYpFBbqDwcS8dm80=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LG7E1NVR5GiQRy6Q9ca1RIF2rZC5M102MZ8ORrZEmrvz5nyGUThbRltszNNe2dqm4Bf3yBN+KTzMMYL7p2N0MIyy9D6C3Oi7EkYPwLzE2uHO7NEQwA27I7WItVQ1/2aVtOMtb/yzx1RNTmUe1ENV1q7yv3UkAORHTfp3iUCzXeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nj4RTrxg; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-36865a516f1so2918970f8f.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 04:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721648918; x=1722253718; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dEQhJ8RmyEK4utl0P1w5rhlSQbA/Z/BVuVsMqnisRQs=;
        b=Nj4RTrxg0pEDFOVQXXBRrYHUGVqlyOio/Qr1x6elE+hrrA0k0WF3HiZBX0FvgVGvHZ
         HNNsFkKR33443N3rJ59zYRyeZS6MIr9lOeROl2Vp8U6U82/MkXdLHYxxvk52qmG1sKSf
         sRPQVxDdPWMlz3X77ZReyujv2DTj78QvKbgRTZ5kwfGlaiOADB7ZeExnfAiP1q3IXNtV
         7KN6LwVRbDWKzjAvADdoVxHaeQNiS0xsY09r1k4Dc/wsGNqqg9MAFnaAHXfnLKmPIAoj
         hV1xZ6whDqLH4K8Qi9zMNZSIkWRH0TAkYyEVwe2RgD/Lwp5HWB7WrpDMuAZ3a3OiwKEe
         fBHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721648918; x=1722253718;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dEQhJ8RmyEK4utl0P1w5rhlSQbA/Z/BVuVsMqnisRQs=;
        b=om1bgmgrY+PSSjVRZ3lqvFFApbi8g2DyhTACypnQmBi+/K+3TZqDbNgI+KW8z4+QEG
         J6ieA3pGrdM5dH5Fs20Jp3bTrE5smaj30h5bthRI6/1ZLyYpFOaskeydiH0bGVpSpK9U
         uzmOjEiDOKfOoSECcqkNxSPFGaxIUH7OA7v8kQv49O2YD1/W38ib6RelKT4KnIZPFNuw
         lyCm4rhzofgFl6YClY2EzDZeqY4KLog88YBZN77afWPv9+RJxcz7p0OHAuvqqzgnSHN7
         QiA8C3QDi66LBKvlczNxDoy7vExR/+j5dhxlFjybQBnClKjdYOe8wqW8ZCIF7ZUwFFQr
         Cdmg==
X-Forwarded-Encrypted: i=1; AJvYcCXfwpqZk/dsPAfNP3VgpVIUVboTC1D5UA5ExlzXz89rniKmbueyXIHqIqtaOFkn9hU2KgCcvKbHtmM4cMEo4KykGUM+b0Ds9tW15g==
X-Gm-Message-State: AOJu0YyZMssP0+zMs8E3bS7Ar6y175CwZsywJD2O1Raz6TX1LU1Ska0/
	1mSAVAa/Hq9XDcXzdu9pEHqLPC1YxMwYdoMhK3zS1psvU4rx6+kh1ymHhG2vhec=
X-Google-Smtp-Source: AGHT+IGKpS0nQgbe/uD9XJhIjoMoaBtib38Bga2oF1nh093dMGjT066HpoZP92R6DX5gbx4KE+COVQ==
X-Received: by 2002:adf:ce8e:0:b0:368:4226:407b with SMTP id ffacd0b85a97d-369bb2d6213mr4881462f8f.61.1721648918141;
        Mon, 22 Jul 2024 04:48:38 -0700 (PDT)
Received: from [192.168.1.191] ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d68fa17csm125681235e9.2.2024.07.22.04.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 04:48:37 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
Date: Mon, 22 Jul 2024 12:47:57 +0100
Subject: [PATCH 3/3] ARM: dts: qcom: pma8084: add pon node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240722-pmic-bindings-v1-3-555942b3c4e1@linaro.org>
References: <20240722-pmic-bindings-v1-0-555942b3c4e1@linaro.org>
In-Reply-To: <20240722-pmic-bindings-v1-0-555942b3c4e1@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rayyan Ansari <rayyan.ansari@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=998;
 i=rayyan.ansari@linaro.org; h=from:subject:message-id;
 bh=wD61BJEe+DtpldLoB47C2K14wZvHYpFBbqDwcS8dm80=;
 b=owGbwMvMwCXmtuJiX/SRuS2Mp9WSGNLmuQvXRL8Ifr+cN2lii8vj+svTnLoWVdk/fJAxQzplv
 T3b2nmMHaUsDGJcDLJiiiyHm76seb3dSejK9qpTMHNYmUCGMHBxCsBESusZ/mnkP75zcvLWF4pr
 xH0u/dq04Z1/k3cEr83DZ2UT/zbXSL9g+GfBzuvysn210qtahgmv3Yp+cdu+k6gs3RjiMDcm/sd
 DbgYA
X-Developer-Key: i=rayyan.ansari@linaro.org; a=openpgp;
 fpr=C382F4ACEBB74212D4B77ACA46A8D18E5BC49D84

Wrap existing pwrkey node inside a pon node, to conform to dt schema.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 arch/arm/boot/dts/qcom/pma8084.dtsi | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pma8084.dtsi b/arch/arm/boot/dts/qcom/pma8084.dtsi
index 2985f4805b93..dbf7afcbfd8b 100644
--- a/arch/arm/boot/dts/qcom/pma8084.dtsi
+++ b/arch/arm/boot/dts/qcom/pma8084.dtsi
@@ -19,12 +19,16 @@ rtc@6000 {
 			interrupts = <0x0 0x61 0x1 IRQ_TYPE_EDGE_RISING>;
 		};
 
-		pwrkey@800 {
-			compatible = "qcom,pm8941-pwrkey";
+		pon@800 {
+			compatible = "qcom,pm8941-pon";
 			reg = <0x800>;
-			interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
-			debounce = <15625>;
-			bias-pull-up;
+
+			pwrkey {
+				compatible = "qcom,pm8941-pwrkey";
+				interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
+				debounce = <15625>;
+				bias-pull-up;
+			};
 		};
 
 		pma8084_gpios: gpio@c000 {

-- 
2.45.2


