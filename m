Return-Path: <devicetree+bounces-246135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A731CB8DED
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 14:11:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9572304D569
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 13:10:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD3C32255D;
	Fri, 12 Dec 2025 13:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MRUjgMGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A6F31DD98
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 13:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765545037; cv=none; b=mXRcvLBcEFbSyd+kBOByGxTZvCvTIBBwvNn5DvZrm7O2wPFyRI+YAobO/mcXcT6i0EulybDpITtmgDPhgvJO28bgfdnf3PWculvfbpHpJhZbWC/3hA0sT81MObBdVtYKFRSr1bgl0sDJKUGdIpH4Dv0sulzQfJTIqGRhaJuW9TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765545037; c=relaxed/simple;
	bh=kCrA7tf2FGXKTyLeTTmIczXz3T0WPj9VKpf7cyKPslg=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=j3F8AD3ZH0MaUT/aRlwG+ZkNrFTw2wkh9u1kIL676VlrRyNwHGJC16Rj5u7gixrasDn2ks7hcKIfJGdotKWAlhlWCtLLzDB10lk2QMaHsz6h98Lb5d8vZFISSjjO4PD4/zX37o0mb2h/3wciyWvmkw+6Bark9MYxEBsoGiZTYrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MRUjgMGZ; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93f5b804d4aso341058241.3
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 05:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765545035; x=1766149835; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kCrA7tf2FGXKTyLeTTmIczXz3T0WPj9VKpf7cyKPslg=;
        b=MRUjgMGZA6Y7GK35jr3XZ7YVt3T0ADvA/XLlYbugYpqvCUUt4k7mOK8W0e42U1+U2L
         WpHbzIDsaxM2640gw5NTMloox9kJX7L2cW91AkhLbj2FmpWjf3zicyTzTP8wFZ6iCD4D
         69aBhFG8SXioQ74Lt12n43t7+RTc/meOagk36laWUPpx96cCM1nzgo3BGrJ8B1UUAwEH
         UAdsJXhQIWKqPt4CtM0djhTEwkgaTXrXLnxwpi/wRtTNg7FZLX2up5sWxfyJLLCIrHlj
         i3qr/sRnHe2C5WK5GTsedb4O8zn82/qC5OFbQs77MF+C8ETDAAERnvCKoAjNvfqbZbqI
         MRGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765545035; x=1766149835;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kCrA7tf2FGXKTyLeTTmIczXz3T0WPj9VKpf7cyKPslg=;
        b=H/UDGGL5QdgYYhpU4EuApzCTOzOkNLJCGvZCUrc2teg91pfoKsdV9UyNluPW5P/nms
         Dpdtb00ws6m9UhrJS9sg9qrst9M7v0CQugaxDjVcshFm4qNTzJ+jIzmuq6J4dciEEvRD
         +hXB4ON93g11mwx83jbV4gb3MGSnw64AnqkRfdBqjIPC9sjsblrmIb5QfKDrZ4y1HWOo
         YiT3YprPFsechZo2a+KlB1GlyzEkM2lYDsaFwn6OW4rYHm2Tdu/5tUdiNYmONuR8iL9E
         X6gTrRwUxlHAhAMTa9IpklzkW1d4+qOxbGXT/FWAqp7g0vzkUdipARD3ry05ixuCFu7s
         n1LA==
X-Forwarded-Encrypted: i=1; AJvYcCVCSghZyvHYcbrIMpoYldiZraaL/OD6GcZjDV04yzUIVEiR2bwlk6+UMPYZjVERukYzQGtQfwcYuvPY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+LeRDiEDG77/MPE35BsAOFdTHiG63Nb47PW3JLRQPGod4vsWv
	O4Iv1sKP9Ljj/75TpRnkJHLzQ5BrzrWVX9AKaaKu5u89DBcb2ZLYXqS7
X-Gm-Gg: AY/fxX5LB+L5bw4hpWidY7u90zuBbxwpNBEnUS83bUiaNCvCAJTTvwW2lTnpCPOIUi5
	rqgiAoXM9wTD/qMdR3Y7OJKzaZIBHOnLoPJynW/JE2wbBtbPxuIAXbkNMFnHXIUhEyaIZOvwj9n
	THpk163ONXZctnhkbWiHjb6ehXwqJ/OfpSdg28jzoAjGutjh59H8kfsnCXMEygiGVvTtHcZg1ap
	IWcx98QpEzJtAVmZBkYJWlcAazd62QRsuKAkmphbS/X0o8Iy+6+m0A4rZ2edFEqFPmixI7WKJP+
	tshMa9lDRkgbPGVrAI9RkMutPWYg+OFpJD8LJO9sLB/FXo2aS27hUC+v4sK1ffz+8xCDYEkYF0N
	xbhRyznQOnW1qGN2sZmcVV3gpR5bZOU1FiyAbGS2xgMh+Cj7oN5yeYGqM8pbgMF5+pbowAojnb4
	znwLc=
X-Google-Smtp-Source: AGHT+IHJ2JqdZctPRyGNwGPT9qU+RSXeGGF9JiKVcuTcnmuKZkCf5xEk7yDW1KvX4ymSMlHcLWGBnw==
X-Received: by 2002:a67:e70e:0:b0:5db:e297:2c75 with SMTP id ada2fe7eead31-5e8276a3597mr434027137.18.1765545034626;
        Fri, 12 Dec 2025 05:10:34 -0800 (PST)
Received: from localhost ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e7d0e77d92sm2185707137.1.2025.12.12.05.10.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Dec 2025 05:10:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 12 Dec 2025 08:10:32 -0500
Message-Id: <DEW9HATVCPDE.9X0RFCJ4UJMP@gmail.com>
Cc: "David Lechner" <dlechner@baylibre.com>, =?utf-8?q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, "Andy Shevchenko" <andy@kernel.org>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Jonathan Cameron"
 <Jonathan.Cameron@huawei.com>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v8 0/2] iio: Add support for TI ADS1X18 ADCs
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Tomas Melin" <tomas.melin@vaisala.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Tobias Sperling"
 <tobias.sperling@softing.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251211-ads1x18-v8-0-5cd12ac556da@gmail.com>
 <8568e452-15a5-4a94-aa2a-b7525888799b@vaisala.com>
In-Reply-To: <8568e452-15a5-4a94-aa2a-b7525888799b@vaisala.com>

On Fri Dec 12, 2025 at 3:40 AM -05, Tomas Melin wrote:
> Hi,
>
> Sorry for coming in late in the cycle, can you please explain why the
> driver for ADS1015 could not be extended to support also ADS1x18
> devices? Briefly looking into the topic, they seem to be very closely
> related.
>
> Have You looked into that alternative?

Yes, this was discussed in v1.

Although they are related, these two devices do not use the same
protocol and regmap is not a good fit for ADS1X18. We need two different
SPI message structure for driving the two operating modes (direct,
buffer) and the trigger needs some special considerations because
ads1x18 share their drdy interrupt line with the MOSI pin.

We concluded merging the two drivers would be too messy as both
protocols would need a lot of unique code. Not to mention different
triggers, buffers, custom callbacks, etc.

>
> Thanks,
> Tomas

--=20
 ~ Kurt


