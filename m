Return-Path: <devicetree+bounces-258439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEbzDXtAcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:21:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1F068A25
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7D2FE52B399
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:21:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0061A32D0C4;
	Thu, 22 Jan 2026 14:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="N4+eDW3E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABDC2345743
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 14:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769091673; cv=none; b=M4/2exZbLSXqu/X7Jf0tR1LcXMB3Zgf5i+7hd346S104iRjdcI47pKrMqb53ldTvSRWeBo75yVzuwd8aL8VdXWgLkE5SNFitgdgiGdKf/jrnejJn7kVjU4tlIS5FWwoAZ3D+9J8Ij0nwPXwHFw+DSZWugrYLF2ZD6MMOFUWWUCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769091673; c=relaxed/simple;
	bh=F+5aNniE9B3U4nh1z1zfWzIiTm1JAwc6qCs+DV9yMEo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tmFDEOgFoJFNI7t55QehFQlmRBunhNb4j+4DaU8fxYhn4U5zFC9/zrwXbTubQTEqtUf5kJKj6CZEFIAsNIMnOT3oCD/p5iSJfHgFV5HOJaIFsa5mkDF2KYLRXZgtDq+AQVX8WER1SccTsWAQ+6keMlEspMBTIJpRmG7Ige/jBsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=N4+eDW3E; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id DC32AC21AA4;
	Thu, 22 Jan 2026 14:21:09 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 00A86606B6;
	Thu, 22 Jan 2026 14:21:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 95040119B81B3;
	Thu, 22 Jan 2026 15:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769091669; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=TsNML+3xOwrc4+PpSLQW2hjh0yxYNzlX5rpJRRrE/NU=;
	b=N4+eDW3E48c+twnL6eSo5849Eho0y6eB9EAEbXs2hSaEYg7OHh+jtUki6YGSBYpHNsLvmy
	U39Dl7CQFBPebANR5xLQhMZcjgK/S1tC8zY8/3IiruKeklqcrbyYu8JwaXWQXxzz9x65Rs
	t+dbwbeNPhhHIX8qqcGVnfwfIIg93kRqnoivzBboja/HrqvBmn/Kw5CWXETzDafOhVsp2s
	Jx9ml11sewsgF9jpsjOj/gOgrfez5ydlg3O9z45TnTfQLT8ey4YYCBOgalPT9feDcLc0uK
	24Qlv9GwbqKOFU0wgZ+MYtdirkoO2aVidsvqB8JOKWMCrTm1MTmXiSZa5jp7SA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Mark Brown <broonie@kernel.org>,  Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Geert
 Uytterhoeven <geert+renesas@glider.be>,  Magnus Damm
 <magnus.damm@gmail.com>,  Vaishnav Achath <vaishnav.a@ti.com>,  Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>,  =?utf-8?Q?Herv=C3=A9?= Codina
 <herve.codina@bootlin.com>,  Wolfram Sang
 <wsa+renesas@sang-engineering.com>,  Vignesh Raghavendra
 <vigneshr@ti.com>,  Santhosh Kumar K <s-k6@ti.com>,  Pratyush Yadav
 <pratyush@kernel.org>,  Pascal Eberhard <pascal.eberhard@se.com>,
  linux-spi@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v3 01/17] spi: dt-bindings: cdns,qspi-nor: Remove
 duplicated constraints
In-Reply-To: <20260121221400.GA218496-robh@kernel.org> (Rob Herring's message
	of "Wed, 21 Jan 2026 16:14:00 -0600")
References: <20260121-schneider-6-19-rc1-qspi-v3-0-43e70fab4444@bootlin.com>
	<20260121-schneider-6-19-rc1-qspi-v3-1-43e70fab4444@bootlin.com>
	<20260121221400.GA218496-robh@kernel.org>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 22 Jan 2026 15:21:04 +0100
Message-ID: <87a4y5pw33.fsf@bootlin.com>
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
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,ti.com,bootlin.com,sang-engineering.com,se.com,vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-258439-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[bootlin.com,reject];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: AF1F068A25
X-Rspamd-Action: no action

On 21/01/2026 at 16:14:00 -06, Rob Herring <robh@kernel.org> wrote:

> On Wed, Jan 21, 2026 at 06:04:57PM +0100, Miquel Raynal (Schneider Electr=
ic) wrote:
>> The if/then/else block sets the restrictions in all cases for
>> resets/reset-names, very much like it does for other properties as well
>> such as cdns,fifo-depth. Drop the constraints from the place where these
>> constraints are simply ignored.
>
> But they aren't.

I looked deeper. Indeed the two constraints are applied, and it works
because the constraints in "if" blocks must be subsets of what is
already a constraint in the main body.

...

>> -  resets:
>> -    minItems: 2
>> -    maxItems: 3
>> -
>> -  reset-names:
>> -    minItems: 2
>> -    maxItems: 3
>> -    items:
>> -      enum: [ qspi, qspi-ocp, rstc_ref ]
>
> The primary reason to keep this is to prevent making up other names. If=20
> the names are only in if/then schemas then anything is allowed and it's=20
> not visible in reviews.

Makes sense. I will drop this patch.

Thanks,
Miqu=C3=A8l

