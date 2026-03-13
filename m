Return-Path: <devicetree+bounces-275396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNT+FfgztGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:57:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DB89E28675E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:57:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CC183099202
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8648335DA4D;
	Fri, 13 Mar 2026 15:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzI9/LoS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6387F346FC3;
	Fri, 13 Mar 2026 15:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417211; cv=none; b=O9bPII3ywSoyWQFaCYFg9X5UxMTAKITtlwjZcn/lNrsYhKMu7gQjUZbkZIMmEPprqXaD0AIdTdMpHU2Ez9Q+qNBIvxAq6cBnsC0NJKTFpID8kpXRMkxzqBRVDhgqWrnAg5rCImOr2n8h8U7EYYyRFlPg8WtXXnd1SsDpycv7Lys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417211; c=relaxed/simple;
	bh=kU7hMmxmzKGXeVy3rmWVv+bR1lRVLBiYIDHHCO9xWVc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=EJP+kzgiX6cyRPZIXpweEzSL3vwcb1DQ1XVaIHqoRocqT5ZoY/cIBrWA7azK6LqfQaiMczBoY9PuDQof5npPht68CZsa+K1VD7MkRS44Vfd7r8odNmE2WT0sBDTOIPTA8m78GJVhe/v1iG2F3LxpMNQfzxXFrDfk/BgrOrtjwRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzI9/LoS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 070CAC19421;
	Fri, 13 Mar 2026 15:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773417211;
	bh=kU7hMmxmzKGXeVy3rmWVv+bR1lRVLBiYIDHHCO9xWVc=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=JzI9/LoSSDwo6u9sJlEHZC2YLhmwETciWJ5sojIWY0xZ5Y6SIKLQHczxjnTShO1xy
	 QfXJRv9qxsyLYw2G00TBPaACZVBNIH8z8xZ1hTMXCIlLAVGS98YT7ZZNwMah7z6ug0
	 nbLTMTWK6bf7hGu/Grdcwc4UClfiiJ8L/xVGVitvBQgBYU8sUZ4qaQRjOTywsUl4xX
	 jsWnpywp5B1z7aTt6zxt7Zf7JRKrX1xDKWeI1dufXrE+JHC6g+9mUjx8SgOTO+sGJL
	 b6Zj8fACy/F0isB7gohymA3HB2HdAhaudojyGqJoDj+2vr1QhHKbIn1vp91PfPdfV9
	 B28qvBy5RmIHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9D0F105F7BF;
	Fri, 13 Mar 2026 15:53:30 +0000 (UTC)
From: Michael Riesch via B4 Relay <devnull+michael.riesch.collabora.com@kernel.org>
Date: Fri, 13 Mar 2026 16:53:29 +0100
Subject: [PATCH] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5
 io expander
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
X-B4-Tracking: v=1; b=H4sIAPgytGkC/x2N0QrCMAwAf2Xk2cDWUQV/RXxI0+gCIyst1sHYv
 xt8vIPjDmhSVRrchwOqdG26mcN0GYAXsregZmcIY7iO8zTjt6NuKHshy1KxK1PBEGOSwJJvkcH
 TRE0wVTJePLbPurosVV66/1+P53n+AJmGMlJ7AAAA
To: Gerald Loacker <gerald.loacker@wolfvision.net>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Michael Riesch <michael.riesch@collabora.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773417210; l=2200;
 i=michael.riesch@collabora.com; s=20250410; h=from:subject:message-id;
 bh=AxZQMPkNnnwsrhXc1fCRiYhuc1Gbnk7fB2Vzh07TFp8=;
 b=uWjRu68zw60pg4cPIDcmL5g1Cl+/n8xiSkYermWSAGsa1U/hZf9rlWQhditBQT7OFRSZByQr7
 SwDO3yO+JgdCXu61Ekdyr/KFcG789qndRQSdTcDnERwYPo0k/KLE39Z
X-Developer-Key: i=michael.riesch@collabora.com; a=ed25519;
 pk=+MWX1fffLFZtTPG/I6XdYm/+OSvpRE8D9evQaWbiN04=
X-Endpoint-Received: by B4 Relay for michael.riesch@collabora.com/20250410
 with auth_id=371
X-Original-From: Michael Riesch <michael.riesch@collabora.com>
Reply-To: michael.riesch@collabora.com
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
	TAGGED_FROM(0.00)[bounces-275396-lists,devicetree=lfdr.de,michael.riesch.collabora.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[michael.riesch@collabora.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,wolfvision.net:email,linaro.org:email,collabora.com:email,collabora.com:replyto,collabora.com:mid]
X-Rspamd-Queue-Id: DB89E28675E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Michael Riesch <michael.riesch@collabora.com>

The Digital Video Port (DVP, the 16-bit variant) of the RK3568 VICAP
is broken out to the PF5 mainboard expansion header.
Enable it in the device tree overlay for the WolfVision PF5 IO
Expander board.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
Reviewed-by: Gerald Loacker <gerald.loacker@wolfvision.net>
Tested-by: Gerald Loacker <gerald.loacker@wolfvision.net>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
---
Habidere,

This patch was skipped when the RK3568 series was applied, as the
MEDIA_PCLK_SAMPLE_DUAL_EDGE definition was introduced in the very same
series.

With the definition mainline for two kernel releases now, it should be
safe to merge this device tree modification.

Thanks in advance!
---
 .../rockchip/rk3568-wolfvision-pf5-io-expander.dtso  | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
index 048933de2943..8cfce71dd318 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
@@ -11,6 +11,7 @@
 #include <dt-bindings/clock/rk3568-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/media/video-interfaces.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 
 &{/} {
@@ -134,3 +135,22 @@ &usb2phy0_host {
 	phy-supply = <&usb_host_vbus>;
 	status = "okay";
 };
+
+&vicap {
+	pinctrl-names = "default";
+	pinctrl-0 = <&cif_clk &cif_dvp_clk &cif_dvp_bus16>;
+	status = "okay";
+};
+
+&vicap_dvp {
+	vicap_dvp_input: endpoint {
+		bus-type = <MEDIA_BUS_TYPE_BT656>;
+		bus-width = <16>;
+		pclk-sample = <MEDIA_PCLK_SAMPLE_DUAL_EDGE>;
+		rockchip,dvp-clk-delay = <10>;
+	};
+};
+
+&vicap_mmu {
+	status = "okay";
+};

---
base-commit: 1f318b96cc84d7c2ab792fcc0bfd42a7ca890681
change-id: 20260313-wv-io-expander-vicap-255be2ced75c

Best regards,
-- 
Michael Riesch <michael.riesch@collabora.com>



