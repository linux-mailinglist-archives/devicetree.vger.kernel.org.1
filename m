Return-Path: <devicetree+bounces-41766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F98855050
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 18:30:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C63A91F24C86
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 17:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B18A8594E;
	Wed, 14 Feb 2024 17:26:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F6683CB0
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 17:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707931578; cv=none; b=rM1HRur2whdnsJbRg76crvvt0a8G1Sovg1v//Ym15zwoKkDKAqdybKOpE7fD2mWJA3WaIE29VENj6aMMOgRCB/2RDriZyHAW29ju2pWGtqfjIcoe9SnAEi7oAtQT/8RZx7tnct2m7ZcwyKC3E47dC35Os1tfLiD3H+m2XOL7vus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707931578; c=relaxed/simple;
	bh=ZR999QFWhlwj9sKHPcpMJZ/et7mMOxmwea2xvciFQIA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=t8tKb2xq6sMqEgtfb7pbBm0TsmjjTp3aAlab+l6aL6lHqfBrbvKJv+vd2N+qeJhZIIoZ4NBGdyRcayOlfyBcWt3m9kz7nHKJJ6hEEG9fzDzIbyzraXTUxnuTk3OW/afym9AfsjVEQGkKkn6Qk4Ydcek4SD8dTjGoXL50j/stkNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6e09ea155c5so14578b3a.2
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 09:26:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707931576; x=1708536376;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sfbN9O+KSahrVus1iQChDGWhup0O3IlmcoxDUZEy1yg=;
        b=hfI/yBLaIXfvYHGGCm5QoXw0bE5Er0vVfo9S+tA62mPmfBhwFKp4ZUf/zzQ/Do6r4T
         zj7fLnXiP5U1/ZuvnCAaSil71vhL6LKIVjExfmfgM58riI5crRGImSI/GBrgWHTzfNCg
         vcuZQiIheJLLWkm5aO1Wxc9cChnJ9bCLb18cpGbV6l7YnpDOA9y0rK9PioXCeOhbzU83
         SJSlmg7NLuA7OMj/oHjZ7KN1ATGM2WKRf5/eNmpZazQsoA9X87RK3y5onfh9arLm1muM
         NCxx22urpVdHmVnqokmrbEG/5Qhp9/4+5sZEZBi1Fqvq9FzMjyqu+oO8BXo28Xu4bbNx
         5ouQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNbEVjNMSBZ23JT3Ah+1/RGVwBYiuDNLBYm5Jbm3TiLADooX1jWxDo0gWNayrKPTK3vqvBWmLnQ7jlAY+kh315ALVNZ1w2Du3I9w==
X-Gm-Message-State: AOJu0YwLTtKU4z+0kzu33L+Hi9kq21/L7wAa+Z4ifKH9jm8atvHqsWg4
	cV0UdCmWFV0th6xhempAyV5kYz6YonDXBEt2zJY2IVf+jmWfx8TBNts+m7mdHIk=
X-Google-Smtp-Source: AGHT+IEkFlKlG9gHgg2wzSvoNAPS5Zw/ktf2OAya/unVNoKw8naljYOACbtnXrXICCJfzELhiJY0rg==
X-Received: by 2002:aa7:9804:0:b0:6e0:4059:f420 with SMTP id e4-20020aa79804000000b006e04059f420mr2887975pfl.17.1707931574240;
        Wed, 14 Feb 2024 09:26:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUwyH1bLgA5qBX1E7dX91URD4FYPUKmb98cON51ONK278Bgr0eCnGJwptBzBaV9kwVbG2ZeJNuDUrp3H16Pc7tRlbKt7n/gLq5V/XbGaXpJFGxYnJRcN7J9cBpoiE/TefwKO1jx9clCMgdsiYGmivKaNFH72uokn5nGFMr8dpSrmXTspWH0oq/l2yTddVhqiVF43kYOT87ZmQEFCMi0pB+FMi9lFlbnOGrt8d1g0qYlbhoN1PMSSPSHdHUP9xvqYKUg2vZlBIf3QFRjNyaIcMrY6/P7sQddPFlvflupOKhKdIDalQiblJQN74OIvgmjZljzxZMgODXuDo0A7/wLi2ulAK6t2fsbmCDWYfiyskex/q32KrtGe7uThgBkLeMpvAJ4dc+rE6Jdko6G1DssfudEdqVGD6A5RTNlTv65bDDgNaaKZgTu98rUHsT7cNe0ETJvXPErYIK5zdLjJpimoz+yBeLXK8q8noDVK7Ni38Y2Oei0Agto+ewch5bf2XxDPXIqSotjZN6IcjVaG4RC6VT4lABFD2yMXoL51RsxQuiflRAvg4AaRZ13tID9YWBGdTbMBvGvCgMfvSFAWfZWHCi/
