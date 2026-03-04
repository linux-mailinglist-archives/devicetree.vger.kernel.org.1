Return-Path: <devicetree+bounces-270974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNB2GQ8SqGmzngAAu9opvQ
	(envelope-from <devicetree+bounces-270974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:05:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D389F1FEA82
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:05:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B07D83044B8E
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B924939FCA3;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuQhPifV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9352B39183B;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622332; cv=none; b=o4T8dzD39ZfZa9ET+J7PoJ+tmVzIIw1V53XMa4fCrqlRdHCegL82Etv5H9vWGcSDa0gyKUtvQBdGf9YixnRvd3fgMY1gHUdnZ7MdPvhiGeLaDqyA757ZBead7UzclGpFO3BlondZhX3LS24KnNIZh94wCP/mTD0XcS1snHree5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622332; c=relaxed/simple;
	bh=0U86WNo0Z1KPyrYfx+eFGzAexTHQ6Omrg+jGefNkr5M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=raXw3Qmzd0OJS0bunaCGHEfzFymcex09ulEQsGFGztQrt7WtiMqNpRmgdl7d3c03LsDwid78YgFGlbM9QBxTyR4KhasAEz5+VWHfWBw13Z1oHGkUgO71wqf24Ioj93dpDqCZIO8jznzsAZ7x4K7z56dNIzDZXy7lnG4qYcIaYOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuQhPifV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 559B4C2BC9E;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772622332;
	bh=0U86WNo0Z1KPyrYfx+eFGzAexTHQ6Omrg+jGefNkr5M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=tuQhPifVWB+XJqH/T2lIQJYWkOA8PvUPLTu1S/tkLu3rEQ1VbUEMfF7iKrKcZnn2C
	 R6losqzAC+8p5OiHgIVXwbtNCisobnvT7e2fQUA0RM+U25ZsseH0OcEcXPwTBWAHEZ
	 KeCd5UGkTq8JBdb7QYFVsuLSa2lFTLBApgZTyLMl2wyEdsDWC1RL+XILRb1+pTPG8H
	 d+nCRyE/F7YXnFvK7FIaxcg5oZaYRYd16+Lwk3urICPUrApxeMtNqX8DpIA5pod6lD
	 lpsNEytlv4Oj674Xhu+t9gAPBa192FQm4Rx/ebtcTHPmutsX6UPr5NvclfcZz/dILs
	 YGw/OW68Qakxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43243EB7ECF;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Wed, 04 Mar 2026 12:05:27 +0100
Subject: [PATCH v4 1/4] arm64: dts: rockchip: assign pipe clock to rk356x
 PCIe lanes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-1-37abd7ba29d0@ixit.cz>
References: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
In-Reply-To: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wunderlich <frank-w@public-files.de>
Cc: Martin Filla <freebsd@sysctl.cz>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2523; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=nJWr1cG55C7TfO8lmuP7iO4pkz7D7P5warAqQ5V7GaM=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBpqBH5+76cstljDcdJQqO27u9npzazHz0WHktMs
 RATNgGZiVSJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaagR+QAKCRBgAj/E00kg
 ctxBD/wIdVOClRo0Xr9QvWclph7PqoDR44+VURYr41+YD/4RlyzAe/948Bu4XS2V4Ujyp+TfGH7
 Jmnd831Htg/1Y/2nOK8Jfd5Dc7QFK+pihhm7IOy3AR9g54sz7ddaAvdRGz/xa6sh2zMO2U4JZQw
 ud8Z6oJsy3xJTeS11PTH8UUTQkjcnalAqsxQQPgtD+BShRVHQEPMvplR8TDyo8VVherlOjt7jdI
 bKI09/HIOLQKDh6hG9cCStcfRZpV6CinHfNMTdPHTtDOb6LdUC0a3SIdOxXcG+nxzRoJajGFkbW
 mBuk1ijJngCropAIITQGS7d1ROhXx4+m6ehxMFrjF2NNyd4tbuSBJ1LlQZdWIrDS5kSPwTfA6Us
 pX3v3XmIe0RLgcVkxzURUWjNA96va95xQnviXhAJwiBW3S3CVJTcXxW2LCxSFQ92d+X2Zdcn0t/
 0liNFDU1E8k2Ght8tBN5DQgB2lQgnRKDBdy7+CgEPwh0SJDtqJgauDNjiH3aQN7Cfg+UAAFl1Tq
 wEh8uNOoGXiLcrjaVjLD80e8BsCxfuXBeylgIcaW8vykJlb7mPtHenVOMUwAgeegFTND9tktZS1
 T+4wQAbotfwUYigrPhhUE7rs+0EQ8IsZnaJOTmkBRFnqyqE3HbInprZNMvOmmyu/Ybw4om9BafU
 fwqmyGml7G0cjtg==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Queue-Id: D389F1FEA82
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270974-lists,devicetree=lfdr.de,david.ixit.cz];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,public-files.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ixit.cz:replyto,ixit.cz:email,ixit.cz:mid,posteo.net:email,fe260000:email,fe270000:email,fe280000:email]
X-Rspamd-Action: no action

