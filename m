Return-Path: <devicetree+bounces-274203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YO2JMiOMsWnkDAAAu9opvQ
	(envelope-from <devicetree+bounces-274203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:37:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 26098266AAD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 16:37:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A29D30C6244
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B1A53E022C;
	Wed, 11 Mar 2026 15:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="gpUAi+lm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08173E024D
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 15:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773243368; cv=none; b=F5Chm2OT+Aoj2HLFZ6BDa6XU9lsfsJ+Abp7+7GFPVCE9MOGQu4erJ3WPghHi/dXwv5oxqpMFbUw0Cr47owHF4iy2FE2cmWzat3iIsHzCrhThcevSagxR0IgM6h0rYGhk+fGu918AJzRvqsEX8g6T6BAxuOWPiiEgZvglpmg1NVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773243368; c=relaxed/simple;
	bh=JhmOGNhiIi1eXcioSXLT0/h/WbawMjiqJ7Bp2B3Hsek=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=e+9RlNOGCeB+S368BYzm0Ecy8yU8ZpUp8n9theCHc8qXnhlwOAj33BpCsvWl4wbJr+6wt3sQ0AVaoegOMq2ctgJtssM/WUT/se5HSKHVjEpEbbONp1/QvYp4bjf7cqY+4pfBiI3N1JcwQbVxoznRbcnGI/KnslxW5Hv9e3V0YW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=gpUAi+lm; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 9BAAE1A2D8E;
	Wed, 11 Mar 2026 15:36:05 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 701A960004;
	Wed, 11 Mar 2026 15:36:05 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 693CC10368F58;
	Wed, 11 Mar 2026 16:36:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773243364; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=JhmOGNhiIi1eXcioSXLT0/h/WbawMjiqJ7Bp2B3Hsek=;
	b=gpUAi+lmP/6S5sMwPE8MSeZktxs3Br0pjmvtvCIMWD6Wv21twCMD2xNP7C9J8G7/95Pc67
	EGIbVDhJ9tc6Oa1BAzyWf7d6yFZ7d443koZTFPyTufgH6HuU39S5QS0NZq4jD7756IkFf4
	SqY6ab5dqpLqfOU0Yd5xedXBpFAnvdgQD33ihpmZ/VHUJlyulP5lLQVvfGqjGx/ABtnn1B
	LarfpSnmlYYkBNdgBUj4pAgjLiV1GKGiyX+ovwT34UylHPmPbRxAXHzx9Jf/EXOeagg359
	Uz6ro8imO/u6RZNP4uVfC0I2wH/+K3y/ynw5ttKpZyZ+I7P02B8OMlHsGE/1HA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  Akhila YS <akhilayalmati@gmail.com>,  Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>,  Conor Dooley
 <conor.dooley@microchip.com>,  linux-mtd@lists.infradead.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Fix spear600-smi YAML conversion
In-Reply-To: <177324274850.685435.11462507375095087792.b4-ty@bootlin.com>
	(Miquel Raynal's message of "Wed, 11 Mar 2026 16:25:48 +0100")
References: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
	<177324274850.685435.11462507375095087792.b4-ty@bootlin.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 11 Mar 2026 16:36:02 +0100
Message-ID: <87o6kul6ot.fsf@bootlin.com>
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
	FREEMAIL_CC(0.00)[ti.com,kernel.org,gmail.com,bootlin.com,microchip.com,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274203-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 26098266AAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 11/03/2026 at 16:25:48 +01, Miquel Raynal <miquel.raynal@bootlin.com> wr=
ote:

> On Wed, 25 Feb 2026 17:24:42 +0100, Miquel Raynal wrote:
>> Recent conversion from txt to yaml of the Spear600 SMI binding by Akhila
>> lead to warnings. These are my 2cts in getting the yaml conversion done
>> :-)
>>=20
>> Cheers,
>> Miqu=C3=A8l
>>=20
>> [...]
>
> Applied to mtd/next, thanks!

I moved them to mtd/fixes, they will be queued in the next MTD fixes PR.

