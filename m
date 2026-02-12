Return-Path: <devicetree+bounces-264946-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKK+B/OVjWnd4wAAu9opvQ
	(envelope-from <devicetree+bounces-264946-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:57:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C7912B992
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:57:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDB463049716
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E9BA2DCF71;
	Thu, 12 Feb 2026 08:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="aae3Ubgu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908C32DB7A1
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770886611; cv=none; b=AzSzpan0JJbu684UcLwmuWZetvTsZBPpCFO1XMwYV6OK6rufgJAAX8lr4oPa8dSiPVx92GNbBVCN3jQJos6ZPieLPnbdnAFxFH/JXmy978kyrvuUVVbpIHVGi6IJikLX7d2+R3aKH9ke9I7u2uZafO43PK7WUnL+bKUlZDlySk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770886611; c=relaxed/simple;
	bh=hDOH8RiBsoa8QQWGvfBy20zXdX9QAWhlDlGbkxYJQGk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=AxpwtKmEi8xaXQagrlm7DpmgpvagkcQ8OMHfCNNYF3KgxH2nGz2+bYLbvvm9dVQ+hB/WxWpkpZUawGJaDUbY0qWrt6QcE68KknHZI86mPjmJlKNWn7fXAIDkZOgMRENMQVRNJXlX1NAg63/SFEtboTPVgQj5zfk8oI50271NBVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=aae3Ubgu; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id DCAAEC23D90;
	Thu, 12 Feb 2026 08:56:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 95A38606CA;
	Thu, 12 Feb 2026 08:56:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E9DAD11971525;
	Thu, 12 Feb 2026 09:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770886606; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=0ldWFSho7cgvpQS3kw2NKCZEi+w6HLlHSMQtO3IQVz4=;
	b=aae3UbguXIhpWxFQQi5HZqISIhQQGKUqxkIEuntQznrTF4HZSltGDmKmvpmLvY+vPwYccj
	5wAj/jFC3tDuBq+AZpd9eyHLMR0GZwpWGsKGyLGQbfQVu1BX4/+T54klACgBF1DLGxfWXw
	4AjJHrQpukpjOqwat6Moc7G1GVsUOn14tPwMtIt6A0ln3LgfKt9zAUNgx4rTqANZ9JHsd+
	ngJQkUf0qz0VfbQIb4hOEkwoddhYkBNNJMUAdzovu3syPptpSLabzi3WF10KLHwuHvwD4y
	GpLfs+Nw/CPeEbtDQ0u/IC+B6WM7setVLyWqh8ckdKSoWAfWx/TEsfGycX+SFA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Richard Weinberger <richard@nod.at>,  Vignesh Raghavendra
 <vigneshr@ti.com>,  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Sascha Hauer
 <s.hauer@pengutronix.de>,  Pengutronix Kernel Team
 <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>,  Uwe
 =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
  linux-mtd@lists.infradead.org,  devicetree@vger.kernel.org,
  imx@lists.linux.dev,  linux-arm-kernel@lists.infradead.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] RM: dts: imx: set #size-cells to 0 to align with
 nand-controller.yaml
In-Reply-To: <20260211-imx25_nand_dtb_warnings-v1-2-2f06aaa1e3b9@nxp.com>
	(Frank Li's message of "Wed, 11 Feb 2026 16:19:40 -0500")
References: <20260211-imx25_nand_dtb_warnings-v1-0-2f06aaa1e3b9@nxp.com>
	<20260211-imx25_nand_dtb_warnings-v1-2-2f06aaa1e3b9@nxp.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 12 Feb 2026 09:56:44 +0100
Message-ID: <873436z6er.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-264946-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[nod.at,ti.com,kernel.org,pengutronix.de,gmail.com,lists.infradead.org,vger.kernel.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,bootlin.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,devicetree.org:url,bb000000:email]
X-Rspamd-Queue-Id: 75C7912B992
X-Rspamd-Action: no action

On 11/02/2026 at 16:19:40 -05, Frank Li <Frank.Li@nxp.com> wrote:

> Set #size-cells to 0 to align with nand-controller.yaml. Remove the
> redundant empty clock-names property from the NFC node.
>
> Fix below CHECK_DTBS warning:
> arch/arm/boot/dts/nxp/imx/imx25-karo-tx25.dtb: nand-controller@bb000000 (fsl,imx25-nand): #size-cells: 0 was expected
>         from schema $id: http://devicetree.org/schemas/mtd/nand-controller.yam
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Besides the prefix which misses an "A",

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

