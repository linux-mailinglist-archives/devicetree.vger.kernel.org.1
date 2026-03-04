Return-Path: <devicetree+bounces-271057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDNFDZ82qGm+pQAAu9opvQ
	(envelope-from <devicetree+bounces-271057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:41:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE7620091E
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F9BE302F71C
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD87F34CFC6;
	Wed,  4 Mar 2026 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UX1DbG51"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB4E1DF751
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772631503; cv=none; b=ICneRmayWrARB7Y2PuzEBGoXXZfCJOh73sATeu4OLmn+I4/3Et+0zLz6d1KBK8fSfKbIG7h9e4S9w2Tzp5uCgUbFDQSqIspkz5z+LKq7+5erHilm37CIB2KiWI9voYUMR/qyTcbjGxPIKZLD0GkFjRmf1fGS7vfzUnWu1d2WZuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772631503; c=relaxed/simple;
	bh=GUYEALaM6WRnx8wWumgwjF/F8NjS7pDDweLv1LJL5/U=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=bQa0FTZ9RMaz52n7I66xR0R62Yo06aGnoIUinsA+EdLKvSR0jXj/VshdGl9GN50Vermg7Sod4qVvqy9yHt9stVskCXOdb5p678252/2HVKmSzF0XpkaqmYz2qSn9XZkr4VN3jMAEalhboBa9LR8QqdkEKcPWYfblbY4slhDf1nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UX1DbG51; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-4327790c4e9so5232182f8f.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772631500; x=1773236300; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6xKCzFEa575Ece/U0GGFSt+Fu+C5w9MJrHLEfRQR2Cg=;
        b=UX1DbG515dcjMXIdTHKQxWPTBHXq9dgyw8CfJ+QSb2p6U2OTv8NrOnD6EPAe/ljmMF
         ZARgEk7hv802vGVqUz+tD6i5dCOZkcw8FLbeJu1IVxQEVAqP5zSYhPea4MnwrjhmSolU
         OwswT77M+ReQzkzUkX7ws18yXfdPfrJ4IkALsnBYIh8AHD51ywOYE1Mwsog4RixDECDj
         NyUn1G+i8SutzgOGm+trt/inbX9/l8cxckrwXig9VEvnxEJsN4VmbyPQpNz8DTyp30N2
         H/6KgVY38hTNHwiPo/AiyLiHFg9K8WGj/nI3YU368CGzfYOjNRdHhqp7bXqRcteIu/iV
         qYyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772631500; x=1773236300;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6xKCzFEa575Ece/U0GGFSt+Fu+C5w9MJrHLEfRQR2Cg=;
        b=aGkb6O21ujOzYN0tsF5c1eOGTOsM/TUgW43TGUjuvRAu5431kpMzZL++lgrnPVmnvP
         ZKKaymxgcuKeveSob127KSpXpWYZWFxeQgFHA4SZsErfry4B3IHshYbjYh1K02M2LQYj
         wyEUyUklqzmZksjBzPNaxdTDz81/xVg6pSliLIijoxt7D+pYi0sGD2QeIArUWMB9tun7
         3mclqNxqRzlcEPcZ+9XBYarNACWpF6ZiJDWKWA+BEljb+M71L0kdbepRMTNmi/avyalm
         q/2NcwIA1B2aBo4qOx/FmpShkOm8JOdL1IuEymJ0WJLGuYrPxm6ZeIj8hlMCABwChlOo
         83cg==
X-Forwarded-Encrypted: i=1; AJvYcCXvTILghkL5grANc8AYyn43ZZGJBP2Fmxd2aW8xK6peE8bnTW/rn52vbeIYLwJjCaO+lTwu9dZS64Au@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4OErYMEU2P1ZR8ECCon2u+Ag38V6OLk+/11ZwR7UL4ksFg4Xn
	GCpXPdXr+twbjthEhZPtfL8Q8HnxpSLNirszaU3FsgjJCeNOCN/OhCkpDx37gBKqFE4=
X-Gm-Gg: ATEYQzyGir8cbADoMVhEubjCujet6OidSQANC35oQFsO+A9EKHK+NHrVrUw+zYiKWzf
	liPEpssMVJqkPmeU0qhnsNhuXPTALl/miQr2BBaXYMaU152tSOMXDR1CbbMUrSB8b7TB33iw4vj
	ePZANYTmivaYZ2YvFpqA8usbLpG2qdKYgRXK7/HDPq90U101rQbZ+IwEkVZV4OtI0//gqVhPJlS
	XFxAf5qjCO2HSKicbLb75dOAWNmm3+ghrzG/CS7j5troWVBqmLDC672zB3sxwDWKY/SA22cL1Zq
	Dz1kDkyrAJ//Q7nRSfYRq7YTkMEynxbRF0yimYLGKmUV4xChO5q7daeLBueJSQ00+vgVKppdVdN
	RMd3z8h3RBVDi/DUNdTECNtB3vz/6vaRkwOKMGRInhARgo2hEcqZBQeT6+guNH5YQFVnHJwLTIb
	TM/sOLDiEJ2zQwd+I=
X-Received: by 2002:a05:6000:2302:b0:435:9d70:f299 with SMTP id ffacd0b85a97d-439c7f79f5fmr3963520f8f.22.1772631499943;
        Wed, 04 Mar 2026 05:38:19 -0800 (PST)
Received: from localhost ([195.52.25.213])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b503425asm25373373f8f.25.2026.03.04.05.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:38:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=9f27ca151f75da4521dca0ec3d004e6ed38b66748edd73afbb0ffdc24d2c;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 04 Mar 2026 14:38:10 +0100
Message-Id: <DGU1F4OMYXZY.3S9ZX8TB5S3IP@baylibre.com>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Mathieu Poirier"
 <mathieu.poirier@linaro.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Suman Anna" <s-anna@ti.com>, "Nishanth Menon" <nm@ti.com>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, "Tero Kristo" <kristo@kernel.org>, "Vishal
 Mahaveer" <vishalm@ti.com>, "Kevin Hilman" <khilman@baylibre.com>, "Dhruva
 Gole" <d-gole@ti.com>, "Sebin Francis" <sebin.francis@ti.com>, "Kendall
 Willis" <k-willis@ti.com>, "Akashdeep Kaur" <a-kaur@ti.com>,
 <linux-remoteproc@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/6] dt-bindings: remoteproc: k3-r5f: Add
 memory-region-names
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Conor Dooley" <conor@kernel.org>, "Markus Schneider-Pargmann (TI)"
 <msp@baylibre.com>
