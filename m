Return-Path: <devicetree+bounces-158498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C489FA66FB2
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 10:26:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7B277A842E
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 09:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3446020767B;
	Tue, 18 Mar 2025 09:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="iR7GXB7o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D60520766A
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 09:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742289983; cv=none; b=IFDTQ+tf4xo4Gomg9fth2wjcx3RUTts6NmwQNvkBLEO32qFd+bfzymH9NHYVFJbsti8lqSQN/jfqLAw7xluXAx70A5OD0k5o2Q8GMAJH63JicGwh+e5ZzXR2a4v/BTdMTNelphgCKM1NpLxKklqpL/X6vkrCDyFlLnWToick1M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742289983; c=relaxed/simple;
	bh=1Zb5tbip+XzJL8lm9L6EO9z+69gnwlTjh59V3QneeKI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B8V41sNzjI7/Ek/tzxZPh9egEbkyBjg0cu0zzUaCQwiSeQNIMcKLjn3ii5UxxH4zey+hGOqS/UB7GeIXbk6792X7c/fALYIssEPIEc04iNFkZsHk+nbNgnBOewDfY9WESk83nV8Zomf/sjWDVdsuiYNchk7sLuPf0RrXo5nWIAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=iR7GXB7o; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=1Zb5
	tbip+XzJL8lm9L6EO9z+69gnwlTjh59V3QneeKI=; b=iR7GXB7oBWexuy+PtaR1
	128PVUT7ljCr6VzuiorrJmDTiRM4YDTN9ePZJlpOO4sJfAfstOkdSSubDcksaFu1
	jmfuf7B8baTMEGTkAkozot5hTOaTlmt/tK/ScXxuT7L3w2BmBR/zcyvDx3DNT518
	oYqD9v+BYrGhxg2vBzAaDjlQhl1/mkkEumA6jnNvSEuEEiThmOAzGdZNt5OIud21
	8eNPWUuwQjdczoVQJuLJbP7QJQIJm+z3LoMW9Qd+BdIclgFEPnrTLZjPKjleohKL
	yMaw+MsrBCY+O1PgD8gurOfMKOC4Je5id27WyZd4mmIpGmnMLOTKt0LV8gJAfh13
	lQ==
Received: (qmail 3668036 invoked from network); 18 Mar 2025 10:26:18 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 18 Mar 2025 10:26:18 +0100
X-UD-Smtp-Session: l3s3148p1@xQ4/f5owiKogAwDPXyTHAJp038nK7dx+
Date: Tue, 18 Mar 2025 10:26:18 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-renesas-soc@vger.kernel.org,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: serial: snps-dw-apb-uart: document RZ/N1
 binding without DMA
Message-ID: <Z9k8OvsaYry0pkCy@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-renesas-soc@vger.kernel.org,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
References: <20250318085353.18990-2-wsa+renesas@sang-engineering.com>
 <CAMuHMdWP8a5eR_1sk2oUe02KdiDaibHnqAHbn2mSyBHzP1FNJA@mail.gmail.com>
 <Z9k4qrFXCRf23MDo@shikoro>
 <CAMuHMdULR-=emVpF=MwTtC+MUb=R1J15eS6Baet-m9MrRLQ+Jw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6rakHJ+RTyNC/U/F"
Content-Disposition: inline
In-Reply-To: <CAMuHMdULR-=emVpF=MwTtC+MUb=R1J15eS6Baet-m9MrRLQ+Jw@mail.gmail.com>


--6rakHJ+RTyNC/U/F
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> DT is not just for Linux. I guess it can run Zephyr?

Since nobody has been bothered to include the essential bindings over
the last 7 years, I don't know why we would want to handle those 4
random bindings for it which make life only complicated for us.


--6rakHJ+RTyNC/U/F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmfZPDoACgkQFA3kzBSg
KbbO2Q//RAplxB7mkBlNvsY7GR4llp5yFteCCWOLAxiBA/6WlgLaz3ZIDFBu/TD8
R/Mj6wK0pquyR0fQANVT5s/qeQBWWneAuoHQTif14QN8g2wWlYTJ2gFZfU1QOULZ
0yPgInh6jEVQg0hHhGVzSTNicikkihUBjUWIH7Lz2QjaQvpbW5T+GVH6Pm3fTUw0
gZ4pQo0mZqGILJ50MnYwbbbAly3OS4WhRDkewF6W0UUhrMOPvmvPc6BiBJzkMLaY
Ec/5kk4P0Vuth9Cf5tTXMDIPTaiw96JK09Kdh5/lebJoTl2M/ZGO5zqtb7ecz+Nz
rma/F9BzDnAzNmK5Jb8w8ZI+uwhcx+vL1Jb/OBV1viSjFknjWHtKSLIm1WR3VWRk
RFQPv21Y9rg+Q7yTg7hELWOqfTEyzwCF93F/v4ujyRhZMQZ80xrodHiVvRkKEPEs
USWf/58oDUZ7QAck1k3tEpC3vMQcorzhyEeMwnKastJAjmoFEmS3lY0LNk3rxspZ
1XbG4AaoXDYgsBWMWJbjRo4s9as3Io1L5toO/aFtGL+POu62njo9BywKcgDKv9p0
+YSiV9vg3unX/JNflSjIxKpnWHoGOCHMXvUMfzMBdryDgqjWQ8N5hTcW9SxoFNQz
haDUKeNCStND5O7uT7dN16zOJqVuGWvIGgSQYJKJOQOaS/ysJ0U=
=6xGn
-----END PGP SIGNATURE-----

--6rakHJ+RTyNC/U/F--

