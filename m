Return-Path: <devicetree+bounces-266296-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TjfnLAX6lGmNJgIAu9opvQ
	(envelope-from <devicetree+bounces-266296-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:30:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 27629151EE9
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 00:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D49C73028377
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 23:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84B7631960D;
	Tue, 17 Feb 2026 23:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Q0/v2xlB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A742F31B123
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 23:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771371010; cv=pass; b=QwyIGDAXsBFHXfQy3jqOosyJ2C7YOn3prRis+GH4Iu41lRCqELi61JtM6oy0pS73ul4mwetJpkIspJTdOQPCgh8GwHSuCgx0WUdGDy0s2fMDnIPbS5NNHc+qZ3U9gQvk2KNd5JTUOjVrKYVv0OYEW/2NYWXTRQBrlxsgaAwC0XU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771371010; c=relaxed/simple;
	bh=0iqgQ0iC08pETndYz+OYiMyT+2bia4CvGsqBmREgTlg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pXB9AXLnaFgVNfvGKx4Vzml+X5HZsQiqhezVYk2Qb6OSQ1E7yo4HfqqxQSdtzWiiSIFobndUM61AJLARwNwWEexN9KOirdxshLAfTjl2NlvmoAK44oPLgNCaEtPvsCNixPJqWm/Z350Fh4WqnOrhjTZcnQhRmC7RtWeLFMzWMwM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Q0/v2xlB; arc=pass smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-64ad79dfb6eso4407934d50.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 15:30:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771371008; cv=none;
        d=google.com; s=arc-20240605;
        b=YSBc0bvLWWESmC/7QHhnyidcqi6sUDsWiJVItus+2aETZGXY/emddrRKA2JStyIuOS
         I1maaBpgOS/ORpqCHek1yRsOHUmT39DScBvzXoNMTfRGgYTSACtEDkagDRdwV6r+A9Ao
         NLASaeIV5leBmzEvgC0bc2UMSvuCpoVeiJskGpbeQAK454IzeMIH+qZ1pCLL0XVwNLDW
         1ZNAZTiB9KUZRqHllOqD1CZom0WvxyO0b43TzmNM+WQsgM0q3/1qUeKgWRpqxzY3lPhf
         ASiWNmPg3QMaWENTR+JX1h7G6D+hL8VTnc2nrm0gKzGChVc7dUA4SjpBrR0ngqflydBV
         9d5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RTnOou82ckQE54SQrVzimf0IaJoxyiz9fz7f1nWejVk=;
        fh=U2vjMHxUuurqhJuauV5yhwiJkzAiwQGaYj7PVn8o1bI=;
        b=Hi505XatJX3lTWZhdfWB9VFfhtdjuiHeYD1KLGhmZDMqi7jAlUH6cwCHy+KnOz1l96
         s5rCdOiY93XEwWqT+DquPwXqmvlkHdKK93gnC5ez5KnBSWkzEm9iAclXsfUehedMHKc1
         HSvvHg4ZuemtE78lgMSfrwzt6SKvautphDfKvPmizgzE4ZyZ8CWOEDdjqSRAWQkfWDeC
         BTKf1zAtwIhGGyfk3zUe+nKRf1gQY/cm0Isco4WQIJQMGXMy/1db4HNPR9NqencaS9Rz
         66UuwyggAe5bfTUC/RvL7BN4S47xLMnkA2IxhaFvSnRq+myJu0n8JikFCtecnHfVorCn
         1LMQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1771371008; x=1771975808; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RTnOou82ckQE54SQrVzimf0IaJoxyiz9fz7f1nWejVk=;
        b=Q0/v2xlBcwXuN2qEiSfa/RBNxfyYfzg55GYWugN2GbvxUdO3INYhg655GKRGSCfheq
         rmibYSyY2wknPIuDKPuyNEzyFbiOKGh+7CyH3U+it5al/w4FG2dE/wugPTOuu1Z73+56
         oQl5J08HGqNmDsdwwo8TkUdAOcvIkJ6MEdis45spAsc+JQMpqXICEyD7I75An2XK+xFk
         ysqxkoVHe1TPBSBGUY70UD6h0MENoDlKvswr5J3S67HQAImRRkfqK4zkS1qoaL0Y90yV
         aT/nxShqg7AR/Ocpw1KU7Pz7e1SKUZsBKICatRBgr7ksXHRV8Hz3J8N3NPRewsIvxeiX
         ySAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771371008; x=1771975808;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RTnOou82ckQE54SQrVzimf0IaJoxyiz9fz7f1nWejVk=;
        b=vWclmr0nPV0x+MFAh1L8vo6fabgODm2h0ogQLwlQi/jtovdLtvptWwPiBbpIFOi3D2
         V9pmQVrRe3rVIdttssRwGZXQ6Ei7GWpCfoVNHvUuo7XD4zoobwIhMJcFSU62da9Mtc2G
         RSX1utlFSD1TX8ImFZsjRKho6MledvgtFrfptRraWvLHOJsUflPP7030ZUT7Tv7ps80p
         fju8mpygrgiWaVHo2LkY3/OXeGzszzEGtW02zp/4BpSMZWK27fFxfCwXfHdh+hEwyuBX
         qwSsoUsuR47Eg3wkIjdN8cDfzQQrZINqTd28h8pa1AHJE8gL26Q0G/Hz61/peYJ6DlYX
         MNeg==
X-Forwarded-Encrypted: i=1; AJvYcCWB1JyLXlo2kEiCpz4uZCr8i26pKfUWJJzFwW2gUtKldBJDmRDshMcsqARwH6McQEGVfpIhSIBdI319@vger.kernel.org
X-Gm-Message-State: AOJu0YwOLMyhy5Jpa4PQUKnCbjTZV1cSB+rXUS4FxOBuSSnGLInvQOyD
	e4CQDGR/42c0UU3j2f9oNSKqGN6Y6OrV14GR9wZrJuQs0KPm5GHXZxt8gSxnAjF2jAb6ViL6U5y
	sqlOhe8/OwxQOxAKJyjUJEs+nGnC5+byEJrESCKRbqg==
X-Gm-Gg: AZuq6aL3GzYn7iwMPuLwo30s6t2nS6o/gdZfMhHCbQkgmgVtgQTQcYytTbL47EfVcDh
	q4XFSXYp8xly0dFRRy0d9cKYeW9tlFLFl/gZBffk+uJ2dZUKA/Qou9MNptR/v+jZUhEq5tW8ggC
	D//cQUj72QdoswkblH8C0cjVa01fcxNwDPJ+hYLXcFkvQ3N9gJ5oQdnpUvpja9UpYNK4S/lSLPR
	DItXW2a3cpcb8731e2xR9kT9QO/+Vo5CsGOXO9I7/q1Re+hrCsrxHyHQR2hkWbDiOhDntoNlNHy
	Sb8NuGpVVOayPMDzX2fgWSSUWzPmlBebP2au/ekVaj+3tpI7/RtaoxCb9wkL7/9Sdat4pXXo
X-Received: by 2002:a05:690e:400a:b0:64a:e543:cabd with SMTP id
 956f58d0204a3-64c556c9ad7mr114487d50.70.1771371007641; Tue, 17 Feb 2026
 15:30:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
 <20260216-atlantis-clocks-v6-3-cb46d6a59c73@oss.tenstorrent.com>
 <aZST4Yywv09u65MP@redhat.com> <CAEev2e_XjxD3kHbOxVYwbf0Q0cwEr96dSQ3hWZE9eLdgeXhs4g@mail.gmail.com>
 <aZT4RsGnu1qlZl-l@redhat.com>
In-Reply-To: <aZT4RsGnu1qlZl-l@redhat.com>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Tue, 17 Feb 2026 17:29:56 -0600
X-Gm-Features: AaiRm52TAk-yyamOoXmwj8fFo7BsCbo2w-ZlTEB2IeiGt4tNj-r_C0lIrKQFA3c
Message-ID: <CAEev2e8hwN1FBR6yMr_NeZrFx3BXNz88RHfHLhSM=GrpExsUyw@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] clk: tenstorrent: Add Atlantis clock controller driver
To: Brian Masney <bmasney@redhat.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266296-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 27629151EE9
X-Rspamd-Action: no action

