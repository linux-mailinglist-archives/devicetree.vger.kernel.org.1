Return-Path: <devicetree+bounces-264088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WC6YNoEVimlrGAAAu9opvQ
	(envelope-from <devicetree+bounces-264088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:12:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DB3112ED5
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 18:12:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 262C53082076
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 17:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16518385EC0;
	Mon,  9 Feb 2026 17:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="Z+6wmsaX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CABF3859DE;
	Mon,  9 Feb 2026 17:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770656872; cv=none; b=l4FjVejnD6XTRgebYnv3vTMB56TF6sla9RH4yJWqQn59Kl3RL2gWYHSSjezWZmPqYSrNGq1N6W5s62ic6xYNiXFgz20dVuimX4vAx0eBvhGExi5Eq9GT4FOmnuIGorlkibmyEDmm4RXFth9OVrgS2mkQWRfPyOa4E59/LN5wr1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770656872; c=relaxed/simple;
	bh=0nNpkFJON7kBw1dD4CyfKOcoZ2lLIMZEDZx9r4/Xr+M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=goOLIkrZyE1EwGnZLFXMbjqGAKu1RJFQgADHJ2rkryLCCedH4/A3lihIoNNkYe+lHEHWUrOcQf6vlQBdTcQelbko8IpOtFIGq260AnKH4u+6tYWW1PQduX06nujv4oJw+j3X1BuTR6CcW8Th1kxGnkx5QibEcDV5TbbKCTQSlJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=Z+6wmsaX; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 26B5B10DE1B;
	Mon,  9 Feb 2026 18:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1770656863; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=XauIuDFellsiYlY7XWlolM5IHJifLVytCti9detJRC8=;
	b=Z+6wmsaX4cctLjCUWcBKqic934tnDNnma6VM6I7BCvMR/ajpSkh3mgsMBucpMP0nF9Gqqh
	0p4ldLhPXtkCVzinvoCsoG1b8F108QEJ/hWqRfGScd0qd1N2FF7dGLjREg3/OUbz2RXsLP
	NAbhj+wxT2bvTXGJkdEgleJryvt09dhGyNfaB6+6sjqeaBynNMdPimS5px5Xgzk5MAt5px
	jw1QF3EjavUyo7UzO8h+YRQNidYBgJjqjUVcwvFc6TQBWv5X0BmX3beHXJkH0yLNwXsid2
	H0ZcsW5ayThcsbj/ege58ZMv9bozsVkQWUWy8CW8gfFduxi+4Nzko8HZoEZzNg==
From: Marek Vasut <marex@nabladev.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@nabladev.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	kernel@dh-electronics.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx6ull-dhcor: Handle both 1DX and 1YN WiFi on i.MX6ULL DHCOR
Date: Mon,  9 Feb 2026 18:07:04 +0100
Message-ID: <20260209170739.22379-1-marex@nabladev.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-264088-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[nabladev.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nabladev.com,dh-electronics.com,kernel.org,gmail.com,pengutronix.de,vger.kernel.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 22DB3112ED5
X-Rspamd-Action: no action

The muRata 1DX WiFi/BT chip is mounted on the DHCOM i.MX6ULL. This chip
has been discontinued and replaced by the muRata 1YN chip. The new chip
is a drop-in replacement of the old chip. To support both chips for the
i.MX6ULL DHCOR, drop the more specific compatible string and let the
driver auto-detect the chip type. Currently, there are no known quirks
that would apply only to one or the other chip.

Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: imx@lists.linux.dev
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi
index 75486e1b0c15f..a0adcd3fe1229 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-dhcor-som.dtsi
@@ -201,7 +201,7 @@ &uart2 {
 	 * the speed can be increased accordingly.
 	 */
 	bluetooth: bluetooth {
-		compatible = "brcm,bcm43430a1-bt"; /* muRata 1DX */
+		compatible = "brcm,bcm4329-bt"; /* muRata 1DX or 1YN */
 		max-speed = <3000000>;
 		vbat-supply = <&vcc_3v3>;
 		vddio-supply = <&vcc_3v3>;
@@ -222,7 +222,7 @@ &usdhc1 {
 	status = "okay";
 
 	brcmf: wifi@1 {
-		compatible = "brcm,bcm43430a1-fmac", "brcm,bcm4329-fmac"; /* muRata 1DX */
+		compatible = "brcm,bcm4329-fmac"; /* muRata 1DX or 1YN */
 		reg = <1>;
 	};
 };
-- 
2.51.0


