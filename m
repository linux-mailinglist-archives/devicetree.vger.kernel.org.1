Return-Path: <devicetree+bounces-135594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 57CC3A016D4
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 21:54:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 297AC162BB7
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 20:54:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4FE21D5AD3;
	Sat,  4 Jan 2025 20:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="2kDknmXQ"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443E31D5150
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 20:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736024081; cv=none; b=o8ITpAIOCDCEgm7SqxfSNdyVylYlCMB20BPvgePRCaa4Opq/f2VRG++vmLcNbvgqJn24ffd3CYEjCqUTOx91D9OUyPAhcSUSY5GKuBYO8R2I3nWoQrOWv7wUToRVoX6+QJmh8K5whAWyg6WrFJekbgZ3joMsrHJ7FE1RF/J++wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736024081; c=relaxed/simple;
	bh=mGxD6iwFtmjZyF9cnW1NHIRS1yBMvIhooC1Hp1N/A2I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NZsgl5+AWcMbsjBfLL9PKHqHoCuqlmvvNKsZ0w33fWijvpysTGxlY7zBW4ergmHraAxOSpf7SGIN1GBPsz/6FlFCfbD/4S73I7+WaxwaJAkSSmTfv5hDl+Xa4I+wSCH/cbVR4ftlwsxLgPCHeXmzWWbpwgc9Ekvy6x2BKr+7lwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=2kDknmXQ; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=2kDknmXQOVXsYODL14SC1+Rd7+fXsrD+Vao+W0vQxxUUW8aCIIe+kpvS2Qs313iqeXY5poIkNyvm0inALrK/7Z1P0Ibey4MP2Mz4Jo5Z3Nnb4wHT/dY/EG95CqKr8/CuqZiqNG2U5ORJ6W7cvku2sSg/JsN264MzzaO0XER5BWplKdtZp5PIMcQQt15/N7sAs+rwiqng0NVz6asEO6IaMzzwdBQJ5yymQlh0Gj0z3bln547KS8awdg/ULvbeTAiA+ktjiabDVVaxhlZ7VbIdkbGY0fTDXH694Y1LE1o2GD5bCPOMfCVc28rOzDzN70SKI3+rcMwOh/9XOFQ5ECQoDw==; s=purelymail3; d=purelymail.com; v=1; bh=mGxD6iwFtmjZyF9cnW1NHIRS1yBMvIhooC1Hp1N/A2I=; h=Feedback-ID:Received:From:Subject:Date:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 166263896;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sat, 04 Jan 2025 20:54:28 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Subject: [PATCH 0/2] Enable CMU_PERIS and MCT for Exynos990
Date: Sat, 04 Jan 2025 21:54:15 +0100
Message-Id: <20250104-cmu-nodes-v1-0-ae8af253bc25@mentallysanemainliners.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPefeWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDQwMT3eTcUt28/JTUYl3T5LSkFPNkS9M0QyMloPqCotS0zAqwWdGxtbU
 ACd3DA1sAAAA=
X-Change-ID: 20250104-cmu-nodes-5cfbd7c95f12
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736024066; l=944;
 i=igor.belwon@mentallysanemainliners.org; s=20241206;
 h=from:subject:message-id; bh=mGxD6iwFtmjZyF9cnW1NHIRS1yBMvIhooC1Hp1N/A2I=;
 b=LN5tCyllQr3iJxSVRPhsL675StndfBt+aJFQf4pOgfuMeV6WzfdYJPn6cXJKE9W9aT7IpnHMm
 ROR/6QbhmqkCz4FMJ5YYr2BFTLED1tEjdCfCaEw0KksNBU8XiYbiqGO
X-Developer-Key: i=igor.belwon@mentallysanemainliners.org; a=ed25519;
 pk=qKAuSTWKTaGQM0vwBxV0p6hPKMN4vh0CwZ+bozrG5lY=

Hi all!

This series enables a new clock block and the MCT for the Exynos990 SoC.
The MCT design is reused from previous SoCs. It generates 12 timer
interrupts.

Compile-time and run-time dependency:
[CMU_PERI] https://lore.kernel.org/linux-samsung-soc/20250104-exynos990-cmu-v1-0-9f54d69286d6@mentallysanemainliners.org/

Best regards
Igor

Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
Igor Belwon (2):
      dt-bindings: timer: exynos4210-mct: Add samsung,exynos990-mct compatible
      arm64: dts: exynos990: Add CMU_PERIS and MCT nodes

 .../bindings/timer/samsung,exynos4210-mct.yaml     |  2 ++
 arch/arm64/boot/dts/exynos/exynos990.dtsi          | 30 ++++++++++++++++++++++
 2 files changed, 32 insertions(+)
---
base-commit: 77c5a1c131c3e0c955965b94365e0e7727b37dc5
change-id: 20250104-cmu-nodes-5cfbd7c95f12

Best regards,
-- 
Igor Belwon <igor.belwon@mentallysanemainliners.org>


