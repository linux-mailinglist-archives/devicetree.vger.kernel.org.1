Return-Path: <devicetree+bounces-280219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGrZBy2Mw2nJrQQAu9opvQ
	(envelope-from <devicetree+bounces-280219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 08:18:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7835B320929
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 08:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5354430160E3
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 07:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7733136404B;
	Wed, 25 Mar 2026 07:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="b3JZgsUJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61460285066
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 07:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774422850; cv=none; b=dOG7R4c/Lc9V2WYXu5uI7Z8aDli3S6IjYK8Fkj+SAvHk89qkbxgKaDaXHOx89/0TcwtcEULOPcG+zd/oqmjivC4FzHn1HjXkVVPpKSPAB6cWSvZUbegedhsD92XdaM4nQXmHLXVjFu2Y4YYpuqdin5UmUNt/VOtQDILGEXgow58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774422850; c=relaxed/simple;
	bh=Fkr6ntC5TQeGRAuflXX+PZEwU6WuhtzwRMBzb0AtdG0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NrZwshzY0qBIQF+BvR7X2avaZrmlCL2tgOQqa1L14VlEnJQ1VdES+j4cUweTsVlpu1wIVZJjydzSl97lggo72n1LzoJJXWI4qZ/aw4EkoqLYoPHIkPg5UC/O5Oo+wJzHCEjwZfRbCT2Ks5ykeE2YEmZAOq9qCALvQEHgcZSfUPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=b3JZgsUJ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-482f454be5bso5216405e9.0
        for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 00:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1774422847; x=1775027647; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Fkr6ntC5TQeGRAuflXX+PZEwU6WuhtzwRMBzb0AtdG0=;
        b=b3JZgsUJWCZ5eRtvmQpIdxF8vYjPFQSlqk71e6e7R6si45Vl43iX0D+vj3Jq2stm9Y
         N4z8rLXgy29AeoXQb4QPHkrK4uwidPCZb4Flc8NPaG7VKb19HuYgJ48QNnckJgKWxfig
         ObKKkE4Sha7HAUwPqGWOFiOig9e2fspoebYu9Ni40eSBiClPpc5cs0H/aTBH/CCHfTOP
         uJy+sCgfWSloE+1EHkZ8MI8v/HsH3xE1zi4qV3co0jDKIEFpOLwIFQbVvIwgWi4y/S+T
         cWZ3TJWzNisG18Xja3s0C1lrQ2lQQk3/Y1sg81wTLyoBTHJmEAIRE5SKMGky9e0LsO9y
         Vvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774422847; x=1775027647;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fkr6ntC5TQeGRAuflXX+PZEwU6WuhtzwRMBzb0AtdG0=;
        b=f1sqRHPGS99gIRjyDd3dxoySw82ejmZ+KxuKMdCVWHW+CsoSzI0bKH9XPmlCYde/ES
         xcG9YNiv1ZNhvK7XAj45baQ+kBeRsKY5Tb1rMiAkgfoKA1HNiGBG+xyKoIpBiE+0EjiV
         yH2SJ+mog5RCwRDiFPweskY/hLvKFdS2wL2Pz5gJWYwUEPJauwCE7bSs+JB7+W95fbJQ
         usaW3X055Cj3KPmEA2ACnaDCeGTVK6GJlmwX3bAJv28KtJpshj7/wD8vUh9XgTF38yM7
         qD1/p3PJvWe8Qh8Zk96h0r0i1N+cA3E8GvBStQDQWQ4uiM8Ip9XlkNEYTaOqk3NMLesC
         IU4w==
X-Forwarded-Encrypted: i=1; AJvYcCUzqia/ZiBrAgY4PQOQWzKHyvJsvcy9VUOghdOhd1rL5OjTlZ2s+QMr1EaPswJCvk769ML4JU8Fo/1w@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7WzX+ApkiXe0rsgOpVVDAn9pGcrVifviVJHyvedFnWqc27d3o
	LJElmJuJnycbTOsmbxwnr+YgOceO3k93VAnYulyZ3OVEIPsT47+/irjGVDWwdEPMpgI=
X-Gm-Gg: ATEYQzzN1cPImVA6a9P0PtlpCwOajpjY/45JB6loX6Dv9PdA9JZYFh0GjKO/HIMQIOE
	7xwYhcEY4vlM6z0FnLUP9wakaModG0ahot7QyttPoPKLUb+06bn9hkrj7KQkCWTqbkEJ1oPIJwO
	sQgYa3l/TlPRplfUOG7NsxyUBWrIAOfG3+2eq53UxtwU5iJUps/25k2/x8Jzkdj1tW8bdliaPo6
	iwkPUdt/RO543ihOxSHi4z3HixhPk4g7LFAy3YjdFUiAdA0ncY8Wm9mN28YeGgQ2LJCAkJ5n6qW
	BvB+vz2DDUnar+FRt+vHwPae5kX7MSvjH1Ikpx37vwZ29AjPqIZh4VZCbnUaoQryB3vtGkpNTNp
	YZ/fDAdV+LDs3OzugDEkGaJXM0ZsWfpj/VV0ocdEH5lJsAflsRhheipnj8qcK3irL5LdKdLEffv
	PlJnf2r1c/hc9k1Q8WVfaEU6DK4KpjvXJw4w==
X-Received: by 2002:a05:600c:888c:b0:486:faa8:9e4 with SMTP id 5b1f17b1804b1-4871608eb93mr26991745e9.12.1774422846667;
        Wed, 25 Mar 2026 00:14:06 -0700 (PDT)
Received: from localhost ([193.115.216.78])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-48711764625sm111818775e9.14.2026.03.25.00.14.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 00:14:06 -0700 (PDT)
Date: Wed, 25 Mar 2026 08:14:05 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Richard GENOUD <richard.genoud@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paul Kocialkowski <paulk@sys-base.io>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, John Stultz <jstultz@google.com>, 
	Joao Schim <joao@schimsalabim.eu>, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/4] Introduce Allwinner H616 PWM controller