X-Mailer: aerc 0.21.0
References: <20260303-topic-am62a-ioddr-dt-v6-19-v1-0-12fe72bb40d2@baylibre.com> <20260303-topic-am62a-ioddr-dt-v6-19-v1-2-12fe72bb40d2@baylibre.com> <20260303-hesitate-preoccupy-5e311cbd3e58@spud> <20260303-payphone-pancake-b6068c545bc3@spud>
In-Reply-To: <20260303-payphone-pancake-b6068c545bc3@spud>
X-Rspamd-Queue-Id: 8BE7620091E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271057-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action

--9f27ca151f75da4521dca0ec3d004e6ed38b66748edd73afbb0ffdc24d2c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Conor,

On Tue Mar 3, 2026 at 7:33 PM CET, Conor Dooley wrote:
> On Tue, Mar 03, 2026 at 06:31:56PM +0000, Conor Dooley wrote:
>> On Tue, Mar 03, 2026 at 04:13:00PM +0100, Markus Schneider-Pargmann (TI)=
 wrote:
>> > Add names to the memory-region-names for easier idenfitication of memo=
ry
>> > regions.
>> >=20
>> > Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
>> > ---
>> >  .../bindings/remoteproc/ti,k3-r5f-rproc.yaml          | 19 ++++++++++=
+++++++++
>> >  1 file changed, 19 insertions(+)
>> >=20
>> > diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rp=
roc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yam=
l
>> > index 6aadc61e20f9f4c27f5b9c87ab2025a02776c5de..76ef23afe8c9f7f155dfec=
7fcabc7c60b8b286c6 100644
>> > --- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yam=
l
>> > +++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yam=
l
>> > @@ -182,6 +182,25 @@ patternProperties:
>> >            - description: DM RM/PM trace and firmware code/data
>> >          additionalItems: true
>> > =20
>> > +      memory-region-names:
>> > +        description: |
>> > +          Optional names for the memory regions specified in the memo=
ry-region
>>=20
>> Is this really optional? Shouldn't it be made mandatory so that it is
>> easy to tell the difference between the two configurations?
>
> Actually, so that you can tell at all, since it looks like anything from
> 2 to 8 regions is permitted (which this prop doesn't account for I guess,
> only allowing 2 or 6 regions).

Thanks for your feedback. I will fix both, make memory-region-names
required and fix the inconsistency between both properties regarding
what is allowed.

Best
Markus

--9f27ca151f75da4521dca0ec3d004e6ed38b66748edd73afbb0ffdc24d2c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaag1whsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlMO
BwEAlzDsVfiuqPCx/XTZv4wEd09mmQ8/q1n6TFL57MQ0VPsA/10oQtozFUWjofc9
KhaPSSQMHdxnVfQ4MrQdxnV+d+EP
=C3Zm
-----END PGP SIGNATURE-----

--9f27ca151f75da4521dca0ec3d004e6ed38b66748edd73afbb0ffdc24d2c--

