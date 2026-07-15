Return-Path: <devicetree+bounces-327091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0qNiDlCWV2oeXgAAu9opvQ
	(envelope-from <devicetree+bounces-327091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:16:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4C275F40F
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:16:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=kYo9+TSG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327091-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-327091-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24FC731C1C90
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63F213438BD;
	Wed, 15 Jul 2026 13:58:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C0F2F7F1E
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 13:58:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123931; cv=none; b=F8kZ14fw2LLHnwLKscIrUlmZD4aic4kTsk6utG9HVRpGZY6M3D3sZnbtflG3+iZ0bvUKcgJ59tDLX5gVLgJfwNWz8Lkco+psRI+0Vy0IW+E/Hc/eR/vPgH92ICZdJhVj2DDV/XfbYYKqo2FLs3RJeuzIhV0T42D/2436CA5gjKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123931; c=relaxed/simple;
	bh=lQHqeGCwF74T84TftX7GCSfuMO+83Vv2WQ/yAHb41qg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=C5O0jdu/sfLfFr5PoaZJbYAjXV9o/ghMwDnpgP7bsPcdADSyrg0WqkAfwOZhy0Zrmfz8cRvsWIynheIIJbtKofGKZjHHkcKB8q6MKgSDEyL4Hel5T/yRBOlaNwOJAAtYnP0kJ7ZMh7HAmkqP3KvacWJ3DTgKagBmZuQjkeJ5VXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kYo9+TSG; arc=none smtp.client-ip=209.85.128.42
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-493f431e317so16492675e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 06:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784123928; x=1784728728; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vktCBlgvyKkIFm950l6EwI7HLRpSzcsJ6rxKehyjGvg=;
        b=kYo9+TSG1YyLN2IDkVZdNEAmKHgu0d0UUiz/k1ucdwWMV1nrFlnOzjjjMBQ2EhYReF
         hk/00bDrnXBtf3NWtpVofTbFd5DGDeZXVLvRhE0J8aMzQbABNwdW2jThGufpq1PNUTkd
         m+8SRyuBBjqaJk87343kp5J/sdCtKQjl6N6MBnROWCDWfcIVMRS+i53xl9FU6HTtuFHa
         LkURKfeBpzHu6LL4pA953iB9/jMOoS0w8q9FnuHhzy08D8xb7fr5nVTZkk39AEHrimJq
         COK4+pwhF/Z2LRsI44cG8O5WMpcEUp8rvREqfk46pHYe3/3jg+/LLk+4g6YU4MeTcBgX
         Du0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784123928; x=1784728728;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vktCBlgvyKkIFm950l6EwI7HLRpSzcsJ6rxKehyjGvg=;
        b=rLbvfzGg7VfR2/t5ywzwJi3Ac4UrBtnvQANUBpc7qHTdU3aFVzVclnMkuxd7zeEg+j
         67G+EvMUYVSO0/QxpOevchc/y1WfDKB8KzUKxfQdrOVEhxqR8OTuq9Bhj1vAaLixGKg5
         7F6xmKi9BNlPQEFiM0ugGDR3MNr641MhUkUEGqoH/zjQ+4piJdnSDYLTiLkpn4o8hkcY
         /aMra4mcRMCPC25xZZio57fU/5Ksxs1jmt17GQWb6nbPIi7U4ylPF36kDPSmAi8Diic8
         Gw7B/kaPUcRjLvG0oIYbLajlZ0AGXY8TqMD/yYJZftCvOnjQqrw/D3wCT6lIqO91U/rd
         640Q==
X-Forwarded-Encrypted: i=1; AHgh+RqGucnhYFnqgJ/j/PaypE8PIrIOj06EaV1WMqwXgk4SVVukNC13YZPFhH9hSqkF7HdbUnJzEW8bswO+@vger.kernel.org
X-Gm-Message-State: AOJu0YzZXU7xsvYTDDrp77ICymU003zoiEO3m1Jeu1FHJ6IMATPMFNfB
	Qk3O8Ye3/g4p1fRss6amIH7xlsZpZRSPIhqdaBd0UuRg27u8DY0LU+UJ
X-Gm-Gg: AfdE7clOWdpXN0lx9krRWnQqMTD7jjXDvNPwYP30CmjT5KFZQ8m3S7p39MVDBWwwzYp
	ZExLGjZwSzIQHxTm8xfcy53orgPke/QwsWljzeE9AK5nrdXsg17QwE9WlTr+qsCvDXZrg+ZAizX
	O1xyjf+CrfpsF5V8HTHorfF/wPuylUCr2qZeT2saohLZ01YbHej3DBAbHYZK+k+tpiJ9er2gLZd
	orvfyrPbimTp9PfuiT1LKjspjQRcie3bfmlUnl83icL2XI8yxz+wLvTf5gjw+ZnOUi9hcOOyFoG
	UR9Tr0fqiZHaj9YFlpNhztiav8iJobUslv6CTGhbMPUsSadDh6NGaYgrn2mUnB14bod7dOI5xSb
	IGrTfAA5FXbbLuZy76pz5v/jc+naT9Cxi9wl8vF4biQerBiWPfKDPfW1dBRfyqEMnEvJ+IyGnBV
	eZu8QVsM28Hxoddt3WqIA8peu2cQsHjQz9efN5i3/qZiTiWyVY8edRHc4FvULIRxmGNjtPYOMUw
	Wk5QNKHWLQM8nNXKKnSSdfSyYYLk2yrskSciANM2Rrii0nNT+jLsHy6IZiWvtaeJr51coApy/Oe
	yDRW9MY+HoiYk7ICByuVjZu7fI6EDRSCBLZOOkyqCJp8l4wDclymYpVi1HVXY3zITOjbi2095CC
	B16hqvPHFeRittWwSIan5eXA=
X-Received: by 2002:a05:600c:e557:20b0:493:f822:ac5e with SMTP id 5b1f17b1804b1-493f8818052mr137138925e9.23.1784123927767;
        Wed, 15 Jul 2026 06:58:47 -0700 (PDT)
Received: from localhost (90-182-112-124.rcp.o2.cz. [90.182.112.124])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4953df0fc6esm45735865e9.9.2026.07.15.06.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 06:58:47 -0700 (PDT)
Date: Wed, 15 Jul 2026 15:58:45 +0200
From: Joshua Crofts <joshua.crofts1@gmail.com>
To: Esben Haabendal <esben@geanix.com>
Cc: "Jonathan Cameron" <jic23@kernel.org>, "David Lechner"
 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
 "Andy Shevchenko" <andy@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Nikita Travkin" <nikita@trvn.ru>, "Maslov Dmitry"
 <maslovdmitry@seeed.cc>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 3/4] iio: light: ltr501: Add ltr329 driver support
