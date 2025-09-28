Return-Path: <devicetree+bounces-222258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 259BBBA796B
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 01:43:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4F0E3B44C2
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 23:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D594427EFFF;
	Sun, 28 Sep 2025 23:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="isJpxh5Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEBB275111
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 23:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759103025; cv=none; b=i48UcOzX78a42sLflA418LT3WeQPsHDWrgO+zjOdheblYy+np+SmED2P7jclFu3G06qAK7LGUvHi+9ZSrwpXbnlTyekGc6oG3AIJqmxKRi81gG/Q7+WsXGDt/E6UF93Lr2ihiFgJOwgPJ3vLbHtFHd1gIsZQDIwX5CusIFeyS0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759103025; c=relaxed/simple;
	bh=xhLv4RXf0zFjN1H+SpDyp/WVnL1lk114bfcCwgo3L1w=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=psCTcrkB5lQa4X5twOyV+zWpcuD0C4oEkT+yjQXbU5nx0azPHRb16pshCSLUwCBtFKUWZZGwiUKLl5EmTByBM7sHYbLJ0QhFrBLwVA/j/WapOvdIad55Vb8eH8R5MXUBdfBajM+Ca3hElTYsDG/O2tKbe5sG/tEdSDj6bT4fQxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=isJpxh5Z; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-57e36125e8aso3691137e87.2
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 16:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759103022; x=1759707822; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TYuGJU4VUHZh3LQSBZZJ1m72z3IXmhn5eD65/qtg9hg=;
        b=isJpxh5ZYCN1oUtNDxTpou4bmmz1g8VOGAhDVloC8sOR8FMr0nl0AVI6LYd+tEfpXG
         QT+Itpj9BE3MUxaJPlSvo+iHcC1Ic/hEw0rGQ5t6VFoENSky/i+VTDDaF4BIxN4ZTB2U
         EEV3z8eQUk1jdBn7NbzNf30V1Fqz+pdLIZH5czoliKv+bgr1pERfUrabYYJWxEIKTKFg
         dZ+uFdsscq4y98GMy9FensCsw0MvK69OR3JCXvJ5/Zt90GPKKRyXko5Bg/kRJVz/Qc4z
         nUyLkaIgelmv+VsTjy+W/30Eb63VBRRz+cUWk0bsldBYMnLaoX0Esu3nNUP9FCqXGyoh
         YV2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759103022; x=1759707822;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TYuGJU4VUHZh3LQSBZZJ1m72z3IXmhn5eD65/qtg9hg=;
        b=DyqlvAs+u7bSCB3s/tPs+chPgWNGVqZejqwjUA0XOzAVIjXBZAwURiz4Y70285aHaV
         cD8CZqm9FLHxxLcumhlVRwJvFNMFc2CcGm0pu7CdqI7xxfV3p6q3Ppy5zy/MNgzk6hKX
         U95FDvLRON14OmzXW2BuGpFUv0hQI9KhbzE8g+cT2zWJSiBkjoEyT4GapJLhG4P/UiL3
         5BItPBzEQYBMbVeTbe9c93S/ODxt5ElqPHq9wg1oJfp3JAqGWjs7D86jwcgpKOs11TV0
         b+rtMyFA4scltSbQM/9B4lZruut2Y5IKzhj3IKKufGc3bV4cYWXs8bao54g2xyipeUpK
         fhww==
X-Forwarded-Encrypted: i=1; AJvYcCWwkjm1rbGKf3PJmBN7AUzH6AnS4ZlNGzw0zTrHpGHIkFRTAezX4XR715QBpmM/Df1B2iso4fATV615@vger.kernel.org
X-Gm-Message-State: AOJu0YzS/C3jc6LhL6E/4yT8YBzxk5Zo1vLk2PVJhQ9RYG/jxUuUOuxV
	Q8RarvK5foyDtRthrtGnFd0JO9u71Eanfcmkw4qCtscrIjK2LrnkG0B/
X-Gm-Gg: ASbGncsdnsahrJMM+MFmRM8jZAIxveIv2117A+WeZXDakVdROpamm9j8SbrkfCqVmF2
	T/EcGCJ1/kBSGm+ikClLBvYCuyLxLvsLPzrMbM61XE6Lq847zlvE6RP/amlB4RYewsdwjwRvxgb
	xptz/80VmQLKSQ72U4u9cTPynqCqEsx5GsC0GOlP+ARSepE+fFoTs2S+4fLSZfT1sKATKCpQzrU
	G3fkV0+3t6Y0Dl/XxA5S9XiKb26Ka+nLqraFFG4HLfP14lIM8sFqbu0jO4oanRbSPhGhcj8hGnB
	JP+BpUoh/60mNkxGQkD3Ez+kfSmTefKdwaetMV2CNMVWJCVlA31cMV7KwMcWCic2n98wt/1lvbR
	xIiEy/6G2tBkZyWjar5Q8DsHviV+R/UbP238mBAlldHfbO6NdeOA8NdLAqg==
X-Google-Smtp-Source: AGHT+IHR/3oBhcou/nqFCZJEmzF9GzjQUOYYNk7PFauGlRhY9drF2R0iP+r/p0o6ucZSI3AqqdXoWQ==
X-Received: by 2002:a05:6512:3ca2:b0:55f:6adb:b867 with SMTP id 2adb3069b0e04-582d3111187mr4279256e87.45.1759103021915;
        Sun, 28 Sep 2025 16:43:41 -0700 (PDT)
Received: from smtpclient.apple ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5879e9b80cesm512772e87.112.2025.09.28.16.43.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Sep 2025 16:43:41 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
Subject: Re: [PATCH 2/2] arm64: dts: meson: add initial device-tree for Tanix
 TX9 Pro
From: Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <CAFBinCDQc=2xrKbGunSKJjLhGd0bCGN+3oYd_bg0ySs+WHxZjA@mail.gmail.com>
Date: Mon, 29 Sep 2025 03:43:26 +0400
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <6B97C24A-A1C0-46F9-BC74-3E7D2119B6D6@gmail.com>
References: <20250927125006.824293-1-christianshewitt@gmail.com>
 <20250927125006.824293-2-christianshewitt@gmail.com>
 <CAFBinCDQc=2xrKbGunSKJjLhGd0bCGN+3oYd_bg0ySs+WHxZjA@mail.gmail.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-Mailer: Apple Mail (2.3826.700.81)

> On 29 Sep 2025, at 1:12=E2=80=AFam, Martin Blumenstingl =
<martin.blumenstingl@googlemail.com> wrote:
>=20
> Hi Christian,
>=20
> thank you for the patch!
>=20
> On Sat, Sep 27, 2025 at 2:50=E2=80=AFPM Christian Hewitt
> <christianshewitt@gmail.com> wrote:
> [...]
>> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-tx9-pro.dts
>> @@ -0,0 +1,90 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2016 Endless Computers, Inc.
>> + * Author: Carlo Caione <carlo@endlessm.com>
> Is Carlo really the author?

He=E2=80=99s the author of the original device tree that 95%
of the content for this one is taken from; as is the
case for most older Amlogic hardware. The decision
on which bits to copy and paste was all mine, but I=E2=80=99m
not  sure that skill deserves too much credit :)

I can resend with my own name (or mine appended) if
that would be preferred?

Christian=

