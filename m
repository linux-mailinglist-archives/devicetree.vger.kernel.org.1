Return-Path: <devicetree+bounces-227249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id EF08FBDFEB7
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9F3054FAF41
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 17:42:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EE0F1DFDAB;
	Wed, 15 Oct 2025 17:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BYo223ge"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA921A9F85
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 17:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760550152; cv=none; b=Xgx+MfB7kOU2fPNhZt+/fwpfGhZ92GqcA7YLt4iCvAgzLEGaVZ17kdeV7laXT/1puiG56sKHeSqyZunoV/7MLsIRSop+AYLdUYppsir/UIOLzL/jDfwbbv1TjcXfDFB3okNbR0/HAAlQqif23gUvg4ClDyrMmAmd2/2WcdgStUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760550152; c=relaxed/simple;
	bh=3+itAC0ygGD72LAGTTk7iU8ATNurfAWGwrb2f3cn7NE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=S3f6Lk6pR8k5j2OjVxvAufnaa5uwMCglIGZEs4gl7jNB2bP08jW2/yVIG2hfHKSnoMf56jLBP091DU+UbhaLYbEyOu/gQT284lXKSuISl2Ys2jyDOZMZxQ0VB4FAx5LwKyur44l/fVIl5qLQTIYZTm0EyuVMuCmUBP5AjYT+qac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BYo223ge; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3f2ae6fadb4so7544077f8f.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760550146; x=1761154946; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3+itAC0ygGD72LAGTTk7iU8ATNurfAWGwrb2f3cn7NE=;
        b=BYo223geAauqK3E1+dYo5vT1M0nxArwCW8KLQQeX1e7FaJtHORsKr6xJb0CNOtJZxg
         OnrEECsyLeoUmhD9NcEWRTV17G1FjKsstwmQLZ5jMeP+Apdqo6Bpei/Pk2DqWU5jgOte
         HThhZDyM+xDiM0j1Db2IpyzzLp9qtjdeu2Ll5nKaXLALAZ6HSJxF4ITZchSQ7IS++v53
         4JUzu9MHkI9yh5JbZXH5JdL3MDEZbbck19C0m4FG/FG2xMDauul7m7ZJIblUfj5HMbwS
         B+fyA6AAaZmdec/nH+wnCuEiEMQETRBCLL5WveTyqL6uG73aF+dMhVTWHP+6Bvxssq0h
         CQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760550146; x=1761154946;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3+itAC0ygGD72LAGTTk7iU8ATNurfAWGwrb2f3cn7NE=;
        b=fHBvRYxqxA20Uoj7VtPymbW0008d8amxg5K3B2Q1JfkMTfyZvNikrK2TlUc/CI+xKF
         wzXSCNond275BOUplTelXlCvFxF6FmLEKkrVquZwYFhJfHdwTnBgpCQ3D+KIKQECi+41
         OnppV6AoJapESGsqaJaeH/zsm7rpRyEHNfY3THHkqs4vcTWVUuflDnAMC03sYTyD9ktG
         XXhzUhiXELP8VK0Yat4wAR2QoKr5DJP2+5zZozOn/zdOOkod0JSPryFmshPoePiAhveO
         8TGONs8x8beZSsY0k3pui2pXjybqYAxbFhcchr2+OIF34gFXlxsH6aJAmpJZO2zzpIiR
         v77Q==
X-Forwarded-Encrypted: i=1; AJvYcCXOWWBnrpI2AIqnuAp9MBGQhTAboZlfqItVIIyWZ3uRBlB0JTsh2DKX0XA2VGCZIOIwmAU3xZdHqM2g@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2PZ9sEiNrTYGUj6ktAzZxSaBru6xYN9lXNq05VRUZFBzHmpS+
	To/Tpo7sxIBbAGjfi3yR+Q6SpklLvDyPh/KG5KuL0Ni2PkkVe5iI9waR+ncasA==
X-Gm-Gg: ASbGncusHPSa3mKxMawjlbpyAiWF6ARFuHQo7G0CMNQw8FJXMS1zTDVzclNHMRFJT5d
	HdfCKyhAVC+gsbAyK4OiCw3w7YM3mw1oAaSrBVGR9MXxS9gOgqtmnJYe9ByJYuCGzPWvdKBbPvw
	ZKKczNMbSQX0rZ47YvHNhf5I3ujpWRkRyr9YanUfMpveL9i2CzKLe0oRKxUrIQVQ1Z4vdl/VG1e
	9OcXfHdQ9WTqzwbb+pZlZ23ViptvEuKC1XzSQ8Vvf1gVmEeXTXq5H0jmlBy5IW9PoD4oz4TH3a0
	rwgTlCSuEDrIbkucfOREgL13D2UWYaHICu9Wbpv3fRO49bo6OwRyCE6l3/VAevZ9qXT/yP17yMW
	ipta02w6Zl8QUMDsrk3wRYqmV+TxpansMm8XphwoJa0KkCMhF11nBNhp6XrZArqI+aCX8x7UAJe
	b+ItzVdnw0xDEV5/9o25jAWtmv
