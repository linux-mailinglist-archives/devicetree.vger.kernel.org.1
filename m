Return-Path: <devicetree+bounces-14677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5D97E618A
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 01:43:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2FD5B20F00
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 00:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BACDC360;
	Thu,  9 Nov 2023 00:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RAxkPt55"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD16110F3
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 00:43:16 +0000 (UTC)
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DB59C6
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 16:43:16 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-32fa7d15f4eso164418f8f.3
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 16:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699490594; x=1700095394; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nHJqLlqe6wRkJrD0GLv7Y/DjDcegCAylpgYGBIqvOCI=;
        b=RAxkPt55ER7DW9zvGVb+L8lWXv9xBeT/T68tuEN4RL/R1JupQZtZuINAe+KmmIwoAp
         b79oVmqscYX2vypU3N8V0V0cbDVo24GyNmSQZyz9hV+2hZAtpfATJPmknH9lWxe+68T9
         BxhrGPwSOPLH7xL+Rr+2Se0hr29oL/SV7VrvrafGal7+R6QBl7TTl/QmKh2cI5Dlwb8v
         Qg2NzoXXbx6v5aA5WNM7BR0z6UaMsbmcZNT5xCti+iwmuOeXTFiXU63SFY7aup876q1N
         LdsJulZdXBS9yUPcbZxc/QOrnDk9iPlcTgPUcbkKUpofnQtmFBwpfs7Odtof947fhAe3
         7asg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699490594; x=1700095394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nHJqLlqe6wRkJrD0GLv7Y/DjDcegCAylpgYGBIqvOCI=;
        b=Qacwz73P34vQpcN7tKi//0wiN/53yRMQhO+S206wxhI3g5XiCvGRNx4XFQEaam0Rk9
         NbcNuH18iq7yVKfE8wh9KqoX7rvcyrfhhnQKEw1nJfsWNJGhggfOk0D/5JH23bQLdVOg
         rEoGiU5TS6Yl126o1quZIpTILDltw3Oe0eyO/TmhxxRLXjjl5fhYWApDT1TvlzyTKe4F
         LBXJf5gR+LU+HurEOv+vCh/sBjOph/sgWOweJ0qexgjkkCqo/UgAtiDurvMQUjFcIWJN
         5AbWudJ9enGAhH33ya7RWFNvzxKlSOBGwvF1Wpy7DDGhdNRVwN8GLlAK5xxDw0UPTnsH
         ApuQ==
X-Gm-Message-State: AOJu0YxBPJniCFAnMi/7HgMH+eK23C7VhOdFuxBQ8DY5dSB+QKTaUlRJ
	nTFfzbjP0gdkBFNqXCpH2yIyWA==
X-Google-Smtp-Source: AGHT+IEM4OjFVNsf960irWhK3nF2VhTJmbtwy5XzCXHS5VZhubYh39HLYNITjA+ndRBFxJH3lHiC0A==
X-Received: by 2002:a05:6000:4014:b0:32d:b991:1a71 with SMTP id cp20-20020a056000401400b0032db9911a71mr2756601wrb.0.1699490594797;
        Wed, 08 Nov 2023 16:43:14 -0800 (PST)
Received: from sagittarius-a.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id y18-20020a5d4ad2000000b00323287186aasm6099238wrs.32.2023.11.08.16.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 16:43:14 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH 1/1] arm64: dts: qcom: sm8250: Add wakeup-source to usb_1 and usb_2
Date: Thu,  9 Nov 2023 00:43:11 +0000
Message-ID: <20231109004311.2449566-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231109004311.2449566-1-bryan.odonoghue@linaro.org>
References: <20231109004311.2449566-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To test out a different GDSC change I wanted to have a USB keypress resume
a system in suspend.

Adding wakeup-source to usb_1 and usb_2 "just works" for me on rb5.
Consistent with qcm2290 and sa8775p add wakeup-source to the dtsi for the
SoC.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index e43a16df4c7ec..c2d929e62c840 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3878,6 +3878,7 @@ usb_1: usb@a6f8800 {
 					  "dp_hs_phy_irq";
 
 			power-domains = <&gcc USB30_PRIM_GDSC>;
+			wakeup-source;
 
 			resets = <&gcc GCC_USB30_PRIM_BCR>;
 
@@ -3942,6 +3943,7 @@ usb_2: usb@a8f8800 {
 					  "dp_hs_phy_irq";
 
 			power-domains = <&gcc USB30_SEC_GDSC>;
+			wakeup-source;
 
 			resets = <&gcc GCC_USB30_SEC_BCR>;
 
-- 
2.42.0


