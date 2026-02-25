Return-Path: <devicetree+bounces-268468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGHSLCwkn2mPZAQAu9opvQ
	(envelope-from <devicetree+bounces-268468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:32:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C1019AB50
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:32:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFC433021715
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92F3E3D3D12;
	Wed, 25 Feb 2026 16:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Ck6e7Puq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0E0324707
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 16:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772036908; cv=none; b=fMGe9JYlx86CbsHsE1Y8UyyD7dl9lTVhy0AgArEMy3k7SoWsJcV/PF+0Ln1zG3IniRv9Y3XNSwS2MAkcH4k/53LqzHGiFxYS7KP0pcx3vBXClm3uT2CIMybkpEUtyolPOTjs3GglExcTHD2BMX4iZW2yNE8ZnsBevHQRrTOj+d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772036908; c=relaxed/simple;
	bh=CmL+fmz73BV3AlDw/oqORXnonMrwOtUjoXqjKJcw51o=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Ydfe3rm0j/n6sduiBhWgaJeQqbbWjxPWophalLSOw35jrNbF0b1x96KKLdCYmv3zs5QsoTN1f7Y5UM9xppqC3oH/K8qu4tha8QmHg5LVxZz3QHgFpT9FG77gDtRHmHkbWofKcmvKnJB9foGuXtBJ2+7CA5mRbBGhU4yBS27stCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Ck6e7Puq; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id A5B8EC143FD;
	Wed, 25 Feb 2026 16:28:40 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 977B85FDE6;
	Wed, 25 Feb 2026 16:28:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1D09210369259;
	Wed, 25 Feb 2026 17:28:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772036905; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=unylvViDZIZMB6gJn+HBSaPDT/t03+zotSysy379arM=;
	b=Ck6e7PuqiGvKeW6g8T2Xf4D3O2Om5KOMpuXCNoCEhyqQ4jEluUcXQVaBAbSCGjqgWRofZx
	MkBTFgeaFZSQ8kA7RyC0/LnXFc5rfZB2t9Rrdh+ThIIsZ+0E2eD4ouzOiS5JugbhVGEQnz
	sIohrQiAt6J+D3zwOJouL7eGBzPYKfupkmrL3yDuTsw2CfVZeKdE40UmqN0yUxPmYODSvR
	FyHxG9DIIJMdnAbFOL890LkgE2qKi33T2Dt/ALeoseAOwFG2l0DEe3XjcdTqUK5mLQtZtN
	n+vUqPyVJIKEI3RsNVr3jcDFw7JOfVrlhPYd+K0TqLh/C2JiBOyxebb9RgRn8A==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Akhila YS <akhilayalmati@gmail.com>,  Richard Weinberger
 <richard@nod.at>,  Vignesh Raghavendra <vigneshr@ti.com>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
  linux-mtd@lists.infradead.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mtd: st,spear600-smi: convert to DT schema
In-Reply-To: <CAL_JsqKSpsj1BQB1q_s1+j1FT+XLORgWRijMTNc4wTawKDZxQw@mail.gmail.com>
	(Rob Herring's message of "Mon, 23 Feb 2026 09:00:45 -0600")
References: <20260122-spear-v1-1-fd44bc79695b@gmail.com>
	<CAL_JsqJhnuWzPxUWywZkjt=zc0nSFKP7hM_ekmKKr7p_jXaaag@mail.gmail.com>
	<CAL_JsqKSpsj1BQB1q_s1+j1FT+XLORgWRijMTNc4wTawKDZxQw@mail.gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 25 Feb 2026 17:28:22 +0100
Message-ID: <87fr6opz2x.fsf@bootlin.com>
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
	TAGGED_FROM(0.00)[bounces-268468-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.982];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fc000000:email,bootlin.com:mid,bootlin.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,f8000000:email]
X-Rspamd-Queue-Id: 33C1019AB50
X-Rspamd-Action: no action

Hello Rob,

>> > +    flash@fc000000 {
>> > +        compatible =3D "st,spear600-smi";
>> > +        #address-cells =3D <1>;
>> > +        #size-cells =3D <1>;
>> > +        reg =3D <0xfc000000 0x1000>;
>> > +        interrupt-parent =3D <&vic1>;
>> > +        interrupts =3D <12>;
>> > +        clock-rate =3D <50000000>;  /* 50 MHz */
>> > +
>> > +        flash@f8000000 {
>>
>> This is now a warning in linux-next:
>
> Now this is a warning in v7.0-rc1. Miquel, please revert this as there
> has been no response.

Akhila staying silent, let's try to help with the YAML conversion effort:
https://lore.kernel.org/linux-devicetree/20260225-perso-fix-spear600-smi-ya=
ml-v1-0-8ef3d205ab3a@bootlin.com/T/#m908bf59527847285c0447dd0379b3c88cfd718=
57

Thanks,
Miqu=C3=A8l

