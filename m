Return-Path: <devicetree+bounces-264471-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBVkBHxei2msUAAAu9opvQ
	(envelope-from <devicetree+bounces-264471-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:36:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD4111D4A4
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AFFA3302F3B5
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29C5430CDB0;
	Tue, 10 Feb 2026 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j97Ix8aU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF43530C60D
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 16:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770741333; cv=pass; b=LrkAk1lroYDLFQx1fYOGwGTXUgQIfZDxwRYNmlP0v4QJ1LOsqkPylEeFj0kDkYkWGLFktFi0uFHTTjosP3DqPNQDMWsmrHSmCxe1ENFa1ROE2zspS9L3F5mP0VhVOwREFhGgSyzJYXjler3R+GipbOiI8wBtvZSVX8c5w1+WPrw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770741333; c=relaxed/simple;
	bh=nftrP5MGKrTCUa/drFb7KU6KxLAMWtnD4mrPPUEZ3mY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hQ7XopCNbk31qOBqUT9GpqTvI7ej5tbcIqLzdHR4EvrrKmMhtpwVejymJTYmxCcLWgIDMGxmUD5UyQp7QgndSbIbALieG8nOHDMs+GTxEgPOYioJLlnsqz26wANvnK+i1+cH8odE7aCU+gO5wnAsysBcudxvv51T4YU/w2h2DLg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j97Ix8aU; arc=pass smtp.client-ip=209.85.219.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-89470513c62so9936566d6.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 08:35:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770741331; cv=none;
        d=google.com; s=arc-20240605;
        b=EKjyvF0fpTszR2XYuo1A2dHfDEl4+fXi4hM8CMEOHUcO8yhnU6zHwqf/FANTqUIn/q
         QSismFFIk9NuJARpVH7Thno488a+wQI/ysmXJSGYzSa9mCdrIAudhx7Jt15E2fgJBVuf
         icRgatsrRciaHRNpk+lCybRzKOvepWHgbYRux07QfSZcCGwpr+FiE8TF4dUHah6Ndqbw
         /dzKrOcZQiZkCeiGsGStzr+QG5wIE09Xth9WXsaVE3IbW+eh2fD4stRAmYOrRuSbQ3kE
         jsWbYEfhZMulSLiCjam9J4aXoXSWKyvs8ynzmBAbpgStl/Dd0xvWlPj7998BonWYwLt5
         S1Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nftrP5MGKrTCUa/drFb7KU6KxLAMWtnD4mrPPUEZ3mY=;
        fh=qSXJeSy4cLAD4FPYTwIxTpr0Uz4bvjrY+MqYkTkBPW0=;
        b=PJ0zRXUzKylrn80YWjA9ZthwBTfYb5E+zrKKKDSEF/6SBpTt0EJYJT2FiW1T+Sx8bY
         SO3pgXbpBBrvrQZKSRY1ptsOTC2OkfhVpoHIwnviDu3wASTT4xEVR3ox9eAyibRyLC/5
         sxqONyigI69OWV/tNAaFAuuqZC7196+H6Duf47Nj/nsAxfQCeEWW43t/KWHscIUvVxL/
         /pVdfjobWkdBP09ovRKOeWFbxwGh1JvpQ/cCr5pIHWEab5Kr+tR+loySipF15SwALPWn
         ecvqx+eh9VPuNUs2Jfa1bKlVf03srzF8ncMW8MXTdXQGYzmSRCmky7wGz25w5L0MWUTo
         7+ZA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770741331; x=1771346131; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nftrP5MGKrTCUa/drFb7KU6KxLAMWtnD4mrPPUEZ3mY=;
        b=j97Ix8aUs2J6Pw0QoxRuAKkQF3Gh3jvANXVn2QAtUXrmD3KfhPYhBuhjgIZeU5+ZG2
         Nwol8eqD7E6LWZgdcsyU9+79q7unnbU29rMoEaCeHRV/yTNjQqSWYYWbZZOzdg5ciqUC
         Uo/+CGLIZ5mdA3Q/4iUcwtLs/zIVr++hXiaiiP+mwQoVBAcWA9zzFJQKvA7NAE6Co85k
         Qz9ZlRO/iVy5Rxi4iGHptEQ5egPhdliJ4lT4CiCOqfHvBMt7SlVHZJ3vzmBLN8LK3RlA
         zncLg9YOmXSVNLHwJGVFz+gIfkgjBteRUckZYz9weJeCizsgAXAtMZG4LLEV5dDrYNRl
         jTpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770741331; x=1771346131;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nftrP5MGKrTCUa/drFb7KU6KxLAMWtnD4mrPPUEZ3mY=;
        b=V6qDXaXmMyrg1tEGXFvYGeGLsgoRea5SgGKfMF6BEN048zsYItnwCiWOzAts+FoJ89
         yWWIsYgl1qrSrxS9RVUADa0yPjGeqtEF4WQIUDPUV2AqlttEN4+IjfuQNrj/mlmg+akx
         rGWCxT5atatYtwk26BiIopfpmJkdIcGXZmrosQ4fgVz2v0Xt0RsYm9KRot/NSJ5Jbri9
         RoioU/Ol4ib1KV02/sPNx5HCBthLRqi05Xjn1zZ0vuhVgkUJu0BV/pT3duRo48mDFH29
         7+fol6bnltYhci6zVqem4JW0NUMZ28s728EuETqH1H8m4CEsozjy5LMnv/cn2AgsfVTr
         Gciw==
X-Forwarded-Encrypted: i=1; AJvYcCWPYqA0TMtrYTTBvHvmZxxIvtzhmFq63o9KKnMiw9+Dv7xOpIee/vzm+V9ECqSIaGPY41r0URqHNJLA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6rDrbAAg2ixxEakU6gXl/421sFy6lOru+npXAm5HM3xl8LaAu
	UcNPP+pSpdB2wxOaF1IDL0A1ARcdJZPUYTkpXei1G+eAt5qZY6WWKxgtAFUpOEOVSmawzVV8/7w
	DTJy6XldQPq1F4H33yuzrAE4CIzarLUc=
X-Gm-Gg: AZuq6aLIua09aOu18H6XbQSGf+UzVEg6+gsHk1bOaqDpG8w3/L8rXgVkI2u0VhZJhMA
	UutsoC2e3g9QzGhwKitbYNgJiUG34HSGjX9l7h5L7lGBwyrPqDf7Jp2F2xtvUTRhZ9Ylo9JHQDI
	4tMZeDT6R4UdiNZrOBQWSvqqy9ksK30GAZQzdCPEGSGDJQt6QOJ6NtGywWR8uTuuJ5OMUn2001j
	fg1G7Av7r2sdvOzC708hICatXhDi55OFKVTF0mePRh0Ex52IqdzZTDmmnkzIwcFMRdGAEHbUv2g
	N8QbJ3dGqYiduXlJNr37CZGPnQGc0haCOurx6sTvjUmiK03ccX09vG0lVk9b+LySDmWxcfTxVbO
	kZ/aSyHY=
X-Received: by 2002:a05:6214:8007:b0:897:12e:8e8b with SMTP id
 6a1803df08f44-8970fef6e20mr24182106d6.7.1770741330712; Tue, 10 Feb 2026
 08:35:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-1-2b4d74e309d1@gmail.com> <aYmeoZIlY2HCueKO@smile.fi.intel.com>
In-Reply-To: <aYmeoZIlY2HCueKO@smile.fi.intel.com>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Wed, 11 Feb 2026 00:35:19 +0800
X-Gm-Features: AZwV_Qg-un_nbS5q6ROT2Wy2doK4l_-Fl8D9_tVQI_OtCsAM9_DWT7M35VSqDmw
Message-ID: <CA+NOmzKZy=8WhsN6w3B195pp10JunZA7ZVjRmwD21Q1CeOBYvw@mail.gmail.com>
Subject: Re: [PATCH 1/5] iio: proximity: hx9023s: fix out-of-bounds access
 when copying firmware
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, yasin.lee.x@outlook.com, 
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264471-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yasinleex@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,outlook.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5FD4111D4A4
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 4:45=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Mon, Feb 09, 2026 at 11:37:02AM +0800, Yasin Lee wrote:
> > Initialize fw_size before copying firmware data into the flexible
> > array member to match the __counted_by() annotation. This fixes a
> > potential out-of-bounds access that could lead to a kernel crash.
>
> Fixes tag?
>

This is a proactive fix for an original implementation issue I found
as maintainer.

> --
> With Best Regards,
> Andy Shevchenko
>
>

