Return-Path: <devicetree+bounces-293466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MNlmCNIU+2lLWQMAu9opvQ
	(envelope-from <devicetree+bounces-293466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 12:15:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 738734D9345
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 12:15:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1976F30086F7
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 10:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C8863FB7F4;
	Wed,  6 May 2026 10:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b="mDlVWEVK"
X-Original-To: devicetree@vger.kernel.org
Received: from s106b.cyber-folks.pl (s106b.cyber-folks.pl [195.78.66.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C073F23BD;
	Wed,  6 May 2026 10:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.78.66.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778062543; cv=none; b=fi5Pb09P+m6hj1Kd9aH1GIrqegEDOKUIVOyk8zzCPSg9vC46X7j5hJiIr3xP35i0OuJnXhtnF8bZmSKZ8cuH4nlUHvh+j9/MhMEpmlHrnqem0ey/vO4qa5YLBXafAwatO6DNqH+qhfdbxJJkZFc/JS2SAA1D8BYioS1sOOD3S18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778062543; c=relaxed/simple;
	bh=RIZFKu0YFjj7EBH23MsJ7RM+THIvDb3yzeXZZe8JlHI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=GULqkbIbeqj4X7yT38rkpHlC4Eus+jDrcJQ8/rvrvozAX9+3ntf113QcEUAW1S+CJ4hC025kbsJ/WkK6BOaIAdlkeo6y+UNnXGKbV4gckSXq205SBPPm05UQzAHr2IAgmaEmeufa/cklB5AFX5qc5GxdeSBw1AEQmjlRKIOFavs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl; spf=pass smtp.mailfrom=mmpsystems.pl; dkim=pass (2048-bit key) header.d=mmpsystems.pl header.i=@mmpsystems.pl header.b=mDlVWEVK; arc=none smtp.client-ip=195.78.66.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=mmpsystems.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mmpsystems.pl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=mmpsystems.pl; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rEf+QF8cDPXceBxP70Jj9VU95LyjIJ2Vip/589+YH0Y=; b=mDlVWEVKgngZzTseLTMNbUGwZk
	JyfwRYdjdkrPCByRvn8ok9fCz2Z4vrI/uooCaY5lC8tvRPQdhVdR5N3MBDymQUEFE/9+BHhw3cisr
	BbjllNP5PRX1k6hFKIVqo8ifRUnsT8CVnmnV0WQGE8u3ebPo47J2cW45gmdI/DUtNf65s9hsofi9d
	vv16b5E+gZvmLNkeu8/O/1zKQF9whPX6BY5wSEkjt5+lGOUFRCAxTeNG+dxRMkIoyzw/XuCn8tJlt
	qKU9Yg+T+wW68Tyt2/BDqvlrg/7EKe8ozNPJf6CxxzQ644173UGFUgBwF92xTyle/Av6lnQUXyCSN
	ILhCCwog==;
Received: from user-188-33-36-99.play-internet.pl ([188.33.36.99] helo=localhost)
	by s106.cyber-folks.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <michal.piekos@mmpsystems.pl>)
	id 1wKZI1-0000000DXxR-23bm;
	Wed, 06 May 2026 12:15:37 +0200
From: Michal Piekos <michal.piekos@mmpsystems.pl>
Date: Wed, 06 May 2026 12:14:31 +0200
Subject: [PATCH v3] arm: dts: allwinner: t113s: enable watchdog for reboot
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-t113-mangopi-reboot-hang-v3-1-fa15a360a520@mmpsystems.pl>
X-B4-Tracking: v=1; b=H4sIAIYU+2kC/43NQQ7CIBAF0Ks0rMXA0FbrynsYF5QOlkQKAUJsm
 t5d2pVxYVz+mT9vFhIxGIzkUi0kYDbRuKkEcaiIGuX0QGqGkgkwaFnNgSbOBbVl47yhAXvnEt2
 KVHWyG1CfAaEn5dwH1Oa107d7yaOJyYV5/5T5Nv0DzZxy2jAGSssWmVJXa32cY0Ibj/5JNjjDB
 wbNDwwKpgdRC2AnWff4ja3r+gYyYodzEQEAAA==
X-Change-ID: 20260412-t113-mangopi-reboot-hang-c9a9def82e2b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Michal Piekos <michal.piekos@mmpsystems.pl>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778062495; l=1217;
 i=michal.piekos@mmpsystems.pl; s=20260301; h=from:subject:message-id;
 bh=RIZFKu0YFjj7EBH23MsJ7RM+THIvDb3yzeXZZe8JlHI=;
 b=Whfd5bW+3yqgekFwmeFvDl+NjTsUzrNampq+WZUHFRgq+FAdlYA32aSD9DkVyGflXx1DsaczL
 SeR9q64rPuQAWKaX77Gc3odTlstSzKbsJ6syBCCFSWF9qoXwxttEdj8
X-Developer-Key: i=michal.piekos@mmpsystems.pl; a=ed25519;
 pk=Aixyx03If7ZDamiKKN0lsa+0mtA+WjIuIf2ZQVYNBqg=
X-Authenticated-Id: michal.piekos@mmpsystems.pl
X-Rspamd-Queue-Id: 738734D9345
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[mmpsystems.pl:s=x];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[mmpsystems.pl : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293466-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[mmpsystems.pl:-];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.592];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.piekos@mmpsystems.pl,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Reboot hangs on T113s boards because no restart handler is
available.

Enable the SoC watchdog whose driver registers a restart handler.

Tested on LCPI-PC-T113/F113.

Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
---
Changes in v3:
- Fix referencing the node
- Link to v2: https://lore.kernel.org/r/20260425-t113-mangopi-reboot-hang-v2-1-fd343207a4be@mmpsystems.pl

Changes in v2:
- Moved watchdog enablement to SoC level dts following Jernej's
  suggestion
- Link to v1: https://lore.kernel.org/r/20260412-t113-mangopi-reboot-hang-v1-1-5002cfa6e0cc@mmpsystems.pl
---
 arch/arm/boot/dts/allwinner/sun8i-t113s.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-t113s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-t113s.dtsi
index 424f4a2487e2..3ca0897353be 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-t113s.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-t113s.dtsi
@@ -90,3 +90,7 @@ cpu-crit {
 		};
 	};
 };
+
+&wdt {
+	status = "okay";
+};

---
base-commit: 74fe02ce122a6103f207d29fafc8b3a53de6abaf
change-id: 20260412-t113-mangopi-reboot-hang-c9a9def82e2b

Best regards,
--  
Michal Piekos <michal.piekos@mmpsystems.pl>


