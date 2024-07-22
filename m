Return-Path: <devicetree+bounces-87262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC87938E93
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 13:57:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 92D151F21A77
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A8A16D4DF;
	Mon, 22 Jul 2024 11:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vXFHiCQq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECBD16D32D
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721649461; cv=none; b=i0GtRkCVbunaqXCMcKaaXB7VAT5sju0ahPw8CWPuaV2ucjS6gkbexyayfswLlXrMYPCpayItCMPrKgy1SLv2H4cd2W6jYnkwpsrqXHDsFyWsxqTczFr35VhETebetxNPXs2BfzASmdZWddQi/I0gP0KrWox64MU/X+Lfe+T+cTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721649461; c=relaxed/simple;
	bh=F1orDjEHJakOsOgrw2A5ldW8NfRAdatIOug2faLipeo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GLNdKXNwm749dTwwiKsdS9eqHizyD078Yv3oVnyfJGgEN24/FNbRajUHibOpvhZouduP0ycDmb1cPw2TGO2NEEOuK/xoIX2hg39a67eyLKrqrG1PqkcroauKfrYhQVg0pRh7ux1AQTwdlXLaDXckZgxamh8hyOIrDEv4SoLAmhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vXFHiCQq; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ee910d6a9eso35027801fa.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 04:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721649458; x=1722254258; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Bjn7qNFQ5oOeozmGDZXaVGqpmfLng3wHRltiFh+ERI=;
        b=vXFHiCQqtl9qx0vrMmrTWehuPunAU+ZOzN/IsXmYdNYPrVSSMluN+NUo0bEJyGoLh3
         BGnPjvnoN84lEmIM3A3uTUs1TzpSg3+o9jhWR4n2NukuZwCDhdEywAL9whkSMJBr8eOI
         tC0WaBmq+nLV6LE/QIlcYADymVrpQJysn7/zpFh3oJUa68MMg9WrZuVnhF43ibTtrJYU
         hu3snAi2ks1s64iumesbw2UAp7lrmf1zxPS/7DvaXEyMZy4Exjusmy5cU1fhZKRcZWEX
         XVLbDPWbTBrrFH+FpD8SEGd0FSGf49Pva3nGLXTn7sseN4KLwKjNB4mQbfL8N0H+Ibv3
         30eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721649458; x=1722254258;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Bjn7qNFQ5oOeozmGDZXaVGqpmfLng3wHRltiFh+ERI=;
        b=mK896BYqOZSyzgktzxqqMTotqsGTtMKpZrPJg98MQMqJv3K32RUU9wXGSvz6U7whCG
         0XDQhX3eTll7i51SvanAktENK69yqcDBgtG/zy64a4JlHdKryNdZTWhOCHQAsYDbK6V2
         qQS9Hl8Tsbesyfbf7XLpwpYgJ2y/4HvH+jofq1SlC9ja9IiETNk9DljNod4Wcw9pirPz
         Z+53DWHCrwAafVaj3k1K7HEarbIAuSH0Ppeg07kO0Aq3rOFZx35Td0MiVEvntsuyo0UA
         8RDDRf4wPgcXSW8KVH1RqGxAOskcpzy4u+n3euXI+Sg46sKxhA5YgKWBy47vR/+XE5C4
         tXPg==
X-Forwarded-Encrypted: i=1; AJvYcCUXUzTpZqbc9LlKM9ZPe9Cd54u3LLp/DhpH89xNPeC+NvSTPsV4Bxtkpa/4nxhwF08y+fIobO1l4wrH1AH9eR3hXzhCjKTNNXDDjA==
X-Gm-Message-State: AOJu0YxhAhQMqznk0apfcN8Db59H78B8VGbueFAVZTfDz93QWkK7tcwA
	anjuBU34gLjPGs5fNb1r0FXuzegJlsATP0Va8a4nCm+nKF1VVCMY4T8311PU2oo=
X-Google-Smtp-Source: AGHT+IEoJZveHNlW6BoNfTUsmFUXMg26XuREkYO7fdjHYz/fVX6nh/0A4mt/R8GJDWyh/V3WgR7N8Q==
X-Received: by 2002:a05:651c:a05:b0:2ef:32b5:1de0 with SMTP id 38308e7fff4ca-2ef32b51f02mr8457431fa.7.1721649458166;
        Mon, 22 Jul 2024 04:57:38 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ef0fd10bffsm12449611fa.134.2024.07.22.04.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 04:57:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 22 Jul 2024 14:57:19 +0300
Subject: [PATCH 2/4] arm64: dts: qcom: msm8998-lenovo-miix-630: enable aDSP
 and SLPI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240722-miix630-support-v1-2-a6483cfe8674@linaro.org>
References: <20240722-miix630-support-v1-0-a6483cfe8674@linaro.org>
In-Reply-To: <20240722-miix630-support-v1-0-a6483cfe8674@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1010;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=F1orDjEHJakOsOgrw2A5ldW8NfRAdatIOug2faLipeo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmnkkv/zDr0Np1G1zO7lTZor58Ds5KUbRa4mpgu
 1UeoC3y0yqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZp5JLwAKCRCLPIo+Aiko
 1WhOCACyJP/TZvG3FLEBfAJjE7tosLyXoMHqaz+vums7JB+RZO3ieavZ+mIf/PQquevDTIKAjwH
 gDaC3uTBk/zGWos/Db0KM1L1GEVUaGUW2Tg0jYrroakplBTN21xECemZax8S2L6Vdahf+DKWG7w
 MDLWX6ux8a43vivWsKSNufnWCO25qsrrXah00aIh9RmIjBxpPrfG1Jye1LeElwMakZs9a7WjxNX
 bDB58k+wwonZojiCR2WVmUv7L2M855B8cNa4cfKRsVAXRUO7UeM0oQguK47Tri9E3J0RR4KReuy
 MMN4tFYytRgvyYA77fv0YIwU7xlp0F/LwujIFamJ+SSd9XkT
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Enable two other DSP instances on this platofm, aDSP and SLPI.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
index 118c55f5bcfd..f585bc8ba2ce 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts
@@ -45,11 +45,21 @@ keyboard@3a {
 	};
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/msm8998/LENOVO/81F1/qcadsp8998.mbn";
+	status = "okay";
+};
+
 &remoteproc_mss {
 	firmware-name = "qcom/msm8998/LENOVO/81F1/qcdsp1v28998.mbn",
 			"qcom/msm8998/LENOVO/81F1/qcdsp28998.mbn";
 };
 
+&remoteproc_slpi {
+	firmware-name = "qcom/msm8998/LENOVO/81F1/qcslpi8998.mbn";
+	status = "okay";
+};
+
 &sdhc2 {
 	cd-gpios = <&tlmm 95 GPIO_ACTIVE_HIGH>;
 };

-- 
2.39.2


