Return-Path: <devicetree+bounces-287194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPXlAqTl3WnDkwkAu9opvQ
	(envelope-from <devicetree+bounces-287194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 08:58:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 625553F6515
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 08:58:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8ECFF3081A27
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 06:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 145102F9DA1;
	Tue, 14 Apr 2026 06:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et8EgnRs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58FB1E515;
	Tue, 14 Apr 2026 06:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776149282; cv=none; b=L6NQ0nYxUgkBK34rd5RJIuOUtAWIqOeo0R8sj0/fZsh9D1++aKGFWG37quChJ4pFETvXO5+YtB/aP04XvtlX/ShxatYWs0wg6wgUEOv7iFqXnIGRVZv6iOEF2NG2+tP0v25/JkTOAEeLXoXbl6/s7MYw2u2vds9ROcF2jlme9T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776149282; c=relaxed/simple;
	bh=sgQSnvH0C3Sqy1eWfjYwrIYFONIpzqlkzyRfsudm/xU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=LwPQtRkVa/mjVI6NQgGm/Jo9l5c5ykVKhUC4jS1JWh6ridc6ZgCiCTD9ZtkPAmHXXDOJAgQ6U+bfPFsHTi5N5mBO+hlD9YKnndUJv8835VkXWwdpV751G6f/H7WWruHa7W41gbRN2XS6LfS36b7LB/WlnWavS0saawYrx3QrUek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et8EgnRs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3BD4C19425;
	Tue, 14 Apr 2026 06:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776149281;
	bh=sgQSnvH0C3Sqy1eWfjYwrIYFONIpzqlkzyRfsudm/xU=;
	h=From:To:Cc:Subject:Date:From;
	b=Et8EgnRsWhzdmcM4RENWMbVpkXKS8dXoteWcjVKiKsBIsvCbKJY/7smciG299ZLWG
	 8tH2CrpUVX4tT6Gv1IbzuEfayBYNMmfbCeO4ullqdeuT0wxNIEM1RJK0eDKTTDxH3F
	 nboa+k0ApHlnGj4VjghnFw6HdWJrt6d9af8VDYYRzkCjcWBG/w2Q9Vq84msCbNmnsk
	 kEAfI7TbIJanjyq+PtunxH+fuOM1+jwjO4arCliVHUcnUBAodyZxxWTWDUOU5wTVR4
	 6TWHeR38oIrsxjodpPfOOd8X3ZTYLRP4UkejezBYvSQ0P7Qw2xVv8G+ajSLEsLXk9C
	 0SAVbkmo2VYzA==
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
Subject: [PATCH] [v2] ARM: dts: bcm4709: fix bus range assignment
Date: Tue, 14 Apr 2026 08:47:46 +0200
Message-Id: <20260414064754.3129667-1-arnd@kernel.org>
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
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-287194-lists,devicetree=lfdr.de];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,body];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[arnd@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.961];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1.18.168.128:email,0.0.0.0:email,0.0.0.2:email,0.0.50.200:email,0.0.0.1:email]
X-Rspamd-Queue-Id: 625553F6515
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

From: Arnd Bergmann <arnd@arndb.de>

The netgear r8000 dts file limits the bus range for the first host
bridge to exclude bus 0, but the two devices on the first bus are
explicitly assigned to bus 0, causing a build time warning:

/home/arnd/arm-soc/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts:142.3-27: Warning (pci_device_bus_num): /axi@18000000/pcie@13000/pcie@0/pcie@0,0/pcie@1,0:bus-range: PCI bus number 0 out of range, expected (1 - 255)
/home/arnd/arm-soc/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts:142.3-27: Warning (pci_device_bus_num): /axi@18000000/pcie@13000/pcie@0/pcie@0,0/pcie@2,0:bus-range: PCI bus number 0 out of range, expected (1 - 255)

As Rosen mentioned, the bus-range property was a mistake, so just
remove it and keep the reg values pointing to bus 0, which is
allowed by the default bus range of the SoC.

Suggested-by: Rosen Penev <rosenp@gmail.com>
Fixes: 893faf67438c ("ARM: dts: BCM5301X: add root pcie bridges")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
index d170c71cbd76..e85693fba16a 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-netgear-r8000.dts
@@ -139,7 +139,6 @@ &pcie_bridge1 {
 	pcie@0,0 {
 		device_type = "pci";
 		reg = <0x0000 0 0 0 0>;
-		bus-range = <0x01 0xff>;
 
 		#address-cells = <3>;
 		#size-cells = <2>;
-- 
2.39.5


