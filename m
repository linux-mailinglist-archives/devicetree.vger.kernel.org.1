Return-Path: <devicetree+bounces-320644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WtnVKT1hSmpMCAEAu9opvQ
	(envelope-from <devicetree+bounces-320644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:50:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB98A70A272
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 15:50:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qq.com header.s=s201512 header.b=aoD1QXz9;
	dmarc=pass (policy=quarantine) header.from=qq.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320644-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320644-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E2BDB3017473
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 13:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AB2A377553;
	Sun,  5 Jul 2026 13:50:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-233.mail.qq.com (out203-205-221-233.mail.qq.com [203.205.221.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DB7346E43;
	Sun,  5 Jul 2026 13:50:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783259448; cv=none; b=ohSIbfL2hFzpHawiDonb+xl37h/t8Zoow7C0oHh+RaTijRVIkN86XUC8cFsa2BUKe+tS/46nbTaunJZ/q/bNQrzaM+CtwJMEXPdFMHDUapyuVxVdIRzWZQXqmFyOUmSG/ZfJT2M4Kh3Qpk29l1nSV+ElNhbpEduPwLr8Ehp4qHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783259448; c=relaxed/simple;
	bh=HkzyZAZA/z69C2Qo0cf31mnbq/5noYgMm/D27vn+Tqs=;
	h=Message-ID:From:To:Cc:Subject:Date:MIME-Version; b=rriiHRwyfz4P65mgfG7+kGpQkN+9UIAzerdUYRx1xtPmwSdGrJtnhW7HykHkFJjYFQLDFjfdJDPBzhTFCZobfeSXNcNWf0AmXe7JGpfPPZGSwYtwO9QgcR73PS9NEw9BA29XT4fBNltX3BsVNS9rEoaZz/5FPqWkGohpFj+5D5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=aoD1QXz9; arc=none smtp.client-ip=203.205.221.233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783259438; bh=eii7pRqmdDKs+6pukJXm2+s7N+UcgUU6RSz5gucuVf0=;
	h=From:To:Cc:Subject:Date;
	b=aoD1QXz95A9Awq1Iv3UEPQVF5vu55K0JhXGSLdaCY2g4bhQdIWjW4G3UQzdgqYRpp
	 PX4c/4hXQdr6NaCxMjcZxWS0KLlZ3yF7+gQOErnJoeRZvmjhbItWPbXgDiDh69HD/p
	 nLqF3OJTBSREIflXWOk7Cwi33fi1Adpexe9TJZ6U=
Received: from AERO17.taila7786d.ts.net ([112.43.117.189])
	by newxmesmtplogicsvrszc43-0.qq.com (NewEsmtp) with SMTP
	id CA0A8E0E; Sun, 05 Jul 2026 21:50:32 +0800
X-QQ-mid: xmsmtpt1783259432tszyimyia
Message-ID: <tencent_749430DC83091C814933F9C6080491564C0A@qq.com>
X-QQ-XMAILINFO: MQAOa38Yz/8/w3tS9QLsBMsPGP8v0YHyUR1ulMTfgdIQRKcGxeyFyqmWzs8bva
	 alatwwlh1GoJexJkzsi650qZYQCSvstKpjqI4JCsrMbGs1gdfzHhvnKHeeq3zzkn6bWFphY5mIFb
	 nGLC4o8iXiCeP42Ao+y6bMdyKTwyKl6FIcrXuYzcInaR5LgC11VgkfO25lArITI84J99aD9z/O3P
	 /JuDZgBh10sitllD3LFi/rf2KruAKtBV7cfy6kQTqj1+bmz+tCpoZ8uihkfJ/nNAfBVOLR7dFxLU
	 gNtiiuod4z9xWwAelas5bTNYrBQ8yB7OWz/YcD7g7BexpBGqk/mw49mIinANRN0h/7TfUcd2AHBS
	 sPLP9EwZH5Eg0V3BHvFSS5WeyMRMhGKqw3OfQfu/XdHFm8N7e6BcOsPt0UIRSAUYnWhirXjXYCHh
	 oW1HM4uy045rOJAjNvUET4Qcpt5MmWUcrHXW2wsQxUZvtIglO11smCNyQ2EIyRIM2rdLp5naE4mO
	 jzd9dr0qMPabQ9aDJYyM1qhOfXnhJAAeX2YiDXCB/Trinfl7xuN345leXQVgAQy5O4kLv9NUvt6g
	 4eQc2LaKC1gDJtr4HJswuekCvXt5YXBJ7ys7JiiFcUPM083CxmB/bNY3lNfa1VTqx3+/TZEtQ3bq
	 Wcr+u76+HHsn/zoy98ZNh4pHa1fmjpjomXKvt/BHxitUgdsJEa4uTfz74AVe1SEP/6ABG/99NujN
	 1lfUOY7pJZ4iWOGFd4tJBxYkcUd+X6EIcbfsDPA/CM0FnHhS74k6OiaoI8W1kNJm2O7LaCqobOOm
	 FJxhwe5aopocISASLb5fpE//ehs239slHo+dYtU6IfLw7H8hZ07OxIp4geL02QE11YeArWh/NQYQ
	 fl4mIpbHKVTp/LnfWlmZq6A3qJ679GKaS5WoAopdLThr/4dq9IGgT1XS7nbgkZSCMyZTXmSi/Dse
	 4T29kn88/we3xRnJOsYrEphNBLSEOGJg/VnB7ckkywa9VGSPQrT5DE3PYs6BVNotakRhGpzluBCM
	 mbojQ5/0rVVCF5rh3/
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
From: LemonFan-maker <2254650260@qq.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add support for EmbedFire LubanCat 4 board
Date: Sun,  5 Jul 2026 21:50:12 +0800
X-OQ-MSGID: <20260705135014.1004166-1-2254650260@qq.com>
X-Mailer: git-send-email 2.55.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-320644-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[2254650260@qq.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[qq.com];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[2254650260@qq.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qq.com:from_mime,qq.com:dkim,qq.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BB98A70A272

The LubanCat 4 is a single board computer from EmbedFire based on the
Rockchip RK3588S SoC.

This series adds a device tree binding compatible and a board DTS
covering the peripherals needed to boot into a userspace from eMMC or
SD card with networking:

  - UART2 debug console
  - RK806 SPI PMIC with the full regulator tree, and RK8602/RK8603
    fan53555-family supplies for the big CPU cluster and NPU
  - eMMC (HS400 enhanced strobe) and SD card (UHS SDR104)
  - GMAC1 with RGMII PHY on MDIO1 (JLSemi JL21xx, described via the
    generic clause-22 compatible)
  - HDMI0 output through hdptxphy0 and VOP2
  - PCIe 2.0 x1 (mini PCIe slot) via combphy0_ps
  - USB 2.0 host ports and one USB 3.0 host port
  - HYM8563 RTC on I2C0
  - On-board heartbeat LED and PWM fan header

Peripherals that require drivers or bindings not yet in mainline
(ES8388 audio codec, FUSB302-based USB-C, MIPI-CSI, NPU/VDEC/VENC,
DSI panels, IR receiver) are deliberately left out and can be added
in follow-up series.

The board has been tested on hardware: it boots to userspace over the
serial console from both eMMC and SD card, and Ethernet on GMAC1 comes
up and passes traffic.

LemonFan-maker (2):
  dt-bindings: arm: rockchip: Add EmbedFire LubanCat 4 board
  arm64: dts: rockchip: Add EmbedFire LubanCat 4 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588s-lubancat-4.dts  | 782 ++++++++++++++++++
 3 files changed, 788 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts


base-commit: b143af2d0da7b01f82f8ea795a0623effab394e7
--
2.55.0


