Return-Path: <devicetree+bounces-216914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB4FB56868
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 14:14:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 076833B7445
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 12:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA37225D208;
	Sun, 14 Sep 2025 12:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OB/Z2r8A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCDA1F8728
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 12:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757852067; cv=none; b=lhQT7C2gL5UVAPoYRjb2zUmfkdh40G35XNakxs1KvWke07QEKk8etwG7Xd5uZFT9jXmNfWzkrrwl0wU/OlKF68fkFyyZaouEsEK1jbssKVJE+l/XAzt94TE9MuL1aF87ui+0DuGgMtyXpFS1iLKSPZhWUXpXcBf89V3V0rJg5q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757852067; c=relaxed/simple;
	bh=zAkRkiiSiQAUgj34uGfT/rECpdZmsr7OjRlV6ZLCxyE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hplxcq5f/+dgb64zJ8g0Ue0vwXxglzZDOINJ5ODtpX/JdKPPtqRKx6FTyqFftZXY+vxPVWBkZX2M6jNH+oR+ZvWPl4FQC7Ps7vUkYorx0ntp7qqmHdYKhC4DXOokLFquXaNmPgZrQIunE8hg/4hGL9xPoEnabypqrzapr8ThhXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OB/Z2r8A; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b07ba1c3df4so478992966b.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 05:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757852064; x=1758456864; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zAkRkiiSiQAUgj34uGfT/rECpdZmsr7OjRlV6ZLCxyE=;
        b=OB/Z2r8A5xo2vepT7jnk6VpUC1qIYwoM5I/8HXCBFy8Z32v3I6N9SLL2YJNXzCYryy
         O6VFOoGpt4epmj1o3Cf8x1ZjAItXP41g2xsFsS/MPWM9lCj15bmGzD4UoiB6XpldZdSS
         MsU0jOc77z+pTdkkIP6AFWwrSJrtw0rzLRmqJeC6HmfzTcWf0tyaNrxXzUhfS4l98Tn2
         TNv+QsvVQRcxwBejfUOJqFw/nk+aCZaSOlxPlznKh/IvGLLdJjpb3gbHUpQ4ph7lvY+W
         03TFGsG9q1tA98qbx3nQTbQxHyguZBUilwfXi2IZpHEwh1WylLLUD9tFjuhh6cUgaoY9
         JIvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757852064; x=1758456864;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zAkRkiiSiQAUgj34uGfT/rECpdZmsr7OjRlV6ZLCxyE=;
        b=E5324+/Gst8kMkMnk7KLeqDKV4f4IDvzyxQxzrFVOdjKWC52SqgISC63TCjh4TzQlA
         OKg0KunwJ0khsnhlGtI5WrgGVSZXOhafcyFSCcV2P2sdIv1mKR8/HeIZKeoKzTdxNKym
         r7grA5I/sbTP68O4mcCyVXk23btO34hR2NU2wENUYOJ5TeuVKzSyy61V11Gs69zeF4u3
         mkmH99LgVAVFdf+yFWrqBf8sEODuP/FlgMTI4KbFRrd07mMFF7BHZ3ycrEc61SSm+KUq
         WY2KZQ/WN5stQVhxO+rfflGhnaBb2aqy7stUAAXil2cILiW5/siSfYGDLY15I++/fAbz
         jwBw==
X-Forwarded-Encrypted: i=1; AJvYcCWWucbBoD9TODaHw42ECNChbHt/F8y9jTtoadYv/TEJupbVwAiPAbfWALYviYxPuvmgH79vYollPvEZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzous2yBg/1UI0o3VpFVieIIUuF25EJ7YZwRTE8h5iK81GX2JmP
	KZizqPBLxmjEKHnScHdpqdE9JnvfJE4KsvFVO+Y5WsroU/B2CEkrAw/biCAOfr9barw+kiMbW+q
	EiRx9DfsaA+i91x2u4d1STV9V8hGX3sw=
X-Gm-Gg: ASbGncv3aGG5V2ZplxaFrPSTH0BXLKfKxgHQK1Q5VkdZaGnmUTr/bZ0mrSinNvhW+Zh
	i9d0yMWXIx2FiUtd8cFZGTy1OTF+ayogY4U0gIyx5yJmHZMU5Z8da2KpnOsmPHm/rBRRCUwpoIa
	9Gcl0FERujK5uTCEtRHjw5L7fZ1rkV+GcNh/Ml9XO15bC2clrs1varm079JYUFdcANDBhEuJFR7
	edAMFovli5dQSuxjg==
X-Google-Smtp-Source: AGHT+IHodZKToXhvftGrPhwkbA9rZagoYrw+M780Ipaw/v/nz/SPOnfBcDWaVE5LmeVvnCDbA784u9htXO5Uk2mybzs=
X-Received: by 2002:a17:907:980c:b0:b07:6444:a6dc with SMTP id
 a640c23a62f3a-b07c3878986mr931756966b.56.1757852064281; Sun, 14 Sep 2025
 05:14:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250913-b4-bma220_improvements-v3-0-0b97279b4e45@subdimension.ro>
 <20250913-b4-bma220_improvements-v3-9-0b97279b4e45@subdimension.ro>
In-Reply-To: <20250913-b4-bma220_improvements-v3-9-0b97279b4e45@subdimension.ro>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 14 Sep 2025 15:13:46 +0300
X-Gm-Features: Ac12FXyh8Ic7NJuVMAf9Mx5s1rDgXXEaNIA8zCEN_ZwQM9qRpXQCwZ8FIqIa6WY
Message-ID: <CAHp75VcV2tVeYT33sLdu08vH5XHi_AgNxykMuw6oam0n0DMjqA@mail.gmail.com>
Subject: Re: [PATCH v3 09/18] iio: accel: bma220: relax constraints during probe()
To: Petre Rodan <petre.rodan@subdimension.ro>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 13, 2025 at 6:40=E2=80=AFPM Petre Rodan <petre.rodan@subdimensi=
on.ro> wrote:
>
> Allow compatible chips to work even if their identifier is different.

This looks to me like a candidate to be moved closer to the beginning
of the series (before even split).

--=20
With Best Regards,
Andy Shevchenko

