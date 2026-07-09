Return-Path: <devicetree+bounces-323360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EvmYFJlNT2rYdwIAu9opvQ
	(envelope-from <devicetree+bounces-323360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:28:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE1772DB14
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:28:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=superkali.me header.s=default header.b=EPWmXbpP;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=superkali.me (policy=reject);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323360-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323360-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 249163025C24
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 07:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90DF13C8C73;
	Thu,  9 Jul 2026 07:26:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fr5000-r.dnsiaas.com (fr5000-r.dnsiaas.com [92.42.104.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580031B7910;
	Thu,  9 Jul 2026 07:26:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783582013; cv=none; b=MF1F8jbaVm/1YmzVUuN5ORnCBKu2yA7Q4D8N+jkdWVqXk1wyA/l4KzqzcZq7PJNa6R0M/bnuVXazUEJHKTNXdKQ/F9KJ47t4SGn1DBXJT/lhED85X5XXgR0hVUhy4txfjiJ2h4MPjOLQ+eXT/8XUoBqRgi/8TbKyL4oKgblrWK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783582013; c=relaxed/simple;
	bh=iFef+RMo4HD2L2iqYTWAnm1yAXxvyc5ptpgmGuUjzjc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=M2f9ZTmtMjxjEdVRgmpDpJJvEplA8KyHScKNJa58qYMwisrWcuHbjAtEyCnTxDfoUPM2fFKIAcoMTkTuXxPshp0r5tqtjI2VVCKyipLBD3V0cVD/nj2CvdGqNtjZrjzHsZvZelawQ1a/QlxhhIdRVbQdgci3E1ylyzCWa1OB6tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me; spf=pass smtp.mailfrom=superkali.me; dkim=pass (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b=EPWmXbpP; arc=none smtp.client-ip=92.42.104.18
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Cc:To:Message-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8aF1jWcB6IB9KR+4XWsQOiLJ0TW7MXvqDka6LPg71dM=; b=EPWmXbpPXQfTrkeIfmqIdPvbxQ
	wOW1LiG49jLz1d8Q5Ne7HjE3dsDF0OUhozjqMdKtMb/PZSfWxpruPh+31py9o0zgBXWiPNKNw53+p
	rHIRqI5JDlWPZx4khUMn6KqjR72+8SdcSb+soUkVAxXKQLW8Rb1VFcmvUnm01O5Tf2u+OYMpWiF6m
	QnXAd31jSLZI7UsDQ4hpUSsfHm+yvUuAlaLBCxcozca16FWoFmS3Qc7JCprmT9NBijoHqRjsIsHjk
	MFS5D7+5rBzGVgJUt5rADZKbF08amGGl7AYPe4T/oSj7dQyb3r4QEDfmnZlRmDeE/kbp5fhpf9MLm
	fz/U84Pg==;
Received: from [81.57.40.39] (port=46604 helo=vscode.iliadbox.lan)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.4)
	(envelope-from <hello@superkali.me>)
	id 1whiiX-00000009Qd7-3dNf;
	Thu, 09 Jul 2026 08:58:39 +0200
From: Daniele Briguglio <hello@superkali.me>
Date: Thu, 09 Jul 2026 08:58:38 +0200
Subject: [PATCH] arm64: dts: rockchip: yy3588: fix HDMI-RX signal detect
 GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-yy3588-hdmirx-d5-fix-v1-1-900a6790386c@superkali.me>
X-B4-Tracking: v=1; b=H4sIAJ1GT2oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDcwNL3cpKY1MLC92MlNzMogrdFFPdtMwKXUvDRAszQ3NzYxNTQyWg1oK
 iVKAw2NjoWAi/uDQpKzW5BGSWUm0tAFopeB14AAAA
X-Change-ID: 20260709-yy3588-hdmirx-d5-fix-91a861773451
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Daniele Briguglio <hello@superkali.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783580318; l=1813;
 i=hello@superkali.me; h=from:subject:message-id;
 bh=iFef+RMo4HD2L2iqYTWAnm1yAXxvyc5ptpgmGuUjzjc=;
 b=UCQjMBPadCMciZrzLQcdA3pxynAHmzMfHADkyU2CwwQZycfvm/6rKPhrA3a/znGshyo3923GF
 NMmlUAIPPXDAToHT1ML913ozQHQ9SwxAbKFzqlrIxXyMsnBRZ+esFEJ
X-Developer-Key: i=hello@superkali.me; a=ed25519;
 pk=5tynRWQdL93CDcapJ73FkcCRY2PeBOJOIAoIhRig53U=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.04 / 15.00];
	DMARC_POLICY_REJECT(2.00)[superkali.me : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[superkali.me:s=default];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323360-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:hello@superkali.me,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_X_AS(0.00)[hello@superkali.me];
	HAS_X_GMSV(0.00)[hello@superkali.me];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[hello@superkali.me,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_X_SOURCE(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hello@superkali.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[superkali.me:-];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,superkali.me:from_mime,superkali.me:email,superkali.me:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AEE1772DB14

The YY3588 declares the HDMI-RX signal detect on GPIO1_C6, but the
receiver never sees an attached source there and cannot capture any
input.

That value was copied from the vendor device tree and is wrong. The
core-board schematics are not available and the SoM documentation does
not clearly show where this signal is routed, so the correct pin was
read from the device tree in the board's Android image: GPIO1_D5. With
GPIO1_D5 the receiver detects a connected source and locks, and v4l2
reports the input timing (1920x1080p60).

Fixes: 19847bde695f ("arm64: dts: rockchip: Add Youyeetoo YY3588")
Signed-off-by: Daniele Briguglio <hello@superkali.me>
---
 arch/arm64/boot/dts/rockchip/rk3588-youyeetoo-yy3588.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-youyeetoo-yy3588.dts b/arch/arm64/boot/dts/rockchip/rk3588-youyeetoo-yy3588.dts
index 658d87504841..e31d04b85edf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-youyeetoo-yy3588.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-youyeetoo-yy3588.dts
@@ -341,7 +341,7 @@ &hdmi_receiver_cma {
 };
 
 &hdmi_receiver {
-	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+	hpd-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_5v_det>;
 	status = "okay";
@@ -605,7 +605,7 @@ &pcie3x4 {
 &pinctrl {
 	hdmirx {
 		hdmirx_5v_det: hdmirx-5v-det {
-			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 

---
base-commit: f5ed1537219ae8bf55446232d331b114653a1475
change-id: 20260709-yy3588-hdmirx-d5-fix-91a861773451

Best regards,
--  
Daniele Briguglio <hello@superkali.me>


