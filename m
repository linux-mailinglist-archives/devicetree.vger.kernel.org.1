Return-Path: <devicetree+bounces-133640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA989FB2B4
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 17:22:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A27DC1679B3
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 16:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 282C91C1AB6;
	Mon, 23 Dec 2024 16:20:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88F641BEF9D;
	Mon, 23 Dec 2024 16:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734970847; cv=none; b=DzV3nbf95PKkdpyN0pSB20XRE3gF7WiDxxJN1Ei0My2ysWbIeeT9YwhAn5nSVtf5tqTXP7+3yZQ9r+A5U0kg2xxXnVjna91NvgdoFxQbDf+Vy+XFjuAblrt3ItlFum3y5RPOmJQARBHIHzzcPw6H3xnuiCZEFSVDLwUGavrotnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734970847; c=relaxed/simple;
	bh=dW5MlbZ/egTAht9L7ANGURdoiaokdNTEV79YsT25m7E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TiUoyYpqdI8Lya2C+bCB6X6Os+Upv7+ihRcxieKGw/NvA1dELPv3BPDdEJQy/2FkGTjSrse6hjBLcziyZJNYnZwl5r+YYzKXfrXqbNffx2swsMZVXUqsgHvP2peF/wAcLLbK9fNeQyt2y47nJ2sJ6BsqJg9P/ub2BP93d5eglg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E3D31424;
	Mon, 23 Dec 2024 08:21:13 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1312D3F694;
	Mon, 23 Dec 2024 08:20:42 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Russell King <linux@armlinux.org.uk>
Subject: [PATCH v2 4/4] MAINTAINERS: Add Vincenzo Frascino as Arm Morello Maintainer
Date: Mon, 23 Dec 2024 16:20:29 +0000
Message-ID: <20241223162029.326997-5-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223162029.326997-1-vincenzo.frascino@arm.com>
References: <20241223162029.326997-1-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 910305c11e8a..8b2d20fc8cdb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2711,6 +2711,12 @@ F:	arch/arm/boot/dts/socionext/milbeaut*
 F:	arch/arm/mach-milbeaut/
 N:	milbeaut
 
+ARM/MORELLO PLATFORM
+M:	Vincenzo Frascino <vincenzo.frascino@arm.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	arch/arm64/boot/dts/arm/morello*
+
 ARM/MOXA ART SOC
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
2.43.0


