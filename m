Return-Path: <devicetree+bounces-263757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHf7AAsOiWlf1wQAu9opvQ
	(envelope-from <devicetree+bounces-263757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:28:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC7310A72D
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 23:28:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE87330086C4
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 22:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6963C35EDC1;
	Sun,  8 Feb 2026 22:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hiY2rx6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1497B3587A1
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 22:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770589704; cv=pass; b=cWj/9g47fconHhUmvVF4w6ygH217488lPv8z10fB1S9k5s+2XwoT0bKGBg0xwqo+Zb+2XLIMpalpzdEiaLqghWN6rEkt6Mtyy1Z3YMwmfH5E+TAcU5YI6vUemO8ofqdCpS+gvNk+43uJqp08U6MkI+dNdLBccEA2S6lolZMpv6o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770589704; c=relaxed/simple;
	bh=1gictA2z8mxa3FAaIPiCoFxaAIxZYRwRZHyPQFpbO9c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KflFvkD6tVpKa/PoxGCyjswJYJfw/ipvDj4apOo8Ao7Zy1p1eS/in4IEhYHy4pJKvGRlT9qHSsO8ctxjMSkRK+XLD1GsyqWsI4VWP6tSZweazWqvJS5PhetofKkpveGrYz/oX2fFFDynlFKn/n333IFR7ziuPfQHvrCn4Fpb4Ds=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hiY2rx6Q; arc=pass smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-383153e06d6so35021481fa.0
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 14:28:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770589702; cv=none;
        d=google.com; s=arc-20240605;
        b=RPe1tNw8svT5uF2/RkuGTzAHXunlyGIEslQYELKLmwJRsJcDTJTCHsjs5oKoLR/IL/
         RElcr0QZgbT7/iuQeJMk7xSKrKM0Qd4rM5tfl6BFehda2dzI89xreVj8mRcYeKRysQs+
         gd7FYAwwb1TmpBU9wJnhzwQKOMq1hG23iCanjBcC/lYrUOZkYihd8UTD1bOpbU0QmazC
         dr8sxfUCdWff/8GflmXJlWCNAoIo+bg3v3Vi8YN3Drkjkhrm7+Y3lmuq8XR1OXNrJaM5
         kH5LfqYnnDNiUbKHWV2FZU1Y/duhia9bonYiZrqsK64pFk7wCJdlICTeB7X3Yb3L6JfX
         VWVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1gictA2z8mxa3FAaIPiCoFxaAIxZYRwRZHyPQFpbO9c=;
        fh=ZTNbNT3DDXjZvHYYw1h9Qj3kGEUGj2CEufi3onj3BIY=;
        b=CdYr7H1MY3CumP0VioZAUV0lfe6xSPRfuZsZNHe0PgEwRj0xgWiPNcZvtCdCx4ZWBw
         OwiXkIjtiSlRYNTGElHeNw+XLfHYD6upmGEHtdxonWjkc9/pws/6EZ4DmoisY3CJ7rdt
         gq49LmSqpZIvZ/vGBhPCo9PG91txY3j9N0BmgFKyCiiAdBs2jBVXgU7/C6cJzjIPf6dF
         2BTjhRO6jdqGsbBI9gpvRIiH2K2/aESU9t1Z/Y/asH1HBn6iMCR0KMW0NDOozWtAEQza
         mrDO4GE2LfOpn/dOIobiICdhrbYDihwwPAmxPnQHAYr+AFQlnmQ2B9Cqrp8dNswnrjB/
         fwJQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770589702; x=1771194502; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gictA2z8mxa3FAaIPiCoFxaAIxZYRwRZHyPQFpbO9c=;
        b=hiY2rx6QsT99GGqdZN3YN7lm8pyGsIJMnvVDJ/7+IbcF6lz30HpPUJKpHx6ylprgQU
         e+VDpJEjh1vTWHQO+MJz5UMAwkJs+UlIKrzh6dVehBWOTZ6piya/vTSLEQqlVTopBeTf
         52fy8oXbzIqRnJbd74aM+yf6VGTBywTU0XJBjZRJS9O5M2Mp9+nqKmdum3DYonGzqQYN
         qevq2xTVI7htz4w7ya78gwPAMWTDvO81WptqaE3B/EGPsHXxHs32vfb6/sOewo+b3weE
         ewOy92LN4KTX69Q3lWB0IxwM7pDFsrSvdQCqK9IkjK2x9xFt3DA6DjOFFa6gs60loz9g
         6bRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770589702; x=1771194502;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1gictA2z8mxa3FAaIPiCoFxaAIxZYRwRZHyPQFpbO9c=;
        b=mbYSRixRWvc9toXMTNHE4jMfYYwjD52yPLdoMRIFrWV0G5k1BUdl034T66ppJLFjS9
         rxasvVjP1fyt3xZfTkewlPy99SZ2KPFQ0wTgelx8FaQ51C92BAL82rnMUu+gsXrt4IuQ
         witvsolIXjAVhib+JzBRxopWLEsbty8rZIixlWT+SVgmhD2PQyB7U+jFmziA92R2r+Zj
         r3E0wDpy+sKVD3ijROHsWDfO3Hi2jIgT1lDMhwkSV257E+TkklonpFoNZX5w2iSWT3/q
         9WswNTQRxBHtUIUaNm7c/C8BcFqGPbbmaHtEFdDMg4boxQKR7BMIUELzY2XVT/XZ1nk+
         MilQ==
X-Forwarded-Encrypted: i=1; AJvYcCXE8pRfrKqOOIjJoDAGjZAcBgAfGkJxbmZkw51LhzrF4jTKeBXPWHiAeRmevuYrjn0k8SDmS6okXVVS@vger.kernel.org
X-Gm-Message-State: AOJu0YxcnALrP2AW9I0pCOe4ZiG/M/lu3UGM+sH2WdQAUrgbp4E53gcK
	V83+Wn/YBnDVncdfjW8SGbfMns+IpJ3/rdkAgtUK6h8U1FVh4VU6sGS0ZG2n4xGGfVL4nZF+kbj
	6Wa/HoAfJEna85O56FMF9+F95Krb8jw8=
X-Gm-Gg: AZuq6aILKpzoLbNQdGBbmQpkqryEhCtyN0aLVZDsWefosOBtTNvGlI0YzVm/jqnT6kF
	IEM8CWb9H/m7riKaHyOvH0FI6fM9n5DCWeMChcRWd5WmCLMM/aK0895/oH/20fNqVrRKGiH4YCt
	Tsrp9zGnWtmYH7E7PcscUJQAByOLDgNbaIlLNv0uBrR2MTcFWR75cEpfcSnZ03iHb6soP6JKFxG
	uhTRKqHDM2a0tG52zcXZW4yZzLPRbKI+yRLxpmbb74cZVbt5wFq4mgvCLU+6M7qxIJrUmPpgPyl
	iOcOMtU+vNn49ryMxYQYBzsNvaM=
X-Received: by 2002:a2e:a99e:0:b0:37c:c84a:99b9 with SMTP id
 38308e7fff4ca-386b51021c8mr30790411fa.24.1770589702112; Sun, 08 Feb 2026
 14:28:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260207130256.2832815-1-festevam@gmail.com> <3a2f5dad-84de-4afd-baaf-42f7d68cba7b@kwiboo.se>
In-Reply-To: <3a2f5dad-84de-4afd-baaf-42f7d68cba7b@kwiboo.se>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 8 Feb 2026 19:28:11 -0300
X-Gm-Features: AZwV_Qg6wsoSm7cqb4mIkth99O4iiDNLzMYIcaRuYUhewzGI5MxNyrD6qDZWrzE
Message-ID: <CAOMZO5BCbcENT3oDF94XVOxbze7O2A-0Aje0+zy1wj+Dm_3k7Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: rockchip: Add RV1103B CRU support
To: Jonas Karlman <jonas@kwiboo.se>
Cc: sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263757-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.981];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,kwiboo.se:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 5AC7310A72D
X-Rspamd-Action: no action

Hi Jonas,

On Sun, Feb 8, 2026 at 7:22=E2=80=AFPM Jonas Karlman <jonas@kwiboo.se> wrot=
e:

> This should probably also include the reset indices or will that be a
> separate series to extend this clock and reset dt-binding?

The current RV1103B devicetree I'm using is a minimal one to provide
minimal boot support in both U-Boot and Linux.

The current supported devices do not need the reset dt-bindings. When
more peripherals are added, the reset dt-bindings will be added.

> Below is the indices decoded and renumbered from vendor kernel, along
> with some macros that can possible be used with the reset driver part.
>
> Generated by a small script I used with resets for e.g. rk3528.

Thanks a lot for sharing the reset indices. I appreciate it.

Will use them when extending support for the RV1103 B.

Thanks