From: David Heidelberg <david@ixit.cz>

These clocks are used by PCIe lanes, but we're missing from the
definition.

Suggested-by: Charalampos Mitrodimas <charmitro@posteo.net>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 12 ++++++++----
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi |  6 ++++--
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 658097ed69714..3bc653f027f1f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -155,9 +155,11 @@ pcie3x1: pcie@fe270000 {
 		bus-range = <0x10 0x1f>;
 		clocks = <&cru ACLK_PCIE30X1_MST>, <&cru ACLK_PCIE30X1_SLV>,
 			 <&cru ACLK_PCIE30X1_DBI>, <&cru PCLK_PCIE30X1>,
-			 <&cru CLK_PCIE30X1_AUX_NDFT>;
+			 <&cru CLK_PCIE30X1_AUX_NDFT>,
+			 <&cru CLK_PCIE30X1_PIPE_DFT>;
 		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk", "aux";
+			      "aclk_dbi", "pclk", "aux",
+			      "pipe";
 		device_type = "pci";
 		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 159 IRQ_TYPE_LEVEL_HIGH>,
@@ -208,9 +210,11 @@ pcie3x2: pcie@fe280000 {
 		bus-range = <0x20 0x2f>;
 		clocks = <&cru ACLK_PCIE30X2_MST>, <&cru ACLK_PCIE30X2_SLV>,
 			 <&cru ACLK_PCIE30X2_DBI>, <&cru PCLK_PCIE30X2>,
-			 <&cru CLK_PCIE30X2_AUX_NDFT>;
+			 <&cru CLK_PCIE30X2_AUX_NDFT>,
+			 <&cru CLK_PCIE30X2_PIPE_DFT>;
 		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk", "aux";
+			      "aclk_dbi", "pclk", "aux",
+			      "pipe";
 		device_type = "pci";
 		interrupts = <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 68b48606f6010..15741acac6274 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1020,9 +1020,11 @@ pcie2x1: pcie@fe260000 {
 		bus-range = <0x0 0xf>;
 		clocks = <&cru ACLK_PCIE20_MST>, <&cru ACLK_PCIE20_SLV>,
 			 <&cru ACLK_PCIE20_DBI>, <&cru PCLK_PCIE20>,
-			 <&cru CLK_PCIE20_AUX_NDFT>;
+			 <&cru CLK_PCIE20_AUX_NDFT>,
+			 <&cru CLK_PCIE20_PIPE_DFT>;
 		clock-names = "aclk_mst", "aclk_slv",
-			      "aclk_dbi", "pclk", "aux";
+			      "aclk_dbi", "pclk", "aux",
+			      "pipe";
 		device_type = "pci";
 		#interrupt-cells = <1>;
 		interrupt-map-mask = <0 0 0 7>;

-- 
2.53.0



