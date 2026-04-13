Return-Path: <devicetree+bounces-286960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GoxC8233Gn2VgkAu9opvQ
	(envelope-from <devicetree+bounces-286960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 11:30:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1A13E9DAE
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 11:30:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D288A3005991
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 09:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06DDB3B19C1;
	Mon, 13 Apr 2026 09:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMlkVj5v"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B3F391831;
	Mon, 13 Apr 2026 09:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776072114; cv=none; b=NTLiLDyUfR4RkbUb3HRBio6FN6CyYC46pK/E49f6PmNuTDBjY3+ixxyYdjS3ynKwub8McJJO3B8nKOE3FXVOz/1J2VMjpMrH6lktnvReJ6/3wY1u+RvpSsjLzZgnPQG8rJf+8tws7IvVLEzF3V1GLuuzbJ441e0LuFkoKaiXFzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776072114; c=relaxed/simple;
	bh=HCn68mfmb+0zvBExHJU/0JnG9Yw0KL8/dTH9fyp1YFk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=D1XK6Z81IyECKsObpMmLpmA+sjXVxwXchMDlp+p/rD50gvXidWuHGDaphkD614buanwi0Hi9Ngqo0vpb1lY4Dm4MasWJy5v6LhIRpLLS74kv2D5Foag5qbw7vC7Wfkrp/vMIFsVbWfJUkvJcefE2jp419ul4lUxAIiwJl7JKm1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMlkVj5v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C547DC2BCAF;
	Mon, 13 Apr 2026 09:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776072114;
	bh=HCn68mfmb+0zvBExHJU/0JnG9Yw0KL8/dTH9fyp1YFk=;
	h=From:To:Cc:Subject:Date:From;
	b=ZMlkVj5v9hYKqB0SK/x6fwgekTr/gQZaVN7yDdNdvBl8McY2omPgeVkH5MXB7urIM
	 LiJRS0P90mJod/MefuAgYa+E7m8yKs6UXLNnnvd2aNUqBrwKhFEvCRGePNo2rrVQlO
	 DemG8VKeMkFHP06ygKzv56zrYXtA9M9yJVFwjPpA/dB6iToyyVOEND8jYFcVC98XMe
	 pLyKiQyBAK0JTEunpkqZGRIlElceVQjOBkPJZfArxNCHuD4bspZLUpa4iqog0B8B99
	 /EolN/e2Dxoce0CnORvKXA6Sbi7oDRTKCSVuID18WIceSbySdzHC+AVxIASr6Hv/eG
	 dlkT7WgZWnxsA==
From: Arnd Bergmann <arnd@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rosen Penev <rosenp@gmail.com>
Cc: soc@lists.linux.dev,
	Arnd Bergmann <arnd@arndb.de>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: bcm4709: fix bus range assignment
Date: Mon, 13 Apr 2026 11:21:45 +0200
Message-Id: <20260413092148.3870746-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [6.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-286960-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	FREEMAIL_TO(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.50.200:email];
	FROM_NEQ_ENVFROM(0.00)[arnd@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.952];
	R_SPF_ALLOW(0.00)[+ip4:172.232.135.74:c];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,arndb.de:email,0.0.0.2:email,0.0.0.1:email,1.18.168.128:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AE1A13E9DAE
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

From: Arnd Bergmann <arnd@arndb.de>

The netgear r8000 dts file limits the bus range for the first host
bridge to exclude bus 0, but the two devices on the first bus are
explicitly assigned to bus 0, causing a build time warning:

/home/arnd/arm-soc/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts:142.3-27: Warning (pci_device_bus_num): /axi@18000000/pcie@13000/pcie@0/pcie@0,0/pcie@1,0:bus-range: PCI bus number 0 out of range, expected (1 - 255)
/home/arnd/arm-soc/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts:142.3-27: Warning (pci_device_bus_num): /axi@18000000/pcie@13000/pcie@0/pcie@0,0/pcie@2,0:bus-range: PCI bus number 0 out of range, expected (1 - 255)

I could not find any reason why this is done in the first place, but
this can be easily addressed by reassigning the two devices to
bus 1, or by dropping the bus-range property in order to allow
secondary bus 0 to be assigned.

Assuming the bus-range is intentional, fix this by moving the
devices to the first valid secondary bus number.

Fixes: 893faf67438c ("ARM: dts: BCM5301X: add root pcie bridges")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
index d170c71cbd76..355be5014943 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
@@ -147,7 +147,7 @@ pcie@0,0 {
 
 		pcie@1,0 {
 			device_type = "pci";
-			reg = <0x800 0 0 0 0>;
+			reg = <0x10800 0 0 0 0>;
 
 			#address-cells = <3>;
 			#size-cells = <2>;
@@ -162,7 +162,7 @@ wifi@0,0 {
 
 		pcie@2,0 {
 			device_type = "pci";
-			reg = <0x1000 0 0 0 0>;
+			reg = <0x11000 0 0 0 0>;
 
 			#address-cells = <3>;
 			#size-cells = <2>;
-- 
2.39.5


