Return-Path: <devicetree+bounces-242187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE291C87AF3
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 02:21:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7404A3B5C11
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EAC21DD877;
	Wed, 26 Nov 2025 01:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TpDVx3VM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3AC7249EB
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 01:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764120060; cv=none; b=DWHJR1R7pX9t2Jg4n37gVV5wvBkkIE8oo/dH3aY7/3AyybmNX6e/i4asuH6CUep6kA/G6GVnYmiHBvzuP4WOltXAaoubSo1nu1BI5j+3+bxeunPlNjl87Ibmz/3mOcnJLpoE9JAXCjVl5SviQOm4i8Ag8zVdlOmWdL+W2Kzzu0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764120060; c=relaxed/simple;
	bh=MMAVu17Z6lsQGMpkcklYcagR8apwwyhnzuZyO0mETvw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=A5VwWa2Y20QhE8YsgckBSQM0DlMQwtwI3HMPmwF6s6Az1OApgwd/cI0RG/w4HapMi8ZkWmCERl7542fh/jLkPoblAt0arAVCNXnYNjLAsenmYeEelthrNGFRbgg/Wluy6hxZynsV0wlvQThniyVG351BOzZ42rqUT+JZhUudsOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TpDVx3VM; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5942708701dso880225e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 17:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764120057; x=1764724857; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Bjs5y4wIfqgfGmPRW6i3y+Z5BzYgPD3ho1e8bxhkys=;
        b=TpDVx3VMEcyUnE9xufWCGaWZVO5EcVDf7BUfEbPzbWPyJLUav09I9LmL6vsN62DWbQ
         4GfugjrkkYrhszlyFf2iksqqettjgSCsiMcnWZybBKe2U0ZEQ4GmmWihlWm5234ckED7
         7SMsI32Eo2H/XS2pOEwtfV8IENRRuOexhoYvT0E7XbOkk+P3jEwGTVlSdrF44cCBbWZv
         RLA2ao7JM01mctwRsCOs3zo707XrU7128ucWziK0vkikFJAHKbhEtp5vK7e9eGcYBbPm
         6Yig2oETYFqjkr0BY5G155RvH9Q9TeTiuh0/r0G0dCoQjESismJPSf8liyePuUbfeMFB
         9ZvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764120057; x=1764724857;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8Bjs5y4wIfqgfGmPRW6i3y+Z5BzYgPD3ho1e8bxhkys=;
        b=BQO3hE7sZ5W0VT8EfLAG/G21xvAk527/XQEy23eucIZxuqYnc08UfzE6/F4eXp/FjQ
         EtpS+oxgG11OOBQzne6htk7EvGnmRrSvyExmq6H73yLizm19oOHJV+DWvxCF0KN9Gz/R
         4OVVjjorOzjyEmTd3ONNvplE7I+sSoIVAFFprRs4XqMBv5rRQAYJotoJguYKTLSfid+o
         BFazidVMO4G6wD5jqlI/eQNBAa/uRF4ct//iEiYBfex8vfMXVsQ2H4jDD9Tta+RLEKqS
         x2l/Lk1m7zjT7GckjZjgYr/GW+ima38PwOLKcS6cFKVoPUFl7zRWYraclPdrH/XMio2P
         hl8g==
X-Forwarded-Encrypted: i=1; AJvYcCVbNNiCBeMIxI5UZHWBwRHXVKBmmS90usi+BscYLZJsCUdTwG3i0hIMof4JsYi1zVth0Tjfh/ZN49G/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywriwpt2Ci+j9UOEm1LrlHxH4/hfGyH+an6biXP5O5D3AI3xluQ
	TM5yC0ls3YmY59ZzGvP7+iW9uyvVK0GU5cp4CIONVRyYMtYrB3IIHiLJ7rONsk4DMyY=
X-Gm-Gg: ASbGncvJyUqLYadeR1ruiMl7RwK++ZBkB/yLLWt7HA4NFplLvRAlLhawJGTu4zXCgO6
	vTgZIR1fwf5hyFRfhMfk6y9IbkxUsms/Bxzy8rx4aE06pMCl4avfdFtzrm4D5UC8FTloNLlso0X
	Frlz3NRHO6+xLUYXM95/AE0iKI9SUwnyUgxb6N32kqLVxkwfppHdtcGg2gGcSJmVvEOfLpnOo2y
	qfvs7v+zXp2Dfey++MpIZWaoGaV/jPwWkltFj3Bc4K3yTd0z+PUCrXxam9ylWcTfT+21HrdvFoq
	qNfExxdz0LK0gat9jkGPegnnmM9C8+NDYS3sKDkKZO6L6EfQzNuQ1HViVBCUlsDrMopaQvf2bsD
	eyCMv11Trmx4rmVL5do7Cdksw03MJbwpJBAE6NdKbinuE3Vr0viC7fXLG8pPI8vSuLscUoAkMUH
	S/9YSPgBz8rDEx6nSn5lLJPycnUIG+NHMzVvjxmCaOdRBlYaq/zFGP9w==
X-Google-Smtp-Source: AGHT+IFM0ViELJ86HUyZ0HgZFAaMaiZVMbKWhPPYEYyIHk2GxgLKlTO9EioZQQxW4Cg+Yn3ZbvmnUw==
X-Received: by 2002:a05:651c:2583:b0:37a:407d:6359 with SMTP id 38308e7fff4ca-37cdc33f096mr23792521fa.1.1764120056892;
        Tue, 25 Nov 2025 17:20:56 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbc597bsm5584426e87.69.2025.11.25.17.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 17:20:55 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: sm8650: Enable UHS-I SDR50 and SDR104 SD card modes
Date: Wed, 26 Nov 2025 03:20:43 +0200
Message-ID: <20251126012043.3764567-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The restriction on UHS-I speed modes was added to all SM8650 platforms
by copying it from SM8450 and SM8550 dtsi files, and it was an actually
reproducible problem due to the overclocking of SD cards. Since the latter
issue has been fixed in the SM8650 GCC driver, UHS-I speed modes are
working fine on SM8650 boards, below is the test performed on SM8650-HDK:

SDR50 speed mode:

    mmc0: new UHS-I speed SDR50 SDHC card at address 0001
    mmcblk0: mmc0:0001 00000 14.6 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 24.8086 s, 43.3 MB/s

    SDR104 speed mode:

    mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
    mmcblk0: mmc0:59b4 USDU1 28.3 GiB
     mmcblk0: p1

    % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
    1024+0 records in
    1024+0 records out
    1073741824 bytes (1.1 GB, 1.0 GiB) copied, 12.9448 s, 82.9 MB/s

Unset the UHS-I speed mode restrictions from the SM8550 platform dtsi
file, there is no indication that the SDHC controller is broken.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index ebf1971b1bfb..1be709204cae 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -4939,9 +4939,6 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 
 			bus-width = <4>;
 
-			/* Forbid SDR104/SDR50 - broken hw! */
-			sdhci-caps-mask = <0x3 0>;
-
 			qcom,dll-config = <0x0007642c>;
 			qcom,ddr-config = <0x80040868>;
 
-- 
2.49.0


