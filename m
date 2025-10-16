Return-Path: <devicetree+bounces-227525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A895BE24EA
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 11:11:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 08D484F9183
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A05F3126CF;
	Thu, 16 Oct 2025 09:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hFXYGDcQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FC263148A2
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 09:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760605874; cv=none; b=hmn/zYyyp9m3fQHUgshOLTFbJTDJm1F/okYhDHiOdAIBQMKgKws3+pLMoh7QWdGZa3Y/tpEDzUXVoVC7dtm7c3BSdFw4L0av/IMiw4kEXx1pIPwT1E4kjWRknvNwq4gMHJw5werpjLirIil5/wXaf6VWC6p1FCPXP0x7xUormyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760605874; c=relaxed/simple;
	bh=8GLeSGbFCZxV5NW1pOSf3yC8PvL/p5QNUB8ywlAsRpM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=huP4prtixzYVYa8bugna5LCxlo+klG/d8LDj0phVXObIY2Qnxj7UWRONvC7cwG7BqsJwu/xQRFp9GzviyZ/PFL2wKzTzqDo9bWkgWF/BoVh2n+kDhf8s5Wz31zG8Jq+ysIfNr0Yhrj+GlxqPtfSE0y5ITRG30vu9I2aRLAL7ojc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hFXYGDcQ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3ee15b5435bso352711f8f.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 02:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760605871; x=1761210671; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pgEKMn0XDroIUjrbajIfAb8EUnvuUCfYwGzf4RpKT1I=;
        b=hFXYGDcQsnGRQVFtwM+kNGSKGQ+IWPs+YjEgogCPGIoR5m6xI3Lx7BdvuP/BPv2DNV
         02fE1YAQuty5IKAL6b/2OukTcWJckLT4j+v4kyGZszYpisE/MfI300Nh1mlg7E3aDt9U
         Y9ZUEA0pLZWl7TXUd4EDKw40I+FSBSj4t8XFyyPUuRSfWvlwi7HYsQtl1OC71D+6VJHv
         wZ616mesv6iQ5IvOooZ09kRZ/0kaXqX61HhXClnv5F9ruoTeTsgxRlEzujjaAISXlDRo
         /B8Wm4qJqZ4a3n2vlaWiJyRYECjQUmPXVj1aOVg5mMTF0a1b5YzfvNTKm5F7lIhEcGio
         pZ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760605871; x=1761210671;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pgEKMn0XDroIUjrbajIfAb8EUnvuUCfYwGzf4RpKT1I=;
        b=oJdD8TqCBIKqmCdv+kwuQs6rxWAzJVFTdM9gT6yrh4RFGieC4XP5aZdxG89LSglBxW
         X9kbB66GxA1TSh/ITTDBbpQ4SiSu3rRremozOixEzzNVEGUrGwXeCYjm1Sp49r2qYNzT
         io8PnA0/y922MFR06ASkd5l3tStU+6hF0Ei+Jb9XX769ygTtkwOiyo6t0WPX/HFYxLUB
         KwMgU0HrIm5QoEIFOF3prymtULlmbCYBLnOII4g0c0YXaeYnuzI48e/P7X8uPNZPGsVj
         dRm3F1jSvxsrCjkmQPZAb32k6DmD+tv3gxKoxAFdaSkS4O0M4adNXV5eTIo0WyXCzdEh
         2w7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXjlOF0pbTxBhmTT6xpb2bSrla9CdsTceMJbXEOQBS8TQ6SgO4B3ZQgrSx1vFKkeK4lNNPMjNKx80TD@vger.kernel.org
X-Gm-Message-State: AOJu0YyEQS7qgymGDaISsoJdu2CQrE7199wRd7NOM77KKauTYTYyIo+G
	eB13hXwYJu86pY40o1/7MBoEvM0xRVDZsCdmrwvBRqzUBxT2wXhn0leM
X-Gm-Gg: ASbGnct9ejQOJ0tB1UvCJEbvrzBAQrGD3yPRKbtmqn9sEYIHdZpaFgbCjVUrhT7yvIC
	p3rPuaoNIx/vRYNfaQiN85lTfHSNv871MYfEmynzn4KmEv+e5vQ3Pb2gpxjt4rPKK6HtzXvmeXQ
	xYybpKw5xwB4/D0px/9q4a4k+RjQanxigTdon2NiigMleIWVZCY8ggHFV7l6bhF7fl7jaxL++4H
	uwTzt6qsyFwyRcFZ0zMWEpy6XCq9d/0eCMx8iCXlH5dl/S1aVeLTm6dXQ9rs5vMPia9jGHjbiRz
	tbJNdHtxGCvGk2cqrhcuv3Vjy1UCD/KWKM6PriTZ+vxURHVjWrN5WPdp1xtuHbccIUnm0DHJ5fH
	/9tywY8Qqe8/ipAaVXGOyF7XTMktUyHP3SymO2ShRSieDsPLDy/0T0dwpPSHc8t0w66/xnNovwh
	IbgITXQBQ7zl5D4MAmU6c=
