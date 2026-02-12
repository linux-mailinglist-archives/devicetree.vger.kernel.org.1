Return-Path: <devicetree+bounces-265032-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDK2NZ23jWl96AAAu9opvQ
	(envelope-from <devicetree+bounces-265032-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:21:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5384212CF33
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:21:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E381C30F23DF
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9843451CE;
	Thu, 12 Feb 2026 11:20:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.3ffe.de (0001.3ffe.de [159.69.201.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 877E4345729;
	Thu, 12 Feb 2026 11:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.69.201.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770895214; cv=none; b=asxfXvWwIn8lC94Efrp3NJiNAnP3VTM2UQtyZAzymZNHE0AxOZb5q//5x845PXFA34khM5A8uK20h5c2aPTTuDRLQltjnpA9R7zenpaNjpN/6uuyinpc+4iKKIKHzf4JUrTSMe4JyXDNjrFYjU414reuLKWsVMrzikzEOOtgzGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770895214; c=relaxed/simple;
	bh=OsyHgBTrD2PiMk/k/g7ZFhfdV4jIvwQJ1yLhVHrv5LQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:From:To:
	 References:In-Reply-To; b=mXpts5kulCEkss828v0yaB0SBFO4mXcjCYop8nBTSgHsIhyAhlnUvqohGUQYv5viruTTlvuKKaNrzgP4/jlb+ZoSd1uL99mPi924Zi0bIdTi9Ut+WdHL9e1bxaWqbbiP8JN/OYjoKr5jrcNG6xTXDDV/Be43riIFnZHTUOGLzJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=walle.cc; arc=none smtp.client-ip=159.69.201.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=walle.cc
Received: from localhost (unknown [IPv6:2a02:810b:4320:1000:4685:ff:fe12:5967])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.3ffe.de (Postfix) with ESMTPSA id 5CFFC27F;
	Thu, 12 Feb 2026 12:14:05 +0100 (CET)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 12 Feb 2026 12:14:05 +0100
Message-Id: <DGCXTWSCAH6R.22SIL82AUVGYI@kernel.org>
Subject: Re: [RFC PATCH v2 09/12] spi: cadence-quadspi: add PHY tuning
 infrastructure
Cc: "Santhosh Kumar K" <s-k6@ti.com>, <broonie@kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <richard@nod.at>, <vigneshr@ti.com>, <tudor.ambarus@linaro.org>,
 <pratyush@kernel.org>, <linux-spi@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-mtd@lists.infradead.org>, <praneeth@ti.com>, <u-kumar1@ti.com>,
 <p-mantena@ti.com>, <a-dutta@ti.com>
From: "Michael Walle" <mwalle@kernel.org>
To: "Miquel Raynal" <miquel.raynal@bootlin.com>
X-Mailer: aerc 0.20.0
References: <20260113141617.1905039-1-s-k6@ti.com>
 <20260113141617.1905039-10-s-k6@ti.com>
 <DGAC4N62UZQQ.3R7TLX87PECU3@kernel.org> <87qzqqxml7.fsf@bootlin.com>
In-Reply-To: <87qzqqxml7.fsf@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265032-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	R_DKIM_NA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mwalle@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5384212CF33
X-Rspamd-Action: no action

Hi,

On Thu Feb 12, 2026 at 11:50 AM CET, Miquel Raynal wrote:
> On 09/02/2026 at 10:48:21 +01, "Michael Walle" <mwalle@kernel.org> wrote:
>> On Tue Jan 13, 2026 at 3:16 PM CET, Santhosh Kumar K wrote:
>>> +static int cqspi_get_phy_pattern_offset(struct device *dev, u32 *offse=
t)
>>
>> ..
>>
>>> +	partition_np =3D of_get_child_by_name(flash_np, "partitions");
>>> +	if (!partition_np) {
>>> +		of_node_put(flash_np);
>>> +		return -ENODEV;
>>> +	}
>>> +
>>> +	for_each_child_of_node(partition_np, part_np) {
>>> +		if (of_property_read_string(part_np, "label", &label) ||
>>> +		    !strstr(label, "phypattern"))
>>> +			continue;
>>
>> There was already a review comment on the last version. Moving this
>> into the driver doesn't make it any better. In fact this might
>> create a (bad) precedent for future drivers.
>
> I remember complaining about it but not if there was a solution
> foreseen. In SPI NAND the solution has been found: the pattern is in the
> driver and we load it into cache before PHY tuning. But for SPI NOR I
> understood this wasn't possible. What would be an alternative?

I'm not complaining about using a partition for the pattern but
about the hardcoded name of it.

It was proposed to use at least a device tree phandle to point to a
partition (or so).

-michael

