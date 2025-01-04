Return-Path: <devicetree+bounces-135593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 058F3A016D3
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 21:54:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF56F1629BD
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 20:54:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909F41D5178;
	Sat,  4 Jan 2025 20:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="FEXNIqLb"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBD31D514F
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 20:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736024081; cv=none; b=Dc5GtiT11DB59TlNhqJ9X984ysu5WVnGl+bTW10HBAGP7C4v/hs7dCT74PZa3TKeVxb0Ip89n8glmrfAvCWxuDncIYUhcsDMkJkGs4/hWbQm7bLMfg0uA/YTzno/3Qt5NzJl4HpPmhYPN/k6vRsID/yI60abCq17tvKGN1HElUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736024081; c=relaxed/simple;
	bh=u277CPLBGNkpYhIE1Rr/ra64g8X2BqQPgiL87IDzy5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kt9uHBuWSDGSA/hZuoVbrx7xO5gTAPcoUNzdKzPFvJjDELirINCvrNG7VHhgbrj0cdBrzcWc06+HD8FRcxOywRL/3tF7JpUsTzL7luJLBQ6JsuGovoVCRxfeK4Mm8Y0apcaZvFJL9eQa1hSLZfQnZlV3X8eB3+RIAkXEd9ny3hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=FEXNIqLb; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=FEXNIqLbA2dho6TkleojVJU/mNabeFXI+ZNE1ovlYhYWGv6w+dSDF7Ao+DJsC9IkhHH6czuTO/nXxpeJEbpsalZgHGURIbCDWTaRBMcNSP3S1OBR3QcwpZ7OBcGljJ25BX41BlvQ6Hz6Puacv/fvUFxtI7TjpqGElO8AkcbU43BcyiGjPQlOdfCY4ckyvFCVmDwgCTiYPjKltJhEbwkJJojdVcjLB9j/ZRk1WDcBd9ZMQ8E9yiI1/5oyyQ2VmovZpW/ioM1tjdTfsqcTmWjj9URkPiTX/Fcvfw/rSckDX8F8GNuxk7S4WtNyTxwT9RcFYuk8bsNZLV/Z45zKmI7lqA==; s=purelymail3; d=purelymail.com; v=1; bh=u277CPLBGNkpYhIE1Rr/ra64g8X2BqQPgiL87IDzy5Q=; h=Feedback-ID:Received:From:Date:Subject:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 166263896;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sat, 04 Jan 2025 20:54:30 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Date: Sat, 04 Jan 2025 21:54:16 +0100
Subject: [PATCH 1/2] dt-bindings: timer: exynos4210-mct: Add
 samsung,exynos990-mct compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250104-cmu-nodes-v1-1-ae8af253bc25@mentallysanemainliners.org>
References: <20250104-cmu-nodes-v1-0-ae8af253bc25@mentallysanemainliners.org>
In-Reply-To: <20250104-cmu-nodes-v1-0-ae8af253bc25@mentallysanemainliners.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736024066; l=1238;
 i=igor.belwon@mentallysanemainliners.org; s=20241206;
 h=from:subject:message-id; bh=u277CPLBGNkpYhIE1Rr/ra64g8X2BqQPgiL87IDzy5Q=;
 b=LmjPRu8Mc9V1XnLhYRXEnZgszVTkWv+64u5dFvrbNqNXJzVqL6r4jRSD41n4kiRqffrzMcZUN
 ClRoiJQmxEGD67zArdb9WO7RM52IToo79RzKP82xSBa4TBPXaN5Wcc2
X-Developer-Key: i=igor.belwon@mentallysanemainliners.org; a=ed25519;
 pk=qKAuSTWKTaGQM0vwBxV0p6hPKMN4vh0CwZ+bozrG5lY=

Add a dedicated compatible for the MCT of the Exynos 990 SoC.
The design for the timer is reused from previous SoCs.

Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
index 02d1c355808e4eadd77b98247cd70e76aea72b21..12ff972bfefcc5dcef2a38582e963ea49a567d18 100644
--- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
+++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
@@ -34,6 +34,7 @@ properties:
               - samsung,exynos5433-mct
               - samsung,exynos850-mct
               - samsung,exynos8895-mct
+              - samsung,exynos990-mct
               - tesla,fsd-mct
           - const: samsung,exynos4210-mct
 
@@ -135,6 +136,7 @@ allOf:
               - samsung,exynos5433-mct
               - samsung,exynos850-mct
               - samsung,exynos8895-mct
+              - samsung,exynos990-mct
     then:
       properties:
         interrupts:

-- 
2.45.2


