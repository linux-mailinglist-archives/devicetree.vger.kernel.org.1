Return-Path: <devicetree+bounces-296722-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKCLGRA8BGoqFgIAu9opvQ
	(envelope-from <devicetree+bounces-296722-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:53:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AADB52FFA5
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:53:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6651430237EE
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 08:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D753DD868;
	Wed, 13 May 2026 08:53:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxhk.zte.com.cn (mxhk.zte.com.cn [160.30.148.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8ACB3E559F;
	Wed, 13 May 2026 08:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.30.148.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778662382; cv=none; b=HdCwv+CJ+0spaYmk29OAmJkNV8/VYllcAAjXm8BB5dXbHwtPwzTwqX4lmMZIbiiRumXf0wNJM5CmS626LDDkjsK+hU+R7aynTIkLwYvufAdrzBdauJRE076vaEsOJBA2Qk40Fq+OGa2VAQWbn0zO1wGkRgkK40KqHDr9dRxVJ8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778662382; c=relaxed/simple;
	bh=LCQZ7IgefQNuqiwq6tn/bPunTmmYEUCJ0ca8hHlExk8=;
	h=Message-Id:References:Date:Mime-Version:From:To:Cc:Subject:
	 Content-Type; b=fvvh6tuYteVgM7p/lzvgFbqkr2zs+O6ecuCgMw9ODK/GYIl5hALVBRODb3AUpXdnhrMhVuAk3NYDZRaMAsb5YAEsR55dhZ56rLhpn8qk4h74xQ0c0OhnfMULPdSSX3bY8ND6papfL3CavhRtPVlb0P0AHbEoTgiiCngId3Mtp0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn; spf=pass smtp.mailfrom=zte.com.cn; arc=none smtp.client-ip=160.30.148.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=zte.com.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zte.com.cn
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4gFnKl0490z5B1K3;
	Wed, 13 May 2026 16:52:59 +0800 (CST)
Received: (from root@localhost)
	by mse-fl2.zte.com.cn id 64D8qugc044740;
	Wed, 13 May 2026 16:52:56 +0800 (+08)
	(envelope-from liu.qingtao2@zte.com.cn)
Message-Id: <202605130852.64D8qugc044740@mse-fl2.zte.com.cn>
Received: from njy2app03.zte.com.cn ([10.40.13.14])
	by mse-fl1.zte.com.cn with SMTP id 64D8hsld067319;
	Wed, 13 May 2026 16:43:54 +0800 (+08)
	(envelope-from liu.qingtao2@zte.com.cn)
Received: from mapi (njy2app01[null])
	by mapi (Zmail) with MAPI id mid204;
	Wed, 13 May 2026 16:43:57 +0800 (CST)
X-Zmail-TransId: 2af96a0439cd9b7-06b0a
X-Mailer: Zmail v1.0
References: 20260213093334.9217-1-qtliu@mail.ustc.edu.cn,20260213093334.9217-3-qtliu@mail.ustc.edu.cn,3387b1bd-c945-4b9d-915a-baf9412f656f@kernel.org,20260428233949705AHdTSCRS2r_rFbGYOwDb5@zte.com.cn,20260430171826967JqSqSGvBgq68Xq-SNewYu@zte.com.cn
Date: Wed, 13 May 2026 16:43:57 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
From: <liu.qingtao2@zte.com.cn>
To: <krzk@kernel.org>
Cc: <gregkh@linuxfoundation.org>, <jirislaby@kernel.org>, <robh@kernel.org>,
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
X-MAIL:mse-fl2.zte.com.cn 64D8qugc044740
X-MSS: AUDITRELEASE@mse-fl2.zte.com.cn
X-TLS: YES
X-SPF-DOMAIN: zte.com.cn
X-ENVELOPE-SENDER: liu.qingtao2@zte.com.cn
X-SPF: None
X-SOURCE-IP: 10.5.228.133 unknown Wed, 13 May 2026 16:52:59 +0800
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 6A043BEA.002/4gFnKl0490z5B1K3
X-Rspamd-Queue-Id: 5AADB52FFA5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJ_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[zte.com.cn : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linuxfoundation.org,kernel.org,nabladev.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,infradead.org,glider.be,quicinc.com,analog.com,sartura.hr,dimonoff.com,bp.renesas.com,gmail.com,baylibre.com,vger.kernel.org,lists.infradead.org,zte.com.cn];
	TAGGED_FROM(0.00)[bounces-296722-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[zte.com.cn:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mse-fl2.zte.com.cn:mid,bootlin.com:url];
	RCPT_COUNT_TWELVE(0.00)[37];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liu.qingtao2@zte.com.cn,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

> On 13/02/2026 10:33, LiuQingtao wrote:
> > From: Wenhong Liu <liu.wenhong35@zte.com.cn>
> >
> > This commit introduces a serial driver for the LRW UART controller
> Please do not use "This commit/patch/change", but imperative mood. See
> longer explanation here:
> https://elixir.bootlin.com/linux/v6.16/source/Documentation/process/submitting-patches.rst#L94

Thanks. I change subject to "Add support for the ZTE LRX UART controller with the following features"
in the following patches.

> >
> > Key features implemented:
> > - Support for FIFO mode (16-byte depth)
> > - Baud rate configuration
> > - Standard asynchronous communication formats:
> > * Data bits: 5, 6, 7, 8, 9 bits
> > * Parity: odd, even, fixed, none
> > * Stop bits: 1 or 2 bits
> > - Hardware flow control (RTS/CTS)
> > - Multiple interrupt reporting mechanisms
> >
> > Signed-off-by: Wenhong Liu <liu.wenhong35@zte.com.cn>
> > Signed-off-by: Qingtao Liu <liu.qingtao2@zte.com.cn>
> Mismatched DCO/SoB.
> Run checkpatch on your code.

Thanks for your notice. This patch is co-developed by Qingtao Liu.
SoB will be modified in v2 patches:

Co-developed-by: Qingtao Liu <liu.qingtao2@zte.com.cn>
Signed-off-by: Qingtao Liu <liu.qingtao2@zte.com.cn>
Signed-off-by: Wenhong Liu <liu.wenhong35@zte.com.cn>

> > ---
> > MAINTAINERS | 3 +
> > drivers/tty/serial/Kconfig | 33 +
> > drivers/tty/serial/Makefile | 1 +
> > drivers/tty/serial/lrw_uart.c | 2822 ++++++++++++++++++++++++++++++
> > include/uapi/linux/serial_core.h | 3 +
> > 5 files changed, 2862 insertions(+)
> > create mode 100644 drivers/tty/serial/lrw_uart.c
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index ad6acbe24544..a97fbd205f75 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -15041,6 +15041,9 @@ R: Qingtao Liu <liu.qingtao2@zte.com.cn>
> > L: linux-serial@vger.kernel.org
> > S: Maintained
> > F: Documentation/devicetree/bindings/serial/lrw,lrw-uart.yaml
> > +F: drivers/tty/serial/Kconfig
> > +F: drivers/tty/serial/Makefile
>
> Why do you claim you maintain these files?
>

Oh sorry, now i only added these files in v2 patch.
+F: Documentation/devicetree/bindings/serial/zte,lrx-uart.yaml
+F: drivers/tty/serial/lrx_uart.c


> > +F: drivers/tty/serial/lrw_uart.c
> >
> ....
> > +
> > +static int lrw_uart_probe(struct platform_device *pdev)
> > +{
> > + struct lrw_uart_port *sup;
> > + struct resource *r;
> > + int portnr, ret;
> > + unsigned int clk;
> > + unsigned int baudrate;
> > +
> > + /*
> > + * Check the mandatory baud rate parameter in the DT node early
> > + * so that we can easily exit with the error.
> > + */
> > + if (pdev->dev.of_node) {
> > + struct device_node *np = pdev->dev.of_node;
> > +
> > + ret = of_property_read_u32(np, "current-speed", &baudrate);
>
> Test your code/DTS - there is no such property allowed and you would see
> warnings on DTS.
>
> Best regards,
> Krzysztof

Oh, i've lost this property in dt-bindings. It will be added in the
v2 patches and no more warnings.

