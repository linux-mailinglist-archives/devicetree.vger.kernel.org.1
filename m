Return-Path: <devicetree+bounces-174364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A857AACF16
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 22:58:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B5F4982B8C
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 20:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E461E1DEE;
	Tue,  6 May 2025 20:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vyc0hNqY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F6FD1D5CD4
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 20:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746565066; cv=none; b=JdP8pbMy7IrDzFwgc/tfCwlWM6XTXixdvv5eI4ViH+FkqAXf8ybD/DP6npVeovXDE7DZVYeWBrK3c81cPRGIsPuaKTIIDwpSl0AU401tQpQhdirGAQMoYZcIewobMDnFD6mwCOqOdSYyQBrVJMKoG9gOPb5oEbF1OpR0IB05rz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746565066; c=relaxed/simple;
	bh=2jU8lWsHMh83BJDd6uFLy3YOaP/2xztJxNAHsH0fugM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i9XXXlDp29yHOEj03KwqnnfGr/jBoAdAiiPnrCEHHd/KEiCtVE93R03ul7rbv9DFtqDl9Ckc6NJZvc49My3wForVEkX63UeU986+BgcmFowQD9FaQr2sg9pMWPyEttjR5fh/xOZP8xahQ5ZtxekWExPb31QCcfvIjw4dqmvHfSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vyc0hNqY; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-39c1efc4577so3207132f8f.0
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 13:57:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746565063; x=1747169863; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1NZVMe0POaYy6U35iIgm7DP89EqIz3yo46LCC0chDBE=;
        b=vyc0hNqYVomWHCn6VWXwQ85OlVIKWG4/4nAD0jP7u/dTdSqz8P9DSFbL3hpfmihWCQ
         R0vpp7n+tB37OXUbYK1Qsk2UtHap7YgPRhnw0xcrJ6DNlJ4qgSIDMFZHfwB4HBTfIQKV
         Wal1EUUDsyWXZXbxm896etzarcpUKXHEWQm5BkdK/x2xvEpa4hBfcwzR35vg78pUDzUw
         WzTr3e/BI5wPWN31ZMTnspqU6iN55T/zVYB5/6NK93gq2EIvLiCJnj5V9cI300y7l4rC
         O8gnhN5b+mJDArCFbNObAAjCvYrI4WcQvDYf5hGk4RI90O09kJU5vwgs7DS5NI79jOSq
         mGhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746565063; x=1747169863;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1NZVMe0POaYy6U35iIgm7DP89EqIz3yo46LCC0chDBE=;
        b=HlyIz8cyWCZE/szF2ZB2MDoITY8QfnfIqdFBEVif/2Tz5b2/u5Ow0JAHkub5biF+U9
         HXCzl6tvJZXUCf+7+kORcRMtWGijiTPe+xumaXl5chAV8E1PL8/q3qN4icIin+yUlgae
         0qFZdcBq7kV6X0Cc+A1yICFV/Pij2Up8vw/tyyllGjkowqU3nhFkbw1116ep2Np4nOie
         yg48gW0NrUYUBtrMwEweRi6ML1TexSSGwJJaUBGDkw70FYXgGopPpWBsITT0UGCzLgC9
         TmvwceRx701HHdtJBXmdhQJHPvUEbI4iEh6wNl0aYpq+Lc5vKlAaWtoRx8hRvK+/xJAY
         RWsw==
X-Gm-Message-State: AOJu0YySpk91OqWe6wRX10tO5gKBnoSsztUKpU49CEiJO+U8ussdiu12
	uyqv0DGbIYmexARsjplpiyVMoQ9+xrcym6+VvTMG8vZy7lGWd/lALv2eB/eDmH4=
