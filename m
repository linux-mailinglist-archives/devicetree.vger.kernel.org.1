Return-Path: <devicetree+bounces-223476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E473BB5B4B
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 03:11:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8CF819C0612
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 01:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19168199230;
	Fri,  3 Oct 2025 01:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JGIPYYne"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A179F19DF66
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 01:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759453883; cv=none; b=OyBBD8nbAAxUUVVs8taVA26rdkrp/PBrj6pBR4e1zS9rSxt5Cn3ZvfndvI0xSRR7mzgimDt2VXA9nOghGtzskQbk06FBVLI4Md1fDAd/3Kdml46GLdy7Ll5gzfMNROyqg6RXPBrxR1FCnfxnqRKI2ERVWjKSg+p96aRtwA15IO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759453883; c=relaxed/simple;
	bh=N9GazPrt5YI0AJMEN+qVpDTwc+mmy8FLL3tPBD7Nz/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e1WFZuDnq6DHwITUI6/O1v2GOUX1CG3P+6c2FOexqrn+VbdCgV94hFKdNXqofULnYwHV23L1gLqUmM7aQ8cfRoMyOUR5/+htVAjqHOPyH5zkwJtAf140w5+EZaFqHMDTG3MFn5nKzWHe43jHoW0tC7zJ3fg4WWyat+toLtruV7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JGIPYYne; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-859b2ec0556so174391685a.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 18:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759453876; x=1760058676; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KvAaRy7mKlC1Ciw+3P3SH6DtmjBFBnfiIqdIEUbSJm0=;
        b=JGIPYYneZWUDqUhioDcL1pj6mW9tMA8wslg6G4guv7puUcdT5DqaqHZbua45VA4M6p
         tCOzJuALnFExT6yWrFgrEwczbUAysjGQTp223VKKqd1ZG46bwhTwOQILjq6y95v3bMps
         QRylVVvA6GDSprIW2d5tl0Ld6pUfJF+ZTaSpQKNxmOBHpes/jCnDBjeMD6rubWcPVMfC
         /Yguqa1o82XAvdOUyPUfWa6XiJeBEKRzggfJg85mLvIvsfmJhrFTqYIS5nv8zGYBSxkg
         rE0sPAmjObY2XF3oI9/hjUjKO1AQK8HrVC4fTNTzCE9zBmuEF34ysAyh+Nj1APD7FEaV
         xqiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759453876; x=1760058676;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KvAaRy7mKlC1Ciw+3P3SH6DtmjBFBnfiIqdIEUbSJm0=;
        b=kA6YixVopJI1re1ZL0b2JGZ6PT7qVsplJnM1c9p6qxixjaek/tt9eeGDQ8dn2ZrwFQ
         o58kwy8LMZfTn2h+ZQNZBjhtH85hIKYNsiO4ccOYkOaaZMGi8idrJIRJm39VOIgtCcn0
         yJ12XLNc/NAfC85lYK+OfUTCLiUclaUyn21orHb9lXz6WYYiUpc7KdVh0wJ7GbWo8aK/
         HWX1L1a5IhJbM7SX9KfQaw4Y9DDKnZUOKaYwf9JQhcjScyZlCTXDRu86hALI47XQ3lzP
         2gmQiStw/GUrRPY7iHf009I2c5LTuXD83lm94uNNwSW/2jjBWh4PSCLhXw0y+JI8R7La
         q7jw==
X-Forwarded-Encrypted: i=1; AJvYcCWUQKEag2phRXB6pymfSWMqv/5T0YFYVZIL1DADqX/9NxoYbZgbF1LNHjxyHAPQrGM81FwJKn0y0vzq@vger.kernel.org
X-Gm-Message-State: AOJu0YwK5iF36yJTKpyeEFo8zNtZI5YnV6SIrxFK0HgIlZjcnNm/2F5U
	EBrUBRx5h4leGSwxudp6NRWA3KqtmKXL1jj5TDGPeVQvQgz/EBLnPWHc
X-Gm-Gg: ASbGnctEkVBLcGd5Rh4zOeZZ0MeSBn5yUf5p8gHh61Nt0DnJvS0iekXW/PofsNAXihH
	uEhHw1WCQzpFK5lDqrMcXIq6fg93YoJEJxkfWAYonwMr+P99wgh9spZLa6iyeMhdNqCuSBy4Ao8
	hfaP6ATgoS+0oKEzQnUBBEbRneiLAfM0IJwEwxHzukuYAIIC3xcYLlw/4HokRRFAnjGZd/7Q2Dy
	OxNrNsGelUT4RqK3SffOUtTCD95TtrnHbWMVH1S3kQDz4QHE2dQ30MbilK1phXQhfV4YXkgA/ze
	JSO7sr/f5JjnWQR7ejqS2ivWgEVja0VQa/tFRHePJXm8xXyfaF2+3bTnpKVXojPn2M1s3qG4w/2
	5R2VMPBPOot9UrEMAA4uRQWt8aXQXgnO4pGbSYFIaZeyjuutwMN6bG50owchlv/We5ZD3St5Pgn
	VBxSnm
