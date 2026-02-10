Return-Path: <devicetree+bounces-264470-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKcyHSldi2mYUAAAu9opvQ
	(envelope-from <devicetree+bounces-264470-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:30:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C353F11D2FC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 17:30:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A89B301DBB3
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 16:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AEC2389E05;
	Tue, 10 Feb 2026 16:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="huf9W+Rl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432853806D3
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 16:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.219.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770740968; cv=pass; b=G/Ma2yonxGWq+gu2PTi3tM0f2JGgJcsRRl7fN189/YgbL+TRpnvEpvCsLdDViXk1fNGwYXRAtnjoARH5+ym8UpdmPpWAf2FNSA77bmSsBqqDZ5PWIoUOB9JOu6SODE5xwPp+xdi6iJZwGngvhp9FUGidENbxB43ilpg8pcAXc3g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770740968; c=relaxed/simple;
	bh=J+VWldTcfADnTCCUyOQu7hy6eXpc6fT/7vFN7R/c++4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=raGgbcUwWN8Kun7wbrC8Eiu3FhOVtL5fV5G4U/1nPo8aBJkvTwbIQn+Z/rxCaoV7tFgflbAUf5fHd5QyNUWJlTkM8nu4i4uhEEwipGILxoyrSvl3uFXTJJ0IUdAaNMposFrpKWbgczXU5WkFEQGjiD4HF5i9ygjDqwJVqeK1Lzo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=huf9W+Rl; arc=pass smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-895498f3819so7123196d6.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 08:29:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770740966; cv=none;
        d=google.com; s=arc-20240605;
        b=OqhfBD+oL8wGpMnXEqR69Qw5BhwDSC3GtWw7Z9sKjazlCR/te6j6vJV3qLAoyODgtg
         4Tdaz9/DFNA+IY43yvIcb8PjaHEk55GsBy0bkoIzs+hoGPb6+G/KQ68BxUE5TcWTETzF
         LcGY+XFlCdKg3p2kaRSYE3d7kL2IsklbfZG3Lty0j3+//xD1acWLBKy9x0XokOWI1I7d
         K50dTUAFkimnHocjKcSoQG9WwtuNxs/s7aiFJim5/FkdYEyPLIOBn0bqdJGuVEwtN42s
         6wzLyF+KcgVogSLKjOZmhUoBFHVDJ2i8m5n9NjIDHPGvAvMYdikgAtSjVxMtke7+IkD1
         /I5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8NxRSBhGtuOsPJckNjVFGcti/Wl/9Q1xvm8JfNXImag=;
        fh=bFY+b0OS6Pmrj0ttiz+dfcy8RQN5fDOKeYsAZmV/tqc=;
        b=K5jpKQGzWKunqL8aUI50T2CumLYK3VbDXOPr0dC5yvB3CRp/nFKGBKy3zHAZy9RgDA
         LgucCrDqtMExRFb+0nSnfPaERWh0JVKI7UgcblnEwbMgm1ZyNycBhKFKSSWk+QMILTHD
         H/8QNoa6ItR5TJ2jGfEY/OgQB2Qgbz4ZDs6eqzVvmaXY1pZZ+XiCd47ib32Ku85YwHPw
         Ym0VsiwpeNn6/fU2ZGtVfgAAiEXkuSfRcqakxdm1lsZVl61WG5kfaZdp//+aDZ5GQx9V
         NyfrLoH/l+QC77nB5WYFacDM3V9oirz4lGmjkUGt3Y/q+GkoDVGRWtvHWA8RY6dW3LDe
         g3FA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770740966; x=1771345766; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8NxRSBhGtuOsPJckNjVFGcti/Wl/9Q1xvm8JfNXImag=;
        b=huf9W+RlyF6a/8NrxDSmAkKC83Y3Ax8Hd1JQuVbI+ylAKeKjejwLE28xcOOO6JWLjd
         YldsRWDIqf8jYvl5DT2lr+JFpXUuBvRUv24LNWBqRcm9C7fGjCdlXr67wC5Cz8s19V/z
         0ol00eMr0YH0+qB+7Q0ZRyaZ9DCSz+pYvNgfb67SXClF39tEdtwlluroaWmYECWi3Eyi
         I/vS2PPQOHlBEGEQ5SRd2lIVb6EHOP9MbMohzPFE+krqtgx3LNSXUfCtQ1Rer+LKSw2x
         NukUY7ggDKrw3U/pOJyiUm+gc5fZO6nB0Ignywhd+2mzCkYiqBPK7+wGuVHScdtR6HfY
         Rbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770740966; x=1771345766;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8NxRSBhGtuOsPJckNjVFGcti/Wl/9Q1xvm8JfNXImag=;
        b=EBE0KRd7YEYsSSbunqCrzyxDl6GsX9Nt96U9z/SG79i7Ujic4vpmD3jxoNJ7G52eah
         nUKEyn5WEuFsrkygEFI/To9JPgnvchr002P8MXF2ANN1pICgB0Jrq1hQbQd6aPEk6uVJ
         ruQUAju67UGVk6fYRAAYLbmEMpXHicYAg4+2QJgafM3zZnhUS6hurv7OxDv1hyVNnhg4
         j7gYH5vdXbX86tlhYrofkvqKhGs1uIq38vsmur+gFmR8KwKo16bHyBdw3mhoBpuMPVBq
         GBbviT1h8YfJKp/nqDUtYblUM/UTePTtQtNj2tY1O3w4/cwSFGAACI97P0ChF2YwA+6P
         oZrA==
X-Forwarded-Encrypted: i=1; AJvYcCXFI5z48EpIMAlHwwbwboiQ4DCy/BAA+L+H3bMfojOFSNIckMOFINj5p0uy2wzfu+epvBRpSE8r2NNo@vger.kernel.org
X-Gm-Message-State: AOJu0YwAw92NzltrPtyukXe5MWfNfk0ozlu8+Z+v5dQjAD/zuarT3W3b
	IcS6ODzxK77foEYNu48t/2KHM+PDNGRRGV+gWpdHjAkG0qoJgtj2u2ascUZRETrcg9aqSz1wN0V
	X+gMbJkaWPrm/WrBRbmlBtyCMcNDBcBo=
X-Gm-Gg: AZuq6aKiQD/hf9S+6j9JBGc2FiSMrf8pzNGWlORnhqr5gjLSGKuBwznOeNobmzNXtRY
	zRwE05vHVG3SY2FMs8ODeT/WxlZZTZCsqhjxPbOn6MIy94uZx9Ee6kHhWB/2vmtj1puoSuEKY5w
	BqiYGmA2jC1tNp25ROeqp08tI1hv7pfJuaS40t27TcPdI3AK+FlCifSHPzt9OYxXhuwYtGqpPeK
	K90RZOBjnuxZE9j4kIJXVBK9PsDrXFmWGqWROdphc9n5DHFG/cbzYDhd+EBXdo68WCV3mVHkPql
	+/CFUbFvHdVaaf+uQkZ0+sgigqQTlzSoWhWr417ViSI0ZyarIfxUted18mzB4mSPZmZ8W3AF
X-Received: by 2002:a05:6214:808e:b0:896:f317:17dd with SMTP id
 6a1803df08f44-8970fbd8d08mr22667816d6.0.1770740966165; Tue, 10 Feb 2026
 08:29:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-2-2b4d74e309d1@gmail.com> <aYme6jXNyPM_AHo-@smile.fi.intel.com>
In-Reply-To: <aYme6jXNyPM_AHo-@smile.fi.intel.com>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Wed, 11 Feb 2026 00:29:15 +0800
X-Gm-Features: AZwV_QhOyNJgQd7vK0x9FealX_MphwskI8gr5HBDi_wedHBJB44eLUiKvIXsZck
Message-ID: <CA+NOmz+KKhSAX8cEUhcS=GPCTtagyFZS4Pszj895bf-07ii7bw@mail.gmail.com>
Subject: Re: [PATCH 2/5] iio: proximity: hx9023s: Protect against division by
 zero in set_samp_freq
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264470-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C353F11D2FC
X-Rspamd-Action: no action

On Mon, Feb 9, 2026 at 4:46=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Mon, Feb 09, 2026 at 11:37:03AM +0800, Yasin Lee wrote:
> > Avoid division by zero when sampling frequency is unspecified by
> > falling back to a default 100ms sampling period.
>
> Fixes tag?
>
 This is a proactive fix for an original implementation issue I found
as maintainer.

> ...
>
> > +     if (!val && !val2)
>
> What's wrong with the positive conditional?
>
Agreed. Positive conditional will be present in v2.

>         if (val || val2)
>                 ...
>         else
>                 ...
>
> > +             /* Fallback to a safe default sampling period */
> > +             period_ms =3D 100;
> > +     else
> > +             period_ms =3D div_u64(NANO, (val * MEGA + val2));
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

