Return-Path: <devicetree+bounces-264726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ACaD4BYjGm9lQAAu9opvQ
	(envelope-from <devicetree+bounces-264726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:22:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C85CC12347C
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:22:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0FCDE3005596
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3322E35B12B;
	Wed, 11 Feb 2026 10:22:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B5D30C60D
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770805373; cv=none; b=iyzRLEwjxzdq+k0gvCb+IqkvvEJR06d98ODm0weHZiSEZ/PHyM7bD5Qy5eCcVtVEBAdKS5J7K+acUeBzDlZg46KgCLYgiRD5qDIbf4ynFFhisG4ojg8VLMSnX+/M9V/2gm8h6Hk8P0xw4XJ5uYoHkdvn4DzY/hMzHaQx9LWZxTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770805373; c=relaxed/simple;
	bh=ByPFv9LSfPa2h98LgJFBNckt7yVpvetzmP0rKVGMRWE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=HW/1un6+84eiY0UjQF3Cac7DZiQX658mak+Pq2tDi4uNySO+22qQrGVZ+yx8xkc2gctz9EdEgJDRM3/W4ZzxBPhsfFaXqCdHg9seaPe2xgUcYJfMAY4M5F6c2RZ1iflqbxREjOjXVxZ26rGscAdwCEBV+jpVC6joim5hgZ3yyx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vq7Mp-0006CD-Ff; Wed, 11 Feb 2026 11:22:43 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vq7Mm-000ECR-2H;
	Wed, 11 Feb 2026 11:22:42 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vq7Mn-000000004Mm-45m0;
	Wed, 11 Feb 2026 11:22:41 +0100
Message-ID: <fcbc10e7657a20c08eb1fd50f0eedad0d6361fed.camel@pengutronix.de>
Subject: Re: =?UTF-8?Q?=E5=9B=9E=E5=A4=8D=3A?= [PATCH v8 2/3] reset: add
 Sky1 soc reset support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Gary Yang <gary.yang@cixtech.com>, "robh@kernel.org" <robh@kernel.org>, 
 "krzk+dt@kernel.org"	 <krzk+dt@kernel.org>, "conor+dt@kernel.org"
 <conor+dt@kernel.org>, Peter Chen	 <peter.chen@cixtech.com>,
 "unicorn_wang@outlook.com" <unicorn_wang@outlook.com>, 
 "inochiama@gmail.com"	 <inochiama@gmail.com>, "alchark@gmail.com"
 <alchark@gmail.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	 <linux-arm-kernel@lists.infradead.org>, cix-kernel-upstream
	 <cix-kernel-upstream@cixtech.com>
Date: Wed, 11 Feb 2026 11:22:41 +0100
In-Reply-To: <TYUPR06MB587663CF0612A0552C0029E8EF63A@TYUPR06MB5876.apcprd06.prod.outlook.com>
References: <20260209093344.2013693-1-gary.yang@cixtech.com>
		 <20260209093344.2013693-3-gary.yang@cixtech.com>
	 <1c77ab31e6ba8b6285a67a6f2877a415dc9f3d3b.camel@pengutronix.de>
	 <TYUPR06MB587663CF0612A0552C0029E8EF63A@TYUPR06MB5876.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264726-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[cixtech.com,kernel.org,outlook.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C85CC12347C
X-Rspamd-Action: no action

On Mi, 2026-02-11 at 01:56 +0000, Gary Yang wrote:
[...]
> As Krzysztof's advices, we will remove the file named sky1-system-control=
.c
> Make the syscon node directly bind to reset driver. Are you agree?
[...]
> >=20
> >=20
> >=20
> >=20
> We will delete sky1-system-control.c as Krzysztof's advices.
> Are you Agree?
[...]
>=20
> Yes, you're right. We intend to adopt the advices from conor. But I saw t=
he new syscon scheme from spacemit,k210-syscon
> and these comments from Krzysztof. We will delete sky1-system-control.c a=
s Krzysztof's advices. Are you Agree?

I agree.

regards
Philipp

