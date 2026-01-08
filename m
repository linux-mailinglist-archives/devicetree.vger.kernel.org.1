Return-Path: <devicetree+bounces-252675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5068D020B1
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99CD3313BF24
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B43037F751;
	Thu,  8 Jan 2026 08:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="N3bIEiry"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BB737F728
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862727; cv=none; b=XnL+iSwadI1HWuz8zFiw4eyH3WjU6UGoLkE7FbOFI4rhxslGn9G+ALOR9TcyBFDuZVbV9+ypo5sz3ba/de6XrZR6Lt11fcsNKRRQ+/dYatOE+frQv6F4V0bImS0gyYmgoPEgTAr3fV4Uxh8CM6A/WXW/5CgYmXOK7X2uhjzubVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862727; c=relaxed/simple;
	bh=GFHSD6T+yl7vb4jLNYxTvC5Cl/m0iAwSIwdgU2lJoFY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Oso4myGDBfGFTjNRUyOPTW2Mw3lJQi+1iNrY+SofhuMpW8z1tE5wMuf6ygf7oYWk9kOee6c5MC/TVByedcME4aviP6UXuoV+yq8REvnN9zAenBrk9ByHUA5L1Ez3QtWq/hNpntOOF+GT71RXCG626hymVosqiuot/VsmW+m5H3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=N3bIEiry; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2ae255ac8bdso3533670eec.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1767862717; x=1768467517; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0YLNYm7sDAJHbYjTNraEzX4Le1VPIWBSAnfsbzRwqAk=;
        b=N3bIEiryc7rQfbvZKLr1VEBvHg01R9oj5UtEYrZUzEyAJBmbJEeDDRlPwYGNFcWAzz
         JADfuveCJXTEHxKU7bFDDC6ltkSrehRh9qz0VZpafTURnTQLBpAGt16hREcqSnvldw3+
         CCuXAyIAfdbvfFS55IK1lPPD/9yHGpnNHSIomiDfAJkKaBK5cY0Rxgq5wZ31zGal3fwB
         hHZEfwBPuxAsqqXYuJdOhfRr3Em3tSlIWRjfGJfqiCZdlen4M/+l2GwYUCe6cH/Ip/TU
         kJE/BqKoY0brWby26XqlbDpGEBl7yg3owhOEh6q25EQ0L9ip97vsALQStOda2f8VUA3/
         a1iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862717; x=1768467517;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0YLNYm7sDAJHbYjTNraEzX4Le1VPIWBSAnfsbzRwqAk=;
        b=BGQEvDQDOQbiPtAoBJt2oLOo2An800yRJUdOiAZlmZL/Pmi6y3LppB/qLvSkgIpvJs
         D6t/5BLX+AIXayPV6VfO8+reynShgPZeWkib2nMe8cnQiZbwSQzR0NevvpcDCLmKNxLG
         XaumpsKhm4C1q9wIs30vjEQs9N7+ffvMBcwQ+r3vIm8mk41dzX+2d3qZC6cP+1vcFdL3
         YhncQt1L/k0H3z0ex3auzFh3AduHdRSxiEymwhMJAQghXiKyIn2RT2vl1nq2BMytZoh3
         nH8Cl8L7J2cguC8rSCpXVwM0ockAnohEMzFskIIEGENbZDEqwDOgUyqnwJ3/f7KjQRkq
         Gb0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXW+ptRjaiKKNqOZIHYu0s8QrY9m5P2c/F1Yzr6oHuYM/J9fT/NCxCDjmQPgfmNOTdwo5tK36hMGO8j@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8OfOG7EDWrYBRBzbVJV187YPF2gdW+2L5I+45JzEvlhMSSzFF
	DhH4kRAvoQi+/mamwgM12V8u7Jcnwt2DDU6PaqyyjHRCDSKqoE2E6u2qbGIGqX1373y3IZI7BNH
	APPAHi+N3vA==
X-Gm-Gg: AY/fxX5MW2THP5Sa33zipqK+ICbkC7qNU7nPwLoos8+G6gIxCqiMgYD0GEReCV4eCk6
	Ht7SdGMAAMOopYr+n/xaGFX+uCe+bg7QYvliK505k7jPtLoXnUcrf7loP+7vsmVxvSwKud7xV2M
	lzfvEMkSmHqa+v1hzD6r3re30z50KkYFsrNpOKSNxF43yM5Aj5FanESab3N6ihT58HQj/1wn6SE
	L/umTWe0YuLUb/L/Tdd2LdNu4D0yEc3Bx8ourT1GVAmYlmYyijUNz3iNxF44qi0cm6YYAk41nO1
	frJX6R5vGcSKXL31hj7daDU/lrU9osV4Rdp0Ac+7F0bMWLIo0U96BHILCapKcJeW7RT3+keatDM
	2fATW2r5xF0MMk88vlNMzFJI8w3AFAjnYtNETIC9N4D+ALTLep5e5hNpQ0+DQowh9AYHyoYOkwb
	+qSI+k1xFDC3HzX1mWLHbu6Oc=
