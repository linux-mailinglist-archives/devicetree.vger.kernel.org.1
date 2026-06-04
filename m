Return-Path: <devicetree+bounces-307041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tJeyIVXfIWodQAEAu9opvQ
	(envelope-from <devicetree+bounces-307041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:25:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CA3643496
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 22:25:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sang-engineering.com header.s=k1 header.b=l+AZXTIe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307041-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307041-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 75CA130AC628
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 20:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB83D3DC4A8;
	Thu,  4 Jun 2026 20:19:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F5B3C1981
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 20:19:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780604391; cv=none; b=ajGfjOYJnpfTVABY+VTfOvvSmkDnEgyt9L5al32J/6W2y8R6PJlnyQkXz2oir3GTg+a3cQa+Bh/8bRaf5BRFuuGLpLgzYbEcQ2ryH4KVIBHqWp8rWWUzjJp/8PL/U5LOHKn6wOPkPQY0S4+HLpnwzPSaEcsWg0BGnFfSeT/MWwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780604391; c=relaxed/simple;
	bh=wOWrct4N0AfgGtg72aFx6tr1Sz6KjPvG3UZkvg/blgA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VR5JNUfx4g12OrO9BAVl1IR0lAyMltrKTlZsXCOIA2bH5PpWdDqrOXqLxRO4j6E2pZZLynQNvpiP+wg2GrzIZNCrlyffUbFBBBvLLG2LRQeYb1xUwDtLELvyGVS+UB3EKtiPcaTYMPt8LTpLJ9kCh057c8ex/fgyQvCK4lfa4bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=l+AZXTIe; arc=none smtp.client-ip=194.117.254.33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=PTaj
	KTDvU8awB8LCiPYX4xslgmdFhxW9e40Gb0Tt8io=; b=l+AZXTIe+r4mE6/xJnu9
	kzO2pBuv9MHFHo6Kf7U0JJdghZ61yuZG9QWxViIWHeUPql5MY2uS067jHng53jM0
	107vAxQNxgL7Bvuvm5CkQlS7R1CW+nD1jGcAqQ7TRnEduKp9QE3WN7UBiQCUUnA8
	QuC3S0KDShsSkTBoxmshafjBzsrb/5nCPGJH4BdtJDiao0bZtbR5uM0R4TvKeBp2
	IyOOLl2Ejk6EWBAholYuyO5ItpZYl8Vp9dVz9WSOi3/ztShQyC03AMwSkCPYX706
	tFSi/+zHAA3tn29Fs4gB9n82Jker87XBbNCA63eOnQusAPLqJFrT6GFNKP+Dlug+
	hA==
Received: (qmail 3752859 invoked from network); 4 Jun 2026 22:19:48 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 4 Jun 2026 22:19:48 +0200
X-UD-Smtp-Session: l3s3148p1@nWkERHNT4pBtKDDL
Date: Thu, 4 Jun 2026 22:19:47 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ben =?utf-8?B?SHVhbmco6buD5aOr6LuSKQ==?= <Ben_Huang@novatek.com.tw>,
	Conor Dooley <conor@kernel.org>,
	Novatek i2c <SP_ISW1_AT@novatek.com.tw>,
	"andi.shyti@kernel.org" <andi.shyti@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Toby =?utf-8?B?Q2h1aSjlvpDljZPmnJcp?= <Toby_Chui@novatek.com.tw>,
	Shihpei =?utf-8?B?SHN1KOioseipqeePrik=?= <Shihpei_Hsu@novatek.com.tw>
Subject: Re: [PATCH 1/3] MAINTAINERS: Add entry for Novatek NT726xx SoC i2c
 driver.
Message-ID: <aiHd4wpuR69tyG1V@shikoro>
References: <20260604060411.355675-1-SP_ISW1_AT@novatek.com.tw>
 <f6cce361-47ef-4488-ac1e-5f60d3cd578b@kernel.org>
 <20260604-grievance-esophagus-a607a9d734eb@spud>
 <PUZPR04MB61094E3F7A824A3C8D81D8AEB7102@PUZPR04MB6109.apcprd04.prod.outlook.com>
 <0df042cb-591a-46f1-a53e-04f94bca2c1c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3Jc33mVOZNO7JlcX"
Content-Disposition: inline
In-Reply-To: <0df042cb-591a-46f1-a53e-04f94bca2c1c@kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:Ben_Huang@novatek.com.tw,m:conor@kernel.org,m:SP_ISW1_AT@novatek.com.tw,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:Toby_Chui@novatek.com.tw,m:Shihpei_Hsu@novatek.com.tw,s:lists@lfdr.de];
	DMARC_NA(0.00)[sang-engineering.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307041-lists,devicetree=lfdr.de,renesas];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,shikoro:mid,sang-engineering.com:from_mime,sang-engineering.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1CA3643496


--3Jc33mVOZNO7JlcX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > 	Sorry for late response.
> >=20
> > 	Please help review the modification in MAINTAINERS.
> > 	I am still looking for internal help to remove HTML-related messages.
>=20
> It's confidential, no?

No need to be sarcastic, he is working on it.


--3Jc33mVOZNO7JlcX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmoh3eMACgkQFA3kzBSg
KbbjTxAAqDtI4f8XnBvuLCSr4yl4yXEjbaCdkWnn1i4IhCaiDxrCJdgUZwJdrh4r
TB0DHi42zPNMlmN52879w01AKYVU/BGHkPQ4/mZN4x9qo1EIpGLgWVxjoDQ3Mstw
uZNHJgKtFEYA45zbS7oTQKTb79JC0wrg93yfsZqDDCZAiQWyN2GC15dAS+lzE4bD
GK1h29B8yOVN+tIWFvOA2/pCAFM7X66dPCC3Pc+/MaxVWiq4jRYO4VuO3sK4gbbD
CygHwjob7UePig4IEDj3Wa0CEuODD1aY6Q2oMNeKgzTAbMGpZS/BG/QeVzLqPZRU
+RCRuP5hbT+RAXnvIBA4KawwOT/fVZ3m6mCPh2YC5bRGgf7QRdl7cO5zbTpcOJyj
f936/hapCTY0pYulxHbgEGPLBjQh6LJgTjm3wFALzAGFsTsnTLkacRxKsuCFtbIQ
6zwdll4zvb4aA/PsKLkE45YMZfnEhgrBqO3ayT85IS+oTgUsJ6bR6sdFqth7+PHI
PeQ+VCRGHIcEqHgFs/wqyo83OnNTHoUIfG/5WOLO+eH+TD+OqLlz4p7xhpfT701f
ZvteE00SR+2iOYehDYphKruNKpcnprIzOVP0ccQrwh1wQVXABMdw7PC/9Czd6q5B
suwuQHWR7VTRWaK80uEa7D8uTh7rPjeXkRlmpt2a3YSxyOGnte4=
=vncQ
-----END PGP SIGNATURE-----

--3Jc33mVOZNO7JlcX--

