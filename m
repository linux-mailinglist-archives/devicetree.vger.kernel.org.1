Return-Path: <devicetree+bounces-143612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F21F3A2A911
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 14:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01DB71887F2C
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 13:08:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AE9C22E41E;
	Thu,  6 Feb 2025 13:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dBGxZTMD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C994B22DFAB
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 13:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738847303; cv=none; b=IN8OBriCnHv07upx02C9KTfif+RqiIR18aLkVWoUTDIwqYQFAsd0iwemgnrspcen3E2CZWX5/yAzsU1pRHZ9w5hp8WXH+8bOdgQcMuW7vKFEsSmabi0XuuT5KD+ARe3i42voqWqVssE03TH87JgkwRffV4Jk6gP6sSAEIlJZTAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738847303; c=relaxed/simple;
	bh=g6CYlgIlCCDTKUM/OG+ZQtKIr6j1sM2JrhXAeW4MFQI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JJkLlp0eEhowapwJkwxABGsq/C97gpTTHhALSYWHa8ld1rqXVUtomC78zOz7BS96APAbsdYKPNwVeHNhwXhDXjgJUxikjQSFK/gi8EZhSpKZvwyastVgmvWeU3YSuWQZMNIYa4vbgpy0eg1BXp1V3PXC+rzjulFgZtN5gycHKxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dBGxZTMD; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5dc75f98188so1637717a12.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 05:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738847300; x=1739452100; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sDAg+ppQjoLROQ6tgZmSgyH+iG6RB5+F1jMAwfLcm78=;
        b=dBGxZTMDMDZ5FnAIbPi3/45HoEQGBa54OegsADxddHG+PuhgwsX7Y5YwaLu60L3TVC
         zVJwVEXrtNHU51Wa8ulDC31IjNQ45ZCTTvVAD3tdtRRxHnBMWAraVH6iBZ5VFxIECqOT
         LO3oY1JMcoWrC8WVCqx7ks6ODRnR1S+mCE/A/yLtDF2TCfmT0WyPi6wb7qAlY6+3c1we
         FI63XGb0oAGb/PZ2N8ROmQ1zHPbsGeTjjT9tE998yQIwUeBGdhf3VlX29dhmjKaOgygm
         u9qadk/mDlkNws+6/hZNI0Z0e2ZcaWZe7GKCUWmfpUS/bmOnCJuhDLNtcrONKPiQbIN1
         Retg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738847300; x=1739452100;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sDAg+ppQjoLROQ6tgZmSgyH+iG6RB5+F1jMAwfLcm78=;
        b=SAtkBtz72PX6/6lHOhY5LYZi9WkrWErR9uRcQE1ifcsp3tTXcJYME+iGU3vjvBCVOL
         FI+GVil1zzP3Yxv4qfsZtdm3Dg8lB1pt9TGYyQQmMOOCr8E466S4RBv142EXK3iRtEim
         jaUn2C8tzXElYNpWhSk1Q32m2QXMIwobpGigUxkfjbP/qwQ+sSBtEUaEV9bcr0+dh/DG
         Z1oErtLR+xjUtIk4I7yzE3ukLI+h/XG59m/O0NxDbjFPGZL0s/csbPZlupJi3+wKmaJm
         uNG2tCMoctaTwqzj5Nze6t2xBlJ9gQ191ZEWSBvWzfo0NLz0PPUHXMGRuAb7/YjS0jqm
         RMxA==
X-Forwarded-Encrypted: i=1; AJvYcCWlmIKdbugGwpJMs1gz7zWCqvN1rva/HAQy47mH7uLW7IhsAvX68FE0diduV+hryz6Qee3DLKrYbQRP@vger.kernel.org
X-Gm-Message-State: AOJu0YwGQPi+Z+0TPOxy4ZQ1pYgHJ3axRDtnKcbDENLexSeWNK4HjZ+u
	T03bBPH9kI4ZGUP7yyFXBaZUANUK/oLioVnAQUIU3CUtem+JDXZfqiiuzyaYiCg=
X-Gm-Gg: ASbGncuqzhJUJKrH1Ku6EyrswrTQkvyAn0zL2czSBRZmXUe/WUn3HsGmcXEWJTH1SEZ
	HteFLcL+tFmSPUGUgd0Nw+ZdsFyoqcl+Wy42ICFAgrWzk2lKXYvy06EmzvS2+xEP/BcMNOfQJ3A
	/ad7CI21bM6wLlmLEVhxAE2e1/pGLmsmb5Gpd+wh4J8mEHu+t9s6vF68wOJz2txRxpEXT5KWaN/
	6FvMhmqa8Iy0HmSRfF0/WXGMbZzTDWQq+E0ihdgyBr5KkDuc++3kURsmj86wdugi/y6fnLEVi8s
	OmopJBqDOXE4DjnmkMFZ9Lldsnrp6CgZ949g+xwJZr66YgLzHMvH11wLevBpzvulAOq5PBYNr5g
	=
X-Google-Smtp-Source: AGHT+IFTAdVpqgZ0wqgMByKwDevPfkkbqJL1+kBcqsh/Cv6cjwQ8nQLxo1utspkD+w2738TsWHLVKA==
X-Received: by 2002:a05:6402:520d:b0:5dc:d34f:a315 with SMTP id 4fb4d7f45d1cf-5dcdb729597mr7450061a12.15.1738847300001;
        Thu, 06 Feb 2025 05:08:20 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dcf1b73f8csm830235a12.8.2025.02.06.05.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 05:08:19 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 06 Feb 2025 13:08:18 +0000
Subject: [PATCH 1/3] arm64: dts: exynos: gs101: drop explicit regmap from
 reboot nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250206-gs101-renppt-dts-v1-1-cdfe993fb3c5@linaro.org>
References: <20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org>
In-Reply-To: <20250206-gs101-renppt-dts-v1-0-cdfe993fb3c5@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

The regmap property for syscon-poweroff and syscon-reboot is unneeded
here because the poweroff and reboot nodes are children of syscon
already. It also is deprecated.

We can just drop it to simplify the DT.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 813f96089578..e78dcd506a5c 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1400,14 +1400,12 @@ pmu_system_controller: system-controller@17460000 {
 
 			poweroff: syscon-poweroff {
 				compatible = "syscon-poweroff";
-				regmap = <&pmu_system_controller>;
 				offset = <0x3e9c>; /* PAD_CTRL_PWR_HOLD */
 				mask = <0x100>; /* reset value */
 			};
 
 			reboot: syscon-reboot {
 				compatible = "syscon-reboot";
-				regmap = <&pmu_system_controller>;
 				offset = <0x3a00>; /* SYSTEM_CONFIGURATION */
 				mask = <0x2>; /* SWRESET_SYSTEM */
 				value = <0x2>; /* reset value */

-- 
2.48.1.362.g079036d154-goog


