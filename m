Return-Path: <devicetree+bounces-236803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AED89C47A22
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:48:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCE28188D4ED
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC20313E06;
	Mon, 10 Nov 2025 15:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VtMJ9ZVm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC97B2BFC8F
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 15:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762789314; cv=none; b=DxrwoFyC4hgNgRQVI8MwLuHlPCLYWiFvHbqqCC8AbiNoZBDCBTw54IBdYOgitsezPwtOnr6qbNHFKsuf8NWPF4/YHRwfVuAWcc11+v2GA3e/n7B4FdZs3OD5Q6ZX4/duNf//7UxyGa0x7qqiaPg8zn7U7UCUa/lLGkZLk2egQzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762789314; c=relaxed/simple;
	bh=IBEHosaYIw4Uy2q8CYzcuC+/MKjcxH+HXLEgyNLHiEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IBvonMsJXBkoQc4kbu2xXFFFfGgtilMXObzZdY/6R9EuKZDn29XA4cv2RcjWDqk+orcUJJaqJH+3VJOTFIphocbWym+69EiHnnpk78uiNNLkRjBoM9agvvmlI9DmCNrtY73EOhWp0gHGPci80Q7k3KHrudWcNL7/xfIaRsWW7fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VtMJ9ZVm; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7af603c06easo2908824b3a.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762789312; x=1763394112; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/ylq5ip16KIlNEm4q5Drc6EevlzHi/eE660ukaOSOxw=;
        b=VtMJ9ZVmyhkYlREYDhuIP/MGHIeqIrH8d9SKCs4YNq6LqjSPiaIAjiKoPLnmDhvbTX
         OknozvPCaRJOSApwEiqdz0D3Swz6niOUIKUDq85P6q8R1PVTfK2YIe4N/RIhH3JnMkeO
         ck/BBOYNtHsxdb5j3YkqFgL9odOF3fOFYxHujKxXXJ5vcKRzFpSmW3qf8zEgNEpes3qr
         03FpkWFAgbfgiojS14yLcN5QgRcZuIEcdgOqRaIG2WWuPQbYS6h0o/OEikWMfgzDv1ep
         Zi4XwmUJUw/Y6v8TAtEYjPN5OP67B9FvgKnzNhwq6QZBKOyJu1I+aXRob/AYt0QB+zpD
         OYgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762789312; x=1763394112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ylq5ip16KIlNEm4q5Drc6EevlzHi/eE660ukaOSOxw=;
        b=HQj3+nNLQI2JYoRTw5RVmA95Q5XMca0OQATNCT/ifSSUk1aFweoUXfwLrvhiA8J4b8
         3HOozDCez3lXvcXVcMndfuLx2JdSR0YI0Pygixs5GYBC1gIlExpjqaVc7lMe0+fezDdk
         3it31QhXtuT4E6r3VXe1/LhaJX/iATLSHVrhB18H11aaefhxT1a/bj2mqnhNkKINxJXq
         QaxcUFDyEhDlw/fiXkYgWWWFrv76Vnp1FXUnW77UX/KYUA0c6GYSE2o6oLB9V4agRhnH
         kOaH7BI8dXKsTVkvDZj1eJdrnWSyaNyl0AG2s8kP5on6RrUzifGdgsIjOO6XALxCz0Tt
         aOng==
X-Forwarded-Encrypted: i=1; AJvYcCWPpSB88XwVFas3NLnqRjk6qMgw8au3MAojvknW3gJknkEZp8DT7eS+5+VY3gB/M9cFS8nvYXb02eeq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz78Kv7kZ8bDScAxFDZvGcmlFRo3G6Xy6sjoCVgC28qxDWVGWem
	3gpEsIUB0At6Y+s+FDS3FTJIx90TSNInndDY+H51SThSdecDBYftytum