Message-ID: <20260715155845.00003526@gmail.com>
In-Reply-To: <878q7cmk63.fsf@geanix.com>
References: <20260715-liteon-ltr329-v2-0-d18af55edab5@geanix.com>
	<20260715-liteon-ltr329-v2-3-d18af55edab5@geanix.com>
	<tsVvSFcobT5NwJPHCbN4M8cwEznnquSJ6o4W-MpVcf7z5q_RwC6XI-NNBTwrQnEBed-Stn56TW1e4iSdtzN54Q==@protonmail.internalid>
	<20260715145324.000005c6@gmail.com>
	<878q7cmk63.fsf@geanix.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-327091-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:esben@geanix.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nikita@trvn.ru,m:maslovdmitry@seeed.cc,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A4C275F40F
X-Rspamd-Action: no action

On Wed, 15 Jul 2026 15:55:48 +0200
Esben Haabendal <esben@geanix.com> wrote:

> "Joshua Crofts" <joshua.crofts1@gmail.com> writes:
> > Just a small nit, even though the list isn't exactly ordered, please
> > try to add the new include approximately where it would be if ordered,
> > i.e. array_size.h goes to the top. Additionally, you don't need to add
> > a comment.  
> 
> So alphabetically sorted? And even before linux/module.h?

Yes, includes should be sorted alphabetically (or at least as much
as possible), not randomly or by importance.

-- 
Kind regards

CJD

