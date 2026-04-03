Return-Path: <devicetree+bounces-284308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FjcIhZ5z2kewgYAu9opvQ
	(envelope-from <devicetree+bounces-284308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 10:23:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C34A23920CC
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 10:23:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D49733030113
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 08:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23266371D00;
	Fri,  3 Apr 2026 08:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="LZ7oUbaE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9435037188D
	for <devicetree@vger.kernel.org>; Fri,  3 Apr 2026 08:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775204413; cv=none; b=M8ZNs4VhCKAosn97fa9mq65uO03LBd+Ax/3gOkD0AS8CyvJ11sepKxExzcnrOkwxQ4ZARL//kF0SRG3BDWGy96GalNAtm/RmENH4HeTBZ4EQfqBZhNhoMVIBDYZN3nVDJby1NhfhZqUBxcVc1Kp+H0UsT92k7wEERGiihMe40MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775204413; c=relaxed/simple;
	bh=Wk39R5GHYD6wYOiYd+T5UK3erJyg4bo4XtH0Z9D8Mms=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=PFlLFa6Wi01ZVNa6Za5G9p5RuHMVHd7+BtYrcXu7XOYT7b0/0FCIDOTPGHW3UE//VhcjIsNj0xSRYxnFKHt8Nw1eCXqetVaVz3oSuX8p/q5sP6edL3b8hLe9AIRoPnH7Mp3EMgwQXh8f45IxSSt+540T2Lx8IPrgPkuV1KTQvfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=LZ7oUbaE; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 2C222C59F5A;
	Fri,  3 Apr 2026 08:20:42 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 51CEB603C1;
	Fri,  3 Apr 2026 08:20:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5F7671045013D;
	Fri,  3 Apr 2026 10:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775204409; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=1lEA07+/hkDJ8JJLpB7l06BYU/2a5Curlp04Uz301j4=;
	b=LZ7oUbaEToEHCxN6FYUkEf3my3laRHBinlvDgV4xdlrX8K+3GjBUPsQB9rlYaWP958Yxgo
	NZzqarCO2SP05QFWNYxgU/BT54wResKkf5ahC+kntJltW+vIXNrzqKd2NgMfuQO7IVU1T1
	DGa2C7nWnv9BdDHqEQFEjwGBgYgzeXtmnqOlyt/QiT4j82jdYqN9vLBufpBgQFSOjeSbfA
	GOrjauNWJ9k7m4NhYl4MJ0K34Kc6DRnUGrXknnKqCbta0P7l3/EhiA05Bjw01r9BAXiVB8
	6iKIZzPpj4vWxPVS9uDlpwCbtFNNzuxcMGLj07LqNBnm8aNDtTnYKar1sefn9g==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Sascha Hauer
 <s.hauer@pengutronix.de>,  Pengutronix Kernel Team
 <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>,  Shawn Guo
 <shawnguo@kernel.org>,  Daniel Baluta <daniel.baluta@nxp.com>,
  devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS),  imx@lists.linux.dev (open list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE),  linux-arm-kernel@lists.infradead.org (moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE),
  linux-kernel@vger.kernel.org (open list)
Subject: Re: [PATCH 2/2] ARM: dts: imx25: remove empty clock-names for
 nand-controller@bb000000
In-Reply-To: <20260403074634.774234-2-Frank.Li@nxp.com> (Frank Li's message of
	"Fri, 3 Apr 2026 03:46:31 -0400")
References: <20260403074634.774234-1-Frank.Li@nxp.com>
	<20260403074634.774234-2-Frank.Li@nxp.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Fri, 03 Apr 2026 10:20:07 +0200
Message-ID: <87ika85ubs.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284308-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: C34A23920CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/04/2026 at 03:46:31 -04, Frank Li <Frank.Li@nxp.com> wrote:

> clock-names is empty in nand-controller@bb000000, which is wrong.
>
> Remove it to fix below CHECK_DTBS warings:
>    arch/arm/boot/dts/nxp/imx/imx25-pdk.dtb: nand-controller@bb000000 (fsl,imx25-nand): Unevaluated properties are not allowed ('clock-names' was unexpected)
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

