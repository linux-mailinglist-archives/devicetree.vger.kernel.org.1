Return-Path: <devicetree+bounces-311279-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pXxiOfclLWowcwQAu9opvQ
	(envelope-from <devicetree+bounces-311279-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:42:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8451A67E436
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:42:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ZN1eojpo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311279-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311279-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E9130300A30C
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:42:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D67B1390606;
	Sat, 13 Jun 2026 09:42:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19E11D5160;
	Sat, 13 Jun 2026 09:42:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781343733; cv=none; b=PD/QYQq2D6KQhppdsTtnFWhS0tekC5oEuDhY1EJ0hCpI+1HU6e5IRJpZPhlZ56/5KCXLFTra+YmlG6PGIK+o7hQiqV4LLETp3vN5TAUNzNuJqB+jtrcLFuMuijP7mqNv/ZZc6J3Bs1mfYQ14q9EAqXn4MCKS4y97JNt5/ere12I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781343733; c=relaxed/simple;
	bh=T8w15Z6UpGoZeormWbXEddQVKmpoMhM5LL7ffQ3jrX0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=M8i7Ansgx5toV43MoKz73+9Qqz/3tlW6dNpUc+oqyD9W/5EpETlPY2gzvcYJ8rlrDorbnxUDM7B4GgIjfchPSrPPbdFTmEwVFhD9EfNCwnHGUQX6R75nGtUSCHmOFYlQs29n/jVSoXxQAmzs1jNS28JH/mdFo4+gIpu3rhIv7VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN1eojpo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4D978C19425;
	Sat, 13 Jun 2026 09:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781343733;
	bh=T8w15Z6UpGoZeormWbXEddQVKmpoMhM5LL7ffQ3jrX0=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=ZN1eojpo8Ba1EziJfLYnVyjcvYvcOoEC0S3zpMJeh7R14y34mAWnrv4wx4M4BiW4Z
	 B6myUttIvi6id+BFfLP4GlTJ65eBYPQ41JO/P70tsuRzfLTyO4G8xy8kU3TcrUlSo8
	 IpegOZjfRsushQ5OTccQEOpyvVTTGmqxc0FWCz3IO56pCITXdxSgxObhJ1oEUZzs+y
	 iwIxZjbZJjyyJxsA8U8vG9Mi66xv4zc2nOBE7PvR8t+A+pRX+h2buOTxLVkg2mZwSy
	 dyptqTW+2YRrezLGZZYs5T9xJaooOxoCkP/t0piaEzcjLvZuuad3MztWbNVMl23qUr
	 uea+x9Vr/PW5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35057CD98C5;
	Sat, 13 Jun 2026 09:42:13 +0000 (UTC)
From: Enzo Adriano via B4 Relay <devnull+enzo.adriano.code.gmail.com@kernel.org>
Subject: [PATCH 0/4] arm64: dts: allwinner: add A733/Cubie A7S DTS support
Date: Sat, 13 Jun 2026 05:42:12 -0400
Message-Id: <20260613-a733-dts-v1-public-ready-v1-0-7787c94681db@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/42QQW7DIBBFrxKxLhYwgO2oqnKPKosBJgmtnbhgp
 02j3L3Y7q6bLr/0/3ujubNMKVJm282dJbrGHC/nEuTThvkTno/EYyiZKaGssBI41gA8jJlfJR8
 m10XPE2G48cY7B7UEcFazMh8SHeLXgn7drzlP7o38OPN+G4k+puIc1xrrKWdcnNvN86KUSq7KN
 PpZKXgA02qoDwqw3g3x2F8SdtVI/vQyQ/8iQIoV4bv3FQHWaWqd0tr8B2FEo6QQWoGqGgmal5P
 OIVE1pO/bJybcYeorf+mXtcNMvIQ+juWPVllPxvnGuAAHRGxVU9dBOmt8q3RoLLZGW7Z/PH4A9
 9zWNIwBAAA=
X-Change-ID: 20260613-a733-dts-v1-public-ready-8cbb37133b64
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, 
 Ulf Hansson <ulfh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-mmc@vger.kernel.org, Enzo Adriano <enzo.adriano.code@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781343732; l=3787;
 i=enzo.adriano.code@gmail.com; s=a733-cubie-a7s;
 h=from:subject:message-id;
 bh=T8w15Z6UpGoZeormWbXEddQVKmpoMhM5LL7ffQ3jrX0=;
 b=NpVcmzEJkeow+JZLJUFg5NrSvZvzi4VWISMZ+s+b2GwHFUFpxrVarljFmYyqy15pBrQ9N2uFk
 T/Auz84g6iVCzcD3gTyGF1TxQBxSomQj4ULfUIgyIKrfS45WsGn4V7s
X-Developer-Key: i=enzo.adriano.code@gmail.com; a=ed25519;
 pk=5S3Wmdqa4XfCdeZF/HfeYqnQF8GN9JGt3SE1cxqSX8E=
X-Endpoint-Received: by B4 Relay for
 enzo.adriano.code@gmail.com/a733-cubie-a7s with auth_id=820
X-Original-From: Enzo Adriano <enzo.adriano.code@gmail.com>
Reply-To: enzo.adriano.code@gmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sholland.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:mripard@kernel.org,m:ulfh@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-mmc@vger.kernel.org,m:enzo.adriano.code@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,m:enzoadrianocode@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-311279-lists,devicetree=lfdr.de,enzo.adriano.code.gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	HAS_REPLYTO(0.00)[enzo.adriano.code@gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,arm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8451A67E436

This series adds initial devicetree support for the Allwinner A733 SoC and
Radxa Cubie A7S board.

It includes the Radxa Cubie A7S board compatible, the A733 MMC compatible,
an initial A733 SoC DTSI with CPUs, timer, GICv3, RTC oscillator provider,
CCU/R-CCU, pinctrl, UART0, and SDMMC0, and a board DTS enabling UART0 console
and SD card boot storage.

This series intentionally does not carry local CCU/PRCM or pinctrl driver
patches. Those areas overlap active A733 RFC work and remain external
prerequisites unless maintainers ask for a different plan. The A733 CCU RFC
also depends on the A733 RTC series.

Ethernet, VPU/Cedrus, display, Wi-Fi, Bluetooth, USB-C, PCIe, and other board
peripherals are intentionally out of scope. Vendor U-Boot workarounds used for
local proof collection are not encoded in these device trees.

Cubie A7S runtime proof has shown the v4 Image and DTB loading, Linux
7.1.0-rc6-gabc8d07b0a63, Radxa Cubie A7S machine model, 8 CPUs, GICv3
redistributors, A733 pinctrl/UART0, SDMMC0 enumeration, mmcblk0 partition
discovery, and a read-only mmcblk0p3 root mount via the corrected PARTUUID
path.

Signed-off-by: Enzo Adriano <enzo.adriano.code@gmail.com>
---
Enzo Adriano (4):
      dt-bindings: arm: sunxi: add Radxa Cubie A7S
      dt-bindings: mmc: add Allwinner A733 compatible
      arm64: dts: allwinner: add Allwinner A733 SoC
      arm64: dts: allwinner: add Radxa Cubie A7S

 Documentation/devicetree/bindings/arm/sunxi.yaml   |   5 +
 .../bindings/mmc/allwinner,sun4i-a10-mmc.yaml      |   3 +
 arch/arm64/boot/dts/allwinner/Makefile             |   1 +
 .../boot/dts/allwinner/sun60i-a733-cubie-a7s.dts   |  48 +++++
 arch/arm64/boot/dts/allwinner/sun60i-a733.dtsi     | 198 +++++++++++++++++++++
 5 files changed, 255 insertions(+)
---
base-commit: 1626ce5bc85bd3faaa92877d1b65c924d86a9546
change-id: 20260613-a733-dts-v1-public-ready-8cbb37133b64
prerequisite-message-id: <20260121-a733-rtc-v1-0-d359437f23a7@pigmoral.tech>
prerequisite-patch-id: 042a3289f0d794493871f52adbd992a9f4de1f95
prerequisite-patch-id: a133b49e027edbb982e1e0e6c5712416ffa8512a
prerequisite-patch-id: c512a7bc19f2d6d8cd54eb0950db302cc71795df
prerequisite-patch-id: 1ea3a72e957d15a896a95127908c9c2a188bd46c
prerequisite-patch-id: df374a147afb6d96e5c3c9ee9f0d3085c57a9076
prerequisite-patch-id: cd4375ce65c5b79a1c67b33dc373c0bc0af6d308
prerequisite-patch-id: 4ec938bcd2096388f4c1928b0aa1a9c72ef6fe35
prerequisite-message-id: <20260310-a733-clk-v1-0-36b4e9b24457@pigmoral.tech>
prerequisite-patch-id: 42a81ed9298600d95a32d3d61bbfb632580413e7
prerequisite-patch-id: c5736d2edbcad45007995bcdc6a61e2e1953f87a
prerequisite-patch-id: 3dc8be31aade04035ca759e75e9c67efd9dcafce
prerequisite-patch-id: c24ddc9c08cfc410f38f595a8000b4f7dedc74b3
prerequisite-patch-id: 9fac441fc346bc54b1f09130849aa320c0b912d2
prerequisite-patch-id: 7c36a3a750676915eec3b1927158d9d61209a460
prerequisite-patch-id: ed8a7bba18ba5e7c88f6f546fa9fc582aecabc82
prerequisite-patch-id: ac155f53daee5eaa9f893704d4c3fbb9ff4a184c
prerequisite-message-id: <20250821004232.8134-1-andre.przywara@arm.com>
prerequisite-patch-id: 03fdbd2faff5bdeff1e7bfb7b4844cf3fafd655d
prerequisite-patch-id: 15e73fad7383f55ad6d0592294dcc9e8274c1c02
prerequisite-patch-id: bea03fba87ae3dffc5ad9920ef5a045d74c6dbd7
prerequisite-patch-id: c29b0eb9119cb6ea38e3babd689463cc26b66894
prerequisite-patch-id: 639bf50ff42c85812716fb5dc89b616284481867
prerequisite-patch-id: 9fc3b375667be361f1279d9f9b976c7f2698136c
prerequisite-patch-id: 75fc07dc2648e6610e80b21b910d9ae00d31c304
prerequisite-patch-id: 3214731f042dd5eb1aa1d38388384428548a053f
prerequisite-patch-id: 69702560a13f180161afb5a48c2ea7ebb3f9ec5c

Best regards,
--  
Enzo Adriano <enzo.adriano.code@gmail.com>



