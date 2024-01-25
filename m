Return-Path: <devicetree+bounces-35188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CECF83C85D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 17:44:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB7B3294FFB
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 084EB13472E;
	Thu, 25 Jan 2024 16:43:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qmoftmKu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0EA133986
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 16:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706200979; cv=none; b=ppPAXYnJ1H/hQ8dqhLUR5fUh+Fc+5lYh3jRspjhO9kCG9lITobxpz+Ia4cU8Q5rOvwvmxSI7rkyTo8vNwv5ErpZNqSSHLkC7/QzNWPGC/E4pK5eQM3a/r6mSr/bqPcLvxAZvbFw8oc0L8dYgh6Fn972DkXeeiq+3Eqjwjbcmnqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706200979; c=relaxed/simple;
	bh=RA/dywI//b8wbJThXyjIP0zXgcdf9VZeWuhmmKqDdfc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uhOCnLFBjKY0Zw/h8kUnocvCW4p9+Iiz61GSq3JjgJu4xdLZQiE+x+mNMDr/C2qL/TbXnztOPKSf7+qvfMvGDvjzZMyWTThQcuZE34j+q/3wFDLvbU5l0sffvdEPxyJYw6c9Hb3h9dVeid1MwnKnMXMMbVblfFtZOsyoR6YfduY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qmoftmKu; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2937e793d26so68507a91.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706200978; x=1706805778; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AUoJ3ddc9e3JLhAMVuimNZikRZg+KeQcTa0lsEDkqvU=;
        b=qmoftmKunVu7+O5pV0MqzQ/W0lqfyHSfwANG/2C27qIlkTrzFzENYxV9/wcBBv2VXo
         LQuMCp4WdEdnNSBTXLzSm25zfdlvDfMTAIrq9xusksCtQN8kBOkDZM9ZqtGPOlJtahWj
         AaehgAZssnL9VAIBCZUygW3hz0I11ORg1mibOWnlJEHqhOkSQGFS2ppkE+r+HOI3SEEd
         rydQ52VGjowDvVmAfX5oLKs0PS168SvVEut8QaCf0n4X9lM6WxAC8LctNYbU9/hsFoZl
         eLQbD4SthsgNJvdHWuB9uu99SAodepoDe8ghFe1sIcpOVGSkDxyGyQxr0qu1ZOF81t6r
         hezg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706200978; x=1706805778;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AUoJ3ddc9e3JLhAMVuimNZikRZg+KeQcTa0lsEDkqvU=;
        b=ayekIg1hL8oC1KyVDAzxb7hF0w9nl5Qs67QpdiFDLVwkLXyC2yU2LmAMh+A87er6xb
         fvlZB9geroWvxdl2hoioXGdbb1v7jfsVgMor0hJlUDuGSzTKtlaJmqltAHwClPw7pFM6
         7bzyL1AqKSQ8oL5hrxi7oFbvkCe6ZQCUZh289xXzhtVXFsm4niDnDe0k27klNF0BJ8JP
         +hQDepaSYHYvBahARVbzNHZWui6Te9Ospt44QDFj4hWepb+dKVRdpuWYYVNHRmVTdPfk
         eM3cDC3jHxbMRE4GCbeQjV/KrCMXvIEdP+RFbgzSVbKNCvHIGnQ52o4HvUHS+QAmSyLz
         QAOQ==
X-Gm-Message-State: AOJu0YyQMZukwgCc0ZT+4d3rEAVjc2VvspMS4bso1ycSyO19a5ajUAT9
	3O1rBajvKwNLnJht4BZvHulUrnJGUvQiG00tvNwiaDuhhlJ102vq/YfG/HigfbI=
X-Google-Smtp-Source: AGHT+IEepz3BMfPNOyvpg5nL+cVmUDpDXFngYmuO367eAXReN/+4XkVqPSwF+8qpIsQRVpURpQK04w==
X-Received: by 2002:a17:90a:db8e:b0:28f:fc6e:7ecc with SMTP id h14-20020a17090adb8e00b0028ffc6e7eccmr941017pjv.41.1706200978007;
        Thu, 25 Jan 2024 08:42:58 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id u15-20020a17090ac88f00b0028c89122f8asm1769170pjt.6.2024.01.25.08.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 08:42:57 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 25 Jan 2024 17:42:43 +0100
