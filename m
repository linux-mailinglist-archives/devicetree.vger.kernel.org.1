Return-Path: <devicetree+bounces-273960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kO7kLSwwsWkVrwIAu9opvQ
	(envelope-from <devicetree+bounces-273960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:04:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B202B25FF19
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 10:04:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0D26630193BA
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EFC33C5536;
	Wed, 11 Mar 2026 09:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="LSCzTaSp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181C23C6A42;
	Wed, 11 Mar 2026 09:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773219845; cv=none; b=lCQt/oYojZdpXqtnd2/EUwMDKeO1FX8BGhrashrxOXi9LzoCeTcW4itfqFH7ejdKMseuPuFFBhOjj+KjOP8bUnICtJMBgtThaOmh8YHD6xu27ixg9C/qMwWKBPjpr6EgNZZbbBVh4Cy6Z8ZotUGt1qI5sOV8C5ZCZFeh5HGA9qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773219845; c=relaxed/simple;
	bh=wiUixCYFm5Tfy9C3RMI/tgTe+e8/mjmwNwm2BKKZ0y8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=NdV40wSU+ooJTO2tr2sGCP2Bf/gPLQ/ALPJ4+9tMNypQvdq8/Lsv2ahMUGp+U3XqCS/ZfERTtXpOH6IeBHzmg+cCr1IRCnT4FiMWgGy45WjwXZx3maiZN4oLO+8UqtGBref5wGBApHKqzPdSRzNgWT/T/IJYClfMYN4D7t+Zd4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=LSCzTaSp; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 0680F1A2D62;
	Wed, 11 Mar 2026 09:03:55 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CF82B60004;
	Wed, 11 Mar 2026 09:03:54 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 24429103688EF;
	Wed, 11 Mar 2026 10:03:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773219833; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=rJKFrJpCitYhJZxGKlOQSS+IwR1qpI8gDUOpVd9xOh8=;
	b=LSCzTaSp+i76jdg7TU+B4qaun9/pP2DoEtljcjqUIiEvfuOqsaf/eWt0MSz1+HSuURsOFa
	Mh6RHq8+znEQAw0YfUh/lbjRKcTergtiQVEOPszEoDvnjSOvXWc8S0GGJvnnCZ88kCHNKG
	IEfIrSSIEMS8qljmlGN4MJQtt6ecBEFzgLEr5bAmMMMWGNHo6SzsFNVjed2QtGbJvyc2sm
	ssSK7grTQwvhiSftt8aDda4S06LPDVnTP/L0Mhvlxg7SwXvnkdp5qW189kK0wTJsn1O+Kb
	uzOJnF8fx3wEfxZlM1Ulz19U9T50TDxQ8k9xylJeitwWtVpo3KTpnMCoKVgPmw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Richard Weinberger <richard@nod.at>,  Vignesh Raghavendra
 <vigneshr@ti.com>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  Akhila YS <akhilayalmati@gmail.com>,
  Thomas Petazzoni <thomas.petazzoni@bootlin.com>,  Conor Dooley
 <conor.dooley@microchip.com>,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Fix spear600-smi YAML conversion
In-Reply-To: <CAL_Jsq+WE33tSSqywbPN3g8i92foVmqna6K2zaFO1RUreMvB-w@mail.gmail.com>
	(Rob Herring's message of "Tue, 10 Mar 2026 13:30:02 -0500")
References: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
	<CAL_Jsq+WE33tSSqywbPN3g8i92foVmqna6K2zaFO1RUreMvB-w@mail.gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 11 Mar 2026 10:03:49 +0100
Message-ID: <87h5qmn3ey.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: B202B25FF19
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[nod.at,ti.com,kernel.org,gmail.com,bootlin.com,microchip.com,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273960-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Action: no action

Hi Rob,

On 10/03/2026 at 13:30:02 -05, Rob Herring <robh@kernel.org> wrote:

> On Wed, Feb 25, 2026 at 10:24=E2=80=AFAM Miquel Raynal
> <miquel.raynal@bootlin.com> wrote:
>>
>> Recent conversion from txt to yaml of the Spear600 SMI binding by Akhila
>> lead to warnings. These are my 2cts in getting the yaml conversion done
>> :-)
>>
>> Cheers,
>> Miqu=C3=A8l
>>
>> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
>> ---
>> Miquel Raynal (3):
>>       dt-bindings: mtd: st,spear600-smi: Fix description
>>       dt-bindings: mtd: st,spear600-smi: #address/size-cells is mandatory
>>       dt-bindings: mtd: st,spear600-smi: Fix example
>>
>>  .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 26 +++++++++++++++=
+------
>>  1 file changed, 19 insertions(+), 7 deletions(-)
>
> Still warning in next and v7.0-rc without these fixes. Please apply
> them soon.

Yes, I will do it this week.

Thanks for the reminder,
Miqu=C3=A8l

