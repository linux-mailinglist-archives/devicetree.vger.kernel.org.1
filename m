Return-Path: <devicetree+bounces-319643-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rWEzIV/hRmpHfAsAu9opvQ
	(envelope-from <devicetree+bounces-319643-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:08:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 235BB6FD237
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:08:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="Vy7ms8h/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319643-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319643-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5CAF30302B1
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 22:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35C503B7753;
	Thu,  2 Jul 2026 22:08:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1306D3A257A
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783030104; cv=none; b=ayvu4+TWmEhykofL7rw26h0ABc9WRpOxIfjvsE7IL7wIZma/SuTy9skgtRBXhs7Aw6rGKDk6H5m3oJ58SBdAec3dhNseb9y+wpgKBkqu+llcRozUF/ZOcprSHAMfnvJZ3raqrIp3D0I8J2PiZadv10L1W8jDLAC1fWMnzLu2YEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783030104; c=relaxed/simple;
	bh=S9/U4jv4gvyrJg2Cinwm8MkLhzvYyCrQEPUiugRE58Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MSg3dhtVg8kFngjnWoEPAbup4izxHkjH9q0LmvAIg6so3iIY2r8K9yzWa6WgJWqPOtPG2oO64gP4ZeIfCc2RnYHRdLyvnh53iJegQsfMXZqfyc9cxaubRXnjQcANt38aGzuvHdlPPp+PcYIN8hXmsXRRthRd0Fmmr2Fr4EQGOkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vy7ms8h/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC375C19425;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783030103;
	bh=S9/U4jv4gvyrJg2Cinwm8MkLhzvYyCrQEPUiugRE58Y=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=Vy7ms8h/zKRkFR7UL6A+GM3ukT8IRGhvdObS6CxVTO/TixntHbwp5n5kzZiknymus
	 z89bUR/L7KOV46Yuf9gEqQPEPQMVQC/9Nh7o8MhjLJfhpGsws94VDXHlHdxAPzLvY/
	 1/IxEhOwiNLqBUtAeyWtwSOe44SXomooGnfRKu6aQRfQa7pTz6y4E5KwBnC+3NirsW
	 ekpec1O4QDvhJq/C5ciKbT2+onKSUZPVgH/AFojFatKCMjOA9oKmGiILDOWWFia6vq
	 HDKKf6OGpMUrA4Is8FrUDc81oNLPgQBQhz5y52negna9+dwmq4n9k2vFEUsywpgwRE
	 XLGKow9s4CcHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A9AC43458;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Subject: [PATCH 00/12] arm64: dts: rockchip: Add NanoPi M6 board
Date: Fri, 03 Jul 2026 00:07:15 +0200
Message-Id: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQqAIBBA4avErBNMSKGrRIt+ZmqCNLQiEO+e1
 fKDx4sQ0DMGaIoIHi8O7GxGVRYwLr2dUfCUDUoqLY2shO2t21lsWhAhklG1oslA7nePxPf3arv
 f4RxWHI93ACk9ub5yKG0AAAA=
X-Change-ID: 20260701-nanopi-m6-ffeef7252fd7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783030102; l=2357;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=S9/U4jv4gvyrJg2Cinwm8MkLhzvYyCrQEPUiugRE58Y=;
 b=vtoeVDnJWvf8aZzWUjPvlsU8NjaCcMgHBFAWCklOLE5bdWPrZJYzxUK7uC8hf7GB0eCgapn8u
 lxQ+md2WllmBo40xCbkPB5QK8q0s4nMZw/FZ79rcKvIETXFYu+abhl/
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
Reply-To: joachim.eastwood@gmail.com
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319643-lists,devicetree=lfdr.de,joachim.eastwood.gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:heiko@sntech.de,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:joachim.eastwood@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:joachimeastwood@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[joachim.eastwood@gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 235BB6FD237

This patch series add support for the NanoPi M6. This board is very
similar to the NanoPi R6C and R6S boards which are already supported.

Main differences:
* M.2 M-key slot with PCIe (Also present on R6C)
* M.2 E-key slot with PCIe and USB (from hub)
* 1 additional USB 2.0 port from an on-board USB hub
* RT5616 audio CODEC

Patch 2 and 3 moves a bit code around. Please let me know if those two
should be squashed together.
Next few patches adds some missing bits the common nanopi dtsi file.
While the final patch adds support for NanoPi M6.

All changes have been verified using the schematics for M6, R6C and R6S.
Only M6 have been boot and runtime tested. Tester for R6x are welcome.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
Joachim Eastwood (12):
      dt-bindings: arm: rockchip: add FriendlyElec NanoPi M6
      arm64: dts: rockchip: refactor rk3588s-nanopi* to support M6
      arm64: dts: rockchip: move NanoPi R6 code into common dtsi
      arm64: dts: rockchip: rk3588s-nanopi: add missing sdmmc cd pinctrl
      arm64: dts: rockchip: rk3588s-nanopi: remove pull up on rtc int pin
      arm64: dts: rockchip: rk3588s-nanopi: add missing pcie rst pinctrl
      arm64: dts: rockchip: rk3588s-nanopi: pcie2x1l2: add clkreq
      arm64: dts: rockchip: rk3588s-nanopi: remove always-on from vdd_npu_s0 reg
      arm64: dts: rockchip: rk3588s-nanopi: remove useless vcc_3v3_pcie20
      arm64: dts: rockchip: rk3588s-nanopi: add gmac1 add phy-supply
      arm64: dts: rockchip: rk3588s-nanopi: remove bogus vcc5v0_usb regulator
      arm64: dts: rockchip: add support for NanoPi M6 board

 .../devicetree/bindings/arm/rockchip.yaml          |   3 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts | 200 ++++++
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 792 --------------------
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts |   1 +
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts |   1 +
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi   | 800 +++++++++++++++++++++
 7 files changed, 1005 insertions(+), 793 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260701-nanopi-m6-ffeef7252fd7

Best regards,
--  
Joachim Eastwood <joachim.eastwood@gmail.com>



