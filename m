Return-Path: <devicetree+bounces-293227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uI3jHBsj+mlvKAMAu9opvQ
	(envelope-from <devicetree+bounces-293227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 19:04:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DD74D1C26
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 19:04:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63D793026164
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 17:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E1BA481248;
	Tue,  5 May 2026 17:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="NAcz8RqX"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C7D7261A;
	Tue,  5 May 2026 17:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778000663; cv=none; b=pqO1eQKtBCESWAGsOMJkinCXmXJUqCHPDtLeCDNAITTAZuhdZonNgvTZTyHcEGQE5CNM1iLQlPCry8Z2v8cGkfKZnCodxmRiRn3SgcFIFqit2u9Q797tXyallnFJjGNTsRqT4supGR1kOKoBdI6Xk/CLDJ8vMuWY4oGRuPvPktc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778000663; c=relaxed/simple;
	bh=9lfezBPhRAK/hxvozxuJYAt+VS6kjv8z2owOYUqc2eo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TooaOgloF6HTYWwUSUeDYNDoJxjLv5oXBSTomTbr4h2hFNroTAddiFR5kZbZ1KmrIXuh80ApOHSaDRaQDe+PCydZjVjirpw2NTvmg7v7QihacyHkvLNP10nwgo9qHRMLRIbSIugIuGEuYKJ/VCpn9Vw4GmxxnKWSrz/xGNRBwAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=NAcz8RqX; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=93gcAeK+pFauxx7NJKjEKC10Wy8T4t0qkj8Q59r5KXI=; b=NAcz8RqXkqY5dOxTG9K1dh/z/f
	52boxihZa0OxOBTr7wVTslPE+R0F5KYS2UGdNYUXW4wh+hCPsuND80dRa8FpMux5t1bPzmG39tK4J
	zzbx8H5vAUmf/lFQmajJjfw8N3CrJn4L8U59oSTyvdTd0gOlxdt+CXNMTJSVHUdDlBdephBLnQeog
	ppEQMXggCNno0ikQ4s9JIdbbiiQc6c+t8VCOqZ+xv+yACb3fisEG2popgjk5e/w+5v41AH1y1gMaC
	joKorJNIOBF+y8+TFSlz7UdYnEZ/tcReyEXKSupcJxJdMZfa4PS2MMcKjTzjetZJUeHzMPv1NC6Wh
	M8ZRbXjA==;
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org
Cc: neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	jonas@kwiboo.se
Subject: [PATCH v2 0/5] rockchip: Add USB 2.0 support for RK3528
Date: Tue,  5 May 2026 19:04:05 +0200
Message-ID: <20260505170410.3265305-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C2DD74D1C26
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293227-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:dkim,sntech.de:mid]

This series adds support for USB 2.0 on Rockchip RK3528 to the
Innosilicon usbphy driver.

The usb3 support has already been merge for the naneng combophy
last year.

Changes in v2:
- rebase on top of v7.1-rc1
- split off dwc3 compatible and dts changes
- add error handling to regmap_write (Vinod)
- v1 is here
  https://lore.kernel.org/linux-rockchip/20250723122323.2344916-1-jonas@kwiboo.se/

Jianwei Zheng (1):
  phy: rockchip: inno-usb2: Add support for RK3528

Jonas Karlman (4):
  dt-bindings: phy: rockchip,inno-usb2phy: Require GRF for RK3568/RV1108
  phy: rockchip: inno-usb2: Simplify rockchip,usbgrf handling
  dt-bindings: phy: rockchip,inno-usb2phy: Add compatible for RK3528
  phy: rockchip: inno-usb2: Add clkout_ctl_phy support

 .../bindings/phy/rockchip,inno-usb2phy.yaml   |  44 +++-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 191 +++++++++++++-----
 2 files changed, 176 insertions(+), 59 deletions(-)

-- 
2.47.3


