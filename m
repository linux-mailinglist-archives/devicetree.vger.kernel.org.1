Return-Path: <devicetree+bounces-151245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1C2A45167
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 01:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0600E19C0636
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 00:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0610547F4A;
	Wed, 26 Feb 2025 00:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ajQVyawQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F8D3BBF2
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 00:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740529607; cv=none; b=D2xkmnQGqrj/e6oWN3PNGPapU2YMmRWJIamguEbLGQRbKlDiYhERnxHfu3yPKvG/FwnGNOOi2PVsh7roAOxBg1cM577OHfuc8C5jfZznF12hFUBzXtmsSYpPuSlV4+lhUMr9QVr5ekC/A3WVLCIyYky+W9svxx+1DRnb//vT8B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740529607; c=relaxed/simple;
	bh=U8EoAqRFMwNN0vkZxxuJ747c1TkFoXybVwKQXTpYFNc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U6zoIJro6zhqPONl8azm2ZT2WXqyzKDrKsjX/OY8jJNmgo2TkVfYXzowcC2OERzKPQPT4XYAcqzflBLl5UXIjEsW7L3WZ7Xf7WYTWgYB0Qe5Eir6lg722gxv4ayuZu9J6piOmwSenzCHKxVkZhd4rUhlJW/vHsiKGkAbnYN8kAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ajQVyawQ; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3f408052bdcso2194440b6e.2
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740529604; x=1741134404; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TtkdEm0DhE9kMHrzm4v1hwSlsrJYtgXqAtJA7aT6OdM=;
        b=ajQVyawQVJadBMDPUptySchMkqqVEJx1NM6ucacylDf+Nd6HU7JEw+KpIn8LQoCL1n
         Q9TC7gKbBXw/M3iiMMvV3g40ZQUkZlOMGgVcZTC/N+WVl/XK+yE1oVZyWVfixvNEUobc
         6csOi93pB71E1HL3ULzFP8prHxcNAa1BKh2ZBbG466jRvyBvC5i7Fe0LkjefqVFUfSp5
         d5W5E1u0Z72z1byg9+8GU5ukPeS2Exz2uVc3hu4fz5hMhi8auubwcGBYFnDRQl0Mh4cJ
         e/mSCeT+PCQjOk2P3vQFF0aw2jptNtKYfdyVVs/xPE5ScKmkiZXQK7qdeafAWiJ1MEOD
         k/PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740529604; x=1741134404;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TtkdEm0DhE9kMHrzm4v1hwSlsrJYtgXqAtJA7aT6OdM=;
        b=H3Ili/NOVP53sR9azNI0UTgbZxrmX0zryQSBjgJ0uPT2CvXAKWwi6SDIlIPKeI67RW
         pjpYJKGBlooWkzlo93AFmw7le0gKTBhjCZSIPWu2f4Nb+SGo5KB7JYDLSHPm+2Rw+XWA
         m7f+CKWO5NxWtxLVsCf+19PDwJxh9JhHw5gmzkpNE1mKiKLljCPJMBYiv8pYTMabGXPN
         xXapnbOod5SS4z/MS+QrBvN6jJxJyCDTgS0cU+AV8eQik4xijAALqPjDpt+6T9uJdb+0
         l1theruIkr/34nbjpzjOU/ypm9fUgn5krQLWbITlsNfFrA/3+MPK5gXKprFGZAQpMZkO
         OQBw==
X-Forwarded-Encrypted: i=1; AJvYcCU1Jlk3JipusnkJvfOnzII7wg5McZw5qewO23Dvv04ZVlV2OwcU0w6nkcTebVfWFqj8uHg7U5/sNiLY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw383cOYR7eL9IIr+qFHGGvd+OPdpsCjQ7Qr3Rr8hwvLPgvVlR+
	ndnZuJDB0/Q6U3bmXdN/mME50DK7iumLhwCuGl/IZ/mzkIX+qwyxvMDAkVcKx1w=
