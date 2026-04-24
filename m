Return-Path: <devicetree+bounces-289842-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJ1cGdbp6mkrFgAAu9opvQ
	(envelope-from <devicetree+bounces-289842-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 05:56:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DAA4598C1
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 05:56:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7EB213003801
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 03:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3042F619D;
	Fri, 24 Apr 2026 03:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R14xCIg/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A0E211A28
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 03:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777002962; cv=none; b=Qc3AzV3p6zbzXslaeatno+i9C1ygosTRtgZUPzk0lssbmpvFqgE+C/dIusKYusmYtKiGNPSZg9/MRCCrXWJPho/r+E1V5TKfOKNLwRmJ1jfgcCy8WwAkF2eu73s2Y1O1H6CwCEfbTwI2Z1loP8+BmfKZturt+svXWOMui9KxHMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777002962; c=relaxed/simple;
	bh=bFjtymfXxE5/k41sX1HOBu+kS6i2Js6tqtc4OgyUK9Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uClGAy3IEg95Z4JvfLL1tQYftbjG+SJekIoMllK6CMjTWN6B87tzaLqnO5gyukJGQyvBV8GxvVfMD/WkUmU+5Gmyh8jWeyvHDWslqFOkmy97aNW6KwI6sNtN3LfvDgd3D6Dmsdyx8vR8L6Db6eq3wgA8/rDgNuFwy/hhL70VAwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R14xCIg/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B94C3C2BCB0;
	Fri, 24 Apr 2026 03:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777002962;
	bh=bFjtymfXxE5/k41sX1HOBu+kS6i2Js6tqtc4OgyUK9Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=R14xCIg/iJtiIRXDaA7TQ7sBE8tAI2qzKvtjIYrx6g7SJAYfUdCdiT9JI622edlx1
	 2qK/w3iKjyh6YoXLzkznbEvyXmvj/nz4M1/UJ2Kp9ODjHPiXz8fyYDXyD7P/YDjje1
	 coKuyCHiarS0zWydHVTJos/I9MKLej998QKrVmOCTNO9u4XaNnwXWfFVAGexvS6Baw
	 VWwrFMVaWfbisAmiOd1nMwVqvZjwT0Hvvd7lsEZthLeTt+ycZpa7q4NL7Nh1SmAKU2
	 IufyCPaWhOOmrebShCX9dDVZ/K2ZqvlxGA0xypYlbkEVyvBxy5XQZffO/waItVvi6L
	 YLVBB8WrnElYQ==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org,
	michal.simek@amd.com
Subject: [PATCH 2/2] ARM: dts: zynq: remove the reg property in the pmu
Date: Thu, 23 Apr 2026 22:55:46 -0500
Message-ID: <20260424035546.646650-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20260424035546.646650-1-dinguyen@kernel.org>
References: <20260424035546.646650-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 32DAA4598C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-289842-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

The Cortex-A9 PMU accesses the hardware via system coprocessor registers,
not memory-mapped I/O. The driver does not parse or use a 'reg' property
from the device tree, so we can remove the reg from the DTS.

This change fixes this dtbs_check warning:

(arm,cortex-a9-pmu): 'reg' does not match any of the regexes

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/xilinx/zynq-7000.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/xilinx/zynq-7000.dtsi b/arch/arm/boot/dts/xilinx/zynq-7000.dtsi
index 153b8d93cbee..fc7d5b5cfaa0 100644
--- a/arch/arm/boot/dts/xilinx/zynq-7000.dtsi
+++ b/arch/arm/boot/dts/xilinx/zynq-7000.dtsi
@@ -49,12 +49,10 @@ fpga_full: fpga-region {
 		ranges;
 	};
 
-	pmu@f8891000 {
+	pmu: pmu {
 		compatible = "arm,cortex-a9-pmu";
 		interrupts = <0 5 4>, <0 6 4>;
 		interrupt-parent = <&intc>;
-		reg = <0xf8891000 0x1000>,
-		      <0xf8893000 0x1000>;
 	};
 
 	regulator_vccpint: fixedregulator {
-- 
2.42.0.411.g813d9a9188


