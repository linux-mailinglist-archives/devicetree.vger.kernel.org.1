Return-Path: <devicetree+bounces-275031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HT2NNbRs2l5bQAAu9opvQ
	(envelope-from <devicetree+bounces-275031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:59:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6456A2801D0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:59:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 098CF311D64E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E61387572;
	Fri, 13 Mar 2026 08:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="SZPQYkvk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3C932D0F5;
	Fri, 13 Mar 2026 08:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392236; cv=none; b=JE0jClG70FpPzgNx5Qk6e6xWG+A4y52RW8ikKjqjw0gjZpZB/TrVMIGdwWuXIb/ywUOpfhfIp2Uv7sSXfbHMAHtRvWKkMIIr8EOy8g9S08toBQuOoCOVPfHwzijTg7IRbak47If1y07WScyntaMcRbW2rRvygwNRKrSE2C0JxME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392236; c=relaxed/simple;
	bh=ShuX4b8PyvY617fk/pjhUH498OHzXPHWGPqrUBeqtXg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=TQwJ9cNoU8ncAXBfEHXsQbSfK9msyD0Qs97yWJd43niMPzXw51XqhU8XMNPBIujh8mlQmc0ChFAO+CQV6NzUCa8QIDwjioqqrDEIeQYSxO10BWVlWlzoWpqXXpSWP9VkOazAU898J/RxxRSWPwVjrzU/Qg18jRoVqKNiYd/x2vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=SZPQYkvk; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 997934E4266E;
	Fri, 13 Mar 2026 08:57:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6C7F660027;
	Fri, 13 Mar 2026 08:57:12 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DFC1E10369DC5;
	Fri, 13 Mar 2026 09:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773392231; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=V8KMVy0DcXPG0QLpYu/1/bMyEp34wzRyySJdIx927ek=;
	b=SZPQYkvkyP8FuqGjQ6RPYbzuLKRd4IuCymeqsA0BMrp+qAInkkK8Rhl7QVrzQ33j3zxIRK
	1+RF4Gqd9Wt19QjxfDU3wxm6TH5vt4BXMPb/zGCRw+LFL3Pj7xlx8DZ1gZPt7d8ajdpWsE
	LCtln8B9kkohVW6BpBzyxKTJgjP7JGycAzVQA56CIFDsnT8Ijag2CUZKuWOQZivBXWzYjQ
	p29nAPNYGs9F5Iip7KFp4YJMGZmhGTZUo5q6H4zDi1NA7muwOnLhY0DeDENhPq0YLl5dRE
	/E0AdtWg/N65HigqJl7HY+GRvI8kSvxXXbAlrrFVEkTfCobY6QM4aS+NP5DjyQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Akhila YS <akhilayalmati@gmail.com>,  Richard Weinberger
 <richard@nod.at>,  Vignesh Raghavendra <vigneshr@ti.com>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
  linux-mtd@lists.infradead.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: hisilicon,504-nfc: convert to DT schema
In-Reply-To: <87y0jwjeg6.fsf@bootlin.com> (Miquel Raynal's message of "Fri, 13
	Mar 2026 09:55:53 +0100")
References: <20260307-hisi504-1-v1-1-8bf9a186faf2@gmail.com>
	<20260312152851.GA3190071-robh@kernel.org>
	<87y0jwjeg6.fsf@bootlin.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Fri, 13 Mar 2026 09:57:09 +0100
Message-ID: <87sea4jee2.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,nod.at,ti.com,kernel.org,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275031-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: 6456A2801D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 13/03/2026 at 09:55:53 +01, Miquel Raynal <miquel.raynal@bootlin.com> wr=
ote:

> Hello,
>
>>> +  "#address-cells":
>>> +    const: 1
>>> +
>>> +  "#size-cells":
>>> +    const: 0
>>
>> These can be dropped as the child (partitions) doesn't have an
>> address.
>
> Well, the child should, because it should be the NAND device (with, as
> address, the chip CS) instead of 'partitions'. If the driver in front of
> that binding does not support that, please wait for Frank Li's work to
> clearly identify the legacy bindings to be merged and reference it in
> the top level allOf.

I forgot to share the link, here it is:
https://lore.kernel.org/linux-mtd/20260309200351.1791162-1-Frank.Li@nxp.com=
/T/#t

>
> Thanks,
> Miqu=C3=A8l

