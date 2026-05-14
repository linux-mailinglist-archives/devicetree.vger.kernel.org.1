Return-Path: <devicetree+bounces-297666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGrLJRTnBWp0dQIAu9opvQ
	(envelope-from <devicetree+bounces-297666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:15:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 14BBC543D63
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:15:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 07CB23029628
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 15:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F5EA42848C;
	Thu, 14 May 2026 15:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZfWwpAv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8572737FC;
	Thu, 14 May 2026 15:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778771400; cv=none; b=NhAXY+NWsDRl2E1AQRF51u5+nQBBNVJwgFsEqeqtYs/ptGpy5N/rUtmOwPTaUWOuy5DLZlwHsmzsfYQRiDAwhzuWF3ToyphYGnY8G5JanqK02q+5YPJYnF5JeWHantPM8kG7VNRkOApB/l8qKZwb9ZGduNiKvrlQU85eP14At3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778771400; c=relaxed/simple;
	bh=d59g25bV3UFh+I0ByUj8LqrxAPLpikSFsp0XFERtE2U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VwKHCVbpi2hCSixi77bwA7ntb5NMJ8h/fTcwgCviVFjQ+yveFwPjdYjFaJ4Zt2xEr977jGcfi7/aX5/XX/mVcdPPKRaUTpntHtjvEn8QLkWA0dM1eJb3TUSYpSJJnSsYbf02jZ3ExVUKDALttnb5/9x0uF4C+aDgPUUBGxJWJQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZfWwpAv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39D0DC2BCB3;
	Thu, 14 May 2026 15:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778771399;
	bh=d59g25bV3UFh+I0ByUj8LqrxAPLpikSFsp0XFERtE2U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HZfWwpAvlCpy8TtLoTUUk5j0mLxbrJOfeQsQK2TKkyrZqPax+uY7KiyNPaRxJYyZx
	 TBoxICftxEorOA2+m7blY40Xy7M/s4lh/qF2ED3iPWV8Ay40bl+edSwH6XUe8TExok
	 K7BugzPHe9NdYIAirgReckitBbhtSBF5ta83Lw+UX6tnUOBfGrj41JayDEezKqmlD3
	 SNgxO7jsLysGYne18wiG4/Bkx9Ua/BhU6rpDGGBsY2ZIWtXzuxiC0LIz4GR9nbx2vH
	 GaynATfhY6vdklPhFURUdo6+ZU2mOaKgDCdURXEOUiSfvlOdbYwmyXHJc+H5mWUZ0l
	 A9tVSythGUeew==
Received: from sofa.misterjones.org ([185.219.108.64] helo=valley-girl.lan)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <maz@kernel.org>)
	id 1wNXhE-00000002Oqg-3lxV;
	Thu, 14 May 2026 15:09:56 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Hanjun Guo <guohanjun@huawei.com>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Ge Gordon <gordon.ge@bst.ai>,
	BST Linux Kernel Upstream Group <bst-upstream@bstai.top>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Lars Persson <lars.persson@axis.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	=?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Michal Simek <michal.simek@amd.com>
Subject: [PATCH v2 04/17] dt-bindings: timer: arm,arch_timer: Fix requirements for interrupt description
Date: Thu, 14 May 2026 16:09:32 +0100
Message-ID: <20260514150945.3917510-5-maz@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260514150945.3917510-1-maz@kernel.org>
References: <20260514150945.3917510-1-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, lpieralisi@kernel.org, guohanjun@huawei.com, sudeep.holla@kernel.org, catalin.marinas@arm.com, will@kernel.org, rafael@kernel.org, mark.rutland@arm.com, daniel.lezcano@kernel.org, tglx@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, wens@kernel.org, jernej.skrabec@gmail.com, samuel@sholland.org, neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, martin.blumenstingl@googlemail.com, gordon.ge@bst.ai, bst-upstream@bstai.top, jesper.nilsson@axis.com, lars.persson@axis.com, alim.akhtar@samsung.com, ivo.ivanov.ivanov1@gmail.com, Frank.Li@nxp.com, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, dinguyen@kernel.org, matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, thierry.reding@kernel.org, jonathanh@nvidia.com, andersson@kernel.org, konradybcio@kernel.org, afaerber@suse.de, 
 heiko@sntech.de, shawn.lin@rock-chips.com, orsonzhai@gmail.com, baolin.wang@linux.alibaba.com, michal.simek@amd.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Rspamd-Queue-Id: 14BBC543D63
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,huawei.com,arm.com,gmail.com,sholland.org,linaro.org,baylibre.com,googlemail.com,bst.ai,bstai.top,axis.com,samsung.com,nxp.com,pengutronix.de,collabora.com,nvidia.com,suse.de,sntech.de,rock-chips.com,linux.alibaba.com,amd.com];
	RCPT_COUNT_TWELVE(0.00)[46];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-297666-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maz@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

The arm,arch_timer DT binding is extremely imprecise in describing
the requirements for interrupts.

Follow the architecture by making it explicit that:
- the EL1 secure timer irq is required if EL3 is implemented
- the EL1 physical timer irq is always required
- the EL1 virtual timer irq is always required
- the EL2 physical timer irq is required if EL2 is implemented
- the EL2 virtual timer irq is required if FEAT_VHE is implemented

The consequence of the above is that the minimum number of interrupts
to be described is 2, and not 1.

Finally, clean up the description which made the assumption that
the timers are plugged into a GIC (unfortunately, that's not always
true), drop the MMIO nonsense that has long be moved to a separate
binding, and use the architectural terminology to describe the various
interrupts.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 .../bindings/timer/arm,arch_timer.yaml        | 21 +++++++------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml b/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
index c5fc3b6c8bd0b..c65e48a155ab6 100644
--- a/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
+++ b/Documentation/devicetree/bindings/timer/arm,arch_timer.yaml
@@ -10,13 +10,8 @@ maintainers:
   - Marc Zyngier <marc.zyngier@arm.com>
   - Mark Rutland <mark.rutland@arm.com>
 description: |+
-  ARM cores may have a per-core architected timer, which provides per-cpu timers,
-  or a memory mapped architected timer, which provides up to 8 frames with a
-  physical and optional virtual timer per frame.
-
-  The per-core architected timer is attached to a GIC to deliver its
-  per-processor interrupts via PPIs. The memory mapped timer is attached to a GIC
-  to deliver its interrupts via SPIs.
+  The per-core architected timer is expected to deliver per-CPU interrupts
+  (commonly to a GIC to deliver its per-processor interrupts as PPIs).
 
 properties:
   compatible:
@@ -33,13 +28,13 @@ properties:
           - const: arm,armv7-timer
 
   interrupts:
-    minItems: 1
+    minItems: 2
     items:
-      - description: secure timer irq
-      - description: non-secure timer irq
-      - description: virtual timer irq
-      - description: hypervisor timer irq
-      - description: hypervisor virtual timer irq
+      - description: EL1 secure physical timer irq, if EL3 is implemented
+      - description: EL1 non-secure physical timer irq
+      - description: EL1 virtual timer irq
+      - description: EL2 physical timer irq, if EL2 is implemented
+      - description: EL2 virtual timer irq, if FEAT_VHE is implemented
 
   interrupt-names:
     oneOf:
-- 
2.47.3


