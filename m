Return-Path: <devicetree+bounces-306776-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cjNZANtgIWqHFQEAu9opvQ
	(envelope-from <devicetree+bounces-306776-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 13:26:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F41363F688
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 13:26:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=realtek.com header.s=dkim header.b="D/apseyt";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306776-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-306776-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=realtek.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D09F3015E21
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 11:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE6AB40FDA2;
	Thu,  4 Jun 2026 11:19:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F64D3B19B4;
	Thu,  4 Jun 2026 11:19:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780571946; cv=none; b=Rcd50uXQvAPDm1RYzjXkflZqcfNZFoD1LYRHNu3jasEd7Psahjik2mc192wYEW/j4/E/mHuw8Y7fn0utWXmxF1YX8Swq4Eufnj9KpHRnE/8AGMoySZfS4RVW5sTm2mMUDVYC2VmJNNF+TemTkIg7Go2nzGB1dApWag/H8O//qNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780571946; c=relaxed/simple;
	bh=u1kco34Lol/oCTrNfc+a+VxZLuw+LBlTZhFJaEpTsOE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=SA8mCSSjgZpRh2C4lDaIXKVUSdezLIYM8lsVFmSqvByiAZV2M0iD9S7qfEKpewPzlY04fsIDqOWhMk+eR0hPvKztPpnHmr2qexA3P5QDx4VFXduHsRXG4aCgBy1iQh1vC8lTiyS1Sgm4YfWW9IjxA/ZHBcHwkqDt5Nr9ePFGZvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=D/apseyt; arc=none smtp.client-ip=211.75.126.72
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 654BILZE0299928, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1780571901; bh=HAdTMLfTcVQ4191gVd1/1rV3DUrFsL9dsaDiRayHQP0=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:Content-Type;
	b=D/apseytm8byWbAdVC7HRIuiReSeiOBvaLafRHImzrn93c/3MLQ76jjdntrwogCTH
	 zgIwMZ+FtmK4FiC00Z1rO/vvuHFIh0C8dNhld/hOTQSOYK11KF7qACLMnfZxFTjdqw
	 TB22gJBJhjjaXUH3AzvPaB3Hc6XliH4lXIoxpUWg50GdFyi/vDodwpw8u8VP2ibM0V
	 7/ET+VNmxyM54TA7uUMfDhyAdntfAmteoks3N+OwM81TwXPEVIc5t62DXmWVLSOk2h
	 2+T78cRAN8FA6SY4nXwnlII9haTwJ/G+h1erKLGY2Y8OeqCZfYMaiWsuJWt0TLeJYE
	 OZSBRZsK+EPBA==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.28/5.94) with ESMTPS id 654BILZE0299928
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 4 Jun 2026 19:18:21 +0800
Received: from RTKEXHMBS06.realtek.com.tw (10.21.1.56) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Jun 2026 19:18:21 +0800
Received: from RTKEXHMBS05.realtek.com.tw (10.21.1.55) by
 RTKEXHMBS06.realtek.com.tw (10.21.1.56) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Jun 2026 19:18:21 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS05.realtek.com.tw
 (10.21.1.55) with Microsoft SMTP Server id 15.2.2562.17 via Frontend
 Transport; Thu, 4 Jun 2026 19:18:21 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
	<tychang@realtek.com>
CC: <eleanor.lin@realtek.com>, <cy.huang@realtek.com>,
	<stanley_chang@realtek.com>, <james.tai@realtek.com>, <afaerber@suse.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<linux-realtek-soc@lists.infradead.org>
Subject: [PATCH 0/3] soc: realtek: Add Realtek DHC I/O level detector support
Date: Thu, 4 Jun 2026 19:18:17 +0800
Message-ID: <20260604111821.975624-1-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[realtek.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[realtek.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_FROM(0.00)[bounces-306776-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tychang@realtek.com,m:eleanor.lin@realtek.com,m:cy.huang@realtek.com,m:stanley_chang@realtek.com,m:james.tai@realtek.com,m:afaerber@suse.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-realtek-soc@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,realtek.com:mid,realtek.com:from_mime,realtek.com:dkim];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[realtek.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F41363F688

Hi all,

This patch series introduces support for the Realtek DHC I/O level detector.

The Realtek DHC I/O level detector is a hardware block responsible for
detecting the I/O signaling levels (1.8V or 3.3V) of various IP blocks
such as RGMII, SDIO, eMMC, CSI, SD, UART1, and AIO.

The driver reads the hardware registers to determine the current I/O voltage
levels. Based on these detection results, it dynamically selects and applies
the appropriate pinctrl states to ensure the correct pad configurations are
used for each interface.

Thanks,
Yu-Chun

Tzuyi Chang (2):
  dt-bindings: soc: realtek: Add Realtek DHC I/O level detector
  soc: realtek: Add driver for DHC I/O level detector

Yu-Chun Lin (1):
  arm64: dts: realtek: Add I/O level detector

 .../realtek/realtek,rtd1625-io-detect.yaml    |  77 +++++++++
 MAINTAINERS                                   |   1 +
 arch/arm64/boot/dts/realtek/kent-pinctrl.dtsi | 108 +++++++++++++
 arch/arm64/boot/dts/realtek/kent.dtsi         |  28 ++++
 drivers/soc/Kconfig                           |   1 +
 drivers/soc/Makefile                          |   1 +
 drivers/soc/realtek/Kconfig                   |  21 +++
 drivers/soc/realtek/Makefile                  |   2 +
 drivers/soc/realtek/rtd-io-detect.c           | 152 ++++++++++++++++++
 9 files changed, 391 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/realtek/realtek,rtd1625-io-detect.yaml
 create mode 100644 arch/arm64/boot/dts/realtek/kent-pinctrl.dtsi
 create mode 100644 drivers/soc/realtek/Kconfig
 create mode 100644 drivers/soc/realtek/Makefile
 create mode 100644 drivers/soc/realtek/rtd-io-detect.c

-- 
2.43.0


