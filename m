Return-Path: <devicetree+bounces-309339-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DSbAFnqHKGpGFwMAu9opvQ
	(envelope-from <devicetree+bounces-309339-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 23:36:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CD76644A7
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 23:36:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arndb.de header.s=fm3 header.b=Pd1Ib3FO;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="R 6V7P8d";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309339-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309339-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=arndb.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9495C30B0E9B
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 21:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 542B54ADD8F;
	Tue,  9 Jun 2026 21:34:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh-b1-smtp.messagingengine.com (fhigh-b1-smtp.messagingengine.com [202.12.124.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3493B496906
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 21:33:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781040842; cv=none; b=mk7bBuYy3QlUp14XKIE/6lSf4qPJxnaNNdg8wJxA6GKRu1zdrDvqru7Wh/t+H6RAd9a11aIhM4HUI9KBt0FlWyMmgfudQSXRRtOUROieXEmrFO2f1xo1I97Kh3Wv+WEBDC4rnz/kltOTiw0xer7frl09ZEJfcJo3x9VoX1iYAQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781040842; c=relaxed/simple;
	bh=68f3tEJ4RvsPNK6vYyLuZQDHo+BqeYSp+TyfgcMrYgo=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=kISJUNqhZ6brYtAAFzlyH6Azad9ltm8DN7nb8rWhaz33+kuBlgop4vzz9IkcIOPLgMDGOJdBvYr3bV4N65MMidSi+8ikeQJm1OaPyN2yts59J3WJ1woJvozPD0z+S+Zs2uPYf6QpbtKKgvtkfwZvN5szsHsHvK8wDJZ88iOQgFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de; spf=pass smtp.mailfrom=arndb.de; dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b=Pd1Ib3FO; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=R6V7P8dW; arc=none smtp.client-ip=202.12.124.152
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 0EE957A0102;
	Tue,  9 Jun 2026 17:33:57 -0400 (EDT)
Received: from phl-imap-05 ([10.202.2.95])
  by phl-compute-04.internal (MEProxy); Tue, 09 Jun 2026 17:33:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1781040837;
	 x=1781127237; bh=+sRCkdrKVdlyQZ8syYN2rh2xkRUTq5nCFIqvDcDinYE=; b=
	Pd1Ib3FO4PiSmnrAeS9uQ29yauC6iHznAf7BzCmh7WCVrHlzjk4NGCydqpIgvTYN
	MwK9poHmf7i8un5BiodsFYKgtM41yeGPjm5bbxjtCtfECdUdtbxEn2wYrVx/XdKK
	HVy8JdYNauWp0rD1vC6uHTy/J67flJ56ZSeCln0qOfD6sd3wYcpExMGx7DXCJCZh
	aa/euOaK6CJ0GNVEauJu6pM9SIzZgCeLfobyplIB+m6KjMcBzZfNqYya0p5l3fN+
	URgwK9g9vuSAHu/p0Gljti6faudxO/uOuInsPD2KyRNn29apTRKer53ZH09Lh3wd
	2bnsa/ouw5dJDYp1t9bh3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1781040837; x=
	1781127237; bh=+sRCkdrKVdlyQZ8syYN2rh2xkRUTq5nCFIqvDcDinYE=; b=R
	6V7P8dWVy4GCkvfMHYyrywk5IxBqJ7vKXmGRHbjwrm/9qrJReikja0NzXaZKWW/Q
	AaJ/N/RHfou9hCLmn3fTjQaKdBpDGUw61kP6rIN7+7rxGr1q9ZDAIfw6S3KP08o9
	xjdanfNcvokZ6vGZIlcAOtYbytWh0pRe0vVicrfjCcUzG58nA49a+JLHGTSV1OtU
	DHJ4Y2t9esOoXBa0hDp9rT/c6mgecr7GAf7TfzVfbozx9DH/T8rkkyR/qFvD2VkJ
	Zw2TpapU9pijGkJDzngWOZSrY0pZLFuVHKkvmemX5i/zwH2vSXLPIlOg/DvSOzyE
	jR7xDDzb2ZTY/TB8MFhmQ==
X-ME-Sender: <xms:xYYoasF5f6yrdL3l26okGCQnoEV8LwHJ3PX_nltg41vC-LF-ARD_vw>
    <xme:xYYoagIRJXHU17ikNyouazka3T8iBasji88Gfk_3rr0T3W89sXUONRwuGJ-y7mOj4
    dciJ7tRW9jGZGgaKdiqWZiSlW7X8LnumMyLccCk13hYY1VOo9ioKZM>
X-ME-Proxy-Cause: dmFkZTFWzSg71zkyjntcC2C9AKF5dP6OKh4y9HMUPW4f3E8wrowKdqoNyvD8um0m/bREkn
    BNWaoGUUofvXeJTf/+ZngisWfcSwHlFTr9rOSL4Wa7i1COKhx8RvniqHB9GGKOjYg6fZ8d
    dk26+cfKTH8OZe6+6NjqH2BSKK0nIwrZAwqYU2GUnjC9w4Z/W9QR5i1ELE22tJUL4NTp23
    iG2QyNqwSvcFEpoftIbd+v72TBgGBSckXfrYtbqv10sOknEBNkM97hpiSWUIakpS2tmRYM
    ZY2DVwf0hPXRY+nIuyfHw10xa1l5HU69x8plAJmEyiGOPi8F4kgu+nYGBNhb2TQiGgjMal
    LnUrSISkMxbjiRzqhf52phK3PNrv0mXw1zjRE2hYNjNoXcqbHLRKVKb8pGf3yf3yczZaUO
    GcO4AD9Vh6D3Q4D13GYuMV+c9QoVOI8RxqZog6t+aHRdZamP2ArAqdN//kps577rBJh1VY
    5hTbuLI3UnvTV1otozyMRUrmVoXoz3qnkp1wO8eCDuvJKdBtpS0tF5W6JJozrcFoM15rdj
    PoFQNWSgl9ZmxKeZ3pXVePLSMBfN0Bb/QQnOla0N1r2xQHZStsn3JLsilurs9noMYCWkqs
    QUCqq3jP5h0iRtUjZyfBsLJ/X19ijY7RATwqU1IvcbvKTx3ANcf2psWz2kVg
X-ME-Proxy: <xmx:xYYoaghHz8ho0W3Y-fGYYUJ_1PBZBlGjeicVgnV-4ZtNuFy3buLOFw>
    <xmx:xYYoat8j_zLTGxvJ42mmjxBBcDZwi7V_KS49RtvocPV4gVs3NAUVKQ>
    <xmx:xYYoasXP8OU_5P3nq2nHUeYYOK0h-HIPV1DCe0dI2hTL7NwKiGdKkA>
    <xmx:xYYoahArcbN5Smper6RHEi4gYus6u79pMDxYS1Ff3orFDRm846900A>
    <xmx:xYYoapSbn4UzF6Ful1hhyhPfca9sM_O78Gv7c8IEaXBGT0SRJ1TyrZvc>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 4FDA11820086; Tue,  9 Jun 2026 17:33:57 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: AdNNzaliM6k3
Date: Tue, 09 Jun 2026 23:31:44 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Frank Li" <frank.li@oss.nxp.com>, "Josua Mayer" <josua@solid-run.com>,
 "sashiko-reviews@lists.linux.dev" <sashiko-reviews@lists.linux.dev>
Cc: "Conor Dooley" <conor+dt@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Frank Li" <Frank.Li@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "imx@lists.linux.dev" <imx@lists.linux.dev>
Message-Id: <753fca23-c3eb-45e3-aeac-b7b248fa723a@app.fastmail.com>
In-Reply-To: <48248207-7b4f-43c9-85e9-64e8440fab10@oss.nxp.com>
References: <20260524-lx2160-pci-v7-1-09370c23b952@solid-run.com>
 <20260524151347.BD92A1F000E9@smtp.kernel.org>
 <3528dc91-1ffc-42f9-94ea-a27c6c1d6a50@solid-run.com>
 <9e6326f6-dad1-4169-a63c-e62ee5b341f2@app.fastmail.com>
 <023aa47c-6fbc-486f-b5c7-5145ddf8e8fe@oss.nxp.com>
 <72087d5c-c6f9-4452-b4bd-a9f086700e62@app.fastmail.com>
 <48248207-7b4f-43c9-85e9-64e8440fab10@oss.nxp.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	FORGED_RECIPIENTS(0.00)[m:frank.li@oss.nxp.com,m:josua@solid-run.com,m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-309339-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[arndb.de:+,messagingengine.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	REDIRECTOR_URL(0.00)[aka.ms];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,messagingengine.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 52CD76644A7

On Tue, Jun 9, 2026, at 22:34, Frank Li wrote:
> On 6/9/2026 2:36 PM, Arnd Bergmann wrote:
>> On Tue, Jun 9, 2026, at 20:01, Frank Li wrote:
>>> On 6/9/2026 12:24 PM, Arnd Bergmann wrote:
>>>> [You don't often get email from arnd@arndb.de. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
>>>>>>> -   ranges = <0x81000000 0x0 0x00000000 0x80 0x00010000 0x0 0x00010000
>>>>>>> -             0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>;
>>>>>>> +   ranges = <0x81000000 0x00 0x00000000 0x80 0x00010000 0x00 0x00010000>, /* 16-Bit IO Window */
>>>>>>> +            <0x82000000 0x00 0x40000000 0x80 0x40000000 0x00 0xc0000000>, /* 32-Bit - non-prefetchable */
>>>>>>> +            <0xC3000000 0x84 0x00000000 0x84 0x00000000 0x04 0x00000000>; /* 64-Bit - prefetchable - 16GB */
>>>>>>
>>>>>> If a PCIe device requests a large 32-bit BAR, the kernel might allocate it
>>>>>> within this 0x40000000-0xffffffff range. This causes the Root Port's
>>>>>> downstream bridge Memory Limit register to be programmed to a value >=
>>>>>> 0x80000000.
>>>>>>
>>>>
>>>> I noticed the same thing while reading through the pull request
>>>> for 7.2, and I think the bot message is correct here. The SMMU
>>>> does not help here because addresses on the same bus are routed
>>>> inside of the PCIe host bridge rather than directed to the host
>>>> side. If the non-prefetchable ranges ever get assigned to an
>>>> address 0x80000000, this definitely breaks.
>>>
>>> The address and size is 64bit,
>>>        0x80_40000000..0x80_FFFFFFFF for 32bit non-non-prefetchable
>>>           0x84_00000000..0x87_FFFFFFFF for 64bit prefetchable memory
>>>
>>> AI Bot wrong think it is 32bit address and size.
>> 
>> No, this is about the bus address, not the CPU address, and this
>> is given as '0x82000000 0x00 0x40000000' above. non-prefetchable
>> addresses on PCI are by definition 32-bit, so the middle cell
>> is zero.
>> 
>> On the CPU side, this is mapped to physical '0x80 0x40000000',
>> which does not overlap with CPUs view of RAM, but the
>> bus view of 0x40000000-0xffffffff does overlap with the
>> DMA address for the lower 2GB of RAM at 0x80000000-0xffffffff.
>
> This is pci TLP bus address, which will not appear in internal fabric at
> all.  That is PCI TLP address, which is totally separated addr space and 
> can be any address.
>
>
>         in SOC                                  |  PCB boards rx/tx
> ==================================================================
> CPU address                 PCI controller     |   PCI bus
> 80_40000000..0x80_FFFFFFFF    ATU              |    0x4000_0000
>
> writel(80_40000000), PCIe controller will convert to 0x4000_0000 and
> sendout TLP package memw addr 0x4000_0000, which already go out SoC. EP 
> device like wifi, will decode 0x4000_0000 to do related work.
>
> In side SoC, no one can see tlp:0x4000_0000, which only visual by PCI EP
> devices, which means only connect EP device decode this address.
>
> Additional information:
> In bound address space (from EP to RC) is not controlled by ranges, but
> dma-ranges.

The scenario I'm describing is a device initiated TLP that is directed
at memory in the first 4GiB of addresses, e.g. 0x8000_0000.  If any
PCIe function on the same host bridge has a non-prefetchable BAR
assigned to 0x8000_0000, the transfer should normally hit this
BAR as a P2P transfer, unless ACS forces the transfer out towards
the IOMMU.

If ACS is guaranteed to always be enabled on this machine, it's
probably fine, as that would route (intentional) P2P transfers through 
the IOMMU, which can remap the destination BAR to an available
bus address.

    Arnd

