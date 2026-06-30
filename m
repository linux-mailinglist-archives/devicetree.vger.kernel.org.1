Return-Path: <devicetree+bounces-317956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c3EcNpvzQ2oymAoAu9opvQ
	(envelope-from <devicetree+bounces-317956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:49:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 418296E69E2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:49:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=XIaELJRE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317956-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317956-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7EC8530FC332
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127A83D3337;
	Tue, 30 Jun 2026 16:44:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453B03C1973;
	Tue, 30 Jun 2026 16:44:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782837848; cv=none; b=FRg+GzvrXVoCLG976uK8Mxo3nIGoeCdqs+qkpMyaDXoB4btRq5xQJGy1zEEOvGTXIs3TF2ozFvk6kwl+KofNMsx05XM+XOvFah0Z8KWplL5KivqQPrVGTmaFnEF37mK5kTkrvsyvU7FFghHWkObSzTlHuankG5m9lNuOomnbfw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782837848; c=relaxed/simple;
	bh=R2YgUFMBLrWlpSt7g+6ANQQZNUDLNvc8uk6XrVvLToI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QHaRJWAVpxqE5f8tWS02j9zqluPLpFy5Wr8C0QRbySJqdXIMSoV7K8gr6ozYHuBQ6L2K4lvS4+PANcK//guQaahR4pg1brTIqwle6Z6AJ+NllGB+F5ELYDTpneieb2ElJk4fMGAaWa4dK1Bo1xjQgumFKJod6JpreB3Z8fDDbmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=XIaELJRE; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=dV/6p+jnBCTZ+PzDK8GCl4Bvcm15c7cMycChV092hzE=; b=XIaELJRETsTj0t4x8bf4WRerHW
	Xg3gCR6NwJa/r6Pm/k7WmIfhlxVZDk16KzuhgPwYVLOOwLqz5kr74lkVmAHZ9yv9aErlVil2Tuhoi
	Nk3lvl5DAsVc+PL30E340+eONDw2lgS2AqlXRexMg/92Se3hk0l9doEoaY4BzK5pcNlYH3H7P3uog
	74Ul8oum7ov7BeDVI3d2MpwHZX7kGADNY3uEmW47p8Xhuk2LgN4BWf2O+NDFQtGk5M6UL66cg0QmV
	KxQL035iMJbwo/ZQ5LMY6Fvxwz/ouKhB/yoXCmilGjtBz4lMaC58ZH0YpRZpA8/cOg8Sa5ITBn2SR
	sKj8oweA==;
From: Heiko Stuebner <heiko@sntech.de>
To: mkl@pengutronix.de,
	mailhol@kernel.org
Cc: kernel@pengutronix.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	shawn.lin@rock-chips.com,
	linux-can@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de,
	zhangqing@rock-chips.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 6/6] arm64: dts: rockchip: Enable CAN controller on RK3588-Tiger-Haikou
Date: Tue, 30 Jun 2026 18:43:36 +0200
Message-ID: <20260630164336.3444550-7-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630164336.3444550-1-heiko@sntech.de>
References: <20260630164336.3444550-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317956-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mkl@pengutronix.de,m:mailhol@kernel.org,m:kernel@pengutronix.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:shawn.lin@rock-chips.com,m:linux-can@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:quentin.schulz@cherry.de,m:zhangqing@rock-chips.com,m:heiko.stuebner@cherry.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,sntech.de:dkim,sntech.de:mid,sntech.de:from_mime,cherry.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 418296E69E2

From: Heiko Stuebner <heiko.stuebner@cherry.de>

CAN0 is piped through the Q7-connector to the CAN-Header on the Haikou
base-board, so enable support for it there.

At least on RK3588-Tiger, the CAN clocks default to 99MHz, limiting
usable CAN bitrates without skew. Errata documentation mentions
300MHz as the default frequency on RK3568, so replicate this here
to allow more bitrates.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index 873fbeb8daa1..6273e695b039 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -155,6 +155,12 @@ vddd_audio_1v6: regulator-vddd-audio-1v6 {
 	};
 };
 
+&can0 {
+	assigned-clocks = <&cru CLK_CAN0>;
+	assigned-clock-rates = <300000000>;
+	status = "okay";
+};
+
 &combphy2_psu {
 	status = "okay";
 };
-- 
2.47.3


