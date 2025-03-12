Return-Path: <devicetree+bounces-156855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C93A7A5DB3B
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 12:15:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89D2D179090
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753101CAA87;
	Wed, 12 Mar 2025 11:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="gab5QYhm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B6123F362
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741778108; cv=none; b=lMxKFFtesCQzeGP/WuK1+uRyttau3bSO91oCgr4sCixHdbUTyg026NSLloUumdvam2x+3MJZBdA1/MAcQxpEz1Kj3c0NBD9Y0Vmwa18pOk02juWA+z4zCEOVdXp9rVjxfcB5UDSlvDS5NdzV330FTnCSszC5N2y8zfPhIa8+4ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741778108; c=relaxed/simple;
	bh=hzIkYqCNiMo80kaSTJ9vM3Dwk3kxjnW9SITUVTmj8p8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=ZK7oPmpRQ7O5fyIvrh5jlO8G04xtGU9rcKdRSO9J4N+rzweEQmr8RFXP8ak63+etoOUnbngb/pANr26dT68MIy3SxFApVy8HNhBUqpJstlbxwoyN0ESqJgAE2MpgKLBy2UtyMh5XfpabXKQNY0UIqovNAJbQISWv3jWV4GmKWQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=gab5QYhm; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ab771575040so144054266b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 04:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1741778105; x=1742382905; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lrye5RapocrcbRYwFATS9q/NOK1mFM++X2eM3TdS8l4=;
        b=gab5QYhmj5E6mXJWr6tomW+oQwDECS3Hvb2RRVP6BuILFrh86W76eM4HuYEmwr/VSk
         M78v3ap6W0ZroEbU2K7mFOYg10oYoSKkc9Jl9ASYa0+9NzGDF6x9F9/Dex/PwyOV/PAD
         BJSnyr+ppkgO466FaFyW481xoeJvE340w69yCNznNbNcsSHq9rSeh3MJxYZ7I2+r5Cl7
         Ixs+miYaXBP03jChomiYu74RBLPy5T/qda34b73OrLQRcYNnV4ikdQeiB6+r4ldZrIKO
         d6iLld4i1L2kQTW3Eh9dXffh4Qe4EZh9JpQxWfQC7cJiGFoC3FF3KM+/mcWfo0ITqqi1
         QK3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741778105; x=1742382905;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lrye5RapocrcbRYwFATS9q/NOK1mFM++X2eM3TdS8l4=;
        b=t8qSoK5TUZQAZAY8Cp6uoXkeeTITBcpcd8Yh97rLb535DKL4UJaSJ6NuimSlhTI/AO
         QddZuPOFLvD2/TIMwo3QyQygR2eJKeyK5FCJZjHzBzhqr2H1wccj2pqepu+fDbzm2mmh
         tdM/ddcCicDxaLDD5TvDOo6Ju4D966U+0rofbLoLGongmuKHdiuxlFdLpBZ5UsxINZuI
         IMrbNv9CnTMCVMVcUdiPnJsLtHSV7D3pSElVHPqUQQ8pTgPTBXExSWfc9AEHSjTowtTY
         srIf0ao+KE18SKOnvxebHjy5rsZsib0/+JG9vNaQXgZs3hyR1Mf+hKn5ih0MUTK2saAf
         DxjA==
X-Forwarded-Encrypted: i=1; AJvYcCWvF66vErvMLSHkOY5FuGXMXZ4zx09oF179DTjx1TlBAIUV4ZN9ojYfc9W+0I/oRiFzXWlPc8pZjGAb@vger.kernel.org
X-Gm-Message-State: AOJu0YyOL4NxIQzj47TGb+3vJGmyNbLcLZEwyMriRyIriANlgJu9jYBp
	bmO7u+q6Lm8SOg7Fd3B8gwIDTpQPf15Fnl5clTdtEWi7pSUIWyBbSNtyKrU1ZKM=
X-Gm-Gg: ASbGncvq4wG4QnwMFaLWGSJIJpC28NSg5wCBBcAsrWlpOdf2Vsu0iPkx3A3hF9UZ9hF
	fwlOu/NA43NUAJg+fkpjjI9Rn2cjLuw18pFODTTEv9IW/vWm+XASVjKGOkEYSiuz/laKPySVNkk
	+tZNBJb1CjQPtKKE0SQX0KIewS1NmzRxIRY3ylPHZq3a2gAxRFLXFaa+rubaDIwPb7F6Paq5K/z
	hf2ajmvTVJ9HtAwTQhZiIyQWqrRaVf7AXUwao2uqZXL8F/6vCh506VuFRC7n+fhbdfPbkUh86Q9
	EdK2AtxVtdb4/bu0uEiE/3wB4MaqAXa7p+LJiizcfUKJ9d8pz5nMHn+D9aUJItSJNzhSK4wNNl5
	7dX1xImGbgh2srUCK6w==
X-Google-Smtp-Source: AGHT+IHnclcokenSW0BD2xU3JDOUI3YTaP87OCmSR72jOip2Alz/yxNoSA2D0hIW7QuWvkEWzMqRrQ==
X-Received: by 2002:a17:907:82a0:b0:ac2:3a1:5a81 with SMTP id a640c23a62f3a-ac2ba53c9a5mr744096066b.26.1741778104396;
        Wed, 12 Mar 2025 04:15:04 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2a89f381fsm414129666b.169.2025.03.12.04.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 04:15:04 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 12 Mar 2025 12:14:59 +0100
Subject: [PATCH v2] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 touchscreen node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-fp5-touchscreen-v2-1-4bed270e0065@fairphone.com>
X-B4-Tracking: v=1; b=H4sIALJs0WcC/2WNOw7CMBAFrxJtjZE/SQRUuQdKYdZrvAV2ZIcIF
 OXumFBSzkhv3gqFMlOBS7NCpoULp1hBHxrAYOOdBLvKoKXupJZG+KkTc3piKJiJokDsz71UpnX
 2BnU1ZfL82ovXsXLgMqf83g8W9bW/llHqr7UooUTrTtI6Q63zOHjLeQop0hHTA8Zt2z6Cr18gs
 gAAAA==
X-Change-ID: 20250203-fp5-touchscreen-cc6960134dab
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jens Reidel <adrian@mainlining.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add a node for the GT9897 touchscreen found on this smartphone connected
via SPI.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Use interrupts-extended for irq (Konrad)
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20250311-fp5-touchscreen-v1-1-4d80ad3e4dfc@fairphone.com
---
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
index 356cee8aeba90e21c11f46df924ed180bfce3160..0f1c83822f66f95b05d851a5d28b418ff048b09d 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
@@ -1069,7 +1069,17 @@ &sdhc_2 {
 &spi13 {
 	status = "okay";
 
-	/* Goodix touchscreen @ 0 */
+	touchscreen@0 {
+		compatible = "goodix,gt9897";
+		reg = <0>;
+		interrupts-extended = <&tlmm 81 IRQ_TYPE_LEVEL_LOW>;
+		reset-gpios = <&tlmm 105 GPIO_ACTIVE_LOW>;
+		avdd-supply = <&vreg_l3c>;
+		vddio-supply = <&vreg_l2c>;
+		spi-max-frequency = <1000000>;
+		touchscreen-size-x = <1224>;
+		touchscreen-size-y = <2700>;
+	};
 };
 
 &tlmm {

---
base-commit: 3910363993da7c2a1d31dc247de59e8ca1cf25fa
change-id: 20250203-fp5-touchscreen-cc6960134dab

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


