Return-Path: <devicetree+bounces-135398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 988D1A00D80
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 19:17:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1B8A3A45C9
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 18:16:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9405B1FC7F2;
	Fri,  3 Jan 2025 18:16:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45FA71FAC23;
	Fri,  3 Jan 2025 18:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735928208; cv=none; b=MtNj5XYut0zrVC4nF3wDPO1aKdhhj57e7VVKx9MjmoCqfWKFk/azuD2L2b5DjZeAvLBenIpwHs6h13Q+OGruXAt9Vkh6nfRzHcRBQq/BeykmYigxFOQXQ4y6ru0xKJD+/4mADhBVG5mTbrEsyB6We9F5KiHXesbu0jxx7OBCIS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735928208; c=relaxed/simple;
	bh=alOB/Br9RTOAeChsNpTtYQOV4peB0PY01d4EnCBvcbY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d+inmx2Fjd20nP0DKRdvezPkBAJkdvjNJhiqjAPEoAB8sTYLKAPcF8khRfuG6323N8S6ESWpy0RfMZ7cezW+IUnAgV/rQwjfnu/w7R2mh4+6GYcsKnkQRD4VyF0jfTcdp6mj3tw7ESroW0JyDih6spKPHDAodKbdc+g0ff39Cws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A335150C;
	Fri,  3 Jan 2025 10:17:13 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE0F83F673;
	Fri,  3 Jan 2025 10:16:42 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/4] dt-bindings: arm: Add Morello compatibility
Date: Fri,  3 Jan 2025 18:16:20 +0000
Message-ID: <20250103181623.1980433-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250103181623.1980433-1-vincenzo.frascino@arm.com>
References: <20250103181623.1980433-1-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatibility to Arm Morello System Development Platform.

Note: Morello is at the same time the name of an Architecture [1], an SoC
[2] and a Board [2].
To distinguish in between Architecture/SoC and Board we refer to the first
as arm,morello and to the second as arm,morello-sdp.

[1] https://developer.arm.com/Architectures/Morello
[2] https://www.morello-project.org/

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
index 8dd6b6446394..40e7910756c8 100644
--- a/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
+++ b/Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
@@ -118,6 +118,10 @@ properties:
         items:
           - const: arm,foundation-aarch64
           - const: arm,vexpress
+      - description: Arm Morello System Development Platform
+        items:
+          - const: arm,morello-sdp
+          - const: arm,morello
 
   arm,vexpress,position:
     description: When daughterboards are stacked on one site, their position
-- 
2.43.0


