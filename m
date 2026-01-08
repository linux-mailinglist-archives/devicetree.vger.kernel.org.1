Return-Path: <devicetree+bounces-252907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD586D04796
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:41:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C088C3012E88
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 16:41:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C136C2D9796;
	Thu,  8 Jan 2026 16:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gZgTP4YF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com [209.85.222.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8F5257431
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 16:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767890484; cv=none; b=Z3rcVU3biFzpXwo7WK+i9Hd30l6mKfkZIt+huuRmS/g1X2TFh+wFgXg/uJwk6m9Gw5rNNsG6rCAMtQgq0Yt5kbPrKN/wIBUzWZG+CeUyAt0c4/R5qEAW7RQZyaTXwGNuhh/BzMmaIUCFiS/KVp3MnM2Yrj+Hzt1kSpCNs0Jn8zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767890484; c=relaxed/simple;
	bh=2SWvg0mnSNPKoEbzYd6Yyz8aYgMuu8vuLkO4K+rHnas=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G9VOpudbXdc9VS9lGqqHfIp9wIpHN0L0MWWe3WQ4+Sqhf8okb3flUw7qAVtERzb4r3/9B7d2Aj+WiUzZ4GejYWuil8HbES6EHZeLu7iYX/szpq77HU/5Cn08dAUwYMg5pVETsPwvVoI08YClKRm114UqKoP3v7e2fH/NGKiGyfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gZgTP4YF; arc=none smtp.client-ip=209.85.222.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f65.google.com with SMTP id a1e0cc1a2514c-93f500ee7b8so1575087241.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767890482; x=1768495282; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4XSjy6GDoZa/I1UcaZttfnQzQ3rLxhESiNSFP7ANylI=;
        b=gZgTP4YFii/GrPRTnx9zbL+/gDTD+peFD5GIayRiAw4smUy6EJJ/jY4XVRCHTUrEBK
         4mluzxiQ0phiF9Z2sr8I0d0ZR2Xt2/K0mXpC+Ts8TMHZv9YWCnq4KR3d0A5Jok+t3P/i
         Mx6lPlW2reO01RqTRPB17PhANPfAnAGgkbntYwv/JUPmGWFtnjABf8J02REUSZT1WYP+
         OWEKhaGeoGmWrwPB9PqZVLfW3WbSdwXYmvWQDK7CmnGFArrH5CadFLsocQdFpxRKlkeR
         9bEc/Prbr+6GwxXoZLUfwxnY4BmBRTmXz1ADWWgnV4M2/4ImGahcAWyuF5RuPnRF/3IL
         Szjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767890482; x=1768495282;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4XSjy6GDoZa/I1UcaZttfnQzQ3rLxhESiNSFP7ANylI=;
        b=gpzE02mrWaiKMNt8rKMFs6EcOydDWOL+kfRQUOUdOw7ud0c+TZofrndJvk5nI0oSvc
         nlsUsmdoFCuI07V2d3AGY0KhbiUNPwvPDNGXnMMnED0BGWJLfsShWAk8QKMlylsuSAXl
         WR6f6EWIF8QJNEXTngtkENt45hIEeyR/A7ydz5ZhHEWA2lKchqd52TBQ3cS4j/bF+T+u
         LuLd3ltZ5AtInUw36Ko4ns+zZeTGkWFXpJohPWKCc1MQ0Yhu1B34g93/NhpPzUkks8kb
         os5aoCzqak/YDBpWf6FGDr5H5hJJ6O/Uk5T6xIFDRF4EplzNpw4wP1RlvyZfzIKwQvyL
         PIFg==
X-Forwarded-Encrypted: i=1; AJvYcCU1KkTKuh3GRUGoXqJSnEaO3BLh7l1NWuhBC0elq8CFN7BGtDvBfTavK4/lmnDL4+93GbTUT5BFttZB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9BdBN7P8ugEVSKbS6hM20jzZkAzzGgwtcL8UxrcupdUwEqVT5
	ld6WrwcshxF1z7y7K7EemWP59KnZQBiwg5vHtiRCHUxYoGeN4uhJNHrC
X-Gm-Gg: AY/fxX6FUZB5Jnw8g1nSEpcGPT1ewA8LBSsw5TpJXsoS9wxzTl8K4cSyOInKArEDqsX
	/ngZSe1SYwweXzwBiB8wox52kGepb3G6tyKjhJgwXuzlWZO0ZHyosh9eLUmdy52dXIZw8FsTqkN
	Jz2HBMDmjTY9zNsRjBm00OTxr9wgfsexfry3IqQQbKHwbGerIWgv9r//b+H8X3F0UvNKMcaYHhn
	O5gwfyUiEsUCQcMwthYLebGGhhAG634oLOcyKHamAQuc5inV+TpB53VmdI8ri9FJp8i2RFYfHf8
	ZNMRFTHmb5NPD3VAijNaaSrxYVGq4pgZ6rJ4+GFkoUiM6aRARKrQm3XyCztmfj6yOo29817KDK0
	uRJmQ5dswEWCWCyXvJBFUdbeTUjAGe6CU57/MIFc5O9XQzXBlEzmwG6DMAyM9Y9zLb3nNuwhX5k
	ivQh9qfJZAymWwYXhN7Ic=
X-Google-Smtp-Source: AGHT+IE4AtDbZKzZRalcqE7CcaXG0QiH66wB+saTxJ1rIfK77dWxMvmeKvWa/VQKArvH4J8jbd8fRg==
X-Received: by 2002:a05:6102:26cb:b0:5e5:5ed7:60ae with SMTP id ada2fe7eead31-5ecb6900d02mr2692035137.31.1767890482104;
        Thu, 08 Jan 2026 08:41:22 -0800 (PST)
Received: from localhost ([2804:30c:2766:a500:b70:8c42:f792:bef6])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ee9d013b3csm2213215137.5.2026.01.08.08.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 08:41:21 -0800 (PST)
Date: Thu, 8 Jan 2026 13:43:07 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: David Lechner <dlechner@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	Michael Hennerich <michael.hennerich@analog.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Andy Shevchenko <andy@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v4 5/9] spi: Documentation: add page on multi-lane support
Message-ID: <aV_em6a5vxi_AZGg@debian-BULLSEYE-live-builder-AMD64>
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
 <20251219-spi-add-multi-bus-support-v4-5-145dc5204cd8@baylibre.com>
 <aV-mpFCF_ET3AZ1B@debian-BULLSEYE-live-builder-AMD64>
 <c93a528c-39d6-4e29-b64a-ecf75032b60d@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c93a528c-39d6-4e29-b64a-ecf75032b60d@baylibre.com>

