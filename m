Return-Path: <devicetree+bounces-279693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBf9HrNcwmlKcAQAu9opvQ
	(envelope-from <devicetree+bounces-279693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:43:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D73305CAC
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 10:43:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E03C531B12A1
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 09:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C9E3DCD90;
	Tue, 24 Mar 2026 09:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="EWrRR1rQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F79F38BF91;
	Tue, 24 Mar 2026 09:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774345033; cv=none; b=CLOiiHjipynFWzwZB48ZvhZ11nBARTtrTCCVRNGuVESio+fsF9MlIrwSoAGO7TEV9QAwMN0wRp0QKfMdQJsLjk0RULypGqz8OFudCDXX86yaXB/9/oDyN23Wr6UdB5X0dZScUeaACEQ5GexRnwMqD2nddyM8mJU+bingqyHOQfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774345033; c=relaxed/simple;
	bh=qhfdqUpvvf+xnZF8LVueACe+0I6G/3V3OA2TDquY6/c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Rhw9hJ3GWAX0hUqUhTLeCFqJqd5QlQbwzQIYVSYcxIWMaAvsmE4H7KLm6ZD1keoOIOn5yBUvaI4Do4eJgzfebVIjiPnxez6arlqbo5UZDMWj4K8ggdfVjXjb+4M6UnIRFzpd5EgaotwJjQEAOIIwtO9s15O2x4bm4LdM3YikAsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=EWrRR1rQ; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb.corp.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch [83.173.201.248])
	by mail11.truemail.it (Postfix) with ESMTPA id ECE28275B2;
	Tue, 24 Mar 2026 10:37:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1774345030;
	bh=DvJK1euQ58BmCjF2JtjA/A0aPnvcmwVI/8gbFy25IXc=; h=From:To:Subject;
	b=EWrRR1rQ64mXdW9b1OLWzxTwYbwEDo23+osRAkztOXHmPZUHTgL5qM4y6Q89JJib9
	 Ka1SGHHM1Ct09ehJ/0dIrs6ADh7ZhSdi1Iak5JuB57Jn+TxsogbbFApQ2z/RA6ERCm
	 4cT9u4kY6YiIkjraHtnx4mWMelNG7JvHOsVR8rSnEZ0zUD1saI4bY99sltVuIORkon
	 FZtf9io1D+ILqS3fKXMxKRbChm1px7xOBYOhNBeMKrKKhm97D2FVEuFiZRO7FCgr8C
	 rkFBv0HZG1JwIhgWf36zF5Qr/advNWbGThOd+3aF8W/SUcrspQnp/5U2koOX5I8c0K
	 z5sXvlOwdANxg==
From: Francesco Dolcini <francesco@dolcini.it>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/7] arm64: dts: ti: verdin-am62[p]: Add Zinnia
Date: Tue, 24 Mar 2026 10:36:55 +0100
Message-ID: <20260324093705.26730-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279693-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[dolcini.it:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toradex.com:email,toradex.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,dolcini.it:dkim,dolcini.it:mid]
X-Rspamd-Queue-Id: D5D73305CAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Francesco Dolcini <francesco.dolcini@toradex.com>

Add Zinnia Carrier Board mated with Verdin AM62 and Verdin AM62P.

It features 1 x RS232, 1 x RS485, 1 x CAN, 3 x isolated digital I/O,
2 x 1GBit/s Ethernet, a mini PCIe slot with USB / SIM card connector
for a modem, USB and SD card interfaces.

Some small fixes and cleanup are done on the SOM dtsi file, in preparation
for the Zinnia addition.

Link: https://www.toradex.com/products/carrier-board/zinnia-carrier-board

Francesco Dolcini (7):
  dt-bindings: arm: ti: Add verdin am62/am62p zinnia board
  arm64: dts: ti: k3-am62-verdin: Fix SPI_1 GPIO CS pinctrl label
  arm64: dts: ti: k3-am62-verdin: Split UART_2 pinctrl group
  arm64: dts: ti: k3-am62-verdin: Add Zinnia
  arm64: dts: ti: k3-am62p-verdin: Split UART_2 pinctrl group
  arm64: dts: ti: k3-am62p-verdin: Add SPI_1_CS as GPIO
  arm64: dts: ti: k3-am62p-verdin: Add Zinnia

 .../devicetree/bindings/arm/ti/k3.yaml        |   4 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 .../boot/dts/ti/k3-am62-verdin-zinnia.dtsi    | 493 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62-verdin.dtsi    |  22 +-
 .../dts/ti/k3-am625-verdin-nonwifi-zinnia.dts |  22 +
 .../dts/ti/k3-am625-verdin-wifi-zinnia.dts    |  22 +
 .../boot/dts/ti/k3-am62p-verdin-zinnia.dtsi   | 469 +++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62p-verdin.dtsi   |  29 +-
 .../ti/k3-am62p5-verdin-nonwifi-zinnia.dts    |  22 +
 .../dts/ti/k3-am62p5-verdin-wifi-zinnia.dts   |  22 +
 10 files changed, 1098 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62-verdin-zinnia.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-verdin-nonwifi-zinnia.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-verdin-wifi-zinnia.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62p-verdin-zinnia.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62p5-verdin-nonwifi-zinnia.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am62p5-verdin-wifi-zinnia.dts

-- 
2.47.3


