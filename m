Return-Path: <devicetree+bounces-263271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDJ2N9muhWkRFAQAu9opvQ
	(envelope-from <devicetree+bounces-263271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:05:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3A8FBCAC
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 10:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A44343014C47
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 09:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDD65355023;
	Fri,  6 Feb 2026 09:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b="pMJase59"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.126.com (m16.mail.126.com [220.197.31.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77863279DB6
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 09:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770368726; cv=none; b=NmtO0vEJZ+DRlh4b0ncrugvAhedI21zkEZGPVntlM9Ah1PLI0xmk+a/2emduCowCSpWAldrkiHJRgk2tk8g1Rq/yHX7CMWrOt+nsrz7t6tlQSq6vQfjznb8eef8EJb31wjmACFk8B2Gu6ttx3WF3LuNcP8iefeCHdzIrp/PlAGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770368726; c=relaxed/simple;
	bh=dpaiKsF5J3+8xIUDJSsTkKK0qTbiLTYdjqEj1XIQetk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PlqN83/VNjH79VJimh70508kpBs8wGocOrgHTAGeUWzdmN/5zCchKGyPJplV8fwjZEmTc3rSSybrcUPAnRK/k2bgpIfQFcEYQf3Hf5lliVUAxgiISeEuQFcF1P2JXFsnPADwtpl/g+sQQnDdrcwQZXSJ+9DcDAtEVSyPvwY0NLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com; spf=pass smtp.mailfrom=126.com; dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b=pMJase59; arc=none smtp.client-ip=220.197.31.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Zg
	Kz7HPp4QjyuxNJfzfCpjL5pzGtVKS4Dpr6le7LrjA=; b=pMJase594freXt0FEJ
	PoSfaIJy8LOHJ46oc439NAybVkxqDIzT1QFT5IWE39741coZXMzGHlmrtVHMXhG8
	qUGrPr6rWBI1/k8jWTfTc7QpzuudVx863j5x6wGJx3xZZgzoAqZ+hxQ79nijBBM3
	MiLS4gSCE1L8Qmr/RsEsdHbeY=
Received: from neon.loongson.cn (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3VzK3roVpOSW_AA--.28653S2;
	Fri, 06 Feb 2026 17:04:57 +0800 (CST)
From: wming126@126.com
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ming Wang <wangming5719@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Fix Bluetooth stability on LCKFB TaiShan Pi
Date: Fri,  6 Feb 2026 17:04:53 +0800
Message-ID: <20260206090453.1041919-1-wming126@126.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3VzK3roVpOSW_AA--.28653S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tFW8Wry8Wr1fXw1kXry3XFb_yoW8Xr43pw
	4xC398Wr93WrWUX3Z8t3Z7XrZ8ua9agFs8ArWDua4FqFsxt3WDuF1ag3saya1DXFZ3Xw45
	uF1Yqry7tF1ku3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UdgAcUUUUU=
X-CM-SenderInfo: xzpl0wqrswqiyswou0bp/xtbBshmV72mFrrkV6gAA3V
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[126.com,none];
	R_DKIM_ALLOW(-0.20)[126.com:s=s110527];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263271-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[126.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[sntech.de,lists.infradead.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[126.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wming126@126.com,devicetree@vger.kernel.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5F3A8FBCAC
X-Rspamd-Action: no action

From: Ming Wang <wangming5719@gmail.com>

The AP6212 WiFi/BT module on the LCKFB TaiShan Pi (RK3566) is prone to
communication timeouts and reset failures (error -110) when operating at
3 Mbps.

This patch stabilizes the Bluetooth interface by:
1. Updating the compatible string to 'brcm,bcm43430a1-bt' to better reflect
   the actual chip revision used in the AP6212 module.
2. Lowering the maximum UART baud rate from 3,000,000 to 1,500,000 bps.
   Tests show that 1.5 Mbps is the reliable upper limit for this board's
   UART configuration, eliminating the initialization timeouts.

Signed-off-by: Ming Wang <wangming5719@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
index ed65d3120..18a560a6e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
@@ -635,10 +635,10 @@ &uart1 {
 	status = "okay";
 
 	bluetooth: bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm43430a1-bt";
 		clocks = <&rk809 1>;
 		clock-names = "lpo";
-		max-speed = <3000000>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
-- 
2.43.0


