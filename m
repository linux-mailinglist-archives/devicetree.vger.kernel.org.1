Return-Path: <devicetree+bounces-86559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 499C8934B92
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 12:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00229284B4B
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 10:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 992F112C801;
	Thu, 18 Jul 2024 10:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t8uQmutP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FAE2E859
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 10:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721298040; cv=none; b=KuaW97CKKX6loSNPuGDseNO1EV8icRRuNuuMk3vnHrfzrIPTaDGUVTechx5yWgmFxG7Tfo0xTuYlDGqlej9IPQXFlKZSEBj0z9HyUuqFati1n4/nNfJ6WPmMq1u3RI6OUs5DoI2VAXLj/qc8uG5owi51KBU+2E5v3VlII5qa/t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721298040; c=relaxed/simple;
	bh=xRgSCVVplPiL0xpVC03cKU7lVCIrDvizoH5klcKMOz4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=qPf3dC8NRYKV7cCuhGoLRcmkKYkmoKRIWTYv48BMPdbJuQI5Kn2QODr3qR6OmEML4XRKl8VS0WwDH3nuqGF4xTiq+sc5O9JboFGYZXy41bFyvd52WBbarC832DGAZ86SNhO3i1FiQ5VLc5qgK2BgetHPrXeYUBI+dXh3u14yaM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t8uQmutP; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4279c10a40eso1137835e9.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 03:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721298036; x=1721902836; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RQH5T+Pkl1n4Zwh31INvJnyflxCcVkziswAHPe6DR8E=;
        b=t8uQmutPdPiSbJFJKg8gNYKm7eQLEMxiMrGC0/aPAtDD/o+v8B4SX+k4ggUa3u8GBc
         PQNdc1Qa4LsxCvfK7f9OxPUxJ3gMd55/Mrkp0cKQvCffnHbrRoCl/9eS5lrCB89jVu4w
         RmKvc7w5xtGSfO65sYd2qaU2co8imbIVSc58235BR0eyIFcS7qqwwjdwm6tw+wtSSygT
         SJewJ068LcnoItt1+ax4KxANaHbNF5h7O6VijTkq3ScgZrP3++0LUsG/SMmpZaNPqVbU
         iWuW1XeCoSO7hDG3is+4fFZhD4wKRPQyyQxPofRupfGfvycuWzFJNFgxCAXd5A3jI9by
         70Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721298036; x=1721902836;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RQH5T+Pkl1n4Zwh31INvJnyflxCcVkziswAHPe6DR8E=;
        b=QxcFPDTP2qBHeBYAmFjHaeA/4abDpzc2A+k/DzP8h5trDbDYF4G97JGh6IKTeOgiRJ
         Ez3WIAD95BGTHcWF8ck/aF6oqPC1zXehoZ93/rNYOyU7zvb89YDbvo90T6BxmjMBkhCw
         mLAxe+NTwiBt4vR/5r+fj7Db62dH32pVi3dWytrUG5tDPt0Gv6+11+hvfSzPP0h5dghO
         /a8P2RuWvGz4ghmHP8fz3HozcJneeRgRzYCWLIbjb/czVrWZwXwkBF1jvJT7vlsw/6hG
         J6hvLMLl2HOscoDcAWxv4WiC5hgK+j+9T24izP5ZdXJNqu9EA0uLN2smq82QRGkEh83Q
         9uQA==
X-Forwarded-Encrypted: i=1; AJvYcCWWqcRvFtlj48c8fRrHLLZJCUT/l0O4smKID2VYQwKE/mWfNozK9meS64xE47fW4tvN48VdWFcW52FL0AqKfxy6xSVI4I+wH6VosQ==
X-Gm-Message-State: AOJu0YxPTHobZUad5x2pffpH+9JWIevAPRvqhAzQ1qB/yvNV8z+cX9H9
	ug4VGNaMPhC7UlSvZoDT3g2Hx4Nbjfz7SgqVXHyDBHZFL3XsmttbAbilPznEKGk=
X-Google-Smtp-Source: AGHT+IE8n2UsoIYCjK1SWuC28/N90RYfodiLo727k5oWb/pOXPXMmeuepRpyKssx5LAqcYAIhRURag==
X-Received: by 2002:a05:600c:45d2:b0:426:6241:5eb9 with SMTP id 5b1f17b1804b1-427c2d00746mr29162015e9.39.1721298036414;
        Thu, 18 Jul 2024 03:20:36 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d2b29342sm5137465e9.31.2024.07.18.03.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 03:20:35 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 18 Jul 2024 13:20:25 +0300
