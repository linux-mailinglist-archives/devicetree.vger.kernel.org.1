Return-Path: <devicetree+bounces-309699-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gCtDJA9HKWr0TQMAu9opvQ
	(envelope-from <devicetree+bounces-309699-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:14:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3F7668A17
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:14:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arndb.de header.s=fm3 header.b=QWHYOVHk;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="a hxuvUq";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309699-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309699-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=arndb.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6CE0C307483F
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5891402427;
	Wed, 10 Jun 2026 11:09:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b1-smtp.messagingengine.com (fhigh-b1-smtp.messagingengine.com [202.12.124.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D07A3F7AB4
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 11:09:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781089771; cv=none; b=GizttOoI3/x07lREOgcwFJxtQoYXqBrlUcbroGPAMpMkMyF5hFBtoeNZqzyTW9Uwda5xnjmeTDseNd7a0+n/Vm51FTsU/0Gs3SGDcHLzbe1Kkj/eSw/zJ4vKmSpDKv4xp9xUD2isX4ZtDIXkGV8FKfn+7Ck0zhahN8mS12f74FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781089771; c=relaxed/simple;
	bh=mw99y74tTiT+Yv7ARtfFvLrX/Ph+tYkk1fxLoJ5G0P8=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=ioJb5Z4hH5nGCt8wr84+HZCj0Gsqqwh0vxSlx9lq6+Rv2SOV+odb/cftVy0NhvLcGc5XjVOJ2jwKKRqeAXpZafKVf2J71TwivYEk90qgp4SRNg7Uzdd21+HJRZ7ZZ6DfFIPCN9fytmmwtT4av27o1CMp7EhOSPuWDgn0pl6gPKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de; spf=pass smtp.mailfrom=arndb.de; dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b=QWHYOVHk; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=ahxuvUqe; arc=none smtp.client-ip=202.12.124.152
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 020B07A013A;
	Wed, 10 Jun 2026 07:09:24 -0400 (EDT)
Received: from phl-imap-05 ([10.202.2.95])
  by phl-compute-04.internal (MEProxy); Wed, 10 Jun 2026 07:09:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1781089764;
	 x=1781176164; bh=V+gvRaZjGPl4C6oecnTGKPnx3zPKeQQ92TgKB4vAoi8=; b=
	QWHYOVHkoX9nsCdcvxIHsT29dynYif0i7kSUf3YKBh4mP0AimU66iJ4qGZDtkedq
	MU+vXaOHMl9fNfmxeVb9T8rWfA25CjgFwYpfrO6d5UK33mBVJRB6ZHRoPa8u3EBz
	M4Kl9OwWFr1e6TKSUHU3//qOKvXQgeDnwSMaArRLHKNtcvd2KgguYeNlZ6fych54
	LxtOPbex1Z3IQiWPECmzyFyFiQyliHqpq1BMjvcWYBG38TDaKQpOdUvI7KO+MSuZ
	Xhifzr4N7mx7Qo7QwqxfeFjtrpJdJwMatCGSt/9ikDstYd7nb8tG5HMKbsW4VZ7s
	w28Ib5Z3PfTl+pVBXIMM5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1781089764; x=
	1781176164; bh=V+gvRaZjGPl4C6oecnTGKPnx3zPKeQQ92TgKB4vAoi8=; b=a
	hxuvUqe0wyaOLp3hcPFMEenC+nHPvTZT3VGhXSYmtxG/nIPC53E9r65Y5NnB8jn+
	yViflYdwaRX4adezxjJMQwQ4iuRIAxaauTvshBmk44eKrymF6qaFTTBb9M9ettEB
	yoSWK1BQT+zrW9K4DXQ5xooE+iEYJzOgeq1umq2NG4t7Z5Xg1cofmy5V0rUcFqhc
	PqOJI1PCnEsUbda9QMuSAU7KDtp7iC3oDbi4eUddbkmmDVR55ORp/XJcnRsyeWeB
	iCN4PIThztovxzumjeE0jxH8ybwOIrz9tsdk0IRBrUfrGV+fX3fcxK0I3otr4s8R
	Vc1YEPjHyDwUwG3mCd0Rg==
X-ME-Sender: <xms:5EUparwfu2wb_AfHnwAmR67-Z_Joyy-qRGRpPtRjpFaHy8VsOHTJWQ>
    <xme:5EUpauE-Do-xFH9QDgkjR4fjCsKB9QuuCSBXc714SO2KEphGgo3QT8sarDtA2iupJ
    gmg6uhukL81A-zwI3S6PRAlNby6tEgUaPfwA7pVZZgkAg8MAZxwWBw>
X-ME-Proxy-Cause: dmFkZTERsvZj9LHqlkxNtYF3dmGxkHADfxwPXY+fsKBUII4XRvequ9shdUxzWId4G9Vpfv
    vmDOrRyUkgPYWshTqX8lO5zULYIl95x/qLSSJbxORvSmu8NZxttnjaZKM/P7xwXwwr633K
    uSX8xlobDWDEw2psTkZ1TwI2smnzzc4y86II9ayYHztsk/TK+TXRS2lmpFV2G6tbyDVEeK
    w5v1saa0YUOiKmcQS13tNp9VSa3eeKcWsfPMsecCGPOPz1L36lXEX/SJ+sNhqhggWzJLnj
    axHVPP/zXmUrePQCTI72rNfD8hcmFk3J3N65H0iTd9+J5yaQqOPW+tqZrB8uZZ/bhLQ+ja
    h+EOpyYLIpmVnjb3WvBAw4kRXQSXIaoJcwaNaNhTWsHkHpAxBWcAbzS1LOSD1YSLOWWXbC
    uW38dyH3j6Zv5lKC2VQ5jPBVP3PXqKcyd3z20ABCHjs0ZxzEZtp1PVXShmXUJk3eaaeYlp
    k5YaELEi3JcIoIcNvZsW1Kqg92QXvyiKKusnPcPqxySPy9BsljuYeStrax8K4SqhIJ7et6
    NALBtDUauNVprDZTkceuoOHcA3gPbLe7hpp4qlyX0DZoxaxP9jEfhlaa2xkwKQeAIopbEL
    xcf5pvX6c0IpFD+McZ5UcyGM3jwbFZIqM+jom4mUNvbU7IWuAIiyp4LsGkWw
X-ME-Proxy: <xmx:5EUpapvUqauAX_CzpbQsoPMOucbnFpULggVPIhrICHcu4RtieNomAA>
    <xmx:5EUpanZ9wyK_JkERDQMdkMt4sBYG7m49nxeLvFApuTCm8BtYrZl0xg>
    <xmx:5EUpahCfPO6OeZLnJKLiQqbL96xCMbIxlrpmRzHrXn8-wIuld_hkPg>
    <xmx:5EUpav_PGXs7MB8E2OBtHb0STQan685-bU9edGamQFO8x7zNYsy2Iw>
    <xmx:5EUparuYz0TE2t3VoB_IbQovdzoza3JmCtkJQCaDbPwW55zsP1P-so3Y>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 858B81820082; Wed, 10 Jun 2026 07:09:24 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: AdNNzaliM6k3
Date: Wed, 10 Jun 2026 13:09:04 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Josua Mayer" <josua@solid-run.com>, "Frank Li" <frank.li@oss.nxp.com>,
 "sashiko-reviews@lists.linux.dev" <sashiko-reviews@lists.linux.dev>
Cc: "Conor Dooley" <conor+dt@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Frank Li" <Frank.Li@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "imx@lists.linux.dev" <imx@lists.linux.dev>
Message-Id: <e9410cd9-5c5a-4251-ae37-236e86cc7f7f@app.fastmail.com>
In-Reply-To: <d8373e08-bbd0-4a6c-849b-628c49fc2ec4@solid-run.com>
References: <20260524-lx2160-pci-v7-1-09370c23b952@solid-run.com>
 <20260524151347.BD92A1F000E9@smtp.kernel.org>
 <3528dc91-1ffc-42f9-94ea-a27c6c1d6a50@solid-run.com>
 <9e6326f6-dad1-4169-a63c-e62ee5b341f2@app.fastmail.com>
 <023aa47c-6fbc-486f-b5c7-5145ddf8e8fe@oss.nxp.com>
 <72087d5c-c6f9-4452-b4bd-a9f086700e62@app.fastmail.com>
 <48248207-7b4f-43c9-85e9-64e8440fab10@oss.nxp.com>
 <753fca23-c3eb-45e3-aeac-b7b248fa723a@app.fastmail.com>
 <177431ea-c4ba-4424-b17e-9d2e2884d466@oss.nxp.com>
 <4f7cc399-785f-4967-adec-714ccc69ada8@app.fastmail.com>
 <d8373e08-bbd0-4a6c-849b-628c49fc2ec4@solid-run.com>
Subject: Re: [PATCH v7 1/9] arm64: dts: lx2160a-rev2: extend 32-bit, and add 64-bit pci
 regions
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.65 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arndb.de,none];
	R_DKIM_ALLOW(-0.20)[arndb.de:s=fm3,messagingengine.com:s=fm1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	FORGED_RECIPIENTS(0.00)[m:josua@solid-run.com,m:frank.li@oss.nxp.com,m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309699-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[arndb.de:+,messagingengine.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,arndb.de:dkim,arndb.de:from_mime,messagingengine.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BF3F7668A17

On Wed, Jun 10, 2026, at 12:36, Josua Mayer wrote:
> Am 10.06.26 um 09:43 schrieb Arnd Bergmann:
>> On Wed, Jun 10, 2026, at 00:13, Frank Li wrote:
>>
>> If everything goes well otherwise, this PR should still make
>> it in time, but it would be nice to avoid such minute
>> excitement in the future.
>
> Thank you for discussing this issue in detail!
>
> If you need me to send a fixup, kindly let me know.

I think that would be best, yes. Then Frank can apply
the patch on top and send the updated pull request.

      Arnd

