Return-Path: <devicetree+bounces-325216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mzE3N9ePVGp2nQMAu9opvQ
	(envelope-from <devicetree+bounces-325216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:12:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8256C747E20
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:12:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=BW0BM6L4;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325216-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325216-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABB48303DD6B
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B70436920D;
	Mon, 13 Jul 2026 07:09:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39060369D4A
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 07:09:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783926581; cv=none; b=bgXmpbYVtTjrdcBBc/4LE/qbWU2deIKgkl8ohpFbA3frNFkietJLXVt6IT9O+tUGIffHZl1myV3lKCaI3WBnQNBNdBZeEWEk/ortrVmtp15S84dMpFWvHvffDC1HQ1wxWtirJI5ScueReY4UAVkFCpTpglVeB5mQ85pFHEHNUBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783926581; c=relaxed/simple;
	bh=K7I9cS0TN9s/To4oPapsBLIuxMeq3baSFVQFvdOJtr8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QoTdRybAarxtX2bse2R3xosAWMwPwl5PGrDOfzR/Xw+AJWPbKK26VCi0xNzHhdyistdn+ImMc+2/6lngbjthkTjXzXZK7kQvKPTYanLIsReT7o5MTdyHi2lxg9s2cALDwz2DsZi0CUGx0UhvD1U0kPyDzYcDjKAFMjJttaVqxnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=BW0BM6L4; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-493c733f15aso27051815e9.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 00:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783926578; x=1784531378; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=K7I9cS0TN9s/To4oPapsBLIuxMeq3baSFVQFvdOJtr8=;
        b=BW0BM6L4wKsNbG/k9f11BG3Qf0i3+7angAsHpTGk7L7kbrUUBmInCvp1SDlGIhstDB
         KCAgvQ0Vs0lNgsE09PECRkDVtMwEJa6Ro43k6F2oScwGS7lkC8kaaYK+RCFrsVts5S5F
         tYOp1ofXNMEorkRqQrulwjlI4f5zZXWcdirsVtNxrRMPu+UKQp/Ik4BGdFZegd4VDXOH
         UFMBs5Un61nC9ArYqWBq8lP25GR9P+WGzLy/cqldUcSkH0bSlAloQprklimw4HOOjqqg
         sCOpNbQSApjPm7mptF26pxbmewzz5tu/GxYsVoapsbCc1NnBcBrocXQF8K43sAJeCMz/
         od0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783926578; x=1784531378;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=K7I9cS0TN9s/To4oPapsBLIuxMeq3baSFVQFvdOJtr8=;
        b=g7pbm2u9nYp0QcrZ89CKwACMR0wBhAc/D2X7Z7vCi2kDmFQ8roSTnE4uwJ5GH9MbOs
         UhYdz6mVkAo1z/pRB2eQIUzA2FdZ2tKG50it8iH1K2kYlFoUILQySN5pMW3C0X3XTvf3
         HPFTBgkooYZdanVOZCC1CnrAzJoSCbWpoNPrxTzDUVcEChX5Md5s1BjSHyxHwWVzIIrS
         DikGvpKD28pGGoMGHT2Np1nESTU/v615TumyEBPM4dB4ilidjtNXzrwyMPgG+661McW5
         174M7XxqeBAkbbuv7oqXyN99zqxHNiSJaGZnsZ4olSHuRK9Dfhz2p5ZCnV1KybHsFA5Z
         x38g==
X-Forwarded-Encrypted: i=1; AHgh+RorhXJbxI/HkFaJCOE39ZR5sIjVcSjh8TnlFdOjHOgcrN0STljqNZIXE9ecOvRDn705sqyXLtNJEyn8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc67GlXgmubLgHXXRqZeLoibD6apmZKKVKppBuWea7CzDosobG
	OXvRQWe+P7xMM99PgDQuxHr5cEx659gV1GjJ2+6zqmY08e4zC7PGUGQ1wvm0fVk8Mnw=
X-Gm-Gg: AfdE7cnaDuhjf5U5m9vwK0LKJPQY0+cPrW+l+n7/q1Iu7Y53cNlP1MRfKvkNeTw9ABY
	YtYi1IUI+Njep7V9aurgLe//+D0Z3UKrsvrWjttCvt1I0DLuZGk98ivNNPnldB5c1X5UWEfqfCp
	thVZwm/odYtaCvT5EoOORN5ZMnj0PmNi12Rb16nD8pi5/kQPNoo11cD2+PhciOrYBMShpWS5PGd
	7hfAIZzVHo9i2e+r3K4JmchfeVO48zURQY8T9Vg98wUtbNa7jRpg4j5w6/7brqnd/EqnUloGKfs
	ESR1C2p4guVIiimdVCYrhTGonqC4uI4a9xUY06OxUF6i8azFh/AbWL/ZprY0XgyS3cBW7rT6weZ
	wbs5pRxOn/H3WXP4AyufFOXDILEA6njwuXFsrFiv7k1wMyBRn8Pp6G4nRz6QTpKThSO9xU7Oo/V
	rhq/MWcYKDYmU+XXpOb9pvofX0zXFl9kEGeI7F9/B+h2HACfDen9xNewFlnv40flAeuySp4XdLO
	cjx
X-Received: by 2002:a05:600c:6d8c:b0:493:ad1b:b38d with SMTP id 5b1f17b1804b1-493f8839381mr50015695e9.37.1783926577642;
        Mon, 13 Jul 2026 00:09:37 -0700 (PDT)
Received: from localhost (p200300f65f47db04289d3be78de882c5.dip0.t-ipconnect.de. [2003:f6:5f47:db04:289d:3be7:8de8:82c5])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-493eb6df6d9sm403230675e9.7.2026.07.13.00.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 00:09:36 -0700 (PDT)
Date: Mon, 13 Jul 2026 09:09:35 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Richard Cochran <richardcochran@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"DavidS. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org
Subject: Re: [PATCH net-next v4 2/3] ptp: Add driver for R-Car Gen4
Message-ID: <alSO_-xODO9gWXKn@monoceros>
References: <20260702125525.2230427-1-niklas.soderlund+renesas@ragnatech.se>
 <20260702125525.2230427-3-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xjkwq43klqevuzkt"
Content-Disposition: inline
In-Reply-To: <20260702125525.2230427-3-niklas.soderlund+renesas@ragnatech.se>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:richardcochran@gmail.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:niklas.soderlund@ragnatech.se,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325216-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,glider.be,gmail.com,lunn.ch,davemloft.net,google.com,redhat.com,vger.kernel.org];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt,netdev];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[monoceros:mid,baylibre.com:from_mime,baylibre.com:dkim,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8256C747E20


--xjkwq43klqevuzkt
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH net-next v4 2/3] ptp: Add driver for R-Car Gen4
MIME-Version: 1.0

