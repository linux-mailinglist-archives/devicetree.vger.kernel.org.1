Return-Path: <devicetree+bounces-261396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vo0xDVm6fWmoTQIAu9opvQ
	(envelope-from <devicetree+bounces-261396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:16:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4CCC1333
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:16:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D942D3003379
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF85F23185D;
	Sat, 31 Jan 2026 08:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="nPCQ8Khy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbg151.qq.com (smtpbg151.qq.com [18.169.211.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7D618FDBE;
	Sat, 31 Jan 2026 08:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.169.211.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769847381; cv=none; b=IcUoQfSQ2W8Y145e3egSfn4by0y5qiovjuMAkKuop9H4JJ1ofWGfekotHz8WQAzJMSBZnLIYgOqOA5b6diUYFosT7ET3v0Dov0ZD99JrsJnvDSUjfOTvhv12ko33c0qAcoSLOXZSqjzcAMPgs51G3/WZQRZ9t3lFIMgWhHSTnV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769847381; c=relaxed/simple;
	bh=cjK6tkyq/IVl4WTP3/iTK/3UugahhllQBkPXjXh6p/c=;
	h=From:To:Cc:Subject:Date:Message-Id; b=iiu+/SnXZTuoXcxyIO9fzpyxkTrvwRwRVJKGDV84XykpH3nFcvb/37T/5yoeCDUGZp41up8ZfW1cuhp6hp6X1ko0CZand02//3kr8fSYVnCxFEo58yFlfCFctU704y0yCx1mO/V/d/L5u9ahw2dukaSQd6LmBOPN9smDG6NS9yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=nPCQ8Khy; arc=none smtp.client-ip=18.169.211.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1769847301;
	bh=E+EsTuEHR174ouDai6pNiVFrO9AkbuLjvnwAftkox8M=;
	h=From:To:Subject:Date:Message-Id;
	b=nPCQ8KhyO2R7u/A8MZBV9XNgrHsHk35HVHY1qU/bKp07FJGdjr+QvD9Lw75f17/qQ
	 5eQ0ptOUbvl5Gc4mkneb1P/DDltgS0FGUg5+Cd1JBpcEs1gcRAGG743JA93PX207TZ
	 i/Hs2cudHZPhlrbNJ8wmwA2kY/r7vAFFLSCE/Ef0=
X-QQ-mid: zesmtpsz2t1769847293t4e1f5b86
X-QQ-Originating-IP: 0sgqZlXrDgZhvFh1jB4WEJqQhQYA8i7Qa4ClPeX9O+g=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 31 Jan 2026 16:14:49 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9155805342981546293
EX-QQ-RecipientCnt: 22
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
	Andy Yan <andy.yan@rock-chips.com>,
	Andrew Lunn <andrew@lunn.ch>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/2] arm64: dts: rockchip: Add rk3576 evb2 board
Date: Sat, 31 Jan 2026 16:14:36 +0800
Message-Id: <20260131081438.100-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OXI3+eQbSeaRuvBfanxfX0KjpDdGTDhCFZoh+vWVCigc/c5dbU0Y/qOq
	/L7ZJCQ5XSyFlfXRwkxx3XOI7mgHtcDLlQF3LlFqa6hM2JYounrxCjlMGbyWEIeeDvYgWNo
	Gzx3q/z32DRbhgOndROx5dK2O+SWirh2sdA1ao58uleoI29my4QqWh5IKHePewEMOIQR6Mg
	bv5tmYaIhXDuYsqcErzIa+27ktAlktrF5XmwwXsNoiKVKGzlQ70A3wSE14rEAJFsSJfd48E
	sXfUEMFY8fMgcalqUNdkIu/NI7GZYfftDuwfIR/dtEEQGxjOILXfN0RRNc001hnlsKRcF2L
	cwzyOWCOWLnxMsWGK8yyJ20nJwrZRqgNBfx9enbZqdpa3vwzHvkowgsHR+vqBkNpRz+zNgl
	GiaSpUfn3vpLE2ZqKY2wUlde1c9FnmleDnx4/YfyqjF/NvMN5ipWAxSKe8rSu8Ec76plM0V
	8G2OoNFxyYkNe4SZUQC6QFeENjLrvOdZmLH/ML5YxboBbutuR3X2uete7MtTBajZQkywE3j
	jWBUjlObmlOc96AfoTYa+scJymz3hiBH3fqwnV7JYFlK0Q2PrzYZF1phxV+edPUJJyM4Tr7
	kYpujyZnctmPkx9xQoMndzNZxXl7mlx+xegKCAWVeLLrJkH49jcXi3Y8b2xhpFHiU7gq4z0
	sB/8dRwnlcyrsPwVT6+32A8K8dHHniJt7Ff6PvFeZgFzTe/nPGGLXlrOz6AR0PWDF9U/DJ5
	tla2Kh8mRwjokI0nXSJ+IRq2M7xH731bCrmvt+GdK8Z+LB21PXoOebErFInKpULiBZrLoio
	FuNOYm1SDLlAcf0Rv1UfTb0OGSmcyZdYkRnKre39MD+d3bBRIiuun3pdmvk0OFqGg98a6mK
	DOPW4owNGWBEtpre+8vr6j6kFfP5psjBApAsaqlKOJKReizO89aTA3xPD5wiVeuprnYcw18
	aDF3k7Dz6L+RtBK8/PtecoqGyvM1LCl+6pFi+ftnCt7cNDr+CHA5SOwM3iIKboSaqwDcu7x
	uJBTv1VUglJvrg7CZU9zV+/uzggBiuap8xJLLxlznYgpkh+ZNZ
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[airkyi.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[airkyi.com:s=altu2504];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261396-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,sntech.de,cherry.de,kwiboo.se,rock-chips.com,chainsx.cn,gmail.com,manjaro.org,collabora.com,lunn.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[airkyi.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kernel@airkyi.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AA4CCC1333
X-Rspamd-Action: no action

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

Changes in v5:
- Link to v4: https://lore.kernel.org/all/20260121015357.291-1-kernel@airkyi.com/
- Remove disable-wp for sdio.
- Add vmmc-supply for sdmmc.
- Remove tx-internal-delay-ps for RGMII PHY.

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
 .../boot/dts/rockchip/rk3576-evb2-v10.dts     | 1020 +++++++++++++++++
 3 files changed, 1024 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts

-- 
2.51.1


