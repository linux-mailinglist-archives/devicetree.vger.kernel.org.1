Return-Path: <devicetree+bounces-281644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNpVAhSGxmlALQUAu9opvQ
	(envelope-from <devicetree+bounces-281644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 14:28:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A513734534A
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 14:28:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 271D130ECF60
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 13:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EA943EFD32;
	Fri, 27 Mar 2026 13:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="TiblL0eN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E423EF0A9;
	Fri, 27 Mar 2026 13:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774617544; cv=none; b=HDziyohiX2TB5P8OHrWuiL5ZXWymKihwua6RhxnAWq55ZlzJsld3pRCiuXQU0XJj93RwRo/SA5IBKd+FHqUGO8/G6gDbBs4M+RyvqB1I3SBxTWcYmYY3Y9xjt9ISDHPZyX1a0wpSzEGMftLmxho8nOZLyILS33XO/b+RV4/jUek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774617544; c=relaxed/simple;
	bh=Ftlsz681zgqhKwKdw2wdE3UpwUeP9ZgfFK8yjps7MBs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Me8TkcWADtcnI4LnyBSeCGPl14iQuylVTtzAmCkyRCQw0Bc9eiQuWIDl63W/tpMfWABPlLTg2UkR/sbw0iALIOsoKyj99+K9hLdWD570f6qqVaD0A5Eg71ky2HivzkMwqUMqgsppI8o+ouJde7/LgsZVAMs99YncSl3DOmzOIko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=TiblL0eN; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 63047C58744;
	Fri, 27 Mar 2026 13:19:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9434760230;
	Fri, 27 Mar 2026 13:18:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3491D10451302;
	Fri, 27 Mar 2026 14:18:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774617538; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=9cQUuQ/ZRSxD4m/Rh9Nc1u1MgzCT+v4F+G6fMpHiUlM=;
	b=TiblL0eNLCLJJ/15K7x2gdVr1DaLBZae6I/UTmpuGumSDGJ4KxzYCqEBprYwDQRftgx0f1
	jMBCtp20A9UJhusrJM1fZSTR2Hx3yEQBTOuZJJPQDhlAaDNSlcngINbJ0tHcfCukuRNTdT
	p3QXOi39yprRBoIx0q7CCQqu3ZOTiR72sE6wshiNQ93x/o5qYtxmgR5XeQQ2pjqnmA2qXv
	cHxSrVIb+RsesR5FVCb0nrHCduFEN1guj7aXliO20RLPOw9g6jjQ3XrpNUvH/G5C49EylZ
	ZF/mCPfDvSFLRJNL0DSYxoX84hmQ40knUCO190wXl+PzybEGrJmZP6yYszbALA==
Message-ID: <0e62fbaf-311b-458b-bf7d-63f20de28f44@bootlin.com>
Date: Fri, 27 Mar 2026 14:18:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] regulator: pbias: Add pbias SIM regulator for OMAP4
To: Andreas Kemnade <andreas@kemnade.info>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman
 <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260323-omap4-fix-usb-support-v1-0-b668132124ac@bootlin.com>
 <20260323-omap4-fix-usb-support-v1-1-b668132124ac@bootlin.com>
 <20260327133612.6ee909fd@kemnade.info>
Content-Language: en-US
From: Thomas Richard <thomas.richard@bootlin.com>
In-Reply-To: <20260327133612.6ee909fd@kemnade.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281644-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[iki.fi,baylibre.com,kernel.org,atomide.com,gmail.com,bootlin.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.richard@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: A513734534A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Andreas,

Thanks for the review.

On 3/27/26 1:36 PM, Andreas Kemnade wrote:
> On Mon, 23 Mar 2026 16:02:42 +0100
> Thomas Richard <thomas.richard@bootlin.com> wrote:
> 
>> Add support for the pbias SIM regulator found on OMAP4 (for USB I/O cell).
>>
>> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
>> ---
>>  drivers/regulator/pbias-regulator.c | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>>
>> diff --git a/drivers/regulator/pbias-regulator.c b/drivers/regulator/pbias-regulator.c
>> index cd5a0d7e44555f04d1e44470036c6e3d9feb7be6..10c4940e73635293bebd26bf99a9067eb6e39107 100644
>> --- a/drivers/regulator/pbias-regulator.c
>> +++ b/drivers/regulator/pbias-regulator.c
>> @@ -81,6 +81,16 @@ static const struct pbias_reg_info pbias_sim_omap3 = {
>>  	.name = "pbias_sim_omap3"
>>  };
>>  
>> +static const struct pbias_reg_info pbias_sim_omap4 = {
>> +	.enable = BIT(28) |  BIT(20),
>> +	.enable_mask = BIT(31) | BIT(28) | BIT(20),
>> +	.vmode = BIT(31),
> 
> BIT(27)? or am I mixing something up?
No you're right, I did a mistake.
I'll send a v2 in the next few days to address this, Mark's and Conor's
feedback, as well as few other issues I identified.

Best Regards,
Thomas

