Return-Path: <devicetree+bounces-260630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNrpBst3emmE6wEAu9opvQ
	(envelope-from <devicetree+bounces-260630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:55:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB68A8DD6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 21:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8EF84307D2B0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 20:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D90B329C77;
	Wed, 28 Jan 2026 20:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyRk1OXs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE232FE053;
	Wed, 28 Jan 2026 20:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769633451; cv=none; b=p2jrtHq5DoN6zBdD3bwi2PlatrsV2eRfBxItnlgQ+301W5byu9JaymDbBDptGyeaQDxnLeN5e/bXLrqaxlKWzlG20Xq1aJhkmN/s+bFVF0hbg58SII1MPAwzd0pMxMly7vfVENHw5EeAPlzgCK5u5dAY3UiURWS8XcPq9aPer68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769633451; c=relaxed/simple;
	bh=lM5fIi3NelBBKB14alRyxnqnJtITZZuraUrN4J/TpFM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mPGXv3peHKlm4nc37Ls8cpNCWyENwV+0ivAsbwKQ1pFhn40ltrQdg60SewvZh9PlorEvPmnd7kzAsh7Uapu86Aef51fc5wI7Z6xmQ54JExn/GiF6/6XLzfS8jBkOadmrBBaRCU3a1jmSGoHnsviUfrhqkzKqxKHXxi1MbyH6hZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyRk1OXs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34E83C4CEF1;
	Wed, 28 Jan 2026 20:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769633450;
	bh=lM5fIi3NelBBKB14alRyxnqnJtITZZuraUrN4J/TpFM=;
	h=From:To:Cc:Subject:Date:From;
	b=gyRk1OXsH0AxeR/aF7M2zGnCo7coDF2/i6EMP30JG6jpqZGEhIY5m56ObJIpOhDsA
	 hncAPhqUnZpA4WYIvY0W4Z0skJ//o0n0YE2GWqCM+Q0dRPK1jobdUCDyEJg7OdnNRj
	 Qbr3n0304ojdv2OewyIathVtLLfZjpzZ/0X7ZNeDfxd5tMh/kNeVOsYTitFjqeAXSm
	 WKX16ItFmU36YbKYpsLqOVD3cHLR4bRl++6wOqwKX4NOtCIoSGXrD3janNHiB2tuHe
	 yuucSvzt1kC0g1GgNKbBRCg8THTfGlx5QQMvBlbowXZLxpK6fg6XbX1Mvwwz8OlOX9
	 uMnk1hkYZMMSg==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] riscv: dts: microchip: add can resets to mpfs
Date: Wed, 28 Jan 2026 20:50:33 +0000
Message-ID: <20260128-nacho-craziness-45a3e575ba7c@spud>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1489; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=GR0IpqkX+gIEkISSWGAk7yZ/QLJAVSxCkhhIZHOiQug=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJlVZTOTr0zXk4xcsGbb5q/z2tS3zJARvho3w7iFz9/7S stbpzr/jlIWBjEuBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAEzE/hTDPzulz27f7b7l+bp+ 7GwvUNov9bazbdW3CVE2DDwacyxDRRgZZobMN5P8GsQ980iJlFZh6b8ffi8bPT/GRrB2Xu/aJvy EFwA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260630-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,2010c000:email]
X-Rspamd-Queue-Id: 6BB68A8DD6
X-Rspamd-Action: no action

From: Conor Dooley <conor.dooley@microchip.com>

The can IP on PolarFire SoC requires the use of the blocks reset
during normal operation, and the property is therefore required by the
binding, causing a warning on the m100pfsevp board where it is default
enabled:
mpfs-m100pfsevp.dtb: can@2010c000 (microchip,mpfs-can): 'resets' is a required property
Add the reset to both can nodes.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Conor Dooley <conor.dooley@microchip.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: linux-riscv@lists.infradead.org
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org

 arch/riscv/boot/dts/microchip/mpfs.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/microchip/mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
index 5c2963e269b8..a0ffedc2d344 100644
--- a/arch/riscv/boot/dts/microchip/mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -428,6 +428,7 @@ can0: can@2010c000 {
 			clocks = <&clkcfg CLK_CAN0>, <&clkcfg CLK_MSSPLL3>;
 			interrupt-parent = <&plic>;
 			interrupts = <56>;
+			resets = <&mss_top_sysreg CLK_CAN0>;
 			status = "disabled";
 		};
 
@@ -437,6 +438,7 @@ can1: can@2010d000 {
 			clocks = <&clkcfg CLK_CAN1>, <&clkcfg CLK_MSSPLL3>;
 			interrupt-parent = <&plic>;
 			interrupts = <57>;
+			resets = <&mss_top_sysreg CLK_CAN1>;
 			status = "disabled";
 		};
 
-- 
2.51.0


