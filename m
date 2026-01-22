Return-Path: <devicetree+bounces-258452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMx2OnBMcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:12:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 954D669B06
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:12:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 05A3F729986
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 14:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2C0934FF4B;
	Thu, 22 Jan 2026 14:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="kzODX0YR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBB730BB83
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 14:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769093749; cv=pass; b=rKZXHYQyoyArb8195kw8ZjGYYlXyzJ052bS+lqMGS2bUYo9QzBfD0FqQ61CaButuv9iqgCDTs5MoTFpq0I7cuLfjpAAy0euMDdpEyTCtXo/U9I8zzgtQFNozqdgNdg2pUzfvIH4aouH8csc/YbnQsVgJv59Kdc13cmUrdRPYFO0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769093749; c=relaxed/simple;
	bh=JPDh6iyZpRU8+eQaa9r236YqbwqZPCWxtTGDrKz3Wic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n/a7pfhEs30LUU2Wke0sTq23+O9OvDvqEn/V/36BwhLOFW/SlyKpW64rStfmH/ps6ZTx51zU+Asela3qXPoKgBGtviRNrY1iRK/Gz7MkmZ3R6mxXR3KAKcTgt8UB+p68UNp0WVFvOV8X70iPTtk5xzeDzaagE1OSwKdTrRrD7sY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=kzODX0YR; arc=pass smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-78fba1a1b1eso20081477b3.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 06:55:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769093746; cv=none;
        d=google.com; s=arc-20240605;
        b=NSV5c9wS+j6pfHidZ0vfQNK2nb477dfjizQdnUXS9wsfOAWOZf3EPQ3DyhppqbuC0n
         J8zEOltrIr8Lr7tXcQOv2KKSfllMjI3J0h4Qfop1xcOYGO+BkG0xQFIpCsiQnoXywL4E
         tEz72OQO0kPYWZ1CQ/gwf1RR2hDKI+bIvktBAJJyTIGW3zJrCljtQ0njpw++V2e/JzGl
         iSS+ECAXOTzZjcDq0WZVH6QV/9n3AyFSn+tCiRM/R2O3TYaRgccG7X/rj8kc9H3X/t1w
         912RvVNgNM+JTJBiDLuQyIgpDxnXi2UTGCWY3P5XsmkARhxgvsQOIAC0jugQvBuRcfz8
         bilQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zNlrb79F8npK3m2Hl07L9rICov5a44ljv+REaE6QtO4=;
        fh=ARKAQaImwW+GtWbeY2/zYi1hgplLQNkSIM03MUMpuho=;
        b=Ltu41IpM4Kn2X4Lkcs8TCnJaft0rAwsl79SaZJfgWOtvBqhJbpF1MmY8qenGZkIp35
         ZV2DZpHW7MpkQ/c2bEW0v+RDTbSIxj+W+o49o25Te5GMnsDrv6AVPEhtLPBOdIWxqGif
         FYl+zMBv8j3K4MBF0J5MCtGX/AkUOeqFeDxaafyJjKSsduJDtjOfWhCN/xkobD4WuZxm
         MS+eVDGTdX3eWmxfQz5gqSE1bzFCLafRL4oIpGFkRMUut9XRq89QwdxEagqJK+U1RolS
         jFAg5+8F7VuNQan2E4Lk+px03bAIrB+vPC/4uFGu3ZvyaAWoHFi6CFGyG5wbJ1j92ntG
         qf6Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769093746; x=1769698546; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zNlrb79F8npK3m2Hl07L9rICov5a44ljv+REaE6QtO4=;
        b=kzODX0YRHk9tSzXhr0UtmtaufIYzBuMp2pufMV0cXgveFOCljAvddLKMhDklqzEPTZ
         6wv8w8T8+XKgTME1f2y1ZjYpyn/a+Wz2DlADquoFvw61JaTOBxA4Ndxs5Aq++DUu/P7i
         ME5Rqmb9RZgS7XE2Dc1qE2m5zsulv8+VzCdPFkEYCChzEr5AwSiY7fwBk7647/SeuFEP
         tOVmJi36/SxkoCD7woXqtEenWT2zUBqUb9SDI9f6Y/wI5uXoRKGmaZCc/SMqmg98x9lX
         mD0bkDHKDAGrO8KoArkFwtVi4S72PctlmpyJ6BAKuN/vAhqCblvBygNk4N4sIn3YX7eh
         FpJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769093746; x=1769698546;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zNlrb79F8npK3m2Hl07L9rICov5a44ljv+REaE6QtO4=;
        b=i0lrBfAinl11Ck/HCdc8LycQsDNLaWPnYyPM8pKRS9gF0hPTMnHd/ngTbQFFzl3wFV
         IgmkQgRpdTzqUEFrm70wnD8tqzDB0sGUMRLW4RxC8DjFkLpXpFn5u5Sb/63KYP+u/+/h
         LKsUWGfsNtkM5l6Y9CBu+yd7L4G33YaETqrw0Iz/Iy1okZKRr24AVySKxwG5KbDJmlyW
         0R1I8Hx5UgllNJMXjOX3Hq8B6w2AOMlerZhUtldqvWqgWv8rjbFpUmdRXcsfwOX02OPd
         D1v7VbNyxxsEgCJL2qAdUEYExV5S3VvESNcslNoVUDhFEOuztEEtXmA7zB0+ckW1KNPy
         s0Ig==
