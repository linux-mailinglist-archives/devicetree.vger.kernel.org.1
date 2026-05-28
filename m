Return-Path: <devicetree+bounces-303758-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SE9SFsMNGGrMbAgAu9opvQ
	(envelope-from <devicetree+bounces-303758-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 11:41:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5AE5EFC80
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 11:41:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7994732640CD
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 09:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A5223AFB18;
	Thu, 28 May 2026 09:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tillo.ch header.i=@tillo.ch header.b="T9zY7Nxn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mdapi.ch (mail.mdapi.ch [31.3.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CC938D007;
	Thu, 28 May 2026 09:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=31.3.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779960656; cv=none; b=Ih9FrXFOk5rO3EUFMgH3JGr/xow88+nG/+mbcjVyXgl2a8dHDAGRfyQqMfkcL2tad7so2T7D/eHYIWYucqFGdw6hBjVMJdIR203FHdbwq5FcZVWrGCUtyFQiCd89obOx0PrcYcOk5JMc5uJL+u3kn0XwZFi2EGe6Kk18a/SbiDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779960656; c=relaxed/simple;
	bh=wYMjckmH14TiFJCINblFvyJpPS/lOHSs9L1EOp5+U6A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=W4SGk7eWHgR6fw+/QDLidU+IypGe8ESPUEYCLFiCVZLl01ejiDCBq0T+sR/zML/R5A7fH6NVz36IYdbP5XHBiElaO9aOR0JAlvvJDtPZDZRMb48iUEl5ra7NFoTgaYN55LR3lwsMA5TWkNlRPotJa1p2s9LXIxdzYHv5JQ8YGj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tillo.ch; spf=pass smtp.mailfrom=tillo.ch; dkim=pass (2048-bit key) header.d=tillo.ch header.i=@tillo.ch header.b=T9zY7Nxn; arc=none smtp.client-ip=31.3.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tillo.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tillo.ch
From: Martino Dell'Ambrogio <tillo@tillo.ch>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tillo.ch; s=mail202603;
	t=1779960647;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hUXazZYkDyhdjiv+bN79OJcCKaYJV/N7hpLsUqRQUIA=;
	b=T9zY7Nxniq8Bcglfp9Uib7EYGmBkAbg2EGy7g44w7F7A3+WDk3M0bb1PAka8lMcWxuZwbd
	OLxFzTkNr5KFb+ZdjL9tcDLKTiF3NXrWbij2/QMx+RYxM/frEplj69NA8m1qWof4iuO/0z
	5SyJGOnpZnpRhvSH1GDznMz/oqxy3GzNAFJ3Yq9x4JVf/++z3/yXRdmhnNMnXmSz4dsuF+
	/n6xuSU4hg/Q7RbSOGEkqP5fOIffTrHVa99WXkKyfreA7okzfwQgtigjtj+0m8qA+Y8EzU
	moAM5lndFPPa7ZUZ/UV81T9fLCuX9h/StE++r8fMbKzIN5qEo1gph6fUXlE5Iw==
To: matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com
Cc: kees@kernel.org,
	tony.luck@intel.com,
	gpiccoli@igalia.com,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Martino Dell'Ambrogio <tillo@tillo.ch>
Subject: [PATCH] arm64: dts: mediatek: mt7986a-bananapi-bpi-r3: add ramoops region
Date: Thu, 28 May 2026 11:30:38 +0200
Message-ID: <20260528093038.1945245-1-tillo@tillo.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[tillo.ch,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tillo.ch:s=mail202603];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com];
	TAGGED_FROM(0.00)[bounces-303758-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tillo@tillo.ch,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[tillo.ch:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,tillo.ch:email,tillo.ch:mid,tillo.ch:dkim]
X-Rspamd-Queue-Id: BD5AE5EFC80
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Reserve 64 KiB of RAM just below the ARM Trusted Firmware secmon region
(0x42ff0000-0x43000000) for persistent kernel log storage via pstore/ramoops,
allowing post-panic console output and oops dumps to be recovered after a
warm reset. Without it, kernel crash logs on this board are lost when the
SoC reboots.

The carve-out is divided into 8 KiB kmsg records, a 32 KiB rolling console,
8 KiB ftrace, and 8 KiB pmsg, leaving the remainder for the per-record
Reed-Solomon ECC parity (ecc-size=16) which significantly improves dump
readability when the panic path truncates writes mid-record.

The region sits immediately below the ATF block already declared at
0x43000000 in mt7986a.dtsi, so no other reserved-memory child is moved or
resized. BPI-R3 ships with 2 GiB of DRAM starting at 0x40000000, well above
0x43000000, so the region is always within installed memory.

For the carve-out to actually preserve content across a reset, the boot
loader must avoid touching this region on warm reset; on standard BPI-R3
boards with the stock OpenWrt U-Boot fork this already holds.

Signed-off-by: Martino Dell'Ambrogio <tillo@tillo.ch>
---
 .../boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts    | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
index 19f538d..31ee189 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
@@ -140,6 +140,18 @@ sfp2: sfp-2 {
 	};
 };
 
+&{/reserved-memory} {
+	ramoops@42ff0000 {
+		compatible = "ramoops";
+		reg = <0 0x42ff0000 0 0x10000>;
+		record-size = <0x2000>;
+		console-size = <0x8000>;
+		ftrace-size = <0x2000>;
+		pmsg-size = <0x2000>;
+		ecc-size = <16>;
+	};
+};
+
 &cpu_thermal {
 	cooling-maps {
 		map-cpu-active-high {
-- 
2.47.3