Received: from localhost (71-212-63-227.tukw.qwest.net. [71.212.63.227])
        by smtp.gmail.com with ESMTPSA id y26-20020aa793da000000b006e04c3b3b5asm9738938pff.175.2024.02.14.09.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 09:26:13 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: Conor Dooley <conor@kernel.org>, Bhargav Raviprakash <bhargav.r@ltts.com>
Cc: arnd@arndb.de, broonie@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 jpanis@baylibre.com, kristo@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 lee@kernel.org, lgirdwood@gmail.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, m.nirmaladevi@ltts.com, nm@ti.com,
 robh+dt@kernel.org, vigneshr@ti.com
Subject: Re: [RESEND PATCH v1 03/13] dt-bindings: mfd: ti,tps6594: Add TI
 TPS65224 PMIC
In-Reply-To: <20240214-galley-dweller-1e9872229d80@spud>
References: <20240209-blitz-fidgety-78469aa80d6d@spud>
 <20240214093106.86483-1-bhargav.r@ltts.com>
 <20240214-galley-dweller-1e9872229d80@spud>
Date: Wed, 14 Feb 2024 09:26:13 -0800
Message-ID: <7hil2r5556.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Conor Dooley <conor@kernel.org> writes:

> On Wed, Feb 14, 2024 at 03:01:06PM +0530, Bhargav Raviprakash wrote:
>> Hi Conor,
>>=20
>> On Fri 2/9/2024 10:41 PM, Conor Dooley wrote:
>> > On Thu, Feb 08, 2024 at 04:23:33PM +0530, Bhargav Raviprakash wrote:
>> > > TPS65224 is a Power Management IC with 4 Buck regulators and 3 LDO
>> > > regulators, it includes additional features like GPIOs, watchdog, ES=
Ms
>> > > (Error Signal Monitor), and PFSM (Pre-configurable Finite State Mach=
ine)
>> > > managing the state of the device.
>> >=20
>> > > TPS6594 and TPS65224 have significant functional overlap.
>> >=20
>> > What does "significant functional overlap" mean? Does one implement a
>> > compatible subset of the other? I assume the answer is no, given there
>> > seems to be some core looking registers at different addresses.
>>=20
>> The intention behind =E2=80=9Csignificant functional overlap=E2=80=9D wa=
s meant to
>> indicate a lot of the features between TPS6594 and TPS65224 overlap,
>> while there are some features specific to TPS65224.
>> There is compatibility between the PMIC register maps, I2C, PFSM,
>> and other drivers even though there are some core registers at
>> different addresses.
>>=20
>> Would it be more appropriate to say the 2 devices are compatible and have
>> sufficient feature overlap rather than significant functional overlap?
>
> If core registers are at different addresses, then it is unlikely that
> these devices are compatible.

That's not necessarily true.  Hardware designers can sometimes be
creative. :)

> In this context, compatible means that existing software intended for
> the 6594 would run without modification on the 65224, although maybe
> only supporting a subset of features.  If that's not the case, then
> the devices are not compatible.

Compatible is a fuzzy term... so we need to get into the gray area.

What's going on here is that this new part is derivative in many
signifcant (but not all) ways from an existing similar part.  When
writing drivers for new, derivative parts, there's always a choice
between 1) extending the existing driver (using a new compatible string
& match table for the diffs) or 2) creating a new driver which will have
a bunch of duplicated code.

The first verion of this series[1] took the 2nd approach, but due to the
significant functional (and feature) overlap, the recommendation was
instead to take the "reuse" path to avoid signficant amounts of
duplicated code.

Of course, it's possible that while going down the "reuse" path, there
may be a point where creating a separate driver for some aspects might
make sense, but that needs to be justified.  Based on a quick glance of
what I see in this series so far (I have not done a detailed review),
the differences with the new device look to me like they can be handled
with chip-specific data in a match table.

Kevin

[1] https://lore.kernel.org/lkml/20231026133226.290040-1-sirisha.gairuboina=
@Ltts.com/

