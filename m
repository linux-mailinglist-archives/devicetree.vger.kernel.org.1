Return-Path: <devicetree+bounces-305631-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9oWvLN3LHmruVAAAu9opvQ
	(envelope-from <devicetree+bounces-305631-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:26:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B0D62E03E
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:26:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=KOpeSiC1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305631-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305631-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13B61301690A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C2C3DD53F;
	Tue,  2 Jun 2026 12:25:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E183D9DD4
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 12:25:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780403158; cv=none; b=FM5sXk3aN1ZKW0dDSpviqfoshPQQ8qBkmyFHNENV+nD4JK3Q/HBOV8dvrvSryoypaWN5cxQm7XWicIktPMJdFWIj3i2CSJkna0VP2Az4X1HMdwtlXUNALirIH6NPO3m/VAsVUUpaCD2z53WCXKvAcuZb2N+MyQUcY3tycfm8WDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780403158; c=relaxed/simple;
	bh=j3oIU2/U7axjXxSszD3SA/6udOQmDJjkHrDTm0ibtYA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=V+awgsEc8WCRpVp8j+xKWmeCPTrvv0/3sNxScSafe5bwes8Vbn17oAIsUzrArp3eyyWU73R1HvGpT7p7cgdcNrqDhGn/nwCJXYPgt7Tke/wYFdSCdggcq+SR4PXXJD2jHuNBJ8WOyYfnXlcZ4189rSZUgDx/cKTHyW8YbN2XUR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=KOpeSiC1; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 2C9281A37CE;
	Tue,  2 Jun 2026 12:25:55 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F370A603BC;
	Tue,  2 Jun 2026 12:25:54 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 66F401088838A;
	Tue,  2 Jun 2026 14:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780403154; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=nY+lVPySUSaxoE8xcu7moT/k9ChClkx3Yw1+iU/k0qs=;
	b=KOpeSiC1AuTg5rFIO0WlcgkJjyz9gOaISm6vXGZb3m9UwJhVgLJvwg2rwaPZAoO+Oa1xvw
	4id7ZmJy1g0tUJk+bcH9D06ZhwJNe15Q6as+alG50DVARSYEk14wMQ/jHhQbo7N5+BHlM3
	/M9DFYhbD1HBiAOG0pXZkQRsJ2dCPQYjCdgV55eiGsAiA5ui8aUZz3WaoZ9ofqcQoSFb2V
	6jcAfIJe5njQhsGJj/hmi4qubujRPG7Uhua6No9aAQjxdqrvqM6BMJFgKOc33mViepqsGI
	HxuafeCdtSVNhGrKfcAFLrQOOP/rAUa0A9iqc2l0sUhnt97tknFD3JAwR1BD3A==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <takahiro.kuwano@infineon.com>,  <linux-spi@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-mtd@lists.infradead.org>,  <praneeth@ti.com>,  <u-kumar1@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [PATCH v3 09/13] spi: cadence-quadspi: reject 2-byte-address
 DDR ops on PHY-tunable hardware
In-Reply-To: <0ee42621-f970-451c-82cd-9a1a63ce197e@ti.com> (Santhosh Kumar
	K.'s message of "Mon, 1 Jun 2026 14:57:20 +0530")
References: <20260527175527.2247679-1-s-k6@ti.com>
	<20260527175527.2247679-10-s-k6@ti.com> <87y0h3gb6o.fsf@bootlin.com>
	<0ee42621-f970-451c-82cd-9a1a63ce197e@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Tue, 02 Jun 2026 14:25:49 +0200
Message-ID: <87se751642.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305631-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,bootlin.com:mid,bootlin.com:from_mime,bootlin.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 29B0D62E03E

On 01/06/2026 at 14:57:20 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> Hello Miquel,
>
> On 28/05/26 14:31, Miquel Raynal wrote:
>> On 27/05/2026 at 23:25:23 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:
>>=20
>>> Erratum i2383 affects the AM654 OSPI controller: in PHY DDR mode,
>>> operations with a 2-byte address cause an internal state machine to
>>> mis-compare the transmitted address byte count against 1 instead of 2,
>>> locking up the address phase. [0]
>>>
>>> Add a CQSPI_NO_2BYTE_ADDR_PHY_DDR quirk flag and set it on the am654_os=
pi
>>> platform data. In cqspi_supports_mem_op(), when a controller carries th=
is
>>> quirk and has PHY tuning support, reject DDR operations that use 2-byte
>>> addressing.
>>>
>>> [0] https://www.ti.com/lit/er/sprz544c/sprz544c.pdf
>>>
>>> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>
>>> ---
>>>   drivers/spi/spi-cadence-quadspi.c | 15 ++++++++++++++-
>>>   1 file changed, 14 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadenc=
e-quadspi.c
>>> index 508bc5bc4ab5..72208d376305 100644
>>> --- a/drivers/spi/spi-cadence-quadspi.c
>>> +++ b/drivers/spi/spi-cadence-quadspi.c
>>> @@ -49,6 +49,7 @@ static_assert(CQSPI_MAX_CHIPSELECT <=3D SPI_DEVICE_CS=
_CNT_MAX);
>>>   #define CQSPI_DISABLE_RUNTIME_PM	BIT(10)
>>>   #define CQSPI_NO_INDIRECT_MODE		BIT(11)
>>>   #define CQSPI_HAS_WR_PROTECT		BIT(12)
>>> +#define CQSPI_NO_2BYTE_ADDR_PHY_DDR	BIT(13)
>>>     /* Capabilities */
>>>   #define CQSPI_SUPPORTS_OCTAL		BIT(0)
>>> @@ -1627,6 +1628,18 @@ static bool cqspi_supports_mem_op(struct spi_mem=
 *mem,
>>>   		if (op->data.nbytes && op->data.buswidth !=3D 8)
>>>   			return false;
>>>   +		/*
>>> +		 * Erratum i2383: In PHY DDR mode, 2-byte addressing causes an
>>> +		 * internal state machine to mis-compare the transmitted
>>> +		 * address byte count against 1 instead of 2, locking up the
>>> +		 * address phase. Reject such ops on controllers that need it.
>>> +		 */
>>> +		if (cqspi->ddata &&
>>> +		    (cqspi->ddata->quirks & CQSPI_NO_2BYTE_ADDR_PHY_DDR)) {
>>> +			if (op->addr.nbytes =3D=3D 2 && cqspi->ddata->execute_tuning)
>>> +				return false;
>>> +		}
>> I don't think this is a valid approach. What we want is to prevent
>> tuning in octal DTR mode with 2 bytes addressing, instead of preventing
>> reads/writes in octal DTR modes after tuning. Have you tried on an AM62A=
 LP
>> SK? I bet probe fails..
>> The quirk should be handled at the beginning of the tuning procedure,
>> so
>> we skip tuning entirely in this case.
>
> I see your point. However, in my testing on AM62Ax LP SK, the controller
> and the flash probes and operates correctly in 8S PHY mode.
>
> The reason I handled this in supports_op() is that, for these devices,
> simply skipping tuning when a 2-byte DDR operation is selected may not
> lead to the best achievable operating point. The performance ordering I
> measured is:
>
> 8S non-PHY < 8D non-PHY < 8S PHY

Maybe this is not totally generic and cannot be used as a solid ground:
it highly depends on the base frequency. If the base frequency is rather
high (typically > 85MHz)n then 8D non-PHY might be faster. But maybe
this is not the typical case and is rare enough to ignore.

> So falling back from 8D PHY to 8D non-PHY would leave performance on the
> table compared to selecting and tuning an 8S operation.
>
> That said, I agree that encoding this as an operation support
> restriction is probably not the right place to handle it. I'll rework
> the initialization flow so that operation selection can take
> PHY-achievable frequencies and controller-specific restrictions such as
> i2383 into account when choosing the final operations.

Very interesting.

> Let me prototype this approach and will report back with the results.

I'm eager to see the result!

Thanks,
Miqu=C3=A8l

