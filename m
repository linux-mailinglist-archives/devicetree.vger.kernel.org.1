Return-Path: <devicetree+bounces-307733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3nZ+EjaJJGrj8QEAu9opvQ
	(envelope-from <devicetree+bounces-307733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 22:55:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A446164E581
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 22:55:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=netcube.li header.s=s1 header.b=r5zMAq45;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307733-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307733-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=netcube.li;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7AD66304DEA0
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 20:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89D9B3A5448;
	Sat,  6 Jun 2026 20:55:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1EA3B18A;
	Sat,  6 Jun 2026 20:55:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780779313; cv=none; b=UNnZDtwv5TJYZsh2tVXtpCc4N8xQUM6ENUETD5udVZ0kkjo3dBYvVZXI9OUTiuA/FHk2mmGTFcVQo80xdMfNgDcb9fYE5mUkjuRxBgep1CfvrYovVqQrM4xVN4rf0NgIvTQwu2QyKtmhs7ifYdKuLuOTHAoXiG+/spOtSwW/E70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780779313; c=relaxed/simple;
	bh=MDFuXDEC0+TRcryVMmW9QZQjVy3dLKKLNjW031DPXHk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sRSzUtp2Qum7U8DJeJBvUiXstvZCSdMi5SuW0Hy6MdCeQZrv4X6P1M8RjZX27Cl2Ure3I1Gv7P/OMOe0BLQweLnTkfgrtd0aTq6iidJ0gHRvICemsLSpcsTH9lPz9YDbxb6gF7b91M6Mc3pJX2ROEtuiSJdFQ23fH/wC0HZXhA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=r5zMAq45; arc=none smtp.client-ip=173.249.15.149
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=zysp9UOZdYQfuJRmcjZPPdnKqn46r6J7N0CZfMxHtOA=;
	b=r5zMAq45/5Z11yp/G/J+9sop5mOoMLh6/SXq2vpDo5vPmSekLuvzNnFIKO03su98P6J7kiScr59CeEVPF9xU8zXzQtw514letH0xQi3lj3B6R3Bj8zNG0unV8et+fbqR8b6+yijgyIx7hz0jKXomvMaup+uHw53pPk8UWF2a8JA=
Received: from lukas-hpz440workstation.lan.sk100508.local (194-166-56-114.hdsl.highway.telekom.at [194.166.56.114])
	by mail.netcube.li with ESMTPA
	; Sat, 6 Jun 2026 22:55:09 +0200
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v4 0/3] Add support for NetCube Systems OpenNMC (dobermann)
Date: Sat,  6 Jun 2026 22:54:40 +0200
Message-ID: <20260606205452.2386930-1-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[netcube.li,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[netcube.li:s=s1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307733-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:mripard@kernel.org,m:lukas.schmid@netcube.li,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[lukas.schmid@netcube.li,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	DKIM_TRACE(0.00)[netcube.li:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lukas.schmid@netcube.li,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A446164E581

This series adds support for the NetCube Systems OpenNMC.

Sorry for the quick resend. This v4 includes the corrected Makefile
target name.

Changes in v4:
 - fix the ARM Makefile target name for the new board

Changes in v3:
 - actually add the Makefile changes

Changes in v2:
 - fixed ordering of compatible enum
 - fixed gpio line names

Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
---
Lukas Schmid (3):
  dt-bindings: arm: sunxi: Add NetCube Systems OpenNMC (dobermann)
  riscv: dts: allwinner: d1s-t113: Add uart4 pinctrl required by NetCube
    Systems OpenNMC
  ARM: dts: sunxi: add support for NetCube Systems OpenNMC (dobermann)

 .../devicetree/bindings/arm/sunxi.yaml        |   1 +
 arch/arm/boot/dts/allwinner/Makefile          |   2 +
 .../sun8i-t113s-netcube-dobermann.dts         | 149 ++++++++++++++++++
 .../boot/dts/allwinner/sunxi-d1s-t113.dtsi    |   6 +
 4 files changed, 158 insertions(+)
 create mode 100644 arch/arm/boot/dts/allwinner/sun8i-t113s-netcube-dobermann.dts

-- 
2.47.3


