Return-Path: <devicetree+bounces-296720-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNJQCns8BGqsGAIAu9opvQ
	(envelope-from <devicetree+bounces-296720-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:55:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D5E53002E
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:55:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 69D5C30CAACE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 08:52:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1BB83E5583;
	Wed, 13 May 2026 08:52:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxct.zte.com.cn (mxct.zte.com.cn [183.62.165.209])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356F73E51C8;
	Wed, 13 May 2026 08:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=183.62.165.209
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778662370; cv=none; b=Zx22vWPjomCGrHqeDH3XOmZ0mGMRyYXXc3og6jI/cIA8LImy03sxaXucuUV4q3gfckd3jWSK/2148ncB+LambB+5wToOBJcS0gUHUF5J9RSiEtbWSE0vLL/jzlcUHYy4ST1hKqY17sX5k2VlGXs6Xjq8/QUVZO7kVcn32AXrXpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778662370; c=relaxed/simple;
	bh=YzWmPufUuxBYwQhgzEoT45s30WChmOdVZQRn6SfYa5w=;
	h=Message-Id:References:Date:Mime-Version:From:To:Cc:Subject:
	 Content-Type; b=OAdBOzYUT4zicmzcs3+5KXpEzz8MO6U7/7pEDrgOdqjcVh5q1aXP+y+9YoH1GyinlgHY60WT/yDHkuqVCTpNr00s+63waVEQDkn2e/qcrJ1InfMo8Mnrbyg1SG2ornJZsZ0pKdlDnvea3j3FqcKjFpH0Vz7lyoBL3HERxstAtkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn; spf=pass smtp.mailfrom=zte.com.cn; arc=none smtp.client-ip=183.62.165.209
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zte.com.cn
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4gFnKL53nsz51Sdp;
	Wed, 13 May 2026 16:52:38 +0800 (CST)
Received: (from root@localhost)
	by mse-fl2.zte.com.cn id 64D8qdE5044241;
	Wed, 13 May 2026 16:52:39 +0800 (+08)
	(envelope-from liu.qingtao2@zte.com.cn)
Message-Id: <202605130852.64D8qdE5044241@mse-fl2.zte.com.cn>
Received: from njy2app01.zte.com.cn ([10.40.12.136])
	by mse-fl2.zte.com.cn with SMTP id 64D8iPxu027365;
	Wed, 13 May 2026 16:44:25 +0800 (+08)
	(envelope-from liu.qingtao2@zte.com.cn)
Received: from mapi (njb2app07[null])
	by mapi (Zmail) with MAPI id mid204;
	Wed, 13 May 2026 16:44:27 +0800 (CST)
X-Zmail-TransId: 2aff6a0439eb2c1-f7422
X-Mailer: Zmail v1.0
References: 20260213093334.9217-1-qtliu@mail.ustc.edu.cn,20260213093334.9217-3-qtliu@mail.ustc.edu.cn,2026031201-dense-unrefined-7bf5@gregkh,202605061057582963JK3yxV44CRPCHHVos6kc@zte.com.cn
Date: Wed, 13 May 2026 16:44:27 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
From: <liu.qingtao2@zte.com.cn>
To: <gregkh@linuxfoundation.org>
Cc: <krzk@kernel.org>, <jirislaby@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <marex@nabladev.com>,
        <pjw@kernel.org>, <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <alex@ghiti.fr>, <rdunlap@infradead.org>, <geert+renesas@glider.be>,
        <quic_zongjian@quicinc.com>, <arturs.artamonovs@analog.com>,
        <robert.marko@sartura.hr>, <hvilleneuve@dimonoff.com>,
        <thierry.bultel.yh@bp.renesas.com>, <julianbraha@gmail.com>,
        <flavra@baylibre.com>, <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        <linux-serial@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <liu.wenhong35@zte.com.cn>, <dai.hualiang@zte.com.cn>,
        <deng.weixian@zte.com.cn>, <jia.yunxiang@zte.com.cn>,
        <bai.lu5@zte.com.cn>, <yang.susheng@zte.com.cn>,
        <shen.lin1@zte.com.cn>, <zuo.jiang@zte.com.cn>,
        <hu.shengming@zte.com.cn>, <gao.rui@zte.com.cn>, <tan.hu@zte.com.cn>,
        <liu.qingtao2@zte.com.cn>
Subject: =?UTF-8?B?UmU6IFtQQVRDSCB2MSAyLzJdIExSVyBVQVJUOiBzZXJpYWw6IGFkZCBkcml2ZXIgZm9yIHRoZSBMUlcgVUFSVA==?=
Content-Type: text/plain;
	charset="UTF-8"
X-MAIL:mse-fl2.zte.com.cn 64D8qdE5044241
X-MSS: AUDITRELEASE@mse-fl2.zte.com.cn
X-TLS: YES
X-SPF-DOMAIN: zte.com.cn
X-ENVELOPE-SENDER: liu.qingtao2@zte.com.cn
X-SPF: None
X-SOURCE-IP: 10.5.228.133 unknown Wed, 13 May 2026 16:52:38 +0800
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 6A043BD6.001/4gFnKL53nsz51Sdp
X-Rspamd-Queue-Id: B1D5E53002E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[zte.com.cn : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nabladev.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,infradead.org,glider.be,quicinc.com,analog.com,sartura.hr,dimonoff.com,bp.renesas.com,gmail.com,baylibre.com,vger.kernel.org,lists.infradead.org,zte.com.cn];
	TAGGED_FROM(0.00)[bounces-296720-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mse-fl2.zte.com.cn:mid,zte.com.cn:email];
	RCPT_COUNT_TWELVE(0.00)[37];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liu.qingtao2@zte.com.cn,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

> On Fri, Feb 13, 2026 at 05:33:34PM +0800, LiuQingtao wrote:
> > From: Wenhong Liu <liu.wenhong35@zte.com.cn>
> >
> > This commit introduces a serial driver for the LRW UART controller
> >
> > Key features implemented:
> > - Support for FIFO mode (16-byte depth)
> > - Baud rate configuration
> > - Standard asynchronous communication formats:
> >   * Data bits: 5, 6, 7, 8, 9 bits
> >   * Parity: odd, even, fixed, none
> >   * Stop bits: 1 or 2 bits
> > - Hardware flow control (RTS/CTS)
> > - Multiple interrupt reporting mechanisms
> >
> > Signed-off-by: Wenhong Liu <liu.wenhong35@zte.com.cn>
> > Signed-off-by: Qingtao Liu <liu.qingtao2@zte.com.cn>
> > ---
> >  MAINTAINERS                      |    3 +
> >  drivers/tty/serial/Kconfig       |   33 +
> >  drivers/tty/serial/Makefile      |    1 +
> >  drivers/tty/serial/lrw_uart.c    | 2822 ++++++++++++++++++++++++++++++
>
> This really is a totally new uart?  No relation to any existing devices
> at all?  Why would that be created?
>
> Anyway, this doesn't seem to build properly, how was it tested?

Yes, it`s a new uart for lrx SoC. The lrx SoC with its related docs will be released soon.

The uart TX & RX test environment:
1.Kernel: linux-next, commit 4cd074ae20bbcc293bbbce9163abe99d68ae6ae0(Tue May 5 14:57:23 2026 +0200),
with CONFIG_SERIAL_LRX_UART and SERIAL_LRX_UART_CONSOLE selected.
2.GCC: 14.1.0.
3.SoC: lrx SoC.


> > --- a/include/uapi/linux/serial_core.h
> > +++ b/include/uapi/linux/serial_core.h
> > @@ -231,6 +231,9 @@
> >  /* Sunplus UART */
> >  #define PORT_SUNPLUS    123
> >  
> > +/* LRW UART */
> > +#define PORT_LRW    124
>
> Why is this id needed?
>
> thanks,
>
> greg k-h

Thanks for notice. This id is not needed actually.
According to https://lore.kernel.org/all/20231008001804.889727-1-jcmvbkbc@gmail.com/, the specific type
of the port is not important to the userspace.

