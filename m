Return-Path: <devicetree+bounces-284307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBlRCm54z2kewgYAu9opvQ
	(envelope-from <devicetree+bounces-284307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 10:21:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD3C392061
	for <lists+devicetree@lfdr.de>; Fri, 03 Apr 2026 10:21:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 65BBB3013CA4
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2026 08:19:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 766BF371D00;
	Fri,  3 Apr 2026 08:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="F6hB5Jdr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AD126FDBF;
	Fri,  3 Apr 2026 08:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775204396; cv=none; b=siKyah7578nQwty5A044Fq7lgTnoF13np9MBlu9Tf2MT4YRVCt7itM9cKSBw5GKwxqc179EBO59LJuchcPDMqrcxuXKXzAI9JucyQ72deL2P9/af+cnAd7lWVLsWKaE52koaAdOm8NHbrhFK4QZ5HVDh6Nn2/zT59Sshw8oQnWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775204396; c=relaxed/simple;
	bh=XJ9LQ4s6TnrkKaXwodpZ5o36l4ySGjegAn5TmdzxXGk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=NLUJ0qS2XHX/1C1KF1gFxj2VLiorLDbOcpRTgyFSHhmMk4QuZL0plYYY+crAc1NWe6rhBvej0HNzucYvjUjZiwjsEvmwAeFFb/F4FUnFQzZiWM5HVSs9BkUGQ5SyU+1jR69J5l02xsSPupro4os3yzyqX+YV8haDWJHPEljPWvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=F6hB5Jdr; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id B7CCE4E428CA;
	Fri,  3 Apr 2026 08:19:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 88482603C1;
	Fri,  3 Apr 2026 08:19:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 44CED104502AB;
	Fri,  3 Apr 2026 10:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775204391; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=Lxv/KM4QBdN+qoM0q8jf+z4WWd2AC3JR0U0nTb/A3eA=;
	b=F6hB5JdrwfXSjFksrqsxC11MQsaSmL6BKBsVvZH5aUela+3KlPzq839s8ek97RKs/WzVeI
	xxKyMBR0Xln+0TyX60Wuc7fmAa7MiL15fQhX/A8yHHk+vkUjCrVWLFUwMW9Y4rxxrZ167n
	ejqwX0AQN+QACuzHGEdisip9P2cGjtbE4ZG7OfxV1hAvdRVjB5aaJJhX6TxuoaSzzfvvNO
	L5Xckmw1pQNXNUtUI6nodJ01+GTXVefs/ldLo1ZXo4UssopIpv/r5ij7p1ozSxBc+ghQ3S
	/913bKKZ+QTRojt5olYEFRrEILngT65R2T15t48P+/B/wE812eFxDVE35Dukeg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Sascha Hauer
 <s.hauer@pengutronix.de>,  Pengutronix Kernel Team
 <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>,  Daniel
 Baluta <daniel.baluta@nxp.com>,  Shawn Guo <shawnguo@kernel.org>,
  devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS),  imx@lists.linux.dev (open list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE),  linux-arm-kernel@lists.infradead.org (moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE),
  linux-kernel@vger.kernel.org (open list)
Subject: Re: [PATCH 1/2] ARM: dts: imx35: remove empty clock-names for
 nand-controller@bb000000
In-Reply-To: <20260403074634.774234-1-Frank.Li@nxp.com> (Frank Li's message of
	"Fri, 3 Apr 2026 03:46:30 -0400")
References: <20260403074634.774234-1-Frank.Li@nxp.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Fri, 03 Apr 2026 10:19:47 +0200
Message-ID: <87o6k05ucc.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284307-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:email,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: 2AD3C392061
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/04/2026 at 03:46:30 -04, Frank Li <Frank.Li@nxp.com> wrote:

> clock-names is empty in nand-controller@bb000000, which is wrong.
>
> Remove it to fix below CHECK_DTBS warings:
>   arch/arm/boot/dts/nxp/imx/imx35-pdk.dtb: nand-controller@bb000000 (fsl,imx35-nand): Unevaluated properties are not allowed ('clock-names' was unexpected)
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

