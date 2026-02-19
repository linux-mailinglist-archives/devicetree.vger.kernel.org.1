Return-Path: <devicetree+bounces-266766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIrSOBaVl2nO1QIAu9opvQ
	(envelope-from <devicetree+bounces-266766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:56:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6144B16368B
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 23:56:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DD7F3033FA1
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:55:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7AD32E13A;
	Thu, 19 Feb 2026 22:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="UJ8Qx9VO"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2F532E136;
	Thu, 19 Feb 2026 22:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771541747; cv=none; b=IL4EluxjwxnzJNlZMdlhycYAwd0QExX1xKa/RYHSeuMnmDRaHCpff+IJixzH/6YRSkFC6CmOTQz6afntgRuSg6mEuvvBfSc1BlidtcHLWkjrJNBZg4egb6kP0d6CGafyBbQdxSmyxPp9Hr01qvgCPzeewdZ1h/JDDqONgYYC2DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771541747; c=relaxed/simple;
	bh=rVNcyJpCzCVD+GmW960YfrXt1CCQlTJw9LL2VRAeLEA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Kvf1163D9sgPUkWuXQ3qMgM7W1CYo5m36ikPefHZk3OyiAYPIhIaSeWtl86etwinunMskHtxfcnr8WbUmEPKPoi2et29Ni2FbyUgms6PbzwC4FJPcjxiOw75QtKDtuAurLrF689LIxZpddfQm59mP7mDDYkvFwJcXfIHitTzt2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=UJ8Qx9VO; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1771541742;
	bh=SsuYpqBzhHCrA5NOoErB6qWr93G3ME/F8oMqLaTn5dw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=UJ8Qx9VOxZXNGx2/KPPqarJ91onDtc/c91tR9XStg93O0F1PqgJ+gMaRUYKw8KAG+
	 JdhtuaUIov9nn66tpAvtBOIVvSjTaj+LKGdUseStOl1nbaRROrZt+7HtHWzMmhwA2A
	 XNGS4Ynv4pnpbB03RKhnj3n4C0U1FVQ68TvFvkgKyYlDSn+eKuufiN9va4TuahBbUm
	 cC4wg9fuXIARy+r/3i0NWLUeLEBgqmWx20em5jd2a3xnIP4GJsh973uEurQUmSUEfp
	 v/N05EpZ+l4VNk/PtqsKQGzOhhAe11vAFRUAk/Id4QHlykWQyZ+vlGIAGC1Q1/VwmF
	 qHIPlrhpXS5eQ==
Received: from [192.168.68.114] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 08C16600E1;
	Fri, 20 Feb 2026 06:55:41 +0800 (AWST)
Message-ID: <7fb15c01c586fb7d4a3ee506b17d87151d50bfe6.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2] ARM: dts: aspeed: anacapa: Add retimer EEPROMs
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: "Chen, Dirk" <Dirk.Chen@amd.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 "linux-arm-kernel@lists.infradead.org"
	 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
	 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>
Date: Fri, 20 Feb 2026 09:25:41 +1030
In-Reply-To: <MN2PR12MB403103EC90C803E3FA6CE6B9E76BA@MN2PR12MB4031.namprd12.prod.outlook.com>
References: <20260209-b4-anacapa-dts-fix-v2-1-fe446a7038bf@amd.com>
	 <6192440acc150d216de5e074299e579e891fc845.camel@codeconstruct.com.au>
	 <MN2PR12MB403103EC90C803E3FA6CE6B9E76BA@MN2PR12MB4031.namprd12.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266766-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.70:email,0.0.0.50:email,codeconstruct.com.au:mid,codeconstruct.com.au:dkim]
X-Rspamd-Queue-Id: 6144B16368B
X-Rspamd-Action: no action

Hi Dirk,

On Thu, 2026-02-19 at 15:54 +0000, Chen, Dirk wrote:
> [AMD Official Use Only - AMD Internal Distribution Only]

Please have a read through [1], in particular:

[1]: https://subspace.kernel.org/etiquette.html

   Do not include =E2=80=9Cconfidentiality disclaimers=E2=80=9D

   When posting to public mailing lists the boilerplate confidentiality
   disclaimers are not only meaningless, they are absolutely wrong for
   obvious reasons.
  =20
   If that disclaimer is automatically inserted by your corporate e-mail
   infrastructure, talk to your manager, IT department or consider using a
   different e-mail address which is not affected by this policy. Many IT
   companies have dedicated e-mail infrastructure for kernel developers to
   specifically avoid this situation.

>=20
> Hi Andrew,
>=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0 eeprom@50 {
> > Please order these nodes by ascending address. The node currently above=
 this one is i2c-mux@70 - eeprom@50 should go before it.
> > https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order=
-of-nodes
>=20
> Thanks for the reminder.
> I've reordered the nodes by ascending address in v3.
>=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 compatible =3D "atmel,24c2048";
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 reg =3D <0x50>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 pagesize =3D <128>;
> > +=C2=A0=C2=A0=C2=A0=C2=A0 };
> > =C2=A0};
> > +=C2=A0=C2=A0=C2=A0=C2=A0 eeprom@50 {
> > Same for this one.
>=20
> Fixed in v3 as well.
>=20

Thanks,

Andrew

