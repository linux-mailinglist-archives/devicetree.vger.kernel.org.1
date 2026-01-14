Return-Path: <devicetree+bounces-254831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB3AD1CF7F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:56:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0684E30215EB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 07:56:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9427D37BE95;
	Wed, 14 Jan 2026 07:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mVLIefO0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10D1218AAD
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768377364; cv=none; b=ewQwa1xq3QfbOIfvpGH/pTsFzEqANq0jA3LuAdi3QYf0I3VY1tsaIx9USkPDq0RcytV3DpwEj6DRcsfkg/K78UdpyRDC7E08WfW2ncUgMirkgRjgvDwYfkJojgfgv6jjkFnLT7eanimvAWnYmHDDSxop5ZQLMBIqytgwN0I0Cnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768377364; c=relaxed/simple;
	bh=qykM1JYbULj151QKzbc/hEiAVXe8AXiyAC3x5F6hwNA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WEbNAcTULQBpjV/jY+9Qe7hgarR/oprW4Cc0vT/L2dqbdvWdeSRYVrFzfkMYbl4JSkqt8HBpHn2TYCXmDqnd/xQP4/AeuZR4h2t7BAtXjue/HUUrVyYhNBnPY+m3wM2l6141sSsT86XFSxqoP+dHuAG0ITwR1/Ovk34cw4Sqk3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mVLIefO0; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b871cfb49e6so492125366b.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 23:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768377359; x=1768982159; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qykM1JYbULj151QKzbc/hEiAVXe8AXiyAC3x5F6hwNA=;
        b=mVLIefO0pTPrZbdi6zYFlTo2PoXY6Tto9cq/dgBCTVhGk33OX4Mx+ZIt8u656FIdf2
         N33ALNw0AI6gJGyipcVEe9eTWDQIiYhPAHl2CiaWJGGhrWkMlypH/VAiMBUcfH1UZ19f
         jKsRKoR75f6V8KD+6+3b7JtqTztEvqQQ+0u1b3U0LbD3aPXziOJu7I9hcGYnQGJHNHA3
         Mf+bBo6XY1pNIKF/II5GGRwzM+Lh9rYOHWgGl3pLukSVb9fJL9ijj3Ek6OG0xSzssyeG
         y3Sw7UphyHcLH5nsyWmUTXnovCEsvFLLxe/V4a2fVxG2JXupPyjv6KgTNQBe1ylj3V/2
         dboQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768377359; x=1768982159;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qykM1JYbULj151QKzbc/hEiAVXe8AXiyAC3x5F6hwNA=;
        b=gJNwm3b8V9Cyu5uANwzg9pSIhzv+T7KOuVZUZXBS/rvAeG+mdtkNK6T/Cyq/YyWhHT
         g9CiTfu8ELoE2zovw1VAQOnxnXwTPVGf2N+d1P2+hsZl3G38PbvtZu9NWaGAWG6jf/U1
         rA4PcHDMS7bLcSGJmUjN8rIlknq2zc1NpeWSaS8RqAATJND8Ddcaux/mJu52VDuf6TM2
         AvRJ1QKxbhqG3B9l8znR56DW8CHs9RXr6GOhvu6a6ncwgpqt1NDTu/EKcEiL14dsNEOi
         cCRchhaKccAgh6my6Wouhe0+QPsZex4De8n6Ycbb7cy1q5Y+9BF5leXYC4Gg/DIlKoxB
         xCkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXp1hVyVmTuog6L3zrup+yaUty+0Wb4SJ5p1GbX9wkg9H9djl1+TrBnncGJba88pM5Oh5QCFjF97oas@vger.kernel.org
X-Gm-Message-State: AOJu0YyvQYULY/EFSU+tweX2Gcmblz6XA57hsr2tmMSt0A5txJKQyqLm
	ZVp6ZAqJ6MXgwYXdBVkaHjzUgl7lBiTmT7AdYr/J3/g0+u6ejfL+GSrzWlf5N3XWZSl9JgpP3tr
	N7K4WVbMNOjvDOUQ6RS1PWQ6xouBXXQ8=
X-Gm-Gg: AY/fxX7x7GmmbQv+WIBQbmARWcQDuZ6vjabNv0bU3s693If13bzHrKbvCrxbEehc80F
	elIzvESHxzl4QFmHX5x+DILmDgWfDs8ONyC/VUhOm2ICz28jGByAuCGJOn/I6my6ABQKc8hiNxt
	IpKUeKsIwZRVMT586Z9vy0jcFfD7VC5vxlpekteLRBHvCrAlKduf45gz44Q81xn9X4aQ/Tlvw3b
	1UAyOtkH/p7m0xO6PdnOJz5lnzLGTfcmDQ1OzJ8TTHyxOK1KE6MOSlaM2vv9sEauvKHkrUlsulN
	0I+naXLQuue9+tKqIAc2sbU9zxtRNI7eT/VDObDesOsRlC5/Hn3cWc09MfyNykUZDaxLklE=
X-Received: by 2002:a17:907:72c4:b0:b87:3740:dd87 with SMTP id
 a640c23a62f3a-b8761028cb8mr153119766b.26.1768377358593; Tue, 13 Jan 2026
 23:55:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114-honeywell_abp2_driver-v6-0-231c3a8c222b@subdimension.ro> <20260114-honeywell_abp2_driver-v6-2-231c3a8c222b@subdimension.ro>
In-Reply-To: <20260114-honeywell_abp2_driver-v6-2-231c3a8c222b@subdimension.ro>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 14 Jan 2026 09:55:22 +0200
X-Gm-Features: AZwV_QjeZfZf02MH8c_Fn9ULWM2JP_J64viMY4LtyiOs2gGz_6slFb6GduuSBKU
Message-ID: <CAHp75VeUkNEHeF5ey08AU+drZKunL5PzoSJ=0JPXzc0Z2Um3ng@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] iio: pressure: abp2030pa: remove error message
To: Petre Rodan <petre.rodan@subdimension.ro>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Andy Shevchenko <andriy.shevchenko@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 14, 2026 at 9:52=E2=80=AFAM Petre Rodan <petre.rodan@subdimensi=
on.ro> wrote:
>
> Do not print redundant error message if devm_request_irq() fails.

the duplicate

(It's not redundant, it's duplicate because that API prints something
very similar.)

P.S. Do not send a new version for this, I hope Jonathan can tweak
this small detail whilst applying.

--=20
With Best Regards,
Andy Shevchenko

