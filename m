Return-Path: <devicetree+bounces-35730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BAA83E840
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 01:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51C57289098
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 00:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8851A6138;
	Sat, 27 Jan 2024 00:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dm36f6Ls"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F461C06
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 00:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706314789; cv=none; b=nyf9veVvUjt6DoWNMOVmMMS4LdWLqtarBMl7iRiZfRiIQ8OgdDASkCAut54ma540mih8Fqg/28p7gVWk/uPUXIgEHFPgodfm25T99G5FuhioKDE6RfRd+aaofI+qRTS8SJ3UxPfIqyq48EtirSCKzs+TCC2WB4/psDUG/7MfJqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706314789; c=relaxed/simple;
	bh=xrAW2n0wQYUEYIPRxmxnP7PLumZPUrSFePZs633YXdQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=biW9gD6GPdn+mc2bcvuhNVCupo4AN5Ejz7IR9rGOpxHtYHdqCMZwWmhJS9Y3k8RzmkWELARjPWWdFzDZG1R+Dmed+wfIPYvws/gNQFa4z+x+4q3Fyqbclp0qLQnq7UwgfOZ8az5hB9Vo3N5i2dSkdCJ3iQKCvDmq7kQxEqpFuks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dm36f6Ls; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a352c91457bso48275266b.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 16:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706314783; x=1706919583; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7w4L0mqufSzU15zjl7tBBkfOR0buhpP2p1+Inj0xzEM=;
        b=dm36f6LsN97xPDgagydZVmXgr/bL3MoYz1Zfxyr1/M+8YNqMx8BEuNHkODccm83ZdN
         UM+xYGrGb9xnl+ttF39JCPr5r487XUxpEubnjiGBCkaqfv8rBER7QHfSXj+W2CQ9CMKf
         XfTsIzYRYpmKD4kiNGrQj7Slyoz72F4XE0He/pCEYmV+lud7XdS51fIyc4MH0jRagXLs
         a7m6ynOYO0c6UeOY+46VKyX5w9G6+DjK2ZPMpDxgFGCF6IVFAAaQP4j/VbYjsp7L14Dy
         R6N07agUakM7TIzDdIJ1o5zzqJBB0fWgwZ3EJmYdQXS2HNhYDqwIA5Lkb4WzgsQ8t99J
         PqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706314783; x=1706919583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7w4L0mqufSzU15zjl7tBBkfOR0buhpP2p1+Inj0xzEM=;
        b=GAFWSdzle1PyKza99z3jDZSVmck0fLj0D4cn4Kgr+VZYLg89SqS9Kfauay/TR7vHFG
         hgZU/Ow8Kpkm5LCv9SG9dYHb66FQS6vRctlDfIracOxhH7vQm7XZ+C8CGam6EC/AQCpG
         o6XA046AOMym/Y+xgUM962hbpyw21FLS/GGgWjfoo1nXpK962h5E8RGtsTkwF/jBetrL
         OZZgz17rJBjl0zEmkCslJmUV1lr5mFiAxloMBIgko16fCDsZt4PGr6Zhr1W+U5G1Pqu1
         +VXl8wXZuCFBiAT2i0mIV7mNxLCeVS9rVyy9IABapKN9AfW3lvw+9tZYzu60lv7VE1op
         SDOg==
X-Gm-Message-State: AOJu0Yxb5I4jB/+JTK/iBmaZegi0sNX+6+ZkOQWU7YUamEfk7KylVAdk
	FQaP4qxTDWEmBx0uFnjrPctTG+EvVy+a9tBEGUa1u3lBB6It1ALCmH/wcqaysk4=
X-Google-Smtp-Source: AGHT+IGrd6vWvE4htrMX3z9fiqR6UVxWCdpQm4K847D2umr9PYDOfpqCtrdtDupfNZWZuV4EK8wqrA==
X-Received: by 2002:a17:907:c705:b0:a34:d009:26c3 with SMTP id ty5-20020a170907c70500b00a34d00926c3mr3499843ejc.31.1706314783697;
        Fri, 26 Jan 2024 16:19:43 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id x16-20020a170906135000b00a339d705a10sm1141359ejb.80.2024.01.26.16.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 16:19:43 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 8/9] arm64: dts: exynos: gs101: sysreg_peric1 needs a clock
Date: Sat, 27 Jan 2024 00:19:12 +0000
Message-ID: <20240127001926.495769-9-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240127001926.495769-1-andre.draszik@linaro.org>
References: <20240127001926.495769-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Without the clock running, we can not access its registers, and now
that we have it, we should add it here so that it gets enabled as
and when needed.

Update the DTSI accordingly.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d66590fa922f..ac9cb46d8bc9 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -442,6 +442,7 @@ cmu_peric1: clock-controller@10c00000 {
 		sysreg_peric1: syscon@10c20000 {
 			compatible = "google,gs101-peric1-sysreg", "syscon";
 			reg = <0x10c20000 0x10000>;
+			clocks = <&cmu_peric1 CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK>;
 		};
 
 		pinctrl_peric1: pinctrl@10c40000 {
-- 
2.43.0.429.g432eaa2c6b-goog