X-Google-Smtp-Source: AGHT+IE8UPhQsz/7Gn8i+wwXqoBhoOITsJ3Hs7nIToFk4RFrh69fxx3eoriotXBWNMydajNNbAyQiQ==
X-Received: by 2002:a05:7301:fd8b:b0:2ae:5b24:1cf6 with SMTP id 5a478bee46e88-2b17d30f886mr3883489eec.32.1767862717072;
        Thu, 08 Jan 2026 00:58:37 -0800 (PST)
Received: from sw07.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b170675076sm8833634eec.2.2026.01.08.00.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 00:58:36 -0800 (PST)
From: Nick Hu <nick.hu@sifive.com>
Subject: [PATCH v4 0/3] Add SiFive power provider driver
Date: Thu, 08 Jan 2026 00:58:23 -0800
Message-Id: <20260108-sifive-pd-drivers-v4-0-2a523d7d51a0@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAK9xX2kC/z3MQQrCMBCF4auUWTsliSatrryHuKjJxAzStEy0C
 KV3Nyi4e9/i/SsUEqYCp2YFoYULT7nisGvApyHfCTlUg1HGaqM6LBx5IZwDBqlDCjoXyFmt+pv
 2UH+zUOT3t3m5VkeZRnwmoeFfUp0y6qjN3rXW9Bo1ZvaPNr3Ov3zrpxG27QPlXR2fngAAAA==
X-Change-ID: 20251207-sifive-pd-drivers-66de65108b1c
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Anup Patel <anup@brainfault.org>, 
 Samuel Holland <samuel.holland@sifive.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Cyan Yang <cyan.yang@sifive.com>, 
 Nick Hu <nick.hu@sifive.com>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.3

This patchset introduces the SiFive power provider driver, which sets up a
generic power domain (genpd) provider to coordinate with the RISC-V SBI
CPU idle driver.

To enable this coordination, split the power domain initialization out
of the RISC-V SBI CPU idle driver. This allows coordination between
power domain management and CPU idle states on SiFive platforms.

Changes in v4:
- Split the power domain initialization out of the RISC-V SBI CPU idle
  driver in PATCH 1
- Refine the commit messages of PATCH 1 and PATCH 3
- Rename cpuidle-sifive-dmc-pd.c to cpuidle-sifive-dmc-domain.c
- Rename SIFIVE_DMC_PD_CPUIDLE to CONFIG_SIFIVE_DMC_CPUIDLE_DOMAIN

Changes in v3:
- Update the explanation for the absence of the SoC-specific compatible
  string.
- Drop the smc3/tmc3/cmc3 bindings.
- Separate the genpd init and the idle driver init. The genpd remains
  functional even when the idle state is absent.
- Address the warning from the kernel test robot

Changes in v2:
- Add the driver for SiFive TMC, CMC and SMC
- Drop the `sifive,feature-level` property

Nick Hu (3):
  dt-bindings: power: Add SiFive Domain Management controllers
  cpuidle: riscv-sbi: Work with the external pmdomain driver
  cpuidle: Add SiFive power provider

 .../devicetree/bindings/power/sifive,tmc.yaml |  58 ++++++++++
 drivers/cpuidle/Kconfig.riscv                 |  11 ++
 drivers/cpuidle/Makefile                      |   1 +
 drivers/cpuidle/cpuidle-riscv-sbi.c           |  46 ++++----
 drivers/cpuidle/cpuidle-riscv-sbi.h           |  20 ++++
 drivers/cpuidle/cpuidle-sifive-dmc-pd.c       | 102 ++++++++++++++++++
 6 files changed, 220 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/sifive,tmc.yaml
 create mode 100644 drivers/cpuidle/cpuidle-riscv-sbi.h
 create mode 100644 drivers/cpuidle/cpuidle-sifive-dmc-pd.c

--
2.17.1

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

---
Nick Hu (3):
      cpuidle: riscv-sbi: Split PM domain init out of the cpuidle driver
      dt-bindings: power: Add SiFive Domain Management controllers
      cpuidle: Add SiFive power provider driver

 .../devicetree/bindings/power/sifive,tmc.yaml      |  58 +++++++
 MAINTAINERS                                        |   2 +
 drivers/cpuidle/Kconfig.riscv                      |  25 ++-
 drivers/cpuidle/Makefile                           |   2 +
 drivers/cpuidle/cpuidle-riscv-sbi-domain.c         | 176 ++++++++++++++++++++
 drivers/cpuidle/cpuidle-riscv-sbi.c                | 178 ++-------------------
 drivers/cpuidle/cpuidle-riscv-sbi.h                |  29 ++++
 drivers/cpuidle/cpuidle-sifive-dmc-domain.c        | 124 ++++++++++++++
 8 files changed, 423 insertions(+), 171 deletions(-)
---
base-commit: f0b9d8eb98dfee8d00419aa07543bdc2c1a44fb1
change-id: 20251207-sifive-pd-drivers-66de65108b1c

Best regards,
-- 
Nick Hu <nick.hu@sifive.com>


