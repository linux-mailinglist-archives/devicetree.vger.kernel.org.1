Return-Path: <devicetree+bounces-274628-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHDvIfPRsmnrPwAAu9opvQ
	(envelope-from <devicetree+bounces-274628-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:47:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7D0273996
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:47:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82EA2314B7A5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:45:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98C803B95EB;
	Thu, 12 Mar 2026 14:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="k54hmVgT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DA8374E4A;
	Thu, 12 Mar 2026 14:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773326719; cv=none; b=hJ3fNoLmeuVVWwy+vak58RqrBjWQ9q4wqcYERJsMRYffFuYIpuqjJgJNGJZNAoM4emkqnPD1lPywBaZi4UYgYTPjBLoLlOHT4IWWLYj+pSy/j4lfUyMg3Id+cFlLloadQIR6oRYfpNTVwJG9+EEpkkIIRyY/q84SC9/sR+eKH0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773326719; c=relaxed/simple;
	bh=P7m0/3go3oTl4JKU0I7/RQS3LquMlj/rAiKn6iy0BY4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=kUzlIq656CjjSKxYHpAKqA1kNumuTlFsPNch/hGG9UIRoRLMTFbQmH5RXUk5TmY9LUf174b4XxJgxlSJQhILwRLUpElxVOi1TsmVupbf5bnApbisc9DQYVD447j5wyx511/YLfD6OenVYXXn1Aj9Im3N0TkKXNFpUMPFIphwygc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=k54hmVgT; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 2C2354E4264B;
	Thu, 12 Mar 2026 14:45:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DF3245FDEB;
	Thu, 12 Mar 2026 14:45:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CD3EB10369DD7;
	Thu, 12 Mar 2026 15:45:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773326713; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=4daAQZWFYXM6mQK2PksFrwRHEdQEwOFynA5SkgmnW1w=;
	b=k54hmVgT0xaFqCJtR3GbR3zGCAB20/a+19R66w4l0p+aHd4JVXrkqkTP0r3wHJo5GIgOB3
	c4FnpJq5MT728TpHIr+DclaqeazBsb+FtNvFgnRjnem1LjYoFFzC395CCbNcFSWSsHfEkS
	qRk8d+nJAeGsKkcFjXiOmjCyINkbMK+dkxxPekFu6gt3aADOjhJFp5tUJRdPkQkWQ7QjWf
	SDz6NJb/fBa3nD/nY826wsMFxIxzgLa7gLHQ+UsI6Orrn6iO+tpBGoKm1wnWqoAXxOOhwz
	Y9SRXKwLzlVm0u1Bw3trxYQTmgAlQC7ZpBREBfNrzWcZCg+Uo8P5fPxouaRZUw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Cheng Ming Lin <linchengming884@gmail.com>,  Richard Weinberger
 <richard@nod.at>,  Vignesh Raghavendra <vigneshr@ti.com>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
  Tudor Ambarus <tudor.ambarus@linaro.org>,  Mikhail Kshevetskiy
 <mikhail.kshevetskiy@iopsys.eu>,  Pablo Martin-Gomez
 <pmartin-gomez@freebox.fr>,  Tianling Shen <cnsztl@gmail.com>,  Pratyush
 Yadav <pratyush@kernel.org>,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  alvinzhou@mxic.com.tw,  Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: Re: [PATCH v8 1/3] dt-bindings: mtd: spinand: Add randomizer
 enable/disable properties
In-Reply-To: <20260312140553.GA2914438-robh@kernel.org> (Rob Herring's message
	of "Thu, 12 Mar 2026 09:05:53 -0500")
References: <20260305071042.1193522-1-linchengming884@gmail.com>
	<20260305071042.1193522-2-linchengming884@gmail.com>
	<20260312140553.GA2914438-robh@kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 12 Mar 2026 15:45:06 +0100
Message-ID: <874imlksy5.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,nod.at,ti.com,kernel.org,linaro.org,iopsys.eu,freebox.fr,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274628-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid]
X-Rspamd-Queue-Id: 2D7D0273996
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


>> +  nand-randomizer-enable:
>> +    description:
>> +      Enable the randomizer feature. This property is mutually-exclusive
>> +      with nand-randomizer-disable.
>> +    type: boolean
>> +
>> +  nand-randomizer-disable:
>> +    description:
>> +      Disable the randomizer feature. This property is mutually-exclusive
>> +      with nand-randomizer-enable.
>> +    type: boolean
>> +
>> +dependencies:
>> +  nand-randomizer-enable:
>> +    not:
>> +      required:
>> +        - nand-randomizer-disable
>
> Rather than define this in the schema, make the properties inheritly 
> mutually-exclusive with a single property:
>
> nand-randomizer = <0|1>;
>
> That's assuming you need not present to mean a 3rd thing such as use the 
> bootloader setting. If you only need enable/disable, then a 
> single boolean property works.

We need the "not present" case, so the single boolean property cannot
be considered here.

