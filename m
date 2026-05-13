Return-Path: <devicetree+bounces-296719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2G/YDNE7BGoqFgIAu9opvQ
	(envelope-from <devicetree+bounces-296719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:52:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9F852FF79
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:52:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2CF49300F759
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 08:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A453E51C8;
	Wed, 13 May 2026 08:52:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxhk.zte.com.cn (mxhk.zte.com.cn [160.30.148.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E183E3DA7;
	Wed, 13 May 2026 08:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.30.148.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778662348; cv=none; b=kG6KA1krMcfrAtZogLC5qYL6acbJOzYW1CWLoBTKfe0ardE5MxsgNkoXyTSKjd8uspgh4ZwHTpHOain/msKpI4tuzHyvsRMCFRMdyQ3yu9sE6xPUFuDWbOPm6iKhqboXG4rUaIydrrphShVdmhnme+vVIGxdwtxdPWGRH0dOEEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778662348; c=relaxed/simple;
	bh=2bHwL7HovP/wjjJek58/xWl2n1ulzzpwAj/alZW0RbA=;
	h=Message-Id:References:Date:Mime-Version:From:To:Subject:
	 Content-Type; b=lwnGuYMWecqLAOrXLfRN8Rr5PyFRXIFOzGlKVsfJV5lFEaYW9i1ICiO6xkC3LXeSOvXUsL7Ybx9OhDhNLDTvMRnNdg0paVASn7ioRo8OqTr9VSpS4lS6AElsoqI+d1qjQXx5zdVYd94bjiWi8ZL3Jm45sbJLy3xEKHeShn64bbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn; spf=pass smtp.mailfrom=zte.com.cn; arc=none smtp.client-ip=160.30.148.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zte.com.cn
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4gFnK54BJkz8Xs6q;
	Wed, 13 May 2026 16:52:25 +0800 (CST)
Received: (from root@localhost)
	by mse-fl1.zte.com.cn id 64D8qMgL084414;
	Wed, 13 May 2026 16:52:22 +0800 (+08)
	(envelope-from liu.qingtao2@zte.com.cn)
Message-Id: <202605130852.64D8qMgL084414@mse-fl1.zte.com.cn>
Received: from njb2app05.zte.com.cn ([10.55.22.121])
	by mse-fl1.zte.com.cn with SMTP id 64D8keOm073495;
	Wed, 13 May 2026 16:46:40 +0800 (+08)
	(envelope-from liu.qingtao2@zte.com.cn)
Received: from mapi (njy2app03[null])
	by mapi (Zmail) with MAPI id mid204;
	Wed, 13 May 2026 16:46:42 +0800 (CST)
X-Zmail-TransId: 2afb6a043a72b45-f9ca4
X-Mailer: Zmail v1.0
References: 20260512182743109yj_vhS7Rf-VNB9fdL1f8Z@zte.com.cn
Date: Wed, 13 May 2026 16:46:42 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
From: <liu.qingtao2@zte.com.cn>
To: <krzk@kernel.org>, <gregkh@linuxfoundation.org>, <jirislaby@kernel.org>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <marex@nabladev.com>, <pjw@kernel.org>, <palmer@dabbelt.com>,
        <aou@eecs.berkeley.edu>, <alex@ghiti.fr>, <rdunlap@infradead.org>,
        <geert+renesas@glider.be>, <quic_zongjian@quicinc.com>,
        <arturs.artamonovs@analog.com>, <robert.marko@sartura.hr>,
        <hvilleneuve@dimonoff.com>, <thierry.bultel.yh@bp.renesas.com>,
        <julianbraha@gmail.com>, <flavra@baylibre.com>,
        <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <linux-serial@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <liu.wenhong35@zte.com.cn>, <liu.fei16@zte.com.cn>,
        <dai.hualiang@zte.com.cn>, <deng.weixian@zte.com.cn>,
        <jia.yunxiang@zte.com.cn>, <he.yilin@zte.com.cn>, <bai.lu5@zte.com.cn>,
        <yang.susheng@zte.com.cn>, <shen.lin1@zte.com.cn>,
        <zuo.jiang@zte.com.cn>, <hu.shengming@zte.com.cn>,
        <gao.rui@zte.com.cn>, <tan.hu@zte.com.cn>, <liu.qingtao2@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIIHYyIDAvMl0gQWRkIFpURSBMUlggVUFSVCBkcml2ZXI=?=
Content-Type: text/plain;
	charset="UTF-8"
X-MAIL:mse-fl1.zte.com.cn 64D8qMgL084414
X-MSS: AUDITRELEASE@mse-fl1.zte.com.cn
X-TLS: YES
X-SPF-DOMAIN: zte.com.cn
X-ENVELOPE-SENDER: liu.qingtao2@zte.com.cn
X-SPF: None
X-SOURCE-IP: 10.5.228.132 unknown Wed, 13 May 2026 16:52:25 +0800
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 6A043BC9.000/4gFnK54BJkz8Xs6q
X-Rspamd-Queue-Id: CB9F852FF79
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[zte.com.cn : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linuxfoundation.org,nabladev.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,infradead.org,glider.be,quicinc.com,analog.com,sartura.hr,dimonoff.com,bp.renesas.com,gmail.com,baylibre.com,vger.kernel.org,lists.infradead.org,zte.com.cn];
	TAGGED_FROM(0.00)[bounces-296719-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mse-fl1.zte.com.cn:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCPT_COUNT_TWELVE(0.00)[39];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liu.qingtao2@zte.com.cn,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From 9eba3be2e9b4d5c77956258e3c5db95049c3a895 Mon Sep 17 00:00:00 2001
From: Wenhong Liu
Date: Mon, 12 May 2026 10:15:55 +0800
Subject: [PATCH v2 0/2] Add ZTE LRX UART driver

This patch series adds support for the ZTE LRX UART controller.

Patch 1: Devicetree binding documentation
Patch 2: UART driver implementation

Key features:
- FIFO mode (16-byte depth)
- Baud rate configuration
- Hardware flow control (RTS/CTS)
- DMA support
- Multiple interrupt mechanisms

Wenhong Liu (2):
dt-bindings: serial: Add zte,lrx-uart
tty: serial: Add LRX UART driver

Co-developed-by: Qingtao Liu
Signed-off-by: Qingtao Liu
Signed-off-by: Wenhong Liu

../bindings/serial/zte,lrx-uart.yaml         |   51 +
MAINTAINERS                                   |    8 +
drivers/tty/serial/Kconfig                    |   33 +
drivers/tty/serial/Makefile                   |    1 +
drivers/tty/serial/lrx_uart.c                 | 2822 +++++++++++++++++
5 files changed, 2915 insertions(+)
create mode 100644 Documentation/devicetree/bindings/serial/zte,lrx-uart.yaml
create mode 100644 drivers/tty/serial/lrx_uart.c

--
2.27.0

