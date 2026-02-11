Return-Path: <devicetree+bounces-264636-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APx7I2EojGm8iQAAu9opvQ
	(envelope-from <devicetree+bounces-264636-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:57:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E4818121BB9
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:57:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DC9A302BA5C
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A832532E73D;
	Wed, 11 Feb 2026 06:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q4M4qCdb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AD7258EE0
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.181
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770793054; cv=pass; b=fRl/B0zzyprSHlhhKc/vrpw3Rt1pyjR31WiVRBFRSMsiYAWL3+VfCBzRc1de1vx11qVDDK+fotS1SQWjk1vVsqPoi8qNEXPQSx+h7wcbT48RsZQ37PXZXamspH3h13Mvs1yhXBVTF5Q3MphaWHH+1/3klBfqRPA14qPQ7KDgJCo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770793054; c=relaxed/simple;
	bh=ckMGdmh/ujGaSL1u44u0Po4SxGdL8Hzj5sCke3OMI0c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qRUSII6N8uJzwt0GVc4L4plnsGbGoBbQjGlkpEKDTOOswkRE5rfeqa72hBfncjgrhowb3imL3hReb8F3svTqUnGaxmWvxzCV8mNk2XEXsfKYwAdoJzm0nxNs49JmrCiqn/s3pF4DSOI0edRIXzyU4Y+Vt7eEf2VVyz7a+RPRkNk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q4M4qCdb; arc=pass smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-50146605f2cso7176161cf.3
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 22:57:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770793052; cv=none;
        d=google.com; s=arc-20240605;
        b=DWLjzpIKXnooWwkcVoYzSIV80xNx+Ts8Odh9iUbN/EfXN/Djo5z5tz1HZnJqQhg9Ag
         2R9nV+rOvird+pk3E08g0ANH2bIZ8kI6nE2hG+ceprJz4HzwwUfqOmOLDv3l+YSPQR6G
         ExgeN+L3MpHNXM5v6+LZJMzaSBV3SBfxYE1enHeHtRwyFtoURZOI9nqHT+WeCSc5em9h
         Oc5qoyG6eQ9YWL9ABxSMQIKBpMe+csdaF3/BHjoGB6nDWM6SWGG1R61S8tRXJJCXokxG
         szWQ45Pai0x/TzhV+L5qBohfNNg3JzRbu4cphYsrlMDQxr/CJiD4yE3g9qGdyVzt+VOa
         EojQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2KE+eglfX/MaH2FIVLCWpx26/dB6meyChI4AHkFgLKQ=;
        fh=pMqyGDwe4WeEcfQDD9HTTihTWglLlWbekFyHam2qE9U=;
        b=TH+RXFDSaTk8IIUyiH36Ni3yaSYArlqv/hMgz50eYXH3OymOd6vEqg6Y51k8BQJlSt
         g3ff+H5HGAE+aJ+yDoUCA7LDXlLK0HMU/xBS2MnuCmjeGwG7HP3uSIuZ1Q/DTYmcATva
         SLrdHlTLFurHcCf0WW4hAbhUI1PbsXue9o5oo+2i0h+4lRR2a2/AOz4qTD5UkRp/06D2
         Ye1hx7pn5g/my5KPZf6grYGstd1eYS4muTk8+IeWUOUHyDx8Q4PcBKq29w0Lekg9BAzM
         37cG/3A1kHEZyqj77nn2rm/vC/4vCxLEzVFjw4nbP6cjENKJnXvRccqXciSx1yh1ptdb
         rVkg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770793052; x=1771397852; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2KE+eglfX/MaH2FIVLCWpx26/dB6meyChI4AHkFgLKQ=;
        b=Q4M4qCdb5HykPMsFJqmEkr2k9gHR7Qj+VXhijjfZdJFXy6pIzPC5/iCYN7NsUXe6Yb
         p8QKzFnsxpCMiDsXLPCs/gMsThH7yei/t78V+ToBv1dsCF2shdA6nX/F41KX0szG7LTI
         q6TcVVmyaLAdWNmejBQMNDpV6QjrjBZkdjx0oh16c1Jxhu/4jch6ItqSs7XBninD5paU
         BP7xkNd6wflaq8PjUkq/Px2ljMQvPzhg+gWWmTOADLyXf9R+RBbl9JcOTrBYvOI6ZLuv
         BvBLnOj1XUBcVHRhJPeO1uUVw5aACc762Zg6YiPnkqmGfylbS5zgTNMuxfUVd6wG1zN5
         Gyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770793052; x=1771397852;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2KE+eglfX/MaH2FIVLCWpx26/dB6meyChI4AHkFgLKQ=;
        b=rDBm9oWwNve5Phe9Pzr2PZ/GFokSDcAeKEDN2r4SsCNcim5hKFPmMxTlNk5qEJtdlH
         6rrYb6CpQwu/I6MxluuVTiEKV9uvPRA5KjxGQevC99avoAmGEpWHZ4+bc8GiJ6gBrOQR
         TXEtcqNNLrI5MbyZCNC9aUeUR1xmm5zJmpkctbrJzvFSobxjmveUIrMKCnpF95wAyZrS
         3ejkB7MCQPX0S4Pegt9iKK3ws65PSoOMVgGkjlh7msaf7jxuk5D3RJWGELNPcfbm+pd9
         360YS2uXhYsTKsaLPUhX7/O3Y8dawY1ooGBil7vXW0hLwK8/0JnCUNj3Vhz9f9+C12SK
         2b+Q==
X-Forwarded-Encrypted: i=1; AJvYcCX9vEzh7z+6nylfvPo4Kwcs9rKkbG/49hoAIx3GUhdQVlxZzx97SKmzf9LcScw4/fF8rKWgzXQ/kDYf@vger.kernel.org
X-Gm-Message-State: AOJu0YyxnI4B4o7DpS1YVylLLUKm0w9QJ91vkhkfN3m0nF0/AZRZOHMK
	2+TFxyj4DGOyQBqyk1gThbBfkb7LC/UMqLeToLjmyLYZRWImIhBMhnPY/Cly8hAK1Gz7MxSe5lC
	XQEnW0muPDUBTsRAAFEcQd1GGUz0YG9w=
X-Gm-Gg: AZuq6aKlIlIFAo+JTuDYU5mbNOVA/4H5stMLSy7YEkHjQYzt6H1j87l94ZE3Lh0/ltl
	TH6VYStC81nDYAlw0NCA4p2chhRQ9Y+5oXpGOPoxbTxB4aIEFA9K5U8tP6w+KzQ9kfk9QEvLWpW
	R4bWzukkE9WBmdbzR6XshbeKkcU+1PdE/IDZXSFbXrPXzJMZEtfVMze1H9vT7xw4X0qt4tFt08O
	CaWpBCB7j7uIspUjHYKS/U6JTUnJcw8UQBm2rFcjRkRF7ZnggBIm/LdGqLqt3rK8fNO/ZxOB6YV
	HGEEGoCREqkd1sUe3vMpNXurRWClaL/2kp60HIJcDtL/yWh0qLsBoVlCuu0gTdSiVcCGbEME
X-Received: by 2002:a05:622a:41cd:b0:502:9ed4:eea3 with SMTP id
 d75a77b69052e-506839c8793mr8317091cf.9.1770793052393; Tue, 10 Feb 2026
 22:57:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209-upstream-20260219-v1-0-2b4d74e309d1@gmail.com>
 <20260209-upstream-20260219-v1-2-2b4d74e309d1@gmail.com> <aYme6jXNyPM_AHo-@smile.fi.intel.com>
 <CA+NOmz+KKhSAX8cEUhcS=GPCTtagyFZS4Pszj895bf-07ii7bw@mail.gmail.com> <aYtsENtoRhywTYbo@smile.fi.intel.com>
In-Reply-To: <aYtsENtoRhywTYbo@smile.fi.intel.com>
From: Yasin Lee <yasin.lee.x@gmail.com>
Date: Wed, 11 Feb 2026 14:57:21 +0800
X-Gm-Features: AZwV_QjUmdXLEkJCdjBhJXQ21a8OeGDgB1TngSpiMw-IwmlgYDuJUwa2KHdF8H8
Message-ID: <CA+NOmz+JKNcY+MhbMG-oYPkxR_Ac4YFbj65zNdxBBX8AtSoDtw@mail.gmail.com>
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
	TAGGED_FROM(0.00)[bounces-264636-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,intel.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: E4818121BB9
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 1:34=E2=80=AFAM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Wed, Feb 11, 2026 at 12:29:15AM +0800, Yasin Lee wrote:
> > On Mon, Feb 9, 2026 at 4:46=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@intel.com> wrote:
> > >
> > > On Mon, Feb 09, 2026 at 11:37:03AM +0800, Yasin Lee wrote:
> > > > Avoid division by zero when sampling frequency is unspecified by
> > > > falling back to a default 100ms sampling period.
> > >
> > > Fixes tag?
>
> >  This is a proactive fix for an original implementation issue I found a=
s
> >  maintainer.
>
> Cool, any objections to use Fixes tag?
>

Hi Andy,

You're absolutely right. I understand now - adding a Fixes tag is the prope=
r way
to document bug origins, even for proactively discovered issues.
I will add the Fixes tag in v2. Thanks for the correction!

> --
> With Best Regards,
> Andy Shevchenko
>
>