X-Forwarded-Encrypted: i=1; AJvYcCWWbAbzmhQ0lB+dI6RyPBlUzyfwa0YlXSIBwkjUnOK0U9MPrYW6nutpNb1b79qTcPNMyHJc7q9/akB2@vger.kernel.org
X-Gm-Message-State: AOJu0YxsS3s1R456JQnuMDiJfVurwMqagky0kc71eR1NHQCz+jniP2rb
	veSqL7RXFCOI4ORVLYw4v2yXt7KO2lIRJrdAg53h5gamQNqG9oSCSH9di722ccGun7/LuVWrdPU
	ghh54VtIE7araMkKkHdZhgC8XKC5YVZHKiwNRt/NCdg==
X-Gm-Gg: AZuq6aIJgHXRooJFv12dqxwT8V1J7iUZZM8qNveZ/nsLrLg903coEA3OX/3PUWKmo9M
	ieZ3ljVz7/9O/x6Fefk+f347CJHXusvom9ftyTvkO+F4dbjuHHxhWXoOr+m4M/53mJ7Hd1ktJzx
	AF2TeKHWFxLvDnUi/gA4oSnfnLS4ox6V10oLW5mQAnLPpTQPw4ug/HpHl/gvxq1H0oSiyO1ryvA
	3S1wMXrdr9VrU/TBj20sAisqxHlO2tKRdK9yeTVz4ei57YMQBpofCif4kT+VoJMa9p0BabDYHMY
	FXuUUwOx8ll9xE7q77BV6aFBZaOwkCA3aTsSJIZW/V9i
X-Received: by 2002:a05:690c:f13:b0:794:e13:6cb4 with SMTP id
 00721157ae682-7942a867a86mr25319347b3.24.1769093745796; Thu, 22 Jan 2026
 06:55:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122-spacemit-p1-v1-0-309be27fbff9@riscstar.com>
 <20260122101122-GYA63789@gentoo.org> <77bc5a5f-666d-4beb-ab78-99a242d72a39@sirena.org.uk>
 <20260122121223-GYC63789@gentoo.org>
In-Reply-To: <20260122121223-GYC63789@gentoo.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 22 Jan 2026 22:55:34 +0800
X-Gm-Features: AZwV_QiJGaLsEOdeugS76EcbcaDtGi-z5pG6_55yk_bVABlnd5tqHNMAicmasHQ
Message-ID: <CAH1PCMaRqXHBZQLY02DY=C1rorMc2DZzzE2ziADofWoAQW8Mzg@mail.gmail.com>
Subject: Re: [PATCH 0/4] regulator: spacemit-p1: Fix voltage ranges and
 support board power tree
To: Yixun Lan <dlan@gentoo.org>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Alex Elder <elder@riscstar.com>, Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Troy Mitchell <troy.mitchell@linux.spacemit.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258452-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 954D669B06
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 8:12=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Mark,
>
> On 11:27 Thu 22 Jan     , Mark Brown wrote:
> > On Thu, Jan 22, 2026 at 06:11:22PM +0800, Yixun Lan wrote:
> > > On 17:43 Thu 22 Jan     , Guodong Xu wrote:
> >
> > > > Patch 1, n_voltages is corrected to match hardware register widths,=
 as the
> > > > previous values prevented regulators from reaching higher operation=
al
> > > > voltages (e.g., 3.3V on LDOs).
> >
> > > This patch bring system-wide change that not only affect Bananapi F3.=
.
> >
> > > Please also provide fix for other boards, I think you may not be able
> > > to test all boards, but make sure the patches are available, so peopl=
e
> > > who interested can test, P.S I can help on milkv jupiter board
> >
> > Patch 1 looks like it should be OK as is?
> then with patch 3, and for other boards (milkv jupiter), should have simi=
lar
> DT fix as patch 4..

There is no "spacemit,p1" node in other k1 boards (milkv jupiter).

Best regards,
Guodong Xu

>
> --
> Yixun Lan (dlan)

