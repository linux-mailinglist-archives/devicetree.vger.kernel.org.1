Return-Path: <devicetree+bounces-246720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEE3CBF1B0
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:05:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 90808301597E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4C553358BC;
	Mon, 15 Dec 2025 16:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FB7kETwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD499335540
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765817842; cv=none; b=nnJstEUorxDNKBFrRJtYmImMrQ2z2NlwA+WGUXjD3Ri3uvXXbUQPU5Q+vP329AH5x2BrA1GUYv9gNFyWqbSPH1nhD+cBvFBxFBE6NnotX+Ln+wjwwvRb+9lcJffC0pF6/6AIOElpNax3zpCZs5y/KH/bfvjHWH1MnTt7Tqgq+q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765817842; c=relaxed/simple;
	bh=iRP8tmXMtbl9jHWOwI2GLvhWvQ/O/bSRM3cgmpbaHUs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=a6ULA4Qyfye/KjntnqHdiiwTDbQD4KaeM4nQV/cgJDKE8H+5HUH6ZfOIBXpkRCYkyWq6lq7Ft3cOxNnslRWpH7FeUL5EpI6Z4Fl3CMfNssMO+tdhjsfF46iFS9PqmoxNhXzZTuyOLcJcCi2gMaaor51MEbFu7tuIqkr1shy96gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FB7kETwe; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-55cda719128so839070e0c.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765817839; x=1766422639; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iRP8tmXMtbl9jHWOwI2GLvhWvQ/O/bSRM3cgmpbaHUs=;
        b=FB7kETweaUAfFoEQhSPoAX9dg58gxEoHkaalNMFVVKugQ4PYBECkoaf99sOQJGNsfO
         ncHus001qiBs8zwQK6EpiuZoI1wqVoVYhlcouUMr5TcmfPOJpa4+jMJKm4f1GWYjn5/4
         Gx1jqBt/LbQe/ma2KccrY6x58Ljr6093MzJX/RGOo46qfueB/f2IuwoGPNL3i3GG77TJ
         klQYp+SAny5QAZqpedSlntCHjtiBjdDymqd0kCA8GW2P4lx5gUqqK+lNcFwD84S1hzUV
         k2KR3WKtHlVU9ox7Y5gtBW7i5g/vZwobNEB4hEJ33dwtP+6QlKrnD1FKujFuQ8DWk2KT
         wESw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765817839; x=1766422639;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iRP8tmXMtbl9jHWOwI2GLvhWvQ/O/bSRM3cgmpbaHUs=;
        b=ZrD3J/bFiT2mmC/Cxi/+kthdc53chkin9eS+NYKp9QwZ0bxnDU6xzMJ8MB6L4lw4Uc
         Zy+YOmpxoZEf2bqDYjUft5bPlp0WPwMjnvtaaWBfQ9zQKLFIkSQXZhioADLIw1KrD3TM
         aymBA8ycf8TbT9Jfm9HUNlu9nE7ZVsWK0pzjC2ScgGDlAs0WZkL3LjAlHus1948783k3
         XPdsCoXumnETBCThhdHEljddpOFSFhsFemYdcIKN6WcLmQznOlCymGrC30Dfiu7/di2m
         EWwk66PhhoKw4Kc8+D3nXIVagBYfUsgC156OtSzNlcvbx0FBVXrAoQEkqi/W2CLqSFFm
         /PFA==
X-Forwarded-Encrypted: i=1; AJvYcCWuFopihuC0usI3EGm46gfxQeTMRDJ/XnoYRj9WePhdAE7LfG6DOTL1pwY2siGulUwl8ujiIFFTYIFp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6BaBYUmwrgSaa78pcf5Q63zg/gtDqmm87Gk3lepc8HbnMPJkx
	EieVlj9VqGGz9LDILBNXjbLeL62LB9dzRlUHBDi2g0wcEAg3hUGAXjw84HnxHw==
X-Gm-Gg: AY/fxX7rz85D+PN7ArxGn+TL1GU9kIWhdhDP4ErGBxBjqFVWuvvsdFYjAnxiTjkE8LC
	rVC+c6cm9rBTcK4tz7w0u9i3cSG0HQ3cDQP3Mza64kAyOZMDsYBGSsURt2OWduB1huAxaJePIFG
	eBN2vpOk/POlbdVm9Ig06J89f7UUhvZSpUbpZn1vrRKa+675Ps32s3/AwXHbviFtSq6Kl13Nn9f
	zKJgS+ERQDYiui3u0lxeJM0uWeMaCaksj5aKP9enWexajFW53layyFLE7BYyIIgoUCkv2wYeadJ
	PkMz5cNc7ToEOiBQsQhM1vxVGNXPKyztoyYEMa2Btw7B/k2dLRph9USgZt7TOamHIX4hxjDOdex
	XyAyuUbrVP1+rSiRfu3Ao66e4kooHLHQFrP76ww8rmsQ8IG6MRl+zr9i7N13Hq68vEORxFIngLO
	BaAnrOjg==
X-Google-Smtp-Source: AGHT+IF0duYtbh6rimYipQ0gT9A2nPffn1c0ynYhlc+imPFc3cMR0Hl8XDCUZSrigOtwFreaQRoBYA==
X-Received: by 2002:a05:6122:2228:b0:559:6723:628c with SMTP id 71dfb90a1353d-55fed643c05mr3394845e0c.16.1765817839601;
        Mon, 15 Dec 2025 08:57:19 -0800 (PST)
Received: from localhost ([2800:bf0:4580:3149:7d4:54b1:c444:6f2f])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55fdc739e8bsm6595964e0c.15.2025.12.15.08.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 08:57:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 15 Dec 2025 11:57:16 -0500
Message-Id: <DEYY6JGHSTQ9.1NAQUNJVP55A0@gmail.com>
Cc: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
 Cameron" <Jonathan.Cameron@huawei.com>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v8 0/2] iio: Add support for TI ADS1X18 ADCs
From: "Kurt Borja" <kuurtb@gmail.com>
To: "David Lechner" <dlechner@baylibre.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Tobias Sperling"
 <tobias.sperling@softing.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251211-ads1x18-v8-0-5cd12ac556da@gmail.com>
 <9b73421e-d08b-4480-ab28-5ff5a845e264@baylibre.com>
In-Reply-To: <9b73421e-d08b-4480-ab28-5ff5a845e264@baylibre.com>

On Mon Dec 15, 2025 at 10:56 AM -05, David Lechner wrote:
> On 12/11/25 10:25 PM, Kurt Borja wrote:
>> Hi,
>>=20
>> This series adds a new driver for TI ADS1X18 SPI devices.
>>=20
>> This is my first time contributing to the IIO subsystem and making
>> dt-bindings documentation, so (don't) go easy on me :p.
>>=20
>> As explained in Patch 2 changelog, the DRDY interrupt line is shared
>> with the MOSI pin. This awkward quirk is also found on some Analog
>> Devices sigma-delta SPI ADCs, so the interrupt and trigger design is
>> inspired by those.
>>=20
>> Thank you in advance for your reviews.
>>=20
>> Signed-off-by: Kurt Borja <kuurtb@gmail.com>
>> ---
>
> I had a few minor comments on the driver, but nothing serious.
>
> Reviewed-by: David Lechner <dlechner@baylibre.com>

Thank you, David!

--=20
Thanks,
 ~ Kurt

