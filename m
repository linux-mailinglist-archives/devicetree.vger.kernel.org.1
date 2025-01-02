Return-Path: <devicetree+bounces-135082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7CF9FFB3A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACAD43A32BD
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 15:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5808D1B6CF4;
	Thu,  2 Jan 2025 15:54:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7C961B5ED1;
	Thu,  2 Jan 2025 15:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735833283; cv=none; b=auXM/5/joCjXX9rEyXf0GcELFpCcNB5mkscUvAQ7+EHyet/O0QSOwBKbwkrSZfcHXjdO1gArq/0QrWZ7dKrUI6O3baitlrREM6bi6CabycuvNXT5K/w3nZB3uiyWJH8QyG64DC5iZufBoTcj0iJx/NEf7HfVUUutk2BKTtVxZ/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735833283; c=relaxed/simple;
	bh=gq14HYvVc8qU+vwUoRluBQU09Ex6oii7YLx5K32/2wQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hOW30ug611BRSQUCmln416LtpFnyeWGInaVRT6whrKQhXctyx+oK7kh0KLUY/OUx456hIFw4XLXkIyhxdruQ8/66legPUx7Ybii+dyhh26ldhovyFZt/rWgwQMou1uC16lco3p6qwZyaRthzh87v2iMdhw2l0IAcX93CmLGNN1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EA4E11FB;
	Thu,  2 Jan 2025 07:55:09 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1469A3F673;
	Thu,  2 Jan 2025 07:54:38 -0800 (PST)
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
	Russell King <linux@armlinux.org.uk>
Subject: [PATCH v3 4/4] MAINTAINERS: Add Vincenzo Frascino as Arm Morello Maintainer
Date: Thu,  2 Jan 2025 15:54:16 +0000
Message-ID: <20250102155416.13159-5-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250102155416.13159-1-vincenzo.frascino@arm.com>
References: <20250102155416.13159-1-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Vincenzo Frascino <vincenzo.frascino@arm.com> as Arm Morello Software
Development Platform Maintainer.

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


