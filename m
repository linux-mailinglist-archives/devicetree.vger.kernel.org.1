Return-Path: <devicetree+bounces-128986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F809EA3B8
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 01:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61934165801
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 00:40:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F292111A8;
	Tue, 10 Dec 2024 00:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bVyZD5WU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A2533EA
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 00:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733791220; cv=none; b=kI6EXtNz6gh6Y74y8g0sxGZYXQ7zp04xk6A5X9tin3LTHzDmWbRWWxhS8aXdZ4S9oGozsrLx/OLCc+Dz3STA+vmkW98D8ODj7j6YWXvMZ3O+N5gYrnMRW5nqBST4CH19oRmKp8Di85o9No1bHbHI5/NW7jD+c3YSXtttYSJlAFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733791220; c=relaxed/simple;
	bh=Blwa5F8sKfGOXhGTxGho/35swehqGQZvVQCQmXT0hwo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d9DQBtaZVAQhtlnwTsg7ooIjOKXUoGlHt1u/qZdNPOdH0FTg+sxe0BuJb0zzaR4caoaak+eYv267ww9xeMlRfYyfYPuYytQS046rvlv3cOTM71cCyWAiXXqi7U6UrrPtj+5Ujt91t37XZ4TYx5vlrBQhSChbtX87U1KxwEp+JHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bVyZD5WU; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-46769b34cbfso18178491cf.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 16:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733791217; x=1734396017; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Blwa5F8sKfGOXhGTxGho/35swehqGQZvVQCQmXT0hwo=;
        b=bVyZD5WUpbUUC98ZGyalbNmn79mcDbdyUQaamTaKl2mhv/lRK3hjDMUREZurNuvjjs
         5Yr7Jb8Ip5x8AlQpa+IlylFK9y2MEyzq0qqy+pVNMWNfd/dnP/CB5eH3ozKsW6ZYXjj2
         8ayjr/kvrw2SOBU6IJ8tN3zOYD8ELbCzHZYsym7JiGd3WcSNNFrDRSdO7Vor/9RZQUxs
         7498Ckk2LdO8eUdY+TyRYlNX9rpeP5KThfvnTSoVNlFThMf0/lr/p6zyaGRvylhpg/cW
         h6p0ml2WgU0pwlbpafvNzV9j8hhAiJPgNoweCFdADZ0TJb3zXwJ1Pb7Vm/vcBY1MWsL1
         Henw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733791217; x=1734396017;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Blwa5F8sKfGOXhGTxGho/35swehqGQZvVQCQmXT0hwo=;
        b=s28wyqQnHifqK8L0LrFAuXfkVs+evJZsMVgZtOWfqwCB6H2U8ou3CWQPYOqJ6f773n
         tpih4MT9PcrtULeEnTY3y5vEScRRhfXkzZS2Li8W5x1VQ9u8o0hK29LdpsQ9XYbP7hBB
         jlRlhhXVlzFz3pEeDLb16Fxt8UPpSgAFrgislWuQ3OWy8H9omngB8HjUnPpcJs+TKnD9
         fGHDcL2docd3BOQAV1fYKst5ncdST/yhR5r5EP5u19MzLOFJieqxwQOOC5fa0HffqHv8
         WGshaMdZE1N4LUEU6nwIlWOO2ML3J0guFFTRucWXoC9o8ReYRrPjZrfN4Y2TR+UeNiv3
         Fozg==
X-Forwarded-Encrypted: i=1; AJvYcCUQG+Mu+cheem/nd0FAHyfEE2kYZVf/TGHDwt9L4fhHGKJUh8Lzg25ydQIU+eRzbqNlOqyVw3QZZcFS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz74t5T97Vzh02DhwVYukGvjWISBfddjYJdmOK4E1Xbk0Bm4Juw
	2CatYvbYZW/xfW34DodjWihlg5aIRORz8CALXC2ie7Rur6JnmeW0jXdz+kbVwJ57V+/Ryu0VuHZ
	AN8VicPJJlsStXnOwddezBUC2UIA=
X-Gm-Gg: ASbGncswj7Owt15KdI7eLcgNysrZZ8hU3hW6ZY1SKmhQxJ52uAkbEXgYGVsv2tfoFaw
	vKJpC2N6DLdljsul7V4dRxNcbUI/KnaOjSg==
X-Google-Smtp-Source: AGHT+IGNyhk20QJHN7gcHejjGIkaEDS5jrRjys0nGBN4P3yJXR1F5N0jED33Xdxb9sY7N+dIyopFILsJ+bxgwoYUgJU=
X-Received: by 2002:ac8:5d0c:0:b0:466:86aa:efd9 with SMTP id
 d75a77b69052e-46772046831mr42972491cf.51.1733791217663; Mon, 09 Dec 2024
 16:40:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241209125131.4101-1-naoki@radxa.com> <20241209125131.4101-4-naoki@radxa.com>
 <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org> <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
In-Reply-To: <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 10 Dec 2024 03:40:08 +0300
Message-ID: <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, sebastian.reichel@collabora.com, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Naoki,

On Tue, Dec 10, 2024 at 3:30=E2=80=AFAM FUKAUMI Naoki <naoki@radxa.com> wro=
te:
>
> Hi,
>
> Thanks for your review!
>
> On 12/10/24 01:32, Dragan Simic wrote:
> > Hello Fukaumi,
> >
> > On 2024-12-09 13:51, FUKAUMI Naoki wrote:
> >> fix pwm period to match with vendor kernel[1].
> >
> > Instead of simply referring to the downstream vendor kernel, in this
> > specific case the reasons for adjusting the fan PWM parameters should
> > be explained by referring to the actual fan setup you're using, the
> > observed fan RPM behavior, etc.
>
> original commit message is:
>
> | arm64: dts: rockchip: modify fan pwm period to 60us
> | Reduce pwm frequency to 16.6 KHz for a larger adjustable range of
> AO3416 mosfet.
>
> I have no knowledge about this kind of things. Is quoting this message
> enough?

I think it would be better to expand a bit to make sure the commit
message explains the whole rationale without too much extra digging.
Something like this:

arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa ROCK 5C

The fan on Radxa ROCK 5C is driven via an AO3416 MOSFET, which has a
total switch-on time of 0,6us and a total switch-off time of 6us [1],
meaning that the current PWM period of just 10us is too short for
fine-grained fan speed control. Increase the PWM period to 60us, so
that the switch-on and switch-off time of the MOSFET fall within a
more reasonable ~10% of the full period, thus making lower PWM duty
cycles meaningful.

[1] https://www.aosmd.com/pdfs/datasheet/AO3416.pdf

Best regards,
Alexey

