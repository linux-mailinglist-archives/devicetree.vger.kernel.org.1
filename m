Return-Path: <devicetree+bounces-322823-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QkyBH2RLTmpWKQIAu9opvQ
	(envelope-from <devicetree+bounces-322823-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 15:06:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C95037269BD
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 15:06:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=P3VKXxdd;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322823-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322823-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A663231020AC
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 12:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53984472797;
	Wed,  8 Jul 2026 12:58:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE0F846AF05
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 12:58:12 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783515494; cv=pass; b=D6vEQMJHnHRZ332Dqr7/qRZV1lB7wHeZyJ7L9J1zgjgRWfDg/1jdmR9LXYumJYFgHgNhKEbmXi9p4nmRTtx8x0EmqWQUMebVUnaTGvamx84s5G4ouaEQ/kA7TLo2iB5RKnb7R5KrUe3+NlcTGfu8/QUJu9SVTWKMDSHD6+YERic=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783515494; c=relaxed/simple;
	bh=g3jhdMOgt2auKeqJZC2qsgnXeW6Etk1FtxDSQv7KpuI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HStEUPqhXiz9xQIZIPmmlCHD//y7Scy5Hken4lYtyCXykJ4A4NRUexH8M7Gfm0FBo1mgYssLazt38lN8bqfxV5wZ7gd1riEdpH/fG/j9mPjaUpVaCgTJrulf73DSpysZaSw9NA8HuMqyhv890wqKpW0Zb9S9a5KQuHSyeWkbFIc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=P3VKXxdd; arc=pass smtp.client-ip=209.85.167.180
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-49fa951b2c6so456608b6e.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 05:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783515492; cv=none;
        d=google.com; s=arc-20260327;
        b=aO7ojL5iRAHLt3/Sc4MQibg3JGeT+QqCd1Il1PwiHjxa9QnnSoMgQzSMMpOUyzX+qn
         c8uaRVqkNiMCno356JsbXGcH7ukV/EgRf6UdM7qacXRT4LNOogZSiWJkK7o03N6uD/qT
         DqlAFVaoL61Qy8QzW/8d5cMYkfRfSSosK4NbCKhzRwT57rGaqDLb0VfVXOREBV5P9+Ex
         n3jJ/xkHFLlkWZVvTrMvdHA0X8/rGMxGldbKo8CRlTCUdfHlQnHmzC1sihil6ua8wglm
         4l5sTAAqNiKLuJXj9+c9+7d9aAavaUl141uCr+VQfaPxoXVsHEaFYTPYQ8ougkTwEmTn
         nBlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=g3jhdMOgt2auKeqJZC2qsgnXeW6Etk1FtxDSQv7KpuI=;
        fh=+Kn94FVzl6rE7mDhn4pFvEHlRshbQ57dQ5o19v04Oyg=;
        b=YX+jQRc0Nr4ZGyuNQuAIBwaGdqGrQxGB1MAH5i8wH+BjCt/nbCJubgarshkcxh1X+Z
         XETy8l53rrOcUNtv6OLvqk5cPLhoSTwKC+ZT19nNbF0cUokeauQEJKhYZQJJukfTFp4r
         wJ8pxJEj9QC767PvovYP4WiGG/IIAyC8m/OQUNbM58xskztpU2XCRqQpYWDxzk/Akd1p
         2o0rMIWdwVQoc6nCwWTSppZ9AD8MB+OSmR1GQo9tT0zELquGMi0Fc/5sozY0Z8xUuUXx
         mv2cgdv7eySDNJop/N9jHd7tVCxJ7z91rE1TXWh1jHxbZpdaq5obAPXIhI9b7Q+LHlWe
         ODPQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783515492; x=1784120292; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=g3jhdMOgt2auKeqJZC2qsgnXeW6Etk1FtxDSQv7KpuI=;
        b=P3VKXxdd2rrTlsS3gqc/6LEP4JEZoMfYL81iRZPA9+4uwxIG70hvZc+YilgZFIM1MO
         nxzMAnUK9/VtQFgWxycFCPYj6E5cEms+13ayeed7ihEQ0137lyBJLdnefjR6xq42dHVu
         cQKXqBvlFHXx96x4KsCg8e9OGu/sFsvYbuNK2dBMnHOrJI/Vn+pDWYvED7au9k3M8bUj
         T13Nqemmna4r0O9rJ6Ybsd/0IAvqKypMS50Qyn3DvVwPXQ8bx1fHQZUtyePqzKpbnFCZ
         StIXAqf8WDCG4UwoxOkRqBJ02PBU8UNdIARwqQf5TMqnFVwD3mGskL0EBz/W+GOAn4B1
         Ol9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783515492; x=1784120292;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=g3jhdMOgt2auKeqJZC2qsgnXeW6Etk1FtxDSQv7KpuI=;
        b=iAsiCmF/eW7R5aRahojFohUepxCMV4OzwfqdwjUmVFk9U7/GvFF924kneGdwTQ2twT
         3dbOyahPNqFMkU4Dnv+mLTxloOXMYuU/MMYb1+Aa/39jNE7/sQaC5gUQF76jYB+SjkBo
         oI+/c7nOdqb+NbfhQ8lx2irfXT1ZyjX9cCFVMlfOT7gAc4s5AHD/GKNKx/veIqHRQ05V
         FqjEjzTgeqp8R4RC7WaHX5Y1fu3LQVbUrFA/SMu+3b+Ysj7o4xp60rJlMXcq4oXbNcXB
         QwA2h/yGXRGI/GeRy5CQx0WJSFq0MsUwGY0n0+1+tKD43VbneMFj4w2bFXSkmWIu063m
         S0CQ==
X-Gm-Message-State: AOJu0Yxv/gIsqJ374zb/8ZZLdR/4i2psI04/XrgRviT4UFsHT1h+HbnI
	8aRcnvm/2E4PNmQK8D/tG6eskOPGgfRz6cXBdiBB3uEy5A28O/rZsrL6m1jED8CvRheZ9dfY76x
	HiZ3n1T1+/G5upk81BzVLDDQfMyYWlGX4F+dDwNgdHg==
X-Gm-Gg: AfdE7clrgh5+40JZ2rz7C2fDcezmbaTq6xRuSL8gvLPiMqEX0YjQsp+qIsWORXK1MkK
	qbOTy8LZqW47g3pvMcr1b+7E0l5rtzxXg3uW9Jh4NiHJ6pgmS/VQownMPMZmkySgZqKuq5uTGbM
	puDMoeRhJZUPE/mGe0pMoeGH7todPvo/SEBM+XowGGJhaAoQq7H9CyXYQuCW+lAbowwt3kHCFR8
	/9wPz8SyPqKCSzl6WtRVenv9Io4p0bu+1eSVxkYPcfcfXbyqtD/HpK+21yWdGI0jAZ6Tsi2
X-Received: by 2002:a05:6808:221d:b0:487:61da:70fb with SMTP id
 5614622812f47-4a2021033dcmr2098773b6e.10.1783515491810; Wed, 08 Jul 2026
 05:58:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260708-ccaione-genio-serial-aliases-v1-0-bf22229e9383@baylibre.com>
 <20260708-ccaione-genio-serial-aliases-v1-1-bf22229e9383@baylibre.com> <20260708112728.B36141F00A3A@smtp.kernel.org>
In-Reply-To: <20260708112728.B36141F00A3A@smtp.kernel.org>
From: Carlo Caione <ccaione@baylibre.com>
Date: Wed, 8 Jul 2026 14:58:01 +0200
X-Gm-Features: AUfX_my6OBZKWFOlZuKLzFJWZl41nIBGecHHeWzeLn71mq8QPAB-_oeroes61x8
Message-ID: <CADh8LscJzRdYOKER6=zS4f_0Sa7YhcU2sTTDswwdGMZe9LNERw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: mediatek: alias all enabled serial ports
 on Genio boards
To: sashiko-reviews@lists.linux.dev
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322823-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[ccaione@baylibre.com,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[baylibre.com];
	DKIM_TRACE(0.00)[baylibre.com:+];
	MISSING_XM_UA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ccaione@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C95037269BD

On Wed, Jul 8, 2026 at 1:27=E2=80=AFPM <sashiko-bot@kernel.org> wrote:
>
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
>
> Pre-existing issues:
> - [High] Incomplete fix: mt8390-tungsten-smarc.dtsi leaves multiple enabl=
ed UARTs without aliases, remaining vulnerable to the console probe-deferra=
l race condition.
> --

Alright, let me double check if I missed any board. I'll eventually submit =
a V2.

--
Carlo Caione