On 01/08, David Lechner wrote:
> On 1/8/26 6:44 AM, Marcelo Schmitt wrote:
> > Actually, one more thing ...
> > 
> > On 12/19, David Lechner wrote:
> >> Add a new page to Documentation/spi/ describing how multi-lane SPI
> >> support works. This is uncommon functionality so it deserves its own
> >> documentation page.
> >>
> >> Signed-off-by: David Lechner <dlechner@baylibre.com>
> >> ---
> > ...
> >> +- :c:macro:`SPI_MULTI_BUS_MODE_STRIPE`: Send or receive two different data words
> >> +    at the same time, one on each lane. This means that the buffer needs to be
> >> +    sized to hold data for all lanes. Data is interleaved in the buffer, with
> >> +    the first word corresponding to lane 0, the second to lane 1, and so on.
> >> +    Once the last lane is used, the next word in the buffer corresponds to lane
> >> +    0 again. Accordingly, the buffer size must be a multiple of the number of
> >> +    lanes. This mode works for both reads and writes.
> >> +
> >> +    Example::
> >> +
> >> +        struct spi_transfer xfer = {
> >> +            .rx_buf = rx_buf,
> >> +            .len = 2,
> >> +            .multi_lane_mode = SPI_MULTI_BUS_MODE_STRIPE,
> >> +        };
> >> +
> >> +        spi_sync_transfer(spi, &xfer, 1);
> >> +
> >> +    Each tx wire has a different data word sent simultaneously::
> > In this example, the controller is reading data so the rx wires have different
> > data word received?
> 
> Yes, I tried to make that clear below by having a different value
> for each.

Yes, that part is clear. What came a bit odd when reading the doc is that the
first two examples ilustrate the controller writing data to the peripheral and
refer to buffers from controller's perspective ('sent over the tx wire', 
'data is mirrored on each tx wire').
IIUC, in this third example, the controller is reading data so we would describe
it like 'Each rx read has a different data word read simultaneously', no?


> > 
> >> +
> >> +        controller    < data bits <     peripheral
> >> +        ----------   ----------------   ----------
> >> +            SDI 0    0-0-0-1-0-0-0-1    SDO 0
> >> +            SDI 1    1-0-0-0-1-0-0-0    SDO 1
> >> +
> >> +    After the transfer, ``rx_buf[0] == 0x11`` (word from SDO 0) and
> >> +    ``rx_buf[1] == 0x88`` (word from SDO 1).
> 

