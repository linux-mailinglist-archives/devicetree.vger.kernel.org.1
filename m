Return-Path: <devicetree+bounces-307099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e2nQJvUbImo/SgEAu9opvQ
	(envelope-from <devicetree+bounces-307099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 02:44:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6435644264
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 02:44:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=codeconstruct.com.au header.s=2022a header.b=ZloprKCo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307099-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307099-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=codeconstruct.com.au;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33538302768A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 00:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C94E1F63D9;
	Fri,  5 Jun 2026 00:44:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C1245039;
	Fri,  5 Jun 2026 00:44:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780620251; cv=none; b=Bv/UAvkYVvWBEK+rOSJNDzXqK+JqLkKIckwT527CDKJrTzWtfTMovmilapxJBKQiNUKRBioSccqfgLO6aIOOoiHLZy79TRkV9mcZkBNhPjIqkx8czFBNp9/P92eKrMF3G76cHV62H6qP9mZ4NAJW6tlpmWHjsgVtylZ239qWnt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780620251; c=relaxed/simple;
	bh=jsj1k0wHi26GAkypB6QUIJqC1oJwhVzc1i56Db1iD/Q=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Qil1LOhdYUxO+/ZZjvu0SPDg8SLa/EE20iLPULGecC4yPxZv5UAXogIjIXKniIn8EEOpuus4bMs30BM1Cy6fz/IkSh0Quku47CoJqXjzpFT+2eb5n+x5lPCUZLmPnWT38Pc89mwKZ14Naie6nOCx2CwP36NPQiTwjkzu90JGXb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=ZloprKCo; arc=none smtp.client-ip=203.29.241.158
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1780620241;
	bh=jsj1k0wHi26GAkypB6QUIJqC1oJwhVzc1i56Db1iD/Q=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=ZloprKCoX5TNbNEPdKftTMY6jPQai4UHIv8xuzYMMAW63DXTDsjdtaGphRix8B1EL
	 AIWw4/scrV1UPtHbLqV5OaWdPT8rMfT21f7X8Pe0R8P//3NLgIT7ahtwjIc26E40yn
	 GEuPBXect43k/BQgPksH/3n43NAcxwIe2bNCl66hs/WBuwV9tCxzTm38c6l/bI0ova
	 mRmOr1VUUxbj1SNXcDm7yRjyjleLLu1d0fPWzFQRrp8RDCcpv4vq/9f/plk01hK5zm
	 XuCUQ83LILf14iJSNxuWw2vM4twD7zfH9MXf29u0UjGNHjlZcTiEG+svE/RZndnp6G
	 xGRqX0Bwk0I1Q==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id C193F6013C;
	Fri,  5 Jun 2026 08:43:59 +0800 (AWST)
Message-ID: <91f6780b688285b4c002d2efadc7b297e9d69838.camel@codeconstruct.com.au>
Subject: Re: [PATCH v4 2/3] dt-bindings: mfd: syscon: add
 aspeed,ast2600-i3c-global compatible
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Lee Jones <lee@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Dawid Glazik	
 <dawid.glazik@linux.intel.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel
 Stanley <joel@jms.id.au>, 	linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, 	maciej.lawniczak@intel.com
Date: Fri, 05 Jun 2026 10:13:58 +0930
In-Reply-To: <20260425-poised-accomplished-hyena-d2c1a0@quoll>
References: <cover.1777058942.git.dawid.glazik@linux.intel.com>
	 <41d66492e1a1d42f6888459288311094c8b7bc51.1777058942.git.dawid.glazik@linux.intel.com>
	 <20260425-poised-accomplished-hyena-d2c1a0@quoll>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307099-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:krzk@kernel.org,m:dawid.glazik@linux.intel.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:linux-aspeed@lists.ozlabs.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:maciej.lawniczak@intel.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6435644264

Hi Lee,

On Sat, 2026-04-25 at 11:40 +0200, Krzysztof Kozlowski wrote:
> On Fri, Apr 24, 2026 at 10:21:00PM +0200, Dawid Glazik wrote:
> > Add aspeed,ast2600-i3c-global to the syscon binding compatible
> > lists to document the AST2600 I3C global register syscon node.
> >=20
> > Signed-off-by: Dawid Glazik <dawid.glazik@linux.intel.com>
> > ---
> > =C2=A0Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
> > =C2=A01 file changed, 2 insertions(+)
>=20
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Thanks for applying the AST2700 SoC1 pinctrl binding[1].

Can you pick this one up too? I've applied the corresponding dts patch
to the BMC tree, it'd be great to address the warning that's currently
produced.

Cheers,

Andrew

[1]: https://lore.kernel.org/all/20260521-pinctrl-single-bit-v5-1-308be2c16=
0fc@aspeedtech.com/


