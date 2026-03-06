Return-Path: <devicetree+bounces-272251-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBp4CbX3qmlxZAEAu9opvQ
	(envelope-from <devicetree+bounces-272251-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:50:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7302224377
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C768330383DF
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 15:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB1913EBF08;
	Fri,  6 Mar 2026 15:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/R8cbSj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875073E9F79;
	Fri,  6 Mar 2026 15:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772812104; cv=none; b=BLQnHv8byCvZFqxdKyu+l1usDUlIrtWB8DGAb8AXmOR7wC3149zn3pfdk8cenlOFBL2IraRrficrzjcgsZNImNNziQHR02HN5z41a51TeXdhBhPyDnCHUpCGu+XVxjdShRTxQlJCCBL60t9al1cx0LsGeiR4PbqGLNZXL/KNQlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772812104; c=relaxed/simple;
	bh=JHfo1ohxeu1oFw0qFpKU+D9/2+aKIhpnuoQF2nwGENM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mtyelZEBgwmPxfNlefclIMxtwwtUO9KHM/ISuGKLblnBgdkK8GMLq7O42kVZUt4eh5B65WR/oH+bM/xxV0r3HDkueqdzTMpddyYbo1osQLb3JlSzUiGurwphMkHQ6WsPfJZR71FeTAhoJkZCMQjDVfEZQoVuBDWOldLXsaw9lcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/R8cbSj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E464DC2BC86;
	Fri,  6 Mar 2026 15:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772812104;
	bh=JHfo1ohxeu1oFw0qFpKU+D9/2+aKIhpnuoQF2nwGENM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N/R8cbSj9i7iFBQdr+ui9wCh6Em1M5yXbg0/7v8lJD8GqCnJsmGq4FWtWm6A+b37m
	 oxCPt2FU2k7Lq1eZqkUjJ/pxPwuTBpGcJ1gQ94iB+P2s2fPIC2S9LGGjKpbvYqczIf
	 k1/gNnhWio1SiIHLrGZ1nkRftbyr76kVgZK55GJnCfIZAx7aIolpT8W0jQ3pOUmJ1/
	 VCRL+rqiPezcwhDQQOSWjjere9mfmedYrjZo+rUaAyXX8tlS9EDAtubhIAxl/MnmnW
	 8xnyI9OV+VGLzGRXQ7JxPaAeRHqSzGX9ubLeTAGOQ0UnksjSbEJ/aFcViPKc/qr0Ky
	 r0aUHZ9S4r01g==
Date: Fri, 6 Mar 2026 15:48:19 +0000
From: Mark Brown <broonie@kernel.org>
To: Maciej Strozek <mstrozek@opensource.cirrus.com>
Cc: Takashi Iwai <tiwai@suse.com>, Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
	linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
	patches@opensource.cirrus.com, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 3/4] mfd: cs42l43: Add support for the B variant
Message-ID: <842a4f33-0472-44a7-8aa7-2cbb428a97e6@sirena.org.uk>
References: <20260306152829.3130530-1-mstrozek@opensource.cirrus.com>
 <20260306152829.3130530-4-mstrozek@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uBMAJz39laOJP+5E"
Content-Disposition: inline
In-Reply-To: <20260306152829.3130530-4-mstrozek@opensource.cirrus.com>
X-Cookie: A nuclear war can ruin your whole day.
X-Rspamd-Queue-Id: B7302224377
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272251-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.972];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cirrus.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sirena.org.uk:mid]
X-Rspamd-Action: no action


--uBMAJz39laOJP+5E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 06, 2026 at 03:28:10PM +0000, Maciej Strozek wrote:

> Signed-off-by: Maciej Strozek <mstrozek@opensource.cirrus.com>
> ---
> No changes in v5
> Changes in v4:

If you're resending something please don't discard any tags you picked
up.

--uBMAJz39laOJP+5E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmmq90IACgkQJNaLcl1U
h9At9wf/acLZimJPCVO4t6FNm7UyLhUci7Mbvz89Em4e96WwL7wx9RdTaQ36ZtE8
S3esYwOaAb30ifJeO1C3ZgvXuyXvS9XdGu6x9OlXy7p6R6xqTYaM6vcbAnDn7j5m
WR40IYIVmOKwHHMBkiLHhvpuRHbNMZZRYIzp/yww3xCAZI0vLtHrhfJMW9b6MCGu
VliWDQfB4NHNVhMxJqBPLUj6JUKzscBKk0Y2AH0vI99v3r6qABwEU8AcO+NW4r1I
yI4y5OyCqkgnsvnJ/PNp6XfSEEnDaUQeDpIbFGWaXqsVHUkBbJhOfyr2GHXsIzZu
8w12zH+2yplXUinnIdRSl72QR1o/pw==
=PhHH
-----END PGP SIGNATURE-----

--uBMAJz39laOJP+5E--

