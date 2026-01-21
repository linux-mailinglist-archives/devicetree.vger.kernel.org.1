Return-Path: <devicetree+bounces-257690-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJYIHU4ycGkSXAAAu9opvQ
	(envelope-from <devicetree+bounces-257690-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:56:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A074F6A6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:56:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 96684B60941
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6700332572F;
	Wed, 21 Jan 2026 01:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="uadAQwnY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3B7C320393;
	Wed, 21 Jan 2026 01:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768960532; cv=none; b=AN4mxNufbhK+zNAHZdHS6SvEuW9fny53xV+HZn2I5kgNkMZsBQJfR/dakh48RIz4/zYFr6RGhaEZ/FH3VIDS3x+IvPMBoLUJnJEbBND12x6XlQuErMLeHDKuMuU1c59nk1K6cfSL2IgDFIy79vVKyJdSqsOuFK9L3jAqqmJ2ao4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768960532; c=relaxed/simple;
	bh=8iikIqq2O9lK4mqJZ4o2znQUuCWy7RGzIZV3LKsOuik=;
	h=From:To:Cc:Subject:Date:Message-Id; b=D3okMCFCN2jS7cPnYQl+H9s92lE707xebSHy+Th/a88KFRiYK5BsWKmpZkIJs/f7PspAG/obnuPy5kt/j2aBbboJ//KlQZr711JR5mJVKuJrMhuj710+H1YYONwzkNbrCJrF65qyrP3MmUWOoQVNVIQ0EsqafsDcMympPDnPI54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=uadAQwnY; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1768960450;
	bh=WZq7zIP7/86ZusWmfGwlEuQbY/grzwNqfRgaU1ANOgM=;
	h=From:To:Subject:Date:Message-Id;
	b=uadAQwnYj9uDJdocpzElGXKwxCahIq8KGRKuToX6UEztVmOg8XbbLawEPucvuaL5j
	 qxTczyBb0uRtIf5B8kX/AikwWBhzQadrlVGutwxxS2ercjkXA1zSTJMqTp67EMpleN
	 xyFGC4t10q/uLkWz/hQPAd9oLJ8Y7o+4YrhDxX4s=
X-QQ-mid: zesmtpsz3t1768960443te5516434
X-QQ-Originating-IP: ZazM54AfZm2RdLLOT68vt/up/bzHgtB6O8CyHXWTUiM=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 21 Jan 2026 09:54:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16337528738947552159
EX-QQ-RecipientCnt: 21
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Hsun Lai <i@chainsx.cn>,
	John Clark <inindev@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@collabora.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Wed, 21 Jan 2026 09:53:55 +0800
Message-Id: <20260121015357.291-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OWISOlifo4Hy2L7zlMA5PXytslX1F8lCFf0c2cb0emBivGiLxZc1zxYN
	aEFdXtkSKsMGC87CnbuwxnFva3ONuiVQwcR2MatNQtVmBNU8pVWP47zBuSmAGnQD6FsoIB0
	d3/9KXMd3AiB9z4Clp3LearMwcy1LhZndtOvegsU7+BS/JHDqpYZyNchFpPzUFk1tc4RH/+
	O0HtwafRh3c1OcvDvhRJeODzlcsECCOi4URvO8hwlo8WX7tVeJ3kqd06p3QCOHnlOv6oR27
	dzZQJTbIyIfTa0X1R6ZESfD7MtHhZDUBSq0xpAgABMvCKWCtJjYHUCZVCWbeXukxoEg24lt
	kf+pNoADXT5tdGkmr17HfGSoGxoCOE31DABDgsgHA+tqs3+j/douUpGsGnJRLqyVsSaJhol
	JZ4CS7V+3XGNvgT0G2rvCMazfHbXTwjvfonYnhig35geabVdsp3ke34EwVD6429/6+ZPCng
	A2PuB3YPIvnVS2ctxHNIZD20aiIXSes9lWvHR9rAsPIfjuI6xkoa6KDvyatqBNeYV0/89ma
	po9DQJ8ag6AqWrOBVV+9A0edt3z+NT0+lFvjR1uWZxEM0xY4hEKn4N70I65AZ5kiNnwFYkw
	45NxZu3APJVMXOZtDSWvI1TnRkFogs6KrxjgU1mXhe7KJw0oFKsNSA7QWCwZPT5i2gzyLv+
	FYhukI9bFksiX0RCnS99gcqBfqQ0/gwjWd0bVbkek68Bk2GGSZylRIK38SNWtAQLcWf+3rn
	PGNDyRYR4Ave/rCedSLCueJOyxEOglnu/IsYVO4gqS9OyvzfUy7al+QVE+ihr03/vsCGfjM
	d88EJ18Cc6wAHxuSyfNfxMYhmrggqjd7oPJgCxCN1udLn9dsK3eC8OPbDIG//5GmXjb7HS0
	Buby02ZP+dtrMTgiTwmGHbE5cEYezT+2PXeMEFB+QRqtQtu6q30KlRzb5xIEJ2EIJJ47pV2
	1CYiu6AWKvW8Qp6I+95bm82cV97m2TQ6T38FpgXzp0n7kn7JvX8swi2S1DziLCb9siTz9gT
	2XdE45DT+U+yaMkcT4cQiW334bqJAGni3t49Tpqw==
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257690-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,cherry.de,kwiboo.se,rock-chips.com,chainsx.cn,gmail.com,manjaro.org,collabora.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[airkyi.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[airkyi.com,none];
	R_SPF_SOFTFAIL(0.00)[~all];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,rock-chips.com:email,airkyi.com:mid,airkyi.com:dkim]
X-Rspamd-Queue-Id: 07A074F6A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Hi,

This series add support for rk3576 evb2 board.

General features for rk3576 evb2 board:
    - Rockchip RK3576
    - LPDDR4/4X
    - eMMC5.1
    - RK806-2x2pcs + DiscretePower
    - 1x HDMI2.1 TX / HDMI2.0 RX
    - 1x full size DP1.4 TX (Only 2 Lanes)
    - 2x 10/100/1000M Ethernet
    - 5x SATA3.0 7Pin Slot
    - 2x USB3.2 Gen1 Host
    - 3x USB2.0 Host
    - WIFI/BT
    - ...

To make the USB hub work, the additional patch from usb-next is required:

[0] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?h=usb-next&id=00fcc9c86a134c488fd857b5460a7925228272c1
[1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?h=usb-next&id=fa3bb5011f33cccd246072954e64d64483d0d774

Changes in v4:
- Link to v3: https://lore.kernel.org/all/20260112022823.91-1-kernel@airkyi.com/
- Move the USB hub code into a separate patch series, and that series have
  already been merged into usb-next.
- Fix supply and reset for usb hub.
- Add cd-gpios for sdmmc.

Changes in v3:
- Link to v2: https://lore.kernel.org/all/20260107070322.323-1-kernel@airkyi.com/ 
- Add binding for WCH CH334/CH335 hub controller.
- Add alias for mmc.
- Rename some usb vbus regulator.
- Add DP regulator.
- Change gmac phy-mode to rgmii-id.
- Add target-supply for sata.
- Change vcc-supply for ufshc.
- Add usb hub.
- ...

Changes in v2:
- Link to v1: https://lore.kernel.org/all/20260104023703.118-1-kernel@airkyi.com/
- Enable hdmi_sound and sai6.
- Add more cpu-supply.
- Use regulator to control sata power.
- Remove "cap-mmc-highspeed" prop in sdmmc.
- Add regulator supply for ufshc.
- Add the missing vcc3v3_hubreset regulator.
- Add otg capability for usb_drd0_dwc3.

Chaoyi Chen (2):
  dt-bindings: arm: rockchip: Add rk3576 evb2 board
  arm64: dts: rockchip: Add rk3576 evb2 board

 .../devicetree/bindings/arm/rockchip.yaml     |    4 +-
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3576-evb2-v10.dts     | 1004 +++++++++++++++++
 3 files changed, 1008 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts

-- 
2.51.1


