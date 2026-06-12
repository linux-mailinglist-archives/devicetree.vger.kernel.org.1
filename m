Return-Path: <devicetree+bounces-310773-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YEnNBYq/K2oVEQQAu9opvQ
	(envelope-from <devicetree+bounces-310773-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:12:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BD430677B02
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:12:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=VCezxhlM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310773-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310773-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A9025300B465
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 08:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7008D35CB8B;
	Fri, 12 Jun 2026 08:12:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1037348C5C
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 08:12:51 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781251973; cv=pass; b=oDkyZva690a4f9GC0VjOr4voBLgSEdrufQV5EioSjoy6RKI25A6XcjC8VikPZ+ehzew98PBufQ6n5++bitJiAnCjICWjoicd8c1ZErntTI7pkrqpOPMcv05dcnhOFbYhMa5LMJMvWNakv536cbuF2XiTmvkLe/o5suRO4cMaEt0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781251973; c=relaxed/simple;
	bh=zaFTZxbUMQPU8ESu+TBJq8T/hjtbQDzUm+MPz0ynnAo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TwsBIOmeO3+VDEpJNSzRMO4Wg50QU5yOWLjsMiqEtoY0YfNnLf7no5dvsERZLbzrLUD1XLyYLFmzecR7AxM92m5ZU2dH9Akj63YULqO458Mtk1OOXlaNomCZXvDHZEIUeNpQ5qFJ0i+9rDHPON2vDfNJQZLn9tsinKNEVrVa7Yg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VCezxhlM; arc=pass smtp.client-ip=209.85.167.49
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5aa63628d26so612567e87.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 01:12:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781251970; cv=none;
        d=google.com; s=arc-20240605;
        b=h/aMDKg1c98jqq+Kec8C/Un9Fu2xeq+1E1CA7FBXivds0hQy2fdHdM56MCWY0HU1+m
         38he+gXKbQ0BEYbuJnjtT5my06tPj9CnaeoybBNwp5R1wdX0p9MXzxzznFUQ7vxGxWoO
         nUl8WRWidRUflfSPGY21XJj7ow/3Wou5Hu0GIJfJ4rUkucxO1RRaosny6zSCDANaAFoJ
         65LK0rHzyj0qx4aUFmqo65yWpmREMiEX7ro3ODuorvTz56n5ZfA4CqloRdSrkoZrCqrO
         6pvFYpVK+OeAtV5gBVIXCgvYUExQX295RuXPJcxFof0f4hJTN/wgnNEhif7y15kHpmpX
         HWFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6Z3/EAlh42f53h+nvTTSlQbYtPl2Q5o0tMOhx+bW3BE=;
        fh=rmuUl0ZaiW9s6gmWzE/lXbkEah5CLMaF+hJbkeVUQKE=;
        b=Bz3F5cV+wXYyGernbEVUK0f6CGlO4Icx1ta6SbzNNyofQXvhibgu+8oTLJtDFJRlMl
         Y2BlB8SgHdnfe04aIsfxt2oUo/9BasEedl52YyCoGXFzhVN6pxmizCUlnUEvi+8DQ27f
         OmcLDi0KLGjPYJRMKcdEzedkDtA+2Reeq7zuLi3URfmsh/oX3BGYsGQxc5q85j6X9D6v
         3KZq7nu2d6KUYEN1HSTSUIalrW/dHhZpkh5XJiqi2EqxHbCifPcBJPVtj50n7HvCxD8k
         zc6CghqwhqfrkIiA6vXt8DPAYNmFhjFAoy6Mk5Vyfq+mgJTe7kXhQwLZTtnpLmTwF6A2
         CBJA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781251970; x=1781856770; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Z3/EAlh42f53h+nvTTSlQbYtPl2Q5o0tMOhx+bW3BE=;
        b=VCezxhlMI3heiE5iOJs1K1ZxP1y69CGpuar2no7NFUf0r/OGNs5bJTzyEn2lWAzTed
         QuOW3qcAuL3iCya0m1OwcRAzh88rBHN7OfT9vqnZzbquTOH79B2/TTyK6B3fEjavM+kg
         etKXiv3Fi/ktXL76y6UDJDgfun04RFA/BlIt5cK2iuTn1yTwO+Zmp6n3cRLUBQG+Se9r
         DC1oCJqqUFul8LsdI8l5UHUR+NWqsIKOg7Xccn/Ofd2qR01w4Q85Q+VcSZgDnEIcUhAu
         2s/cTVk1d0epJbY0VcyB0HCrYjJaxsOYRegu3CIlfNLPmJR9hikALbOCSSivmv56ssVm
         jbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781251970; x=1781856770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6Z3/EAlh42f53h+nvTTSlQbYtPl2Q5o0tMOhx+bW3BE=;
        b=AO820lZAg4gPYGShBKkWxRnC/3sW0w4svWS08B2xNAYkJFGiFXAuFKPMO6Qonim52z
         L3iyQ0YSwTZF/VHTZXcXgNh+fOHcxd98WcqcaNHxiNvOMDfe8qT8YxFKE6oYayhjbSoA
         4mJD7HBYEScTmFZGDdt52r5pIGKb014h/ttt6yGogD7cNLWUvw6Dhp0mYImNJnaHsx7h
         x3dTPxpAa6qn4NRpQQi7WMF+DIjodWfzKgVgPq6Qy7/4CxRwoCwduEibvZjE0dBrgsKj
         WHbTqaf6ICReZvKashdGAgEuh5ugr156SHuk2JLAvPvnafCgrKbMQ8bKYYTwaXoFxMQ7
         n/Ng==
X-Forwarded-Encrypted: i=1; AFNElJ/8yIZgMfpZ5eoYXt0y2N+GmF/ehFJdI1AWjLzMUNVOE9opSs0cuSBNtZWGzUAxS2LZz/PtQBS1WwmJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyTJg51TqmfBqpIa0YRhcMIAt4e9OTSluKWg4Prlj7hiZ3x+E/o
	l5Hx6cEy4KaXTo3DxN4P0TexEHWy8OUcROrR1F/F3uo+qDd/DNYZ5dRU4uzvhLU+1QueAGGreb1
	VqiEJFU0XivHgn9s/Nm7pk2gv9uOpwMc=
X-Gm-Gg: Acq92OERl3SomZFJwizjJwqavkgKDyemgNAj4gpH5zhgShBMC/noAmA37BIgSeKaOAh
	abissrHeT32qTG39lhBe1brr2uTB8QE1Z2hgPR+WXUv7Y8WXc4+eV8mx4mo0qyT9DqvORi16wuM
	CTc+ERTwL34r5IDmtH7dsYKhXravGpl6R1HafVR12j2jD4jD6EJkTZkcs3i/dIHZDAe1FiqkAeN
	c1ltul6t3Bx65g1OGCFVfa2Vpb1HWMLZ7id1LKXd7I1DO3oI3aO3ekV25QsQcZmSXaLPHnEqkeT
	YTAtIZ+NoxmoAaK8IG4=
X-Received: by 2002:a05:6512:145c:10b0:5aa:7363:8213 with SMTP id
 2adb3069b0e04-5ad2db76980mr402074e87.37.1781251969978; Fri, 12 Jun 2026
 01:12:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260611-ventura2_initial_dts-v7-0-a61d8902bc5f@gmail.com>
 <20260611-ventura2_initial_dts-v7-2-a61d8902bc5f@gmail.com>
 <843dc0ff-a504-4237-b0f4-d92be07e2465@lunn.ch> <CAF7HswOi3fPMFppPoGmh0QELiPz4Po4cyWuDrEHLY2vNMyKE9g@mail.gmail.com>
 <1b10c279-bdb7-4901-aa40-bca36dcec350@lunn.ch>
In-Reply-To: <1b10c279-bdb7-4901-aa40-bca36dcec350@lunn.ch>
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Fri, 12 Jun 2026 16:14:20 +0800
X-Gm-Features: AVVi8CfBJjMCk5Qo7cQ6I-oJ5T38DlsPXXzlWiBBeogKNoobN5MIJBGZk76FcJY
Message-ID: <CAF7HswNkfwjYwYLGZXnpg_ruzpzzmz9Cb8FMJpOGRPZ=5hgHOw@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-310773-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-aspeed@lists.ozlabs.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BD430677B02

On Fri, Jun 12, 2026 at 3:04=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > The EEPROM is physically isolated by a hardware I2C multiplexer.
> > By default, the mux connects the EEPROM directly to the Marvell switch
> > for its routine operation and configuration loading. The BMC's I2C bus =
is
> > physically disconnected from the EEPROM during this time.
>
> I think some comments would be good. It was not clear to my how this
> works.
>
>         Andrew
Hi Andrew,

Understood. I will add a detailed comment block explaining this hardware I2=
C
isolation and the out-of-band update mechanism above the EEPROM node in v8.

Thanks for the review!

Best regards,
Kyle Hsieh

