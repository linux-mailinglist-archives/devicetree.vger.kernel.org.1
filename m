Return-Path: <devicetree+bounces-101088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAE19703B9
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 20:48:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FB6A283C75
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 18:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD0B166F37;
	Sat,  7 Sep 2024 18:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UFrPGh2h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9840165F17
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 18:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725734905; cv=none; b=s9t5uIy7oxtRSb8HwKabiwA/kWDm5lVyQRQg9A2Aandx90GVhsGnAjxUuGepqz5MqSI41Lg8PuFbq8zOD3KuR99W8FspkZXAx3ifJHhqLQA+/u7VdWfHxz8eJJS6AJzsVSnl3/6KIScvIfa6mI6LP7T1c33GV3rO5OjPiC6NuF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725734905; c=relaxed/simple;
	bh=czZ7T+mf6XqWzU6Vf6WURi7MEzoc/X2h0XJq3zPX//0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rHtVD/DIjNEzdMalNsZE1w4S0AVewXHJdCpHbqh5FiwR0XB9lQaQR2ibio5FXS8wvDs+XiKVoo3z/dXq0G1Y0lbhPNn0sntXuEhMooR/RDh9nb1jmr6yacBvZxo72a+K5pF6aDiqdefEG2dSp/c57l9ZFIYsDrU9mU3aSnns63Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UFrPGh2h; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2f759b87f83so7922471fa.2
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2024 11:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725734902; x=1726339702; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+MQl+w+EtPc0//xS+aXieS9CbUw0+8xjxLVKoHk7Lo0=;
        b=UFrPGh2hYyiK2hGTk3ermZMm4NYSFvKJIW5h4BzKXwQzBiEtlM4N1S57kptuI66Wds
         DEuWq21kG+bpwPKxjwPglw3IDnT/59T336MEruiZk9ZAUz0BiGd18m7qggUoIUNYVCpt
         HXpR60xL2ZqgMsGQ04rvHIpTyV3EUn9mWIunmbvInpQ9UyZuM7NRcSYUcx6PTS59z80m
         YUtSfCYMASV+iQzV17z9BZS1cFEPWwVPFsWscSk8VwBckKdGW++TqdJMnDr0Jvqsx8bx
         ClkdUzVfncUMARNSkH/dCur6wjIrL5YDV7PgMpWVGQvERxUQqv+PnjDIRSsfmuBXYRHc
         tWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725734902; x=1726339702;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+MQl+w+EtPc0//xS+aXieS9CbUw0+8xjxLVKoHk7Lo0=;
        b=c5OrrrMyJMivOPRiROgP2CVBoG3UXCK00yG3oi7/dBtoGhrDeTGpmoQeUENiL6KuXe
         SA2fWzxN/nP0UmB0gmHVzy/gOiax9rBCS1V1pjaVTdB7X39pW146oJNZlN04EWlhj2Hr
         k7mzo2/B8/MVJXePUIe8mY9dM6bYw56SfokJKkWDnML7NBdb8cgUkxbuDDo2cMXrEtje
         KvuZMQnsEuzGyjNSic9JZeJb07HanlRqM54QzvUm/laQfHZAPNPT4PdSONsmw6jvPoy4
         XErYkm+HWqiY6Q9WFwShnIfzaH/yxUKfu6Rz70ehrThxOThbNMsYZ5dghU+l0shzS1Vu
         ZejQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfI7Idijzg5NPwtfElYVm1Ulj/XCVSKawBGkrQuiJIVpii2yu8KBIJYtKz+94U4rvSqUI4f0YC1l+f@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr6UeS8QVcDtQN51nDJgTOjMHucQeKe+FIFL0hd85oD1hyH+RP
	cT7q0MpfA3i6XlLK98o+UEpThLf5rJ0nwYZDo+BGDd8hL/PNjPuh0gVrRTdVXbY=
X-Google-Smtp-Source: AGHT+IFt/F9gdcOgwpNi7fafKgTp/rZCPURIU7Ulv5ZyfJmoQN15S9LX022Fh+nYO3YABMxPYuOVhw==
X-Received: by 2002:a2e:d02:0:b0:2f6:5d4e:bead with SMTP id 38308e7fff4ca-2f751f2b131mr30255761fa.21.1725734901592;
        Sat, 07 Sep 2024 11:48:21 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f75c0b1af3sm2271861fa.129.2024.09.07.11.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Sep 2024 11:48:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 07 Sep 2024 21:48:14 +0300
Subject: [PATCH 3/7] arm64: dts: qcom: sda660-ifc6560: enable GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240907-sdm660-wifi-v1-3-e316055142f8@linaro.org>
References: <20240907-sdm660-wifi-v1-0-e316055142f8@linaro.org>
In-Reply-To: <20240907-sdm660-wifi-v1-0-e316055142f8@linaro.org>
To: Rob Clark <robdclark@gmail.com>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: iommu@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1341;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=czZ7T+mf6XqWzU6Vf6WURi7MEzoc/X2h0XJq3zPX//0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm3J/x7F2PoifzzkkFHxz2+pRkYLt9ML0xZEW+o
 3DWhVRfPlCJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtyf8QAKCRCLPIo+Aiko
 1bLJCACJMd8jResuMsuhYfRhbO4DeTthTfGRK4rkPdDurx7rNtoeMvbbUL5rG3y2eVui87VLDfN
 EUAEwA6xXp4405PqYaI4rFWM0vWw5e4NEETlX0rgWjkglYhwNw5kN7xAA9SNakt27ds/M6MuN3L
 tJUM4EdZkcZfx4LF9qOlqX+JYa8SL+KidSHFtDbqK/3XYBqaIDYNWQUPwiUkbTbdqwgCGJrO+/J
 3zWN7oDuWEH6MUsiyP9+fryFrqlDqZhw4/Ru3fQAias+d6YtPv/AT9ZEuLLrBKzyb1XV0t9g0mV
 dx6JraJkMAwruTpCoJiLcV8qTA2QHCIeT1IO2T8HP7OBYSqA
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Enable Adreno GPU on the Inforce IFC6560 SBC. It requires the Zap shader
binary that was provided by the vendor.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 8 ++++++++
 arch/arm64/boot/dts/qcom/sdm630.dtsi                | 4 ++++
 2 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index 60412281ab27..ac0197624c09 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -110,6 +110,14 @@ vreg_l10a_1p8: vreg-l10a-regulator {
 	};
 };
 
+&adreno_gpu {
+	status = "okay";
+};
+
+&adreno_gpu_zap {
+	firmware-name = "qcom/sda660/a512_zap.mbn";
+};
+
 &adsp_pil {
 	firmware-name = "qcom/sda660/adsp.mbn";
 };
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 40ad99d75738..92695375a63b 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1150,6 +1150,10 @@ opp-160000000 {
 					opp-supported-hw = <0xff>;
 				};
 			};
+
+			adreno_gpu_zap: zap-shader {
+				memory-region = <&zap_shader_region>;
+			};
 		};
 
 		kgsl_smmu: iommu@5040000 {

-- 
2.39.2