X-Gm-Gg: ASbGnctkXrCwqkdM/y4xprE8L3U6vpmWvz63pil+eaMH0T1jzfwjhO9KKiMc/duFuEq
	KwQmN7YwM554q5UhTb2JaHDxt/Mq+GtspGFP2RGO1WRmQeI67uwRW9Xpn4/MVOa6Z9JWk0wGCjQ
	HBUS8jOIl9Ny7BwRnvkIxtnrsBp292ekohE1VObehCqpxGqagbZG+kF/VE5PRUz6rfuQ4V6C8bO
	tZkf9OtjZs9VVo306pfcGvjq/SHuUWGKN8BVasML6JdT+alC1ynNFV32XhIsNP0m+8gd/JcuZZh
	wdQ/E+e94L9Ym0w2aXnj81mYzNOhH5m1KkmuIsuLjLXk8NSpt4TeeRoFwq/znJg1FPviq2FhTcT
	UxnHtR9xiL0RSCJPgPdGabp9ixg0ZuKVOqgH+raH2HKnyMosDwEA4puL2oKdZYs808X7mxlrNch
	tPK2nfZ9VePQ==
X-Google-Smtp-Source: AGHT+IH2AanJ/xvo0tNEHTz1Ql1SAqJGcv6JRo7rtSuZftddi6C1S80+uwRJGFeK0pubFMUbdbyzbA==
X-Received: by 2002:a05:6a00:3213:b0:7ae:b13f:37c2 with SMTP id d2e1a72fcca58-7b14a1206aemr10855026b3a.10.1762789312083;
        Mon, 10 Nov 2025 07:41:52 -0800 (PST)
Received: from localhost ([2804:30c:1661:8a00:578a:911c:ac25:24a6])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-7b0cc76c0dbsm12121713b3a.51.2025.11.10.07.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 07:41:51 -0800 (PST)
Date: Mon, 10 Nov 2025 12:43:09 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	dlechner@baylibre.com, andy@kernel.org,
	Michael.Hennerich@analog.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, corbet@lwn.net, cosmin.tanislav@analog.com
Subject: Re: [PATCH v1 0/3] iio: adc: Add AD4134 minimum I/O support
Message-ID: <aRIIDTUR5Pyz1Rxi@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1762777931.git.marcelo.schmitt@analog.com>
 <aRHgaXxxnD5YsIQQ@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aRHgaXxxnD5YsIQQ@smile.fi.intel.com>

Hi Andy,

On 11/10, Andy Shevchenko wrote:
> On Mon, Nov 10, 2025 at 09:44:56AM -0300, Marcelo Schmitt wrote:
> > This patch series adds basic support for ad4134. AD4134 is a very flexible
> > device that can be configured in many different ways. This series aims to
> > support the simplest way of interfacing with AD4134 which is called minimum I/O
> > mode in data sheet. This is essentially usual SPI with the addition of an ODR
> > (Output Data Rate) GPIO which functions as conversion start signal in minimum
> > I/O mode. The CS pin may be connected to a host controller CS pin or grounded.
> > 
> > This set provides just one feature:
> > - Single-shot ADC sample read.
> > 
> > [PATCH 1] Device tree documentation for AD4134.
> > [PATCH 2] IIO Linux driver for AD4134.
> > [PATCH 3] Initial IIO documentation.
> > 
> > There is a driver by Cosmin on ADI Linux tree that supports AD4134 in wiring
> > configurations suited for high speed data transfers. Even though the minimum I/O
> > support was initialy based on that high speed transfer driver, the result ended
> > up becoming entirely different. Also, because the different wiring
> > configurations are likely going to use different resources and software
> > interfaces, the code for AD4134 support was split into ad4134-spi.c,
> > ad4134-common.h, and ad4134-common.c.
> 
> The cover letter misses the answer to: "Why do we need a brand new driver?
> Don't we have anything similar already in IIO that can be expanded to cover
> this one?"

Ah sorry about that, let me provide more context.

