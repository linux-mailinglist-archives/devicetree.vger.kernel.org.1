Return-Path: <devicetree+bounces-263125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKMvHDDchGkV6AMAu9opvQ
	(envelope-from <devicetree+bounces-263125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:06:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 195EAF650D
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 19:06:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 695873004919
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 18:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ABD430649C;
	Thu,  5 Feb 2026 18:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="E6QMn7gb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A0830595B
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 18:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770314797; cv=none; b=GxgQf+0as31HcWHXcxzIuxiohl9UAgnHI3DtbUiSBrpESJJknaJMhjy+dr6vyNLBpzYCTyTZw+aJPRoGt+ui2LrWMu6yQG5/5F7crdVc+PbisUxJuoYrz+illg+o3bbhf6NG4fuwajlDMT6bEa+ko8reboZmfOmi89u1+ircpsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770314797; c=relaxed/simple;
	bh=0dUxcW9jceIcubMHrYt7Er24gx/w4sIXbrHuLAvKMMw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=MmwgLR9fxuuAME22Miy5UcSbxCaqVFelBmEFNis40g6c91JbVm7J/969LZu0pfr9od1ivPbDdgwSj4W4nVza4RWW3HMqWLRFwNQpcCb5wv4ev+aRKRRimrmAdgmMGZoXjszJ+WZdtPhRN+1E9pzTs34pKnjSD4LSgxiXmRKXrlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=E6QMn7gb; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id DB1FCC243B0;
	Thu,  5 Feb 2026 18:06:40 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6FD956074D;
	Thu,  5 Feb 2026 18:06:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id F2926102F2A49;
	Thu,  5 Feb 2026 19:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770314793; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=5zGV4Eo/lLwbXu9NHaompHv0eaeIUotj8YObgAjPRAA=;
	b=E6QMn7gb3JOFKlnXT+UHLYYdqWdbLczkCe1hemUj4Oz1z+NecQAvgWmwhCrkwfkzqYpicA
	kx4Ce5P84tfJml6Uztv7nDSN1D7App5IXj1xJC0p1A+QvmAj2fWcR2X68Yl/dPcb1WNLn+
	3RCFTiLLpNZLydCVSSW2WvyYbW1FB+8g8zFth8M7/x5OJzewCZRQpPv1dHDjCm8ZICBuGD
	HRJXdCdMMi5hTANnHtu9WLOfQO/J7e0Qj7hrNj6RffkMwNXEFnFe3LpjPIXZnfmydirDop
	YfZ7sWAkt8RaTY33KV9vbuQ+kzAJo2TEoMfK1dpaHHeOJ/trsa1RmcNe/ARxRw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 01/12] spi: dt-bindings: add spi-has-dqs property
In-Reply-To: <ba78303e-36aa-4f40-9416-c22ff12b7458@ti.com> (Santhosh Kumar
	K.'s message of "Thu, 5 Feb 2026 23:16:47 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-2-s-k6@ti.com> <87wm0sg50q.fsf@bootlin.com>
	<ba78303e-36aa-4f40-9416-c22ff12b7458@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 05 Feb 2026 19:06:30 +0100
Message-ID: <87ldh7f4k9.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263125-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 195EAF650D
X-Rspamd-Action: no action

Hi Santhosh,

>> This information is currently lacking indeed, mostly because nobody
>> ever
>> cared about it. The DT property is IMO not the correct way to give this
>> information for two reasons:
>> - this is a capability of the chip, we discover the chip dynamically in
>>    both cases (NAND and NOR) and attach many capabilities to the chips
>>    already, so I believe this information should be provided through a
>>    flag.
>> - the fact that the DQS signal might be supported does not indicate it
>>    is actually driven. Winbond chips, for instance, can either enable it
>>    or not depending on their configuration (probably through their VCR
>>    register, I need to check again).
>
> I agree. The flash device's capability to provide DQS - whether in SDR,
> DDR or both modes - can be represented as a flag in the flash
> description. We can list out the possible combinations and use them to
> clearly describe the flash's supported capabilities.
>
> However, whether the DQS signal is actually connected to the controller
> is a non-discoverable hardware detail and should be described only via
> Device Tree. The DT property is not meant to describe the flash's
> capabilities, but to indicate whether DQS is physically connected to the
> controller.
>
>> The question I have is: shall we enable the DQS pin automatically if
>> it
>> is available? Not all controllers support it I suppose, and wiring the
>> line might as well not be done (or incorrectly). For these cases we may
>> need DT properties in the future. But for the DQS presence indication, I
>> bet it is not useful, and should be handled at the core level (not
>> parsed by the driver like you do) because it may have an impact on the
>> chip internal configuration.
>
> We can handle this in either way: keep DQS disabled by default and
> enable it using a "has-dqs" property, or enable it by default and
> disable it explicitly using a "no-dqs" property.

I know we can be surprised by our hardware colleagues :-), but I would
consider "not wiring the DQS signal of a (DQS capable) octal DTR SPI
memory" a bug? Hence I would opt for handling the broken case, when/if
that need arises.

Thanks,
Miqu=C3=A8l

