Return-Path: <devicetree+bounces-292997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EJLEdnL+Wn3EAMAu9opvQ
	(envelope-from <devicetree+bounces-292997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 12:52:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBCA4CBE0A
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 12:52:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 224763088521
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 10:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4A4406280;
	Tue,  5 May 2026 10:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="IhGQGDuq"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D2D2DCF45;
	Tue,  5 May 2026 10:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777977617; cv=none; b=AxRI9xGG+FhD6CAqpvH0bPr+rn4QLP5lpqZqVB53lxesdr5FGAMha8o45NP3rjjYqMuC+MHas2icO1N5id8v/dkHizGsCj2BLMfLpbsGrWHRUD3DAWM3UzKyEeV1JrvLhkFolZrtcfDtC75RqCMstyr857vhXBSL2hmQC0C4SrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777977617; c=relaxed/simple;
	bh=21KkK8fuHwyUMnWeb63n9WmVc90yAKVk7g5A9u1COZg=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=OmdFDE3xvb7zlmSmDDBiWOiRlyYQNM0XlG2yUVnbCTbLgzmy9veK1ZZ5zZTFqXi12iyriaah/KRQqXkowt7qgNJjwbvX/NqU6VyHJ/UyHF3Sbzq6YdCBBKqd+3ElkLU+tRz2sa5XZpj1TnaNX7Xyd0DYXfOckbyQdK5Cywan+Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=IhGQGDuq; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 645AdtrU71157145, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1777977595; bh=7ipe0+lXh5EphXIInZY0Ql0rK52tFhFsSOH18o40fNw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type:
	 Content-Transfer-Encoding;
	b=IhGQGDuqEphjZt3v0D0E5oAgug1vhvMAFMR4iE7pR8TvUgmOKBny9B6Ab4MzYJJfG
	 ZeHqnAiqua8GMVkUVRtV9c53zQ+FK8vQzWZrDohF+6uKGERkrarLhIx/vbLbN87YCP
	 Pp38KSSKLgaBC4R/8IvIR0jkUgYN2Ca/lUonQ42WlusRn0evkNQCVcoOlBwPdp3qUy
	 5KOp/zD5eywsEJU8yY+q11FHjDidG9xVugo3hXa9jwBwudPd1QcYpxYt6AS4L3VJ7i
	 pO5LI6wWd8HYiunQjxLyr71oaGdZnwA5xeh9SseFIWP7ibhcbyW0Dh/O+LsQfTrDZ7
	 XvMC68mK/eZ5A==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.27/5.94) with ESMTPS id 645AdtrU71157145
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 5 May 2026 18:39:55 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Tue, 5 May 2026 18:39:55 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Tue, 5 May 2026 18:39:55 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <soc@kernel.org>
CC: <james.tai@realtek.com>, <eleanor.lin@realtek.com>, <afaerber@suse.com>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-realtek-soc@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <cy.huang@realtek.com>, <stanley_chang@realtek.com>
Subject: [PATCH 0/3] ARM/Realtek: Add maintainers and pinctrl support for RTD1625
Date: Tue, 5 May 2026 18:39:52 +0800
Message-ID: <20260505103955.1010130-1-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 5EBCA4CBE0A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[realtek.com,none];
	R_DKIM_ALLOW(-0.20)[realtek.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[realtek.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292997-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[realtek.com:dkim,realtek.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]

This series consists of patches that have already been reviewed on LKML.

Add pinctrl support for the RTD1625 SoC and update the ARM/Realtek
architecture MAINTAINERS file to reflect current maintainers and include
the pin controller drivers.

Best regards,
Yu-Chun

Krzysztof Kozlowski (1):
  ARM: realtek: MAINTAINERS: Include pin controller drivers

Yu-Chun Lin (2):
  MAINTAINERS: Add maintainers for ARM/REALTEK ARCHITECTURE
  arm64: dts: realtek: Add pinctrl support for RTD1625

 MAINTAINERS                           |  5 ++++-
 arch/arm64/boot/dts/realtek/kent.dtsi | 20 ++++++++++++++++++++
 2 files changed, 24 insertions(+), 1 deletion(-)

-- 
2.34.1


