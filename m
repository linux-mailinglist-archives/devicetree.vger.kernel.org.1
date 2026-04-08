Return-Path: <devicetree+bounces-285900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPLJLzWw1mk7HQgAu9opvQ
	(envelope-from <devicetree+bounces-285900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 21:44:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8910B3C35AD
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 21:44:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B9F5B300AC87
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 19:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A560C3A8744;
	Wed,  8 Apr 2026 19:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/t7Mvad"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C117387374
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 19:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775677489; cv=none; b=BvZeNzP5rMDcJoC14lMS5wzTEIdsnMxywUbH4ifYJHKgLfpYQPPlW4JroV90tqGEm399Us1i1o6CiZf8d8vbpeCnisn0dvfQiPuyPN3w9zNCFcH5Nyt53sxswYXPFVMaX0DQhLSZAb9gg4ph4W7hn0lqfZJXULxfZBbp81v/67w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775677489; c=relaxed/simple;
	bh=c5WnR933iazb0lin+oW2ATL9IN7UoHtxMl/eLZxJcb0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SsRMvwdiczX9EisYYgHnaKwWPvcMokVSOi6RhxDK+QRZKCHMt9iFh8//mtRxd9k5k4KPvtdLadCSAmVI8PJOJIMwY+/u7gt9aH2nrFy+a/SJWseKE6ki2sazIxRIOTysfsqPUIKVIanhkUogpI2jntzSRCdxGaJ3LLIh404IG14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/t7Mvad; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68CFAC19425
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 19:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775677488;
	bh=c5WnR933iazb0lin+oW2ATL9IN7UoHtxMl/eLZxJcb0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=h/t7MvadYlcTmS24VXSHmX/uQwrlhTPAG3MLnhvHT91dvLf1Y2ieO9eXoZB2TXrcd
	 6GABrkaM5MR4G2jBPPXkPVUeDcpQpgVLiBiw/PBWRkDUAV+FOusvfQa8DFQ8vrOofk
	 mTrOrA1YtRCBVstexSwBr75B/IWCkwGvQ3+FSd/dZw+pTaDM2UMgkGWzNG3wSHB96d
	 N4XKgWKEeghWeFNeUWieYPSPSp5oMdyDa9hWwqIJOGSEFssdTQjmbKLkY+NLnjRGgN
	 E0isYap1tYKGjrpUD9Rp0DZUhbT33mXIupZgZFTI8g8W6/LiQbRd623SnmYa4Z/uSO
	 BX4OX5b2pOlAg==
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b9c755b2cdeso12562166b.2
        for <devicetree@vger.kernel.org>; Wed, 08 Apr 2026 12:44:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVtiUPWEJ6tsCpu3CxqnQVgDYWaKLUkQpbzw38MpxnwyR0+RuXO8kPdwfwLVAeh6OEdrd47yYnrIoKR@vger.kernel.org
X-Gm-Message-State: AOJu0YyIj6I2KV3jyJ5zKWE2dLQUQ3J8gnCgpeyiJF6q9xw+VIxJLzAG
	kgldDUjb9vDNgUi3LRaYpZ98Ok1I1F1Sbym4VMpWaOlLD5YQ/ziTVgGMDRzB87Q/+Fv4cYV1uyY
	vSwSlQvBIprpoe6r3NBS1B3Cpls75RQ==
X-Received: by 2002:a17:907:c20:b0:b97:a39d:ae3d with SMTP id
 a640c23a62f3a-b9d476a9b22mr36701966b.44.1775677486956; Wed, 08 Apr 2026
 12:44:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-2-macroalpha82@gmail.com> <20260408131944.GA1901621-robh@kernel.org>
 <PH0PR19MB9973386B000D79AD04904C96B2A55BA@PH0PR19MB997338.namprd19.prod.outlook.com>
In-Reply-To: <PH0PR19MB9973386B000D79AD04904C96B2A55BA@PH0PR19MB997338.namprd19.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 8 Apr 2026 14:44:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLEBnF2g7p2ubkUnpc2X9+r7wx9HP-Wdzp5Cm5wj013eQ@mail.gmail.com>
X-Gm-Features: AQROBzDGxcdM9Vyw-5a18RZVzC8wwyekQwwIUeeoAHpDXWW3RAwMTQpvv5yzZ2I
Message-ID: <CAL_JsqLEBnF2g7p2ubkUnpc2X9+r7wx9HP-Wdzp5Cm5wj013eQ@mail.gmail.com>
Subject: Re: [PATCH V3 1/9] dt-bindings: iio: imu: icm42607: Add devicetree binding
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org, andy@kernel.org, 
	nuno.sa@analog.com, dlechner@baylibre.com, jic23@kernel.org, 
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, andriy.shevchenko@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285900-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8910B3C35AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 8, 2026 at 9:31=E2=80=AFAM Chris Morgan <macromorgan@hotmail.co=
m> wrote:
>
> On Wed, Apr 08, 2026 at 08:19:44AM -0500, Rob Herring wrote:
> > On Mon, Mar 30, 2026 at 02:58:45PM -0500, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > >
> > Subject space is limited, so don't say devicetree binding twice:
> >
> > dt-bindings: iio: imu: Add Invensense ICM42607
> >
> > > Add devicetree binding for the Invensense ICM42607 and Invensense
> > > ICM42607P inertial measurement unit. This unit is a combined
> > > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> > >
> > > This device is functionally very similar to the icm42600 series with =
a
> > > very different register layout.
> >
> > Similar enough to use the same binding schema?
>
> Yes. I was under the (possibly mistaken) impression that different driver=
s
> required different binding schemas, but these should be similar enough to
> use the same schema if it's allowed.

Total fine. Bindings and drivers can be 1:1, N:1 or 1:N.

Rob

