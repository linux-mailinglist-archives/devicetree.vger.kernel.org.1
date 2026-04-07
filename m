Return-Path: <devicetree+bounces-285327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJhXJxYW1Wm30AcAu9opvQ
	(envelope-from <devicetree+bounces-285327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 16:35:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4853B01E0
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 16:35:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B66B307E07D
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 14:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A412E3B8944;
	Tue,  7 Apr 2026 14:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="BK1IOgjm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517923A5450
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 14:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775572200; cv=none; b=EKCUwt1eDPOdEHViH7j0fv686gLz1P3oMVKsGHDZFF+h0ZaYXQAHPZnsKKryJAhQJ7WJZqphaoZfLoMbOPGTz6ZGu9qqe9PC11JNg/Q7/tXywjhORWHPa7T+93Q/f1IZNjDqptye/xeWq1vfOMMojF0vKEPkBU6Vc87C0Os8iEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775572200; c=relaxed/simple;
	bh=v3v0+1k+LCXsj9IbikgT+WkIoxCsJj+yQiW6/DSGn4s=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=udslxyNHxRR/wYv+iOBrWtGzFm2bEjRTIGFsJtVKsCvM6YJ3o6GIuyx+y5gg7LUCa9Vug8UaPJR2h2EA22OJ4WZyo1wTTWYRizyLzwBy4LhkNpjRAQ/OzjMl1CG5tst6L8KeoZrwgshY6fCX0y5pt5R+NiO3kez6FGxBgUWsaJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=BK1IOgjm; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 0257C1A31C3;
	Tue,  7 Apr 2026 14:29:58 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CAE03603C7;
	Tue,  7 Apr 2026 14:29:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 63E89104500E5;
	Tue,  7 Apr 2026 16:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775572197; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=xCE/Ogz7luzHG3jFHvscO1SI6y7qHQPVbWCRyJeBoIE=;
	b=BK1IOgjm8Fzptl3sPIEOMCrJo4g4ZsvJUMLSCpsU78QPqnn9lCV2aEDoy97I5bzp+fJvqo
	BfWnWzoXc1QRT4Fc+JBW2c536hygeyj6jatFBcVc7wukzVFbcKYK1rGsKGO9WPPUYhjcL8
	HMvNbihmrTtTsTzm4xwhwVJ/1CyOG2zuB7zgR/sBD1aY2hxAXsF7wInsnHb8BUV1AKvF43
	l37d26/dfY3CJbAVrErFJA5WV8qilxSexaqC3NrInf/bcHr/ClwITeJnTBrHbjwDidNWnT
	3yQ35aHmdFUrcng3SZtHnajo3raqpFVBL2xLThjTa3MTtgjtl7hGoIF54/gPFQ==
Date: Tue, 7 Apr 2026 16:29:52 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Cc: "David Gibson" <david@gibson.dropbear.id.au>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Ayush Singh" <ayush@beagleboard.org>, "Geert
 Uytterhoeven" <geert@linux-m68k.org>,
 <devicetree-compiler@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree-spec@vger.kernel.org>, "Hui Pu"
 <hui.pu@gehealthcare.com>, "Ian Ray" <ian.ray@gehealthcare.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 12/15] libfdt: Handle unknown tags in fdt_get_next()
Message-ID: <20260407162952.443d9090@bootlin.com>
In-Reply-To: <DHHX2NDIC0DE.178QX4JKCVHF0@bootlin.com>
References: <20260210173349.636766-1-herve.codina@bootlin.com>
	<20260210173349.636766-13-herve.codina@bootlin.com>
	<DHHX2NDIC0DE.178QX4JKCVHF0@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-285327-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: EA4853B01E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Luca,

On Wed, 01 Apr 2026 17:17:46 +0200
"Luca Ceresoli" <luca.ceresoli@bootlin.com> wrote:

> On Tue Feb 10, 2026 at 6:33 PM CET, Herve Codina wrote:
> > The structured tag value definition introduced recently gives the
> > ability to ignore unknown tags without any error when they are read.
> >
> > libfdt uses fdt_get_next() to get a tag.  
> 
> I think you mean fdt_next_tag(), here and elsewhere in the commit message.
> 
> >
> > Filtering out tags that should be ignored in fdt_get_next() allows to
> > have the filtering done globally and allows, in future release, to have  
>                                                          ^
> 							 releases
> 
> > a central place to add new known tags that should not be filtered out.
> >
> > An already known tag exists with the meaning of "just ignore". This tag
> > is FDT_NOP. fdt_get_next() callers already handle the FDT_NOP tag.
> >
> > Avoid unneeded modification at callers side and use a fake FDT_NOP tag
> > when an unknown tag that should be ignored is encountered.
> >
> > Add also fdt_get_next_() internal function for callers who need to know  
> 
> And here fdt_next_tag_()?
> 

You're perfectly right. fdt_next_tag() and fdt_next_tag_() are the correct
functions.

This will be fixed in the next iteration as well as the commit title (same
issue) and the 'release' typo.

Best regards,
Hervé

