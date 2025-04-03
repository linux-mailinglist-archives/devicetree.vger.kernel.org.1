Return-Path: <devicetree+bounces-162832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8A7A79EEE
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 10:59:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E2A2173A54
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C27E224502D;
	Thu,  3 Apr 2025 08:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o0NweKEI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B135243376
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743670746; cv=none; b=fSmI1cP9Wh3OXYgivtX+gWBilnfNYJwSlfAAIO3a29yo5LBwhpG+wbKNtVNxblpMxLR2CYoqW8aTfVrOfjWBVGZtDzc6LL5Dv5vHT+fug4R/DMt21vDDNaCte1S4to3iPY4pf+g77B/o+CWiatSCRme06Ro5R0vV2yfxzoqRLf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743670746; c=relaxed/simple;
	bh=rtY22MgptB+tLy3QVxclIgluL35Op8OhX0cRjsl/mJo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nsebE5bNlprbGyujfwAfB1KEe1SeloktoBIZGTNcrK/Or5ClQcyFXz1To2ZYTwsfbt6Mk30tEH3cI3s32WqG74EgqaDk4J0errAKAZpLvG6rGi1rxQqME2WLo+bD9IV+N88EUpkXTUA2f9yDgtIJ3LaWhzTnqiw3M+8FMuFvcDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o0NweKEI; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e5e1a38c1aso923528a12.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743670741; x=1744275541; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eMxQ7UQKMt0+Oaxy9pEE80XpNTXV7CL+WPCOZ4uzjjQ=;
        b=o0NweKEIpkWSH2jwsB74/XPrYsHAW13Na5HzWQ34OX2Ui5O/wl+6+9VOabs+k5g2Xd
         ORYcdHDJCXk3sGRL9TPgxSddIrQ1C/3yEq6pTHUtL0vAV1ruzHoSXV3zBGH/EoPgt967
         wZLqemNLOurWbEOyIO+rzfczLEcU+5aaN5+mZKRW3cefKIpR/VXSRSZhyf96++Vc838m
         VqYRzbh0Kr3rWaD/wuhr7z7KllYhGHR2s+NqY3ZSKdRduqvcLsdWtdZ7COsBWofND93A
         3VKEr4Ur/+97GJrZn38FtaHcig47HMMNgoxyfoJPFGEThbt7sPyYlM8+fp/pcwzMwfNP
         T/eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743670741; x=1744275541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMxQ7UQKMt0+Oaxy9pEE80XpNTXV7CL+WPCOZ4uzjjQ=;
        b=X0QsMO47gklsCb4v9wQGftE9iqO2OTWniLvlxv3brlmgqzaHtGoGnM/gCh0BWGoxDm
         8HE7aHJN82mAPUcUV/ryqq3FZXbPbPNTS8hAM5igfTWhtkGLTTOioLD5prxaTMtaBqSw
         ja/5t6nJ7vx4nuK+nCFACQvbH/uK06IVoo06Yz2Rr5RrqSSW5+gfbRvV92/AlOUVz39R
         grJendWpUsEjydWJTanSaBPRjsmIqUvT6DAHOhHNcL2XB3k5Iz8OFLQiOqQN6xU5Id4a
         jpLIUN/VBa+2C6TQwg4RotCpTA4m8TTZt8oTZpjPnjFC7RlAiZpBDv15BoHndhZ6zILy
         zmpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUipR86AxTyrpF4hfz304yqtqbzNUiFK4yBoDl+XgWmtfqKrrAEF+wpl2MC3Vbsa03s1rgADrQo93+5@vger.kernel.org
X-Gm-Message-State: AOJu0YzJARgGuWr4xSOodX/2kh3uj44fWUj6dxHQN2Zb9Sp4f46HAosv
	AnGTMjytocV5zk8h0wpM37pvaNoyEOODNtHcvn+s7g9Z7D9WlJKHxRx5cEKXnR8=
X-Gm-Gg: ASbGncuCNKUXhCfHWykAT/Jk90+f4uIBNIYh56qVBSXfH26dZ3B/OWUpHAuQnL5QIMY
	WQuBfo4cn/z20LRv8pWXayRkLmfPJ3KcnnYjd6Az5lRLACFQzteef8PaWik09yZnpH3p2jg+itv
	U/IAQRQKDQSnfLvV/HEUHUhWxHQRcUB5eEcilaChbSwJE4vBHMVHpOh+rMVPqkBj9uHRkW06uxP
	yj7hFbtqp3FdcPQxwtUtg2BmD1xXfv5+V/Vp9e8tMBkVb9Cj8q2NOW7DLhDuWFS+YHANURwmIjA
	Mfo0O1g0THojTqCSREQopsdRaR42Gaf5kjK3nk1N0N+qrHSm/Jh+PYZr1XztUJUXI1HQb2MCWvW
	LOHFwFTXmc+V2MBnxV+h0pnyE1ndH
X-Google-Smtp-Source: AGHT+IHQrHf12EJNK/p+81ZjxQhmjVXLedkpjwoD4qMiwxw3fr2xU8zdguaJrZmoo26ZrVzwsXGVGA==
X-Received: by 2002:a05:6402:2802:b0:5ec:cd7c:de55 with SMTP id 4fb4d7f45d1cf-5f08717ff38mr1640036a12.17.1743670741481;
        Thu, 03 Apr 2025 01:59:01 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f0880a535fsm637614a12.80.2025.04.03.01.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 01:59:00 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 03 Apr 2025 09:58:56 +0100
Subject: [PATCH v3 04/32] mfd: sec: drop non-existing forward declarations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250403-s2mpg10-v3-4-b542b3505e68@linaro.org>
References: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
In-Reply-To: <20250403-s2mpg10-v3-0-b542b3505e68@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

sec_irq_resume() was removed in commit 6445b84abf91 ("mfd: Add s2mps11
irq driver") and sec_irq_exit() in commit 3dc6f4aaafbe ("mfd: sec: Use
devm_mfd_add_devices and devm_regmap_add_irq_chip") while the
prototypes were left. They should be removed.

Do so.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 include/linux/mfd/samsung/core.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/mfd/samsung/core.h b/include/linux/mfd/samsung/core.h
index f35314458fd22e43fa13034439406bea17a155c9..b7008b50392ab857751b89e0a05d2c27f6306906 100644
--- a/include/linux/mfd/samsung/core.h
+++ b/include/linux/mfd/samsung/core.h
@@ -72,8 +72,6 @@ struct sec_pmic_dev {
 };
 
 int sec_irq_init(struct sec_pmic_dev *sec_pmic);
-void sec_irq_exit(struct sec_pmic_dev *sec_pmic);
-int sec_irq_resume(struct sec_pmic_dev *sec_pmic);
 
 struct sec_platform_data {
 	struct sec_regulator_data	*regulators;

-- 
2.49.0.472.ge94155a9ec-goog


