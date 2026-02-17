Return-Path: <devicetree+bounces-266292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIzOMXXwlGmOJAIAu9opvQ
	(envelope-from <devicetree+bounces-266292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 23:49:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3C81519E7
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 23:49:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6727300B05B
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 22:49:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 643302BE7AB;
	Tue, 17 Feb 2026 22:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="FTbCNC2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDB727FD76
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 22:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771368563; cv=pass; b=A0fKWXTfkZ45NVuh2ij+9soaMbg6yJaDTuASk9rIiW8Y83raWW7+I45LnAdBkzCPkBSMFMXVZXza/6IaJQ86hOa5nMdHdnDdOEO/ZM8zyyShV1f/H0CRbuyppPejjhgghfNkQkmqB/5QayEFMH8jADfQAY8LZaf5YNpmFtJRBrc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771368563; c=relaxed/simple;
	bh=nsna6x3edOZVDgHaZx8mdX2v6amo8aiMzBSafaXBTkc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tj1w825JfWgUgAmQTTZ+fKqDx+iES3Wz3nSXlflnJyPNu0/3hz+ynjALpC830yQLiEeZdT7L+JYquC/PrVv1L2NfpUbQYWLkLf3QF5OEzi0XfvpzUW5F6j4GfZ1lLW7G7m4Qqg3Ji4G3+/r6MpG3ZpjBeVkg9Dar1+IT4ByOBtw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=FTbCNC2i; arc=pass smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-64ad2a2851cso4251969d50.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 14:49:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771368560; cv=none;
        d=google.com; s=arc-20240605;
        b=DPerd3BKLiwuQF8OaJPdFab123+1D+Zp00Elo5ZafczS0waRPsJ9VC+FOqlK+sv6ev
         DEoZYdRL6DfLxdxcMBpBJMrg573HHQey0TNMfVZzkPwMq+VhPQNW8DqUBCjcdrsGgrer
         q4vr8gM4wb3CXggF2Sc1aSj9uqcFSs9O+Z8qozoWVvUDV/Rjr8jxeClY6KGIvK9W6nbC
         8cSRlT37SY12a2eyIzHpklEe+NhX2jF34p3pY9zVL8WDfG/+z1n3IrnvJYJM/BqCxC13
         YbQ7zVpKa4cqnvM/Ph9urwUeETCh0TLYCX/jkhFiwJlVD1mvV92ZG0u96XZImurZdoEN
         gheg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nsna6x3edOZVDgHaZx8mdX2v6amo8aiMzBSafaXBTkc=;
        fh=FqkI/Mwn/E1/C0ZU9AmrIgONhYWFfjlYZJ+09NuCREI=;
        b=IaxkjP9m06Y6UsG62zCe1lyQ1Ofvu8nMpFSmF9pnHt7XlD4IB0lx33Vi46SuHUcMdI
         niuwCBPRbl5yONRUf5zrT+upmDZWkrNNCtcIiAdgDcjPowgJDM8SvOCi3d1pFYXHezVV
         AchN1pi01X5QLYt72HcJ/cvJH7lw8razPejnPHVnayO5kvtzr8Y71myE/BzpCf328pMn
         pXhifn6GIpTBtcInXOjIucvy00xEcqSOUijh6CwmvNrQWyKKRLt0jU2NHDaa6aeoPtHi
         HpLO+kscPbazhzctUoXqyBMTjl9h8AulqAx8dWykZ+H37Nb0c77ymchcyXQIy6xKMU3y
         ZP4Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1771368560; x=1771973360; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nsna6x3edOZVDgHaZx8mdX2v6amo8aiMzBSafaXBTkc=;
        b=FTbCNC2iAyTE8xl5QGlZjJTJhvgNud2veQJz/drkMVJ4jwvXRB4FLiEY1nDGYtSJNF
         dR/2mVQcHly52eDpRLbnHr4WcaxplpDCTXZeSG1KTwA54Uxy8Y8PoizA21+ln3yOoWDD
         L7xfYJoqxjH5caVWtV/LmVr6W5Ub77CJIfsusItb9Q8D6u0GR8hWXG04jtbaHKS5cKxH
         H4pOrk2P2uxEgd0a8e7KvqjPV2UjhXcUR52XFpiNNwc+Xi44ltkUY+pgMrkpkWYG/E7g
         BVjp/PtkbcczvLeCfloKMa1CcXuQVsZBxZndq5JcJFKFPz22OO+eQDi8Aj5k/n5QdZFM
         tQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771368560; x=1771973360;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nsna6x3edOZVDgHaZx8mdX2v6amo8aiMzBSafaXBTkc=;
        b=Xc/1MXDuQAlUu1sXK14pM2vMkRIyHK53kEYA+rNsJekMJ8yzc12z7N3YyILYkeM7VW
         tdjeXh3yXlsHqaUlzdjljZEX2cUsznp6IAxlKSEoLpV72Fo9/KVIgFasEHYDZM+BleCl
         coIWPcb6dR/HKSOyYnobx0dTjuEUTZwqtS2KM21kB0R2pyO3q8COQI5uOimbRn9kCwDc
         aBjKGxTsqIgbpNCRZi2nI5JOR7Kts/+kUQs1cV2eKgX6ur+sVfCdmyIA310FWjyUWDgz
         Jop6OixDXu85ZKrd0Wu8GVeKEZ8xYGg2zBe9CTg1QNPDBjK+ASqOx+H/j6e6WdbUtU99
         jISA==
X-Forwarded-Encrypted: i=1; AJvYcCVQOc4V8xQiCrpZt8N34SU4rSxSZG73O6mzgxwaUaCatk2UsupC+1u7Qypr6SeTfiagjRFKojvNlxqS@vger.kernel.org
X-Gm-Message-State: AOJu0YzgUpur4UJIADN9N7N0tmSPMSOV9kRHPiw7dx43g6IzVadbXBkc
	gBeBYUkH0g+ckTI8x1brTWOpysef6bqnxRuO9vQsdrcBa/K8j9//dN87Il3EQYadQiYBH2qa7N7
	/kxI3p7fB2f+UG99CZ4pcWhO8ONNUNHkBWKCKR/3aeg==
X-Gm-Gg: AZuq6aJWFg5SUX5I05yXM1+TlVrvBxOs3e2p8+SNLljDh0QIYmG/bG4stxqqYK1A7pI
	xyrVDgxBqsJOXq/hgFkfHbl7B9N1SJuY5OfufshnRNjtOExZagsRQQGK727JnXQD7gkW2CvAbdd
	CxOB7ESQZtDU2uUVLdaD0Ufeu5TkZpB7tf5wt6vMkSuevTROTBoupQd662TC/e+Ge3Ro5zgBwvU
	HDhiAkhp2XrCQ+nj54hF3WiI2iL+JIi2yBj9RhTZA+XDaQQJWI3LZPfVHn/owHxRNHZEQqiwZrp
	bTj5vgLFTC0Bzwc9lUHfBV65g0dp8P+HF896xjIA+qVKcmMqU3jmS6UkpGV4z+X2P4f7l6+f
X-Received: by 2002:a05:690e:400a:b0:649:422e:a68a with SMTP id
 956f58d0204a3-64c21b18c69mr9328991d50.57.1771368560092; Tue, 17 Feb 2026
 14:49:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
 <20260216-atlantis-clocks-v6-2-cb46d6a59c73@oss.tenstorrent.com> <015b88b520db434fca21e83958c68cf6308f0f79.camel@pengutronix.de>
In-Reply-To: <015b88b520db434fca21e83958c68cf6308f0f79.camel@pengutronix.de>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Tue, 17 Feb 2026 16:49:09 -0600
X-Gm-Features: AaiRm51UZzG8LJuJLKm629r92R1FdsrpU_nWD2avCGXRFaV4lXSvAPtvhubd62w
Message-ID: <CAEev2e-tHySkWQBE6qUNQq+zayc+P30DV0=0LJw09saSoh8fNA@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] reset: tenstorrent: Add reset controller for Atlantis
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
	fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
	npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com, 
	bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266292-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,pengutronix.de:email,tenstorrent.com:email,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: 2B3C81519E7
X-Rspamd-Action: no action

Helo Philipp,

On Tue, Feb 17, 2026 at 5:59=E2=80=AFAM Philipp Zabel <p.zabel@pengutronix.=
de> wrote:
>
> On Mo, 2026-02-16 at 16:16 -0600, Anirudh Srinivasan wrote:
> > Adds Atlantis Reset Controller driver, which shares the same regmap as
> > prcm ( clock controller).
> >
> > This version of the reset controller driver covers resets from the RCPU
> > prcm.
> >
> > Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
>
> and
>
> Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

You seem to have added a Rb and an Acked-By. Did you intend to add
both or just a Rb?

>
> to be merged via the clock tree, since this depends on patch 1.

We have a tenstorrent soc tree now and were thinking of taking this
series for 7.1 via that.

>
> regards
> Philipp