Subject: [PATCH] arm64: dts: qcom: sm8450: Add Broadcast_AND region in LLCC
 block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240718-x1e80100-dts-llcc-add-broadcastand_region-v1-1-20b6edf4557e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGjsmGYC/x3N0QqDMAxA0V+RPC+QdkK7/coYIzbRBaSOVkQQ/
 92yx/ty7gFVi2mFZ3dA0c2qLbmFu3WQvpwnRZPW4Mn3FFzE3WkkR4SyVpznlJBFcCgLS+K6cpZ
 P0akpGB6hd3dVz3GE5v2Kjrb/X6/3eV4GCtsxewAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1633; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=xRgSCVVplPiL0xpVC03cKU7lVCIrDvizoH5klcKMOz4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmmOxv73rDa4ZQQW0wzr7YeIbOhFD5aZDQIdhbU
 Nk6h/C1Y/WJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZpjsbwAKCRAbX0TJAJUV
 Vk7/D/42TucbcmuXKV9a090uwl5da0pcJVTmg9Zv7+kHGGGz4kFFENwAtVjoDUq3wVVWneufE0H
 yAwNMnW2dzlMFKV2IlRP6qLXQkYJ93mTKb/TaBBQDEGXAMl6+2QRw4psw9132Wp2JbgKVum7y14
 ULBk/1ys41S/GSU7C+y4GUGNQp8+zb0CdTJHVZdYB5v0xqFXnLtX0dUV+aIF957rftCJg5YJJey
 m/9/1XsDxKraMMMfRXQPilJL3mpfaW/qXnau+sXqZT+fBpdUmCbE0V4H39wVPAjR2tHJI6gz+N4
 SazHaZwLRJh5A2WZEQ6s1GrX6GnoD7XSOmwOe38rb/Aj6XZzWm9k/y3liXWATs6x2w4m9Owg6al
 73J7C+cOTw1mshXb4QYPiL6qXEOHl5uZjt8vu0ZGc/10E3CBTFgMaOTAxOxlr1JFNLddNOVi/K3
 ftYhM04EmAHkkNKsr+eX3ofG/aaB8+PevckDjEnutVZyFQL9veXAPC0lPhnDyxpaXbcjSn58e9G
 4yNaP4BY6nL2qzObCgSFQnyLlSpSin+3btIgkqw7vX+DZjTWN4Q5DQc8H1LlTwecE6D4Dqvx6C3
 +xTT+jQw5O2Ui+h7MTKm2XLmgA5OpnFrrzG2yuTYigsGzzq7VufeLfyosRZrtlw5PdpsqQUEYd7
 AJlm28+wordmfug==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add missing Broadcast_AND region to the LLCC block for x1e80100,
as the LLCC version on this platform is 4.1 and it provides the region.

This also fixes the following error caused by the missing region:

[    3.797768] qcom-llcc 25000000.system-cache-controller: error -EINVAL: invalid resource (null)

Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 7bca5fcd7d52..2cbc959fc878 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5687,7 +5687,8 @@ system-cache-controller@25000000 {
 			      <0 0x25a00000 0 0x200000>,
 			      <0 0x25c00000 0 0x200000>,
 			      <0 0x25e00000 0 0x200000>,
-			      <0 0x26000000 0 0x200000>;
+			      <0 0x26000000 0 0x200000>,
+			      <0 0x26200000 0 0x200000>;
 			reg-names = "llcc0_base",
 				    "llcc1_base",
 				    "llcc2_base",
@@ -5696,7 +5697,8 @@ system-cache-controller@25000000 {
 				    "llcc5_base",
 				    "llcc6_base",
 				    "llcc7_base",
-				    "llcc_broadcast_base";
+				    "llcc_broadcast_base",
+				    "llcc_broadcast_and_base";
 			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
 		};
 

---
base-commit: 73399b58e5e5a1b28a04baf42e321cfcfc663c2f
change-id: 20240718-x1e80100-dts-llcc-add-broadcastand_region-797413ee2a8f

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


