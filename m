Return-Path: <devicetree+bounces-270941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOn2GVf9p2mlnAAAu9opvQ
	(envelope-from <devicetree+bounces-270941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 10:37:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BB01FDB70
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 10:37:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E03A830B19D7
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 09:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740FD3947A9;
	Wed,  4 Mar 2026 09:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="83aNDBSu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10748390209
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 09:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772616876; cv=pass; b=o3WO5Q8gjVGfHnS7qlwEAU/fTsWhR7xbQePhQvKqb0kfL7Ta2s2XK2M05w4NP/7q0fvBZ2vGul1o6d91lKAEJJ98/MsekB8LJ7FKG45a47Mij0EuaWfWrV9YONKxpbXes6NSuLfyAm2A3BdJAjprKsHEHAmbjiahzC8KoXG/3Lk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772616876; c=relaxed/simple;
	bh=3r5U46JYIUoR2bl5Gkm/sJyECPpQWiCpRw6+O/Z2HYU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T0ivKKVXqbdhhINmHJ79HY2CT7Jbg5XehzsZ0kEMenUvzvunrXMoC8bHLNGH7iOHL2hKSy3jRR3g/I4vuF7+YMnIvquj3C67ORrrNLERTcerSz0zgwOXECth8GA8q8kVnyIKpc6E8vTFPiUqm4cQXDjgYPBcA/g34R3OIBl0cFs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=83aNDBSu; arc=pass smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b936b85cc71so800574466b.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 01:34:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772616873; cv=none;
        d=google.com; s=arc-20240605;
        b=gQ0kIJFwnH+CEuipvhWj6nFVwNeGVnLYzelF8k9tCgTX/RVkbrw3lA1c7rdQ893Pya
         UNcRhrfuwIrvGhN+Ack76J4egxvAAgO/gZ5zpuEatdQlFG2CFqtjhSyg4M2s2Wby5EWJ
         hM/58d9Q2jxyBzAFRUddZ6cYFmV7kX4FbYegL03f8eoowtelgCU002Lu6bwXC83cb4e2
         1UMxPbGy3KWmlUmnmgu8ngbC3kpPaKrFC2G6Y1H9lJDGzNh9LntFoFGMtYtb+R2zYGtl
         zazT8xqXnZlGusKwyQSF0pGl1sn+dWmikKIbJAgq++8dpXr2HBnabfJPalwV2bJ9+tEo
         zilQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5AUBDCy7nbW9VUhgHwbf6uyAyDJf03F0fUhfohAeZuA=;
        fh=iq9li6Ho67qwayh4mo40B1J9UkvQ1YHPba+x/uRsnbo=;
        b=Eift+/A5dJa8d6zmLorH7gq+Ctn9qJO73jyLJFfwPR+vVoCzhTa5quQlrrV9T9fotU
         I7NbX8UW8dK7NVJJQEPrP8iSsMhgMpnka2qxCSg7/PLQSZdl3dY05H4NNpovroWwnr7N
         RE3Pxhz1l2niDRlu+64kotjQZMYozdD2aYL0vtHwtHH9aEXhLW0WSMyGvqky4iovVj6e
         A3k8Iy00UGY9Y3kEpQYjVfHq2G5qYHeuVuQ/nXHVJXftHNlPpoATBiyaY5CS+4tH4h7K
         4wDDuw+86oc6uWwUNBahBxz19vsPpJZoT3nKUNHlGObRJ2aAGiCScUYsZAYL426fLzXt
         tcyw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772616873; x=1773221673; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5AUBDCy7nbW9VUhgHwbf6uyAyDJf03F0fUhfohAeZuA=;
        b=83aNDBSu9p1AiqJW29lno3L/eA106DLRr4mK6WXX8ttYt53rylLt54CU3a6Qe6G1hL
         1FGGoTe7u75IpGTEKBGiIwg6PlEHfEgO3K8nxKdjCAqoYoZpawpxPDV9/QMSL+o5RMaa
         6MgKn3Jcx11lL1yjaCk++c+6TwqyCT/RmsX4V7Ycsq7ArrhcwEGK30zCIPaLNCMKiF7A
         tvxndWPyTiIT4mOoOH9aWHDAZjf6Ga0uRdyLU99PaWA1uc5tsfZ3YzkZIXw9evGHzvYX
         KoDqE23/+SLKNJKnbttbdl71H87Lofo/4zgan0b2kJ6J23lfzId/wGlk59HGjd/DrHI+
         USuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772616873; x=1773221673;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5AUBDCy7nbW9VUhgHwbf6uyAyDJf03F0fUhfohAeZuA=;
        b=spZHn5naVPXWSbGZJ+EYh+X6k4X13IltMnIGHpH7zB6X8tpTSih15ZutrlBNxs2OIM
         FZZ2Lp6INYjgiva4LEhtDAr14friTHNePiLr8UWK/KxLiPbpJplWadJfY109wAbsdG3t
         +ay4psbgcNs3nXbzNtfVU5nugi+6mIK9GKKEcBwWeA9V1FkADSvbEXGMT6TllTwoukz3
         4bp4MB91YLR5GqTtqyFRw9eBzz8tzmAyt3zSD0Z8myhhCH0hrYFvmNIn+EYk7Fq3cfOa
         2LwapLp4Sg0SauDr1RjvMtdcBIrKCmTQ1zzynQSKKd6vCluF7Dym9mFuVpMfy0pvOO5m
         H+xQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNuFQYUnfXZt6r6MkmANHApmirXnEuP88abVgdTOk1TIjvUwq9rJ2L7tCDzKO19Hz/jV9c8U1MAyQZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxNslfOJiknQF8NaQM9b24sfz7V8qaa6L4lyvMSr7uhbMdq+bRB
	EH1GJAPSLdNqvMqD+6KLowVA7vYBlpJiXw2NMoiefSq9zJ2cV5Qm2z2fvIB9AkUGjTlH9X04Rr7
	6Y2XfSWr51k45G/ETbJKMRyN4KdPTl4A5H4YxYPRP3A==
X-Gm-Gg: ATEYQzxlHCTS+vC1SVfzwtd/Sb7d55hiKVhldXuUCTaO+g7f+m6nZXePvlZQ+vYmUFH
	7rP0yTrv4+FZvKdRBAMJlNeakBZ84StELUWcGJfPcPxOP7id3MZSfrlS8qGfu/honnuG7crz1/6
	AtOk3vp4TyUsQ0ADlAjb3JIuC29kU/lilvKqdpirLjhcqRWc6Zqp3UBR/FgbZC2Uii1qiXT05kQ
	xbxTQmdKxi4YhAwje4tQQ9R8iQTFFExo3DVOO+FOEpCeFbd8Fw1+C6In7bxRLhO41Kx3GxHiWV4
	V7bslg==
X-Received: by 2002:a17:907:980e:b0:b73:572d:3b07 with SMTP id
 a640c23a62f3a-b93f13f0948mr72180366b.28.1772616873304; Wed, 04 Mar 2026
 01:34:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
 <20260303-bq25792-v1-1-e6e5e0033458@flipper.net> <177255519061.3485716.8870568133764595988.robh@kernel.org>
In-Reply-To: <177255519061.3485716.8870568133764595988.robh@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 4 Mar 2026 13:34:25 +0400
X-Gm-Features: AaiRm51Enl5LcXd6PAPQAWRhQIDDudWLZr4mU0k-EhYOjS9Inm3uW-TiPcT-vUI
Message-ID: <CAKTNdwGyrBihrL2hQgxZ7pyaYoRGTnNibLGnhKWEi-DsJn3==g@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: mfd: ti,bq25703a: Expand to include BQ25792
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>, Sebastian Reichel <sre@kernel.org>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 11BB01FDB70
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270941-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,hotmail.com,gmail.com,collabora.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 8:26=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org> =
wrote:
>
>
> On Tue, 03 Mar 2026 19:32:46 +0400, Alexey Charkov wrote:
> > TI BQ25792 is similar in operation to BQ25703A, but has a different
> > register layout and different current/voltage capabilities.
> >
> > Expand the existing BQ25703A binding to include BQ25792, and move the
> > voltage and current limits into per-variant conditional statements.
> >
> > Signed-off-by: Alexey Charkov <alchark@flipper.net>
> > ---
> >  .../devicetree/bindings/mfd/ti,bq25703a.yaml       | 79 ++++++++++++++=
+++-----
> >  1 file changed, 62 insertions(+), 17 deletions(-)
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/m=
fd/ti,bq25703a.yaml: ignoring, error in schema: properties: allOf
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/m=
fd/ti,bq25703a.yaml: properties: 'allOf' should not be valid under {'$ref':=
 '#/definitions/json-schema-prop-names'}
>         hint: A json-schema keyword was found instead of a DT property na=
me.

Thanks bot, fixed in v2 along with further comments from Krzysztof.
Will wait for any further feedback and send out.

Best regards,
Alexey