Subject: [PATCH 3/3] arm64: defconfig: enable audio drivers for SM8650 QRD
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240125-topic-sm8650-upstream-audio-dt-v1-3-c24d23ae5763@linaro.org>
References: <20240125-topic-sm8650-upstream-audio-dt-v1-0-c24d23ae5763@linaro.org>
In-Reply-To: <20240125-topic-sm8650-upstream-audio-dt-v1-0-c24d23ae5763@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1023;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=RA/dywI//b8wbJThXyjIP0zXgcdf9VZeWuhmmKqDdfc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlso+FzUzXr6EEozwn0lUxfe+CLrYHnIVUiTRaL9hn
 eRdNipqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZbKPhQAKCRB33NvayMhJ0T5hEA
 CHQJglHouUdo4/OzFYRlYbi6ra+tX8c+gXpIkSBPrsdFpBe3ezha3i5QTimq7uP3p+SQPrUqoZqCCI
 4MGxHiukM065uJQ+4xia2uxbyQ+bi4r7rtqpMmfhHz/sYZBD3iGEWiA5Cc3CSQOG2Q5L1Dpw0wbE9m
 ryO4jmz3g5hf1O1Yk+5SpgLrbW6o2fWDOxh9Hyn01a83RdRMBPF2mnJMmudytYUx7rhGOH9gNsKevt
 qUeYejb1ob334ZEU/Xt5fPDpvRT0WXFCiZa8fNrWE7BQ/FfyPRRes9XMG3iQAT8x64iGpXDM0YGkdp
 mlneSEmNUMexqsEEBH75ZKsu4kG42Og6+QoiIsQgrw2Jvaglt9Jk3jfJrTleOFTF4ssAbQXl2MaU5Z
 cIDTpMU4i84meJenlJki73Tw2K8w4lpf+L+J7dOZPd2WpHAQxfb3iUg++7okhQ5azkMHTagD8QG1oq
 BqtBas4utXoGuu9nJLY1alwpPf2Jv4E0MQTN4Rbts1BI6EwaNnQQr7XaTQwesg9XDHB0/wrezisND3
 FiSVUwLNQslFj/Js26oVONyOnZfkgr/uE2OPw1MCsZgYFL1ohRvRQrAWRUycpf4RIkN6j8oeFrxQR4
 ikaNUdeS/FqoMiKno3L2NQFDsB4vUlF2A/3SC+eKyG82571S5WuycN+3Q8dQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Enable the SM8650 LPASS driver and the WCD939x codec driver
as module which are used to support Audio on the SM8650 QRD board.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5c8777fb5a29..d13d0fb8517a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -620,6 +620,7 @@ CONFIG_PINCTRL_SM8350_LPASS_LPI=m
 CONFIG_PINCTRL_SM8450_LPASS_LPI=m
 CONFIG_PINCTRL_SC8280XP_LPASS_LPI=m
 CONFIG_PINCTRL_SM8550_LPASS_LPI=m
+CONFIG_PINCTRL_SM8650_LPASS_LPI=m
 CONFIG_GPIO_ALTERA=m
 CONFIG_GPIO_DAVINCI=y
 CONFIG_GPIO_DWAPB=y
@@ -992,6 +993,8 @@ CONFIG_SND_SOC_TLV320AIC32X4_I2C=m
 CONFIG_SND_SOC_TLV320AIC3X_I2C=m
 CONFIG_SND_SOC_WCD9335=m
 CONFIG_SND_SOC_WCD934X=m
+CONFIG_SND_SOC_WCD939X=m
+CONFIG_SND_SOC_WCD939X_SDW=m
 CONFIG_SND_SOC_WM8524=m
 CONFIG_SND_SOC_WM8904=m
 CONFIG_SND_SOC_WM8960=m

-- 
2.34.1