X-Gm-Gg: ASbGncuyu+Hbr+SQGx0cBfQ4W3s1nMU1UDyi+EcaCVZG7u7N/HFcXbRG0bl0F5bzE9t
	94+ojCnik58MIFBtj/dcW2kscPSA4o3UXH+WkmHAUvVyU4ImRY5LrM1EhD2F0LioXQuOEwh8Tja
	b6hXe+UZQ3qkwQsEeAYqmvYpsYpYLdBnHhEwH4Mf3K5e8qRrMapjOqCbrKAvMxfoubqcfj5u6dO
	8pC3QG3iK9+VrlnPVMy8vt8l6/ctTvd4ZA/MvTIyGF7sQkZ6rDwy4NIePu9pNW8dIPt5TBAyMtU
	Wp06fpSgs7LF2EWzhMZRGq7axPwj4xNQZJNnCEEvG1wh3MWbo4JpWDFSuDOLxO4=
X-Google-Smtp-Source: AGHT+IHrEzlhOgkq+zDuK43ZJTHn/TAq6eat4Ph04G840iIXAUXagf0yq5sPkcY8nyRgOxiDTjBreA==
X-Received: by 2002:aca:1a0e:0:b0:3f4:ad6:5190 with SMTP id 5614622812f47-3f547de878fmr763766b6e.2.1740529604637;
        Tue, 25 Feb 2025 16:26:44 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3f541c5bce1sm510105b6e.46.2025.02.25.16.26.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 16:26:43 -0800 (PST)
Message-ID: <0de7b0ac-eca5-49ba-b1b3-f249655f3646@baylibre.com>
Date: Tue, 25 Feb 2025 18:26:40 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/10] iio: adc: add helpers for parsing ADC nodes
To: Matti Vaittinen <mazziesaccount@gmail.com>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Daniel Scally <djrscally@gmail.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Hugo Villeneuve <hvilleneuve@dimonoff.com>, Nuno Sa <nuno.sa@analog.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Guillaume Stols <gstols@baylibre.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Dumitru Ceclan <mitrutzceclan@gmail.com>,
 Trevor Gamblin <tgamblin@baylibre.com>,
 Matteo Martelli <matteomartelli3@gmail.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 Ramona Alexandra Nechita <ramona.nechita@analog.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <cover.1740421248.git.mazziesaccount@gmail.com>
 <23f5ee3e3bf7179930d66c720d5c4c33cdbe8366.1740421248.git.mazziesaccount@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <23f5ee3e3bf7179930d66c720d5c4c33cdbe8366.1740421248.git.mazziesaccount@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/24/25 12:33 PM, Matti Vaittinen wrote:
> There are ADC ICs which may have some of the AIN pins usable for other
> functions. These ICs may have some of the AIN pins wired so that they
> should not be used for ADC.
> 
> (Preferred?) way for marking pins which can be used as ADC inputs is to
> add corresponding channels@N nodes in the device tree as described in
> the ADC binding yaml.

I think "preferred?" is the key question here. Currently, it is assumed
that basically all IIO bindings have channels implicitly even if the
binding doesn't call them out. It just means that there is nothing
special about the channel that needs to be documented, but the channel
is still there.

Similarly, on several drivers we added recently that make use of adc.yaml
(adi,ad7380, adi,ad4695) we wrote the bindings with the intention that
if a channel was wired in the default configuration, then you would just
omit the channel node for that input pin. Therefore, this helper couldn't
be used by these drivers since we always have a fixed number of channels
used in the driver regardless of if there are explicit channel nodes in
the devicetree or not.

In my experience, the only time we don't populate all available channels
on an ADC, even if not used, is in cases like differential chips where
any two inputs can be mixed and matched to form a channel. Some of these,
like adi,ad7173-8 would have 100s or 1000s of channels if we tried to
include all possible channels. In those cases, we make an exception and
use a dynamic number of channels based on the devicetree. But for chips
that have less than 20 total possible channels or so we've always
provided all possible channels to userspace. It makes writing userspace
software for a specific chip easier if we can always assume that chip
has the same number of channels.

> 
> Add couple of helper functions which can be used to retrieve the channel
> information from the device node.
> 
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> 