ADI has a design called AD4134 which people would like to use with Linux.
This is another fast sample rate ADC that would need SPI offload support to
reach maximum sample rate. The driver I mentioned above provides support for the
SPI offload use case but, it has not been reviewed nor merged to mainline Linux
(at least as far as I'm aware of). I also searched the lore and found no
previous matches for ad4134. So, we currently have no driver supporting AD4134
on mainline Linux.

Why not just upstreaming the SPI offload support driver for AD4134? To achieve
the highest sample rates, the AD4134 provides a dedicated set of lines (DOUT0 to
DOUT3) to output ADC sample data. We would need to describe and manage an
additional bus this part (an SPI bus for configuration, and a data bus to read
ADC conversions). In ADI tree + HDL, the data bus is read through SPI-Engine
as usual SPI data and a second SPI controller interface is used for normal SPI
commands. The setup actually uses two AD4134 devices and is more or less like
the diagram below.

::

                                                              +-------------+
  +----------------------+                                    |  DATA HOST  |
  |       AD4134         |                                    | (SPI-ENGINE)|
  |                      |                                    |             |
  |Data interface  DOUT0 |----------------------------------->| GPI0        |
  |for ADC data    DOUT1 |----------------------------------->| GPI1        |
  |read back       DOUT2 |----------------------------------->| GPI2        |
  |                DOUT3 |----------------------------------->| GPI3        |
  |                DCLK  |<--------------+        +---------->| GPI4        |
  |                ODR   |<------------+ |        | +-------->| GPI5        |
  |                      |             | |        | | +------>| GPI6        |
  |                      |             | |        | | | +---->| GPI7        |
  | SPI interface   CS   |<-------+    | +--------|-|-|-|-+---| DCLK        |
  | for register    SCLK |<-----+ |    |          | | | | |   |             |
  | access          SDI  |<---+ | |    |          | | | | |   | TRIGGER     |
  |                 SDO  |--+ | | |    |          | | | | |   +-------------+
  +----------------------+  | | | |    +----------|-|-|-|-|-+     ^
                            | | | |               | | | | | |     |
  +----------------------+  | | | | +-----------+ | | | | | | +---+
  |       AD4134         |  | | | | |   HOST    | | | | | | | |
  |                      |  | | | | |(ZED PS SPI) | | | | | | |  +------------+
  | SPI interface   CS   |<-|-|-|-+-| CS        | | | | | | | |  | PULSE      |
  | for register    SCLK |<-|-|-+---| SCLK      | | | | | | | |  | GENERATOR  |
  | access          SDI  |<-|-+-----| MOSI      | | | | | | | |  |(AXI PWM GEN)
  |                 SDO  |--+------>| MISO      | | | | | | | |  |            |
  |                      |          +-----------+ | | | | | | +--| OUT0       |
  |                      |                        | | | | | +----| OUT1       |
  |Data interface  DOUT0 |------------------------+ | | | | |    +------------+
  |for ADC data    DOUT1 |--------------------------+ | | | |
  |read back       DOUT2 |----------------------------+ | | |
  |                DOUT3 |------------------------------+ | |
  |                DCLK  |<-------------------------------+ |
  |                ODR   |<---------------------------------+
  +----------------------+


Luckily, for handling the dedicated data bus, we might benefit from the multi-bus
support [1] in the future. Though, the high speed setup has other implied
intricacies such as an additional periodic signal (ODR) being required to sample
data in addition to DCLK.

[1]: https://lore.kernel.org/linux-iio/20251107-spi-add-multi-bus-support-v2-0-8a92693314d9@baylibre.com/

Although we got that working on ADI tree, there are some aspects of the high
speed driver that could be improved before upstreaming, IMHO.
So, to start with something less overwhelming, I thought of trying the minimum
I/O mode first (a.k.a. usual SPI interface). Note that the -common parts of the
driver are intended to be reusable by the high speed driver when we get to
upstreaming that. Also, by the way, that high speed driver doesn't support
minimum I/O mode and the intent is that the drivers will provide complementary
ways of interfacing with AD4134.

With best regards,
Marcelo

