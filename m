Return-Path: <devicetree+bounces-31066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1F5829D6C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 16:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 373AD1F21425
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 15:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 073904BAA3;
	Wed, 10 Jan 2024 15:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="SiMoqZ3k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBAC4BAAE
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 15:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a2b6593ae10so197263966b.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 07:21:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1704900083; x=1705504883; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sofCmMz+PfMbXOmyDNafy7xizRaFnMwusuGn4gaRgT8=;
        b=SiMoqZ3k3UEcdKYs6HWfD0qIoiSfbEmdIoYdCOn825Z8KgR+IFdT+XsQW4hNPhtDf9
         4gaxueQi/SKuTVZZlTppAshIlHkPO2gaHJOG6wTMCg9kOtBwBq291cnwX0VlLlNU4XpP
         PQ90UYsVuPg8eSdgh1UFaDxr/yiaFgm9fQnXJc7IaNF6lFgUIp7SQZbKs/9utTAZoYcZ
         J/gWvax4o0MF7602pu2Is157pl45Iige8+hZWiRr/PFX4DVk50HQ3MJ2sZuoyBrOBHUA
         +SVbmgIwKZgNtrf/iDk9ZL5LkywQMYvhdSURjPMAuMq5YsEUwgetifzQiV5g/R08S+bd
         LfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704900083; x=1705504883;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sofCmMz+PfMbXOmyDNafy7xizRaFnMwusuGn4gaRgT8=;
        b=MTXwYJQQdPNWnxvZksNw9X4iawQ8WqD5E0+TDZsHlpBvmnaPmq82ESaGsbl4KhLaJG
         V64gfnHeNDNwSge81CwnunIa+bv5o+Xz7Psp5L1uvvC2wHK3VmHLsLrBG+cRbd5Reqoq
         7rLVkPwMdf5duxMblxEozlaw4qgm56sjIISo2j4lnjwsJLtiOYXLCmWabn/ngpeYg/08
         qJoI9hJWlMhSV3+p/Kk0S/dBQTqPukF9paRaKEly7KkB7HtrXuOOsmJHaX2p7jHYctwL
         qie+86XKujxEhqvpdkgxqCmNYHc2h6KLCm8V1RHvCXRz+THK3OXpjXWfF4etRkFuDdyt
         J9mg==
X-Gm-Message-State: AOJu0YxfZnBZYX0R+uXaYWapz9W37V/Zkinlws4Xr/3C4W63wIfYy2VH
	U5mWLfwvTWwzeErmFfIoD1NykArnZ48e4g==
X-Google-Smtp-Source: AGHT+IFoxW8ODeKqVvPsrrto75ezjwGrqmF+sKXQuupMA/y3doioxC0tAqO/cD9zud+OqZpjyXtaGg==
X-Received: by 2002:a17:907:7816:b0:a27:c453:8706 with SMTP id la22-20020a170907781600b00a27c4538706mr689934ejc.125.1704900082844;
        Wed, 10 Jan 2024 07:21:22 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b00a2bd8953af2sm639342ejf.55.2024.01.10.07.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jan 2024 07:21:22 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 10 Jan 2024 16:21:19 +0100
Subject: [PATCH] arm64: dts: qcom: sm7225-fairphone-fp4: Switch firmware
 ext to .mbn
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240110-fp4-mbn-v1-1-45e7e33b1834@fairphone.com>
X-B4-Tracking: v=1; b=H4sIAO61nmUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDQ0MD3bQCE93cpDxdc5Mkw0RzUxNzYxMjJaDqgqLUtMwKsEnRsbW1ACD
 ubBZZAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Specify the file name for the squashed/non-split firmware with the .mbn
extension instead of the split .mdt. The kernel can load both but the
squashed version is preferred in dts nowadays.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index ade619805519..9ed349ec076a 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -116,7 +116,7 @@ active-config0 {
 };
 
 &adsp {
-	firmware-name = "qcom/sm7225/fairphone4/adsp.mdt";
+	firmware-name = "qcom/sm7225/fairphone4/adsp.mbn";
 	status = "okay";
 };
 
@@ -361,7 +361,7 @@ &cci1_i2c0 {
 };
 
 &cdsp {
-	firmware-name = "qcom/sm7225/fairphone4/cdsp.mdt";
+	firmware-name = "qcom/sm7225/fairphone4/cdsp.mbn";
 	status = "okay";
 };
 
@@ -400,12 +400,12 @@ &i2c10 {
 &ipa {
 	qcom,gsi-loader = "self";
 	memory-region = <&pil_ipa_fw_mem>;
-	firmware-name = "qcom/sm7225/fairphone4/ipa_fws.mdt";
+	firmware-name = "qcom/sm7225/fairphone4/ipa_fws.mbn";
 	status = "okay";
 };
 
 &mpss {
-	firmware-name = "qcom/sm7225/fairphone4/modem.mdt";
+	firmware-name = "qcom/sm7225/fairphone4/modem.mbn";
 	status = "okay";
 };
 

---
base-commit: 0dd3ee31125508cd67f7e7172247f05b7fd1753a
change-id: 20240110-fp4-mbn-74b1a7547342

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