X-Gm-Gg: ASbGncvmbG65gH5d768S35pyaCNFeybG2XUj+QHO7aVd80f1OTbbxikL6QcficlXBBd
	ebXzQhYD3PpJK1a376RVjdiFkbi3xJMZNS7ntCZ7E4eAuOqwqYGA56Ik/EmAF6NdhYTMUtV1EuE
	yHjO5ZzkO/IQpuHtU7ke3C38yUSkqYG71rbIXzhqSr2k1uZj5MjQcMTW5hv8qkRs8KsP0AzMQwY
	IlSrDDMS7/jURNC1/+CWMVXYII1HgTJHfmbMT/i5t9eHRihphIg3mkMU2Is12iQ2OZX1axfyGDT
	flmWE3bPilQupeAFue5eEo5/4XZh3ZuaNm4F6IOV9B3vB43gKLrVfSMEFpFVJTJ2tYcFTq0=
X-Google-Smtp-Source: AGHT+IE2LgXfchPINe7qYmZMcscjZaeuhqsUBxUUbkHDGnmYsw1mvqK78ndM7S/Odra7ZlA/qDu8LA==
X-Received: by 2002:a05:6000:200d:b0:3a0:7fe4:df6a with SMTP id ffacd0b85a97d-3a0b4a4a407mr683409f8f.56.1746565063049;
        Tue, 06 May 2025 13:57:43 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([145.224.65.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b17022sm14671826f8f.89.2025.05.06.13.57.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 May 2025 13:57:42 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 06 May 2025 21:57:29 +0100
Subject: [PATCH v4 3/5] MAINTAINERS: Add google,gs101-pmu-intr-gen.yaml
 binding file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250506-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v4-3-9f64a2657316@linaro.org>
References: <20250506-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v4-0-9f64a2657316@linaro.org>
In-Reply-To: <20250506-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v4-0-9f64a2657316@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=799;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=2jU8lWsHMh83BJDd6uFLy3YOaP/2xztJxNAHsH0fugM=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoGne+uDVpWbiPtqvC8l54wAMhmu86vnsHamOKF
 xynba4y/G+JAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaBp3vgAKCRDO6LjWAjRy
 ui6AD/9p2LRq/9GlyZv5epsvsb1bVZNUP2tffJOJkP08VSkQ13IgvNpnnUatcND5PjHvOGQWbSs
 Ou/lL8vNTUemmdKiMlL173V6ATSTlzR1RhM1rwITk13e0bBF+MvkiT+AQhnN9/Wgm9XTOBiXzQz
 EY42gyYKH90td6EKzphaP4x5uDSxE5Zm60BX3W0CtzIphaupOR9f7xGXvm6e7e+Fs7FcxUHHAkX
 pmiFJmtaA6LHAjlBNmdtcNuoOjENA7i2zPgfSUh2nmqrkIv4XXHphtrDvXYo7+1N09cx0YS3HHj
 39aorwUyHokekqFog/Cl5UATOvqcoW3ATJGnXONwb3jCxlcAiKW5dGchzKc2v8AUkz0mg57bOdY
 F4vUzCNYyOj247R9NCKtHBnKSIy0z0pvqPLDxuoCDc+17jN/HfwXYmSNz4YxsqslRj5t2zmzdXz
 ZsN59gWSON0vdXmgzwEAk549m2UVDIiqjRGtawXD67lZz0SNfzk8KIB5Xu/1+zn9La4TC0dfBS6
 0sXlJjk//R4pPIBocwWh8BcWXztXuFEPjiMlNdL0AhvMrYSVAah0kRBIkbFXPZe+BQZiwV84urf
 409Qg39G8bFzVQPE+wkNYS3oe2U88n0wZ9NumG6CX0LuJB4RDdnNn1Ppa5quUrjr2HD0EGfnPvS
 Yo9ZfoOUWQrhA+A==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Add the newly added google,gs101-pmu-intr-gen.yaml file to the
Tensor section.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index b2c3be5f6131432647dd01f22bbf4bf1c8bde9e6..5b2ec4c2023f39a3dd532ac61f0075a0a1555411 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10118,6 +10118,7 @@ L:	linux-samsung-soc@vger.kernel.org
 S:	Maintained
 C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	arch/arm64/boot/dts/exynos/google/
 F:	drivers/clk/samsung/clk-gs101.c
 F:	drivers/phy/samsung/phy-gs101-ufs.c

-- 
2.49.0.967.g6a0df3ecc3-goog