X-Google-Smtp-Source: AGHT+IGrPCS2A1xaxD+NT2pS1Wo5vKnVoemfXFHvdjgwkCSU8FnmDVxqfEdaNGA9zE3GdjsXrVMAjw==
X-Received: by 2002:a05:620a:28cd:b0:82a:930:9cea with SMTP id af79cd13be357-87a3b89132amr197471785a.76.1759453876489;
        Thu, 02 Oct 2025 18:11:16 -0700 (PDT)
Received: from sleek (d-23-244-200-70.nh.cpe.atlanticbb.net. [23.244.200.70])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-877725550e5sm308746785a.22.2025.10.02.18.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 18:11:16 -0700 (PDT)
Date: Thu, 2 Oct 2025 21:11:14 -0400
From: Joshua Milas <josh.milas@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	unicorn_wang@outlook.com, alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com, thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev, josh.milas@gmail.com
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <aN8isoQpdENTrxNJ@sleek>
References: <20250927173619.89768-1-josh.milas@gmail.com>
 <20250927173619.89768-3-josh.milas@gmail.com>
 <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui>

Hi Inochi,

> Small suggestion: please ensure the pinctrl is correct, different
> board may require different configuration.

Is there a certain way to do that? I have been checking it against
the board schematic [1]. It shows that it is using UART0 on the
pins defined in pinctrl-sg2000.h.

Link: https://github.com/milkv-duo/duo-files/blob/main/duo-s/hardware/duo_s_SCH_v1.1.pdf


> I suggest adding all the support devices instead of a minimum one.
> Like ethernet, wifi, bluetooth.
> In the next cycle, there should be a patch for adding USB device node,
> as the driver is already merged. I also hope you can take it.

Lets do it! I tried adding the following but could not get some items working:
* emmc from 'sg2000-milkv-duo-module-01.dtsi'
* sdhci1 from 'sg2000-milkv-duo-module-01.dtsi'
* mdio
* gmac0
* dmac
* saradc
* i2c*
* spi*

I pulled the following logs of interest:

---
...
[    0.647426] faux_driver regulatory: no of_node; not parsing pinctrl DT
...
[    0.732380] serial8250 serial8250: no of_node; not parsing pinctrl DT
...
[    2.418965] sophgo-cv1800-rtc cv1800b-rtc.0.auto: no of_node; not parsing pinctrl DT
[    2.427695] alarmtimer alarmtimer.1.auto: no of_node; not parsing pinctrl DT
...
[    2.441722] sophgo-cv1800-rtc cv1800b-rtc.0.auto: hctosys: unable to read the hardware clock
...
[    2.525580] SPI driver fb_st7789v has no spi_device_id for sitronix,st7789v
...
[    2.555363] faux_driver snd-soc-dummy: no of_node; not parsing pinctrl DT
...
[    2.767235] mmc1: Failed to initialize a non-removable card
...
[    2.900631] dw-apb-uart 4140000.serial: forbid DMA for kernel console
...
[   13.058020] stmmaceth 4070000.ethernet: IRQ eth_wake_irq not found
[   13.086915] stmmaceth 4070000.ethernet: IRQ eth_lpi not found
[   13.096993] stmmaceth 4070000.ethernet: IRQ sfty not found
[   13.105407] stmmaceth 4070000.ethernet: Hash table entries set to unexpected value 0
[   13.115751] stmmaceth 4070000.ethernet: dt configuration failed
[   13.127832] platform 3009800.mdio-mux: deferred probe pending: mdio-mux-mmioreg: failed to register mdio-mux bus /soc/mdio-mux@3009800
[   13.142739] platform 4070000.ethernet: deferred probe pending: (reason unknown)
[   13.152434] platform 4000000.i2c: deferred probe pending: (reason unknown)
[   13.161898] platform 4010000.i2c: deferred probe pending: (reason unknown)
[   13.171078] platform 4020000.i2c: deferred probe pending: (reason unknown)
[   13.180353] platform 4030000.i2c: deferred probe pending: (reason unknown)
[   13.189629] platform 4040000.i2c: deferred probe pending: (reason unknown)
[   13.198817] platform 3020000.gpio: deferred probe pending: gpio-dwapb: Cannot get reset descriptor
[   13.210208] platform 3021000.gpio: deferred probe pending: gpio-dwapb: Cannot get reset descriptor
[   13.221737] platform 3022000.gpio: deferred probe pending: gpio-dwapb: Cannot get reset descriptor
[   13.233111] platform 3023000.gpio: deferred probe pending: gpio-dwapb: Cannot get reset descriptor
[   13.244422] platform 4150000.serial: deferred probe pending: (reason unknown)
[   13.253971] platform 4160000.serial: deferred probe pending: (reason unknown)
[   13.263513] platform 4170000.serial: deferred probe pending: (reason unknown)
[   13.274037] platform 41c0000.serial: deferred probe pending: (reason unknown)
---

I believe I have the correct drivers enabled for everything. I'm figuring there
is some pinctrl configuration ('PIN_ETH_*'?) I have to add to the device tree
but unsure what it would look like.

Thanks for the feedback,
- Joshua Milas