Message-ID: <acOK8lTTyqUDkOUb@monoceros>
References: <20260305091959.2530374-1-richard.genoud@bootlin.com>
 <b47801f9-3828-4c68-992c-e85373576f3d@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xajyc235ccyd4b6n"
Content-Disposition: inline
In-Reply-To: <b47801f9-3828-4c68-992c-e85373576f3d@bootlin.com>
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	TAGGED_FROM(0.00)[bounces-280219-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,csie.org,gmail.com,sholland.org,pengutronix.de,sys-base.io,bootlin.com,google.com,schimsalabim.eu,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7835B320929
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--xajyc235ccyd4b6n
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v4 0/4] Introduce Allwinner H616 PWM controller
MIME-Version: 1.0

Hello Richard,

On Mon, Mar 23, 2026 at 05:27:07PM +0100, Richard GENOUD wrote:
> Hi Uwe, do you plan to grab this series or does it needs some further
> reviews?

I didn't find the time to look into your patches yet, but I have them on
my list. Unfortunately there is quite some more on that list, so I'll
have to ask you for some patience.

Best regards
Uwe

--xajyc235ccyd4b6n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmnDizsACgkQj4D7WH0S
/k4DawgAl9zebky6JUhsQcoYow/EocbW1XqWpz2vAU4LvXyj/0aQHwcFNmx+4DKy
6IvMXFcFuL4pueeCfijwE/tpUQDXKcfsj71O4CuoJwj0vaDNV/j0L6/UNYIPCwXI
YJYZ0Sd0JAL8BHluFBQtb2dd5oVwq04sETQUJ0IVH6TNEkU9lVsCM1nc9AD8a+gE
en1Jc9qxxLeNkNt7ZE01K5A8d8vyqR2iyq+rZgTGNrM9hF9Ie6Xk9wOwR/1J4qli
3tdzMjk/EQgFWj2mUkublabj28rl5M20evd/SgdL9Q05si+LeWcTchW3XyrZTgOq
uWWaKIZls5u84B0vW44FpG4l/XTcZw==
=04lb
-----END PGP SIGNATURE-----

--xajyc235ccyd4b6n--