Hi Brian,

On Tue, Feb 17, 2026 at 5:22=E2=80=AFPM Brian Masney <bmasney@redhat.com> w=
rote:
> >
> > We have a group of gate clocks that have a single enable bit shared
> > among them (instead of individual enable bits for each clock). We need
> > to keep track of the number of clocks within a group that have
> > requested an enable, and only unset the bit if all the clocks are
> > disabled. share_count is used to keep track of this. It gets updated
> > by each clock. Hence it's a pointer (and the mutexes around access to
> > it).
>
> The code currently has:
>
> struct atlantis_clk_gate_shared_config {
>         ...
>         unsigned int *share_count;
> }
>
> That pointer is dereferenced like this in several places:
>
>     need_enable =3D (*gate->config.share_count)++ =3D=3D 0;
>
> I don't see why the pointer is needed. Can you drop the pointer
> and the dereference like this?
>
> struct atlantis_clk_gate_shared_config {
>         ...
>         unsigned int share_count;
> }
>
>     need_enable =3D gate->config.share_count++ =3D=3D 0;
>

In this case, wouldn't each atlantis_clk_gate_shared end up getting
its own copy of share_count? Which is not what we want. Or maybe I'm
not quite understanding what you're saying.

Every time we create a group of these shared gate clks, we create a
refcnt variable like this and pass the var to all clks that share it.

static unsigned int refcnt_qspi;
ATLANTIS_GATE_SHARED_DEFINE(CLK_QSPI_SCLK, qspi_sclk, nocc_clk_mux,
                           LSIO_BLK_CG_REG, BIT(0), &refcnt_qspi, 0);
ATLANTIS_GATE_SHARED_DEFINE(CLK_QSPI_HCLK, qspi_hclk, nocc_div2_clk,
                           LSIO_BLK_CG_REG, BIT(0), &refcnt_qspi, 0);