Hello,

On Thu, Jul 02, 2026 at 02:55:24PM +0200, Niklas S=F6derlund wrote:
> +#include <linux/mod_devicetable.h>

Please don't add new users for this header file. Only use those
<linux/device-id/*.h> that you actually need (if any).

Thanks
Uwe

--xjkwq43klqevuzkt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpUjy0ACgkQj4D7WH0S
/k6ieAgAn3mJQxB/eBe2Ki3MlZIFHBx61XeC105jZWwo3SSq6JqGgR3kl0XvKplq
Xg726DbN7gDKX6pg1/izvDD4zlsXSH2BRDBpLgX6cxAe7d82Rzig8kMOqoTzKtk0
QxVEJjjv/sduwXP19oRU1VjArqV3Fy5ZvlWAKccPOU4T3emO2sbO7KOwaaEeDfmM
lB1YChaR+7vJ5F4NAJPdt6d6RD/OzGChWYGgEnNFY25oo5XQT0QnOxhcErxnxe5G
PNKmolGobV2eD2HoXSX0j1Ijp8Nz2p4tGGQ9U6LGFKXbKuPBcX1rC6/voZh+rZbz
jX0KK9L+RwZYEEl2BRU4AVFV7c8z7g==
=p4c0
-----END PGP SIGNATURE-----

--xjkwq43klqevuzkt--

