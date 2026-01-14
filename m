Return-Path: <devicetree+bounces-255239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C02D21918
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:30:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51EEC300FFB8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 22:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04F7D2EFD98;
	Wed, 14 Jan 2026 22:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rzQ9DGe1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7E6D3563ED
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 22:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768429826; cv=none; b=FWDGmlgH9/OlktiTAP6CevfsUPYuLw9LV2xvfCSc42NddxpciBkcFJ0MLZiXTL3Yz5lnaPpWLEODyyCWfXeTx8lMAeZHUE/UpvRMvZoyiAxXpsNYkqeJVeviuPEtzAbJAM2KER3kHNxjHqdWA+gqJbW3Yf1W7FkuXw9fF5xKX2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768429826; c=relaxed/simple;
	bh=PXVggypcbBwJihCtpCrmBLopaA1RXwINv+2Iwfde8Lk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=GnLg3tRndg/nh5NkUjBTlkTDCwq652LKCT14gPFKFwlEXSVsXlc+93f0+VUfIZWT+EIEinO2/il3VLQtqrNY3vjS4bvszRf1bJhcPCkKh/3clp0bz2y261d3aKRzgn7IsajOXWy9ELTnhNTI2qmx4ecOG9gAG+Vu5ot+i0y2wtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rzQ9DGe1; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-81f4e36512aso255659b3a.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768429805; x=1769034605; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ymy5giR6WrVAtVFXMff8n5QnBmgyVv03sjiXQEbjz38=;
        b=rzQ9DGe1vQYjvJmJI6BuZ7gB0/d8ncL1Nq0OTaqvyRvHoGfemAwaUORwMWkPJLdClU
         srNXLcCX0jEwyWFvPlEmc12LFh0Wy72lVDoL+Myg/s0aq6WCpUzto5zf1wXAwyjI+Jmq
         M/110jGt04M36BNknYY7K1Bp5EkYEhkF1ZoVyTtpRYPYwDnrYZB8uK+4S2Uti9Wy0Xtz
         AaMtIIXJhtXYWC8kK1mY46bK+2IK839vGUIFj56ix2lVjKQZCeU9aKxKktV+I6cuJ54V
         R6c1lI6ZnEgLpdQtXWa1VkRQIF1fTAbhwTxg9I5bHZxR43v8d8zmVddxJBnXbB9vsRlo
         yetg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768429805; x=1769034605;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ymy5giR6WrVAtVFXMff8n5QnBmgyVv03sjiXQEbjz38=;
        b=SMQ+Ra8JQNunmPrb7Qed1PpjT6vYEFOpDh127XfP5mG9OCs4l8l0X1MG2kSTbTmLpm
         7sgrSQ3RA8AlqrESGNLcjnxyizzi4EkGr24EuS9LSWcN3FusUNxkTqFVoFh0Lf7a3YnZ
         iesjkFjcPc3gRiaCfnMFWADvmSoddYbTElqKPAuowg6a4GEy7j0LZ1FVHMGBG/iQ4a1D
         JmCVYG8l6ee1ZO+pKblrfDmQ5h0fWF62K2I5zj/4G9PWoTHBOqXjObEzCVR2Bn/hMgcj
         p7mEC/Sq9Q1/7prHNmVqZEw6pnJNJkTDLkySAwmKrhlDlcBRsSAbgF21+ArI2sVOedx7
         ehhA==
X-Forwarded-Encrypted: i=1; AJvYcCUI9LNESeHlLqH/9OxBinAoge2ipK7isaseJfEk1WeBIaYWLIL+oQZPpCMLtsxH4f+xNBz0Nl4XNBIj@vger.kernel.org
X-Gm-Message-State: AOJu0YyobgEkgzepH6NAEWM20vl3IQuP7II8RNieLBKnKwss07qzOHqh
	5nJvYL7elBdEU6t3QuwzfJIegmqEZPi9mTeH4CeJBBDJilxJJr+Gg1kKxGM3iq3+EZQ=
X-Gm-Gg: AY/fxX4a+sU0JMitzyo/coXv7RzxBgnyrE+nAPnaGyIav12BDy/PBxSaE/GhFIVtUV7
	itoaOsNj74SLNhLWyn8z2urlJ3zbHEJ2KsuJu0IdRt+4fl8XKb/Tom4TTEtrAiXBD2gu2iCiB0a
	aehT5Kz3lMdhGieeHxbOpp7Ix8YBmfivUOyvZMSc3CBb815A7GjD4ofKKsK5tLvfNwPhu1Atok4
	R4ao2hT/Yfr+2cVjULf4H+Qs5IiW/2P9+6IrzM3PP1m4GGUa9zkSG6L7TidPr3E+ls60u65PbOP
	R+Fp+qBnMeiOh9b2YcdbRIgKaUSnDto0JeC3OIHv1hp7wrmD0z888nWnMXyous/qZota8FMd24u
	eXh7F3GYMVvGGa8PkFqAivm/FcEnsPiAVKdJaP44E98NMAesVFRCF2w8ZBKqdzxWZ0/65IIk76v
	vyc+fmLfCP
X-Received: by 2002:a05:6a00:4145:b0:81f:3d13:e069 with SMTP id d2e1a72fcca58-81f81cdee8amr3317222b3a.8.1768429804947;
        Wed, 14 Jan 2026 14:30:04 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f8e64c33dsm515228b3a.44.2026.01.14.14.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 14:30:02 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Andreas Kemnade <andreas@kemnade.info>, Jonathan Cameron <jic23@kernel.org>
Cc: akemnade@kernel.org, Jean-Baptiste Maneyrol
 <jean-baptiste.maneyrol@tdk.com>, David Lechner <dlechner@baylibre.com>,
 Nuno =?utf-8?Q?S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko
 <andy@kernel.org>, Aaro
 Koskinen <aaro.koskinen@iki.fi>, Roger Quadros <rogerq@kernel.org>, Tony
 Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: ti/omap: omap4-epson-embt2ws: fix typo in
 iio device property
In-Reply-To: <20260112094259.4648cfaa@kemnade.info>
References: <20251231-mpu9150-v1-0-08ecf085c4ae@kernel.org>
 <20251231-mpu9150-v1-2-08ecf085c4ae@kernel.org>
 <20260111123200.6871a41b@jic23-huawei>
 <20260112094259.4648cfaa@kemnade.info>
Date: Wed, 14 Jan 2026 14:30:02 -0800
Message-ID: <7ha4yfzv2t.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Andreas Kemnade <andreas@kemnade.info> writes:

> On Sun, 11 Jan 2026 12:32:00 +0000
> Jonathan Cameron <jic23@kernel.org> wrote:
>
>> On Wed, 31 Dec 2025 22:14:17 +0100
>> akemnade@kernel.org wrote:
>> 
>> > From: Andreas Kemnade <andreas@kemnade.info>
>> > 
>> > Define interrupts properly. Unfortunately, this hides a bug in the linux
>> > driver, so it needs to be used with the driver fixed only.
>> > 
>> > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>  
>> 
>> Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
>> Not related to patch 1 so if TI soc folk can pick this up that would be
>> great.
>> 
> well, it needs things fixed via patch 1 to avoid creating havoc...
> But from a strictly dogmatic point of view the devicetree describes the
> hardware, so it is unrelated.
> ... but from a more pragmatic point of view, I do not want to have interrupts
> enabled for drivers which do not handle them correctly.
>
> Of course this should be picked up by omap folks.

Based on the changelog comments, I will pick up the DT patch when the
driver fix gets applied.

Kevin

