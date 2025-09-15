Return-Path: <devicetree+bounces-217454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 802B6B57D1C
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 15:30:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 347523BA20D
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791AB318124;
	Mon, 15 Sep 2025 13:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HPOlI/cN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4705C313557
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757942937; cv=none; b=gDEFd67Ncu6s6w35hyXWHkFRfMA3wK22m5nUG4TAKNx9T1eyIS9tuedBYm5FLirhm8a5OXjXNMrrHEverMXOYhWHAqnssblLxf3CaafmXcfKy6vPgq31prsQ25DUjcu1Bw4M13K2f04hoXeKKXJIahZo3bo0uPwxo1Y0jbn8CMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757942937; c=relaxed/simple;
	bh=vnlm1slyNmbttO9fw4RIWStPZdVkW1FF3oJw8gyAinQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EC78M24B1VEirSPYjxVEwz0McNGlgdcJXOFpEZisvSK+3dB9yZK17DUys3y/SAI+RfeXyEr9X4JXXu5DJRzA+rf0c9VgsX1N2EvOtm0Jc+JzJ7bP7QdmrtwTne1IeWuHXG8J/1+2pnJPp0n4goo5AC2TtoI9iD6P/gediF7ehBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HPOlI/cN; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3e7636aa65fso3637226f8f.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757942933; x=1758547733; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=35maHscUr/d47mvdI2u+bHhN47XfHp34cUHx+zt1aho=;
        b=HPOlI/cNBucj9ZmJ7fuE1dAKZ1e5jgYxSIx1PCtbLI0fwIMDMwRATM1CBs5nGoBOIe
         9EltpUsVZgTFPQTNOaPrbmAqxJW6NhYMo8WHzJpbx3kP0TgSxDl3ze3ScGjdQsoWc1nf
         dvo3a3g4EC5v8KQlljGghJifmGPxrVIZzbOoDgjudSRgS6k7ALdZjHsm5VGxPNvuKu8+
         Ln/2Z2ful+6bPzD8QEhmrCHhgpOxrWP/VqVjeIvGddFnAOlN5v7h5T25osJD7qNlPysF
         6XsZDhayoHi6Yi/KTbjc/TKR4+HrqVs9gWhnCeQuu1aDShIa3nsVnncojnbKBeWy59TV
         epXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757942933; x=1758547733;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=35maHscUr/d47mvdI2u+bHhN47XfHp34cUHx+zt1aho=;
        b=jY2jvwF+7M/jYqpb54kXVbniCLlbQCCDjEchx4/eDr64zY05OtB6cfU/DSDWCmwz5a
         ubyylLfBJsXpoL0MtoHvNhpKsEx+67TLKZ/xPaTqpw7PqHDCnVqk0TSuZrrBF9XmF4H6
         o+1ML2sybL+/+ACEdCcfLU5uI0sDe6hFFuZ67Vty+28UGkaLmUS7tUaPwcOna9izX7fS
         vX+De7/+AvzJ00KbIAHO4O5F6eW3HZki5bA6YXUlkQzyzPJ12/AohK4qk1C20EK2ZN4t
         gNtBFwhaU5dFVvvbdaoe24fj4rWW9lugfcKIbb48pEv+Pye4hfOSdAORqRubwntfdL4G
         NrOA==
X-Forwarded-Encrypted: i=1; AJvYcCWfkXxV+5uNSU/N3kQBhcsn8K52V3GOwEYQ4rQ8BYHhfTD8Ph5TdLhC2fvTOf2ngAn2fW5F26K1JK4O@vger.kernel.org
X-Gm-Message-State: AOJu0YzYVubmIvlfZ7VjAY5EKrAZU6MVV6xFixSToQK1DY84xoFkI8i5
	BMe9P+WS4tFghnRcg1CkJw/F/HlqMh27ya31Gh+/h3TaQGLZhGM1pEvdH1NcgozvF7s=
X-Gm-Gg: ASbGncu7QowgszQCnsf40Wvyeq9jrJ+qPS8/L1bJ7cB8DzNoGuDUiQeOa2PvAslTddb
	ofRD2DgUtmPtmatoiT5izdCBoPXk0S1AHuAWKrZeifo9oSuCoP/us0yCrDIkL3LWfsNtiVbL6fm
	4vuiTCFXpSFJ4c7jhZaMRjCYyTgyZiCCM/gO4S8sfd79bdaqf8C6HoLJ9E3e/zJAwsryZMnuYeJ
	WvrJPRysM+agdKvJ7+vySC9SAO2LD7webz785oU4njDyYjoePre1fMGIMtpawjdcmm82lktjmU0
	1IbN8WulsXKpD/yR9KueNpngMIfYEheWn7iCE4kRgl201sTh3Y6pSwvamqlw39Kq12ewlQrz6nm
	AWgU8i9IDtOcTz/e5UDupY9C6Udx5TwVoQYQ=
X-Google-Smtp-Source: AGHT+IER/KlJED2PxaZ/4h5FniATgL9p4nd5Af5mJaje+r1DLi2JqavLb0mBaDaMSdEUYQIxaESExg==
X-Received: by 2002:a5d:5d0f:0:b0:3cd:5405:16e7 with SMTP id ffacd0b85a97d-3e765a2eed8mr11975067f8f.29.1757942933186;
        Mon, 15 Sep 2025 06:28:53 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9fd89af70sm5978874f8f.43.2025.09.15.06.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 06:28:52 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 15:28:30 +0200
Subject: [PATCH 1/3] arm64: dts: qcom: msm8916: Add missing MDSS reset
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-msm8916-resets-v1-1-a5c705df0c45@linaro.org>
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
In-Reply-To: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Vincent Knecht <vincent.knecht@mailoo.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

On most MSM8916 devices (aside from the DragonBoard 410c), the bootloader
already initializes the display to show the boot splash screen. In this
situation, MDSS is already configured and left running when starting Linux.
To avoid side effects from the bootloader configuration, the MDSS reset can
be specified in the device tree to start again with a clean hardware state.

The reset for MDSS is currently missing in msm8916.dtsi, which causes
errors when the MDSS driver tries to re-initialize the registers:

 dsi_err_worker: status=6
 dsi_err_worker: status=6
 dsi_err_worker: status=6
 ...

It turns out that we have always indirectly worked around this by building
the MDSS driver as a module. Before v6.17, the power domain was temporarily
turned off until the module was loaded, long enough to clear the register
contents. In v6.17, power domains are not turned off during boot until
sync_state() happens, so this is no longer working. Even before v6.17 this
resulted in broken behavior, but notably only when the MDSS driver was
built-in instead of a module.

Cc: stable@vger.kernel.org
Fixes: 305410ffd1b2 ("arm64: dts: msm8916: Add display support")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index b50c7e6e0bfcd35ab4f8b84aeabe214fd60e8d7c..de0c10b54c86c7795b7a0d1ecd80652e60e117b6 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1562,6 +1562,8 @@ mdss: display-subsystem@1a00000 {
 
 			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
 
+			resets = <&gcc GCC_MDSS_BCR>;
+
 			interrupt-controller;
 			#interrupt-cells = <1>;
 

-- 
2.50.1