X-Google-Smtp-Source: AGHT+IHOFsf26x5MXnRo2CEvfqFeiqoKq4Cr2RM9DC/zm0UVkmz5s06RGON+S3U2R3XqphITx5wvnA==
X-Received: by 2002:a05:6000:26cc:b0:3dc:1a8c:e878 with SMTP id ffacd0b85a97d-42667177b8emr17831382f8f.18.1760605870430;
        Thu, 16 Oct 2025 02:11:10 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5d0006sm33647741f8f.34.2025.10.16.02.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 02:11:10 -0700 (PDT)
Message-ID: <f999ddef22580427dcb0205a9f7ba97f227c56a3.camel@gmail.com>
Subject: Re: [PATCH 4/6] spi: axi-spi-engine: support
 SPI_MULTI_BUS_MODE_STRIPE
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: David Lechner <dlechner@baylibre.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,  Marcelo Schmitt
 <marcelo.schmitt@analog.com>, Michael Hennerich
 <michael.hennerich@analog.com>, Nuno =?ISO-8859-1?Q?S=E1?=	
 <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko	
 <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org
Date: Thu, 16 Oct 2025 10:11:42 +0100
In-Reply-To: <348b0d94-4b3a-454d-be67-47563808ec76@baylibre.com>
References: 
	<20251014-spi-add-multi-bus-support-v1-0-2098c12d6f5f@baylibre.com>
	 <20251014-spi-add-multi-bus-support-v1-4-2098c12d6f5f@baylibre.com>
	 <3180475bd51e1e057d6aa7e1b62f564cb57a117e.camel@gmail.com>
	 <348b0d94-4b3a-454d-be67-47563808ec76@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-10-15 at 11:29 -0500, David Lechner wrote:
> On 10/15/25 5:30 AM, Nuno S=C3=A1 wrote:
> > On Tue, 2025-10-14 at 17:02 -0500, David Lechner wrote:
> > > Add support for SPI_MULTI_BUS_MODE_STRIPE to the AXI SPI engine drive=
r.
> > >=20
>=20
> ...
>=20
> > > +
> > > +		if (xfer->rx_buf || xfer->offload_flags &
> > > SPI_OFFLOAD_XFER_RX_STREAM ||
> > > +		=C2=A0=C2=A0=C2=A0 xfer->tx_buf || xfer->offload_flags &
> > > SPI_OFFLOAD_XFER_TX_STREAM) {
> >=20
> > I'm a bit confused by this condition. It looks like setting priv-
> > >multi_bus_mode
> > (and the other fields) only matters for msg->offload but the above will=
 be
> > true
> > for regular rx/tx messages, right? Or am i missing something?
>=20
> You are correct.
>=20
> >=20
> > If so, I wonder why doing this for all transfers if we only care about
> > multi_bus_mode for offload messages. I guess you want to validate
> > xfer->multi_bus_mode?
>=20
> Yes, this is important to validate it since we don't support all possible
> modes.
> The mode still applies to the individual xfer even when not using SPI
> offloading.
>=20
> > I would then just take the switch() out of the condition
> > (I mean trying to setup a no data xfer with an invalid bus_mode should =
also
> > be
> > seen as invalid IMO) and then use the offload conditions (or maybe simp=
ly
> > msg-
> > > offload?) for the multi_bus_mode handling. To me, it makes the intent=
 more
> > clear.
>=20
> It the validation only matters for xfers that send or receive data. I gue=
ss
> it doesn't hurt to check the mode in non-data xfers (e.g. ones with just =
a
> delay)
> but since we needed the condition anyway for the accumulator, it made sen=
se to
> me to put it inside the conditional.

Sure, but note that I did said that I would tread xfers that do not send/re=
ceive
data and have an invalid mode as an error (the flag should not be there any=
ways)
and that's why I was suggesting taking the validation out of the condition.=
 No
strong feelings though so fine to keep it this way.

- Nuno S=C3=A1

