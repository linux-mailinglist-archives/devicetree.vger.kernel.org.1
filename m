Return-Path: <devicetree+bounces-253038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AFED06862
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 00:17:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9E4F3027DA2
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 23:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 347B233344D;
	Thu,  8 Jan 2026 23:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AAkG9ov2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108AC30FF25;
	Thu,  8 Jan 2026 23:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767914216; cv=none; b=o2RXbDw/pevbiDc1U/mrlmNyMsZWZwZ8eKAnOPFdS0fCgWofgU1bocNcyZQBT+uJe2VkUcTBVo+AsK+gGWU2gZ/SJVrIFwWqhlz7x5e3+/kZg8sqrsmwifj5Q3ueHzvBO8zudmkMnIz4ySIbiq+0pHu/2dQGEbYyXamiTmor9lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767914216; c=relaxed/simple;
	bh=AAVTvmmrCdvn6IvsaUM/pSKro696u24Sfk+5QKOS748=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r+JzNcXog3ydD+ihg/y4IFJJKoN48wcGBJ56fV8f/L37xB5W23CEtjnxiJahQUH5IWJUZCL1xxekOUmQP97m+iI7/PI3QLDjd4VtB15d3eAz7Guvw5vyZor/0gkkXsl7RTEPhffphZWn2sP7ZpsCUN3bFOJUuCC60veCT2/oNr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AAkG9ov2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85AD8C116C6;
	Thu,  8 Jan 2026 23:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767914215;
	bh=AAVTvmmrCdvn6IvsaUM/pSKro696u24Sfk+5QKOS748=;
	h=From:To:Cc:Subject:Date:From;
	b=AAkG9ov290kYohM/aDEd3UqNH0iMjqEfCWbfzrK2DVu/460mmm3ZzIrrwcEIpwBrP
	 6qLoTBunfmbe03N68WQBr7fZtNw3tPKIFyn4+GCctdps811iH2X39IbAw5Im+Z78md
	 4anjldXUBsxKiXfxLcbgYCyI73+Qe6KmGU95cky+E/FEBAJkQeMy5LKcgtJBC0pbE8
	 RzjKS4NtXV530b36D8raD6GI30whUwfeXBOn123KtE7gr6wkqk04bt45XP4Da/A2bK
	 x4Q9kdgG/Tb1L532Id+2l8Ko0aoDefo7goHTtYXxs1BuXpXgWao3CC/DsytV5m6QAP
	 R47k4Ooe354uQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	William Zhang <william.zhang@broadcom.com>,
	Anand Gore <anand.gore@broadcom.com>,
	Kursad Oney <kursad.oney@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: broadcom: bcm4906-netgear-r8000p: Drop unnecessary "ranges" in partition node
Date: Thu,  8 Jan 2026 17:15:58 -0600
Message-ID: <20260108231558.1422454-2-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"ranges" is only valid for MMIO addresses as it is used for translating
addresses to CPU address. Even if a partial translation was supported,
the DT is incorrect here as the nvmem-layout node would also need
"ranges". So drop "ranges" and the associated cell size properties.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
One more dts fix to add after reworking the partition bindings.

 arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts
index a5f9ec92bd5e..c6d76ba04903 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts
@@ -146,9 +146,6 @@ partitions {
 		partition@0 {
 			label = "cferom";
 			reg = <0x0 0x100000>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges = <0 0x0 0x100000>;
 
 			nvmem-layout {
 				compatible = "fixed-layout";
-- 
2.51.0