X-Google-Smtp-Source: AGHT+IFgW4ioV30CaVR3MUPobKOQBTrlVgHHJX7mniQYbGNt/6t4FH7ErC+FnEf2jcNfSIVwBiGr0w==
X-Received: by 2002:a05:6000:1a87:b0:3ee:b126:6b6 with SMTP id ffacd0b85a97d-4266e7dfee2mr17701996f8f.34.1760550146266;
        Wed, 15 Oct 2025 10:42:26 -0700 (PDT)
Received: from ?IPv6:2001:818:ea56:d000:94c4:fb0e:28f:2a8d? ([2001:818:ea56:d000:94c4:fb0e:28f:2a8d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426fb279857sm1628868f8f.20.2025.10.15.10.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 10:42:25 -0700 (PDT)
Message-ID: <9024f05854dcc3cc59345c0a3de900f57c4730d9.camel@gmail.com>
Subject: Re: [PATCH 3/6] spi: add multi_bus_mode field to struct spi_transfer
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: David Lechner <dlechner@baylibre.com>, Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Marcelo Schmitt
 <marcelo.schmitt@analog.com>, Michael Hennerich	
 <michael.hennerich@analog.com>, Nuno =?ISO-8859-1?Q?S=E1?=
 <nuno.sa@analog.com>,  Jonathan Cameron	 <jic23@kernel.org>, Andy
 Shevchenko <andy@kernel.org>, Sean Anderson	 <sean.anderson@linux.dev>,
 linux-spi@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-iio@vger.kernel.org
Date: Wed, 15 Oct 2025 17:43:22 +0100
In-Reply-To: <d9455d90-31ca-4be7-b17c-2b339e92f8a0@baylibre.com>
References: 
	<20251014-spi-add-multi-bus-support-v1-0-2098c12d6f5f@baylibre.com>
	 <20251014-spi-add-multi-bus-support-v1-3-2098c12d6f5f@baylibre.com>
	 <9269eadc1ea593e5bc8f5cad8061b48220f4d2b2.camel@gmail.com>
	 <409ad505-8846-443e-8d71-baca3c9aef21@sirena.org.uk>
	 <12db0930458ceb596010655736b0a67a0ad0ae53.camel@gmail.com>
	 <8c7bf62a-c5dc-4e4d-8059-8abea15ba94e@sirena.org.uk>
	 <d9455d90-31ca-4be7-b17c-2b339e92f8a0@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-10-15 at 11:15 -0500, David Lechner wrote:
> On 10/15/25 10:18 AM, Mark Brown wrote:
> > On Wed, Oct 15, 2025 at 03:43:09PM +0100, Nuno S=C3=A1 wrote:
> > > On Wed, 2025-10-15 at 13:01 +0100, Mark Brown wrote:
> > > > On Wed, Oct 15, 2025 at 11:16:01AM +0100, Nuno S=C3=A1 wrote:
> > > > > On Tue, 2025-10-14 at 17:02 -0500, David Lechner wrote:
> >=20
> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 controller=C2=A0=C2=
=A0=C2=A0 < data bits <=C2=A0=C2=A0=C2=A0=C2=A0 peripheral
> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ----------=C2=A0=C2=
=A0 ----------------=C2=A0=C2=A0 ----------
> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 SDI 0=C2=A0=C2=A0=C2=A0 0-0-0-1-0-0-0-1=C2=A0=C2=A0=C2=A0 SDO 0
> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 SDI 1=C2=A0=C2=A0=C2=A0 1-0-0-0-1-0-0-0=C2=A0=C2=A0=C2=A0 SDO 1
> >=20
> > > > > Out of curiosity, how does this work for devices like AD4030 wher=
e the same
> > > > > word
>=20
> The AD4030 is just one channel, so doesn't do interleaving. But you proba=
bly
> meant AD4630 when it is wired up with only 1 SDO line. That line has to b=
e shared
> by both of the simultaneous converters so it alternates between sending o=
ne bit
> from each word. This patch series doesn't address that case. But this ser=
ies will
> work for the AD4630 when it has 2 SDO lines wired up.
>=20

Hmm I didn't even remembered that one. But what I meant with interleaved wa=
s having
the same data word spread through multiple SDO lines (one bit per line) whi=
ch is what
(also) happens with the devices I mentioned. And since you mentioned "...tw=
o
different data words at the same time, one on each bus...", I raised the qu=
estion.

So I guess I kind of misused what interleaved typically means (even though =
I guess
it's not completely off :)) and was thinking more on the parallel concept M=
ark spoke
about.

Anyways, from your reply I see the intent is to also use the stripe mode fo=
r this and
have some kind of external IP deal with data re-order. I gave a look into t=
he ad4630
IP core and indeed there's a data reorder IP block after the offload engine=
.

- Nuno S=C3=A1

> > > >=20

