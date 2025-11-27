Return-Path: <devicetree+bounces-242600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 37401C8CF6F
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 07:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A879534EA61
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 06:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6214729BD87;
	Thu, 27 Nov 2025 06:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="muwCIpyy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF49284670
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 06:53:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764226395; cv=none; b=Z1CwpsouckHcF+zz1zOETC7lrlYRBg5neP2s7OpkANJMbLrH1FQnrDalgIt/eLGuCmf3G9ygO3PCZjOP4PxRHZYaebtgXXeoZNDInmpmDhvrRjSKhgCjlcAU2Ja1B7PRLv7yyu/yicAUyOzN7yv/kv5hJH8XnDrx3usI5xZQoJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764226395; c=relaxed/simple;
	bh=Bn4vWyXCm+u3LbjVg0e53Zz42uN/Uk1FceeEYna6WlA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EB1DmjC1cD5W5XQF3f3YVqoI0oZ24dfXC6uImozAQ8dgurgkCGIObUq1kQ4f0ul0viMx+1Sa0ueh/FhJdPxC7u5wB4VuSQ7pe6A0tHmRTe9T4+d6fTkrv5a4NzCAmKk5v3vbohttzYeruK3vKdDiORgEnsvujcRel5xtZ9K2/1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=muwCIpyy; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7b9387df58cso871821b3a.3
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 22:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764226393; x=1764831193; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tIm0qhUSQJPA8+i7JRVoDjMxtkUuF0ITyjHKbEh3ZwI=;
        b=muwCIpyyBlp6P5M1OVvmcQJXPYRxPmR8sSyXs33gYfhxE1l60ulWUPgVNW4xSdw/cc
         IYjT5HW5hdzIZPhJl2OB6gf67uS7vIPUFpC1OhAVwRLFTa9ZnKtRvpmDgi4FvRI2Sz+z
         08RNCgIZVmK/1QQOvRtsG/28XpNKhk12mJLnMDq/QPXE8xOPzLucIfvNIwn1yHXjBfub
         Vw1sjIcJneGpQjMxcBUXmXAvtg7U6JBO6uLr6IJ5h05R5ZmTZ78Q9QecT4C5QWC7/yYB
         KYHJmzdTBP1Gt2Jt6G9anoEBF06CN0SjON8VZfyX+NMLOdL+PocqmxFqkrdiagoVZ0gM
         d1xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764226393; x=1764831193;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tIm0qhUSQJPA8+i7JRVoDjMxtkUuF0ITyjHKbEh3ZwI=;
        b=DOuaEyiDXRkGV0El5Vl4UmLod8CBL1uqt88MZso5jVArQx6JnGnPwYr+PicQkHwyXd
         uU6ea8PsD9RkikFK/N6HZBCNfqmzIgNurZQu5QsYcAx5yM61ghwwr5lMIAbtG7OEoEkr
         tjOWDenFtih1C2fe7kymNUtRxEKBqlLBCoNkXmYYTYwH4oCKmIGcznkoAiMrJ487GwVF
         +Tsb6dEMxc5ooh5Op5QD3akzRu7xppwaFy06Rr1JEZSxupbkT6i//12TwhNGlAPcaifm
         CKRAT50u2Fdu0n7xxPfRTuSK/7xG0t2mmMhC8eZSCmotl0T1bKv5omFhEgKYFz6p9Jvo
         C8jA==
X-Forwarded-Encrypted: i=1; AJvYcCXLdH2bklBJ7VjL14L/nyDMEezIF4NmJy+NcZSxMDFOc8HnoF9DygwnXlH1m2s/+KRReOnjPK9yL/Lf@vger.kernel.org
X-Gm-Message-State: AOJu0YzdJqisGSRAqk3i2VGcRsbNe2zOSH5fRnwpPOm/u8miPPSviC/I
	7V3QWxW0crziddUADeJAtxaKRJqviOCPU+XMH0lbQ7c2iWll66OuvlN3
X-Gm-Gg: ASbGnct3AtsT3OhEDeA+wu8kaPTZPaAH8qSrC0nU9V/1zuncpAjQeVG77fCJdivTFNk
	woJ6YQBYI2E0HO4nbopReywVdC1WnEoJfn+CRWoH/BvFRedL9DOBIydwaMgh1k/DA2VLz0jFGcQ
	NcpLnUx7oE97hCK6HBPalPawtZxuJRyYZ4cvzDvZvEzoCk0KJV8+l6QATXBahzOXnYUWvxWCCgy
	HXQRnb9HBKXX6Js0yIi2d0TytQxYW7SLpitzfIuEdZOVQZ0DqO9jowBAaITlpsAJ0ZBHzNIOZf6
	fB5IHd74GLgC9B7wUQ+KskdbZ248K5z2QEg+tr+TUV1npysD7AB+Mz+Eh5XlqLz1HRI2jeH89q/
	ptTUMtHH+XFPzuxxlC9QmCudyKA4au9xyIctq8qoktI1eOxg0j9Bhw2dgXP+AGW59c9CakBm7mv
	uYhlNTMoxTaw==
X-Google-Smtp-Source: AGHT+IFxjfjFGi0PvEP/u61Bpv2hr8HsmsxEwlN0jZ/EvMgNsPa1VIJ0a+6QbWVLIFVefWx5VjPgfg==
X-Received: by 2002:a05:7022:a8e:b0:119:e56b:c75a with SMTP id a92af1059eb24-11cb6835484mr6656832c88.31.1764226392879;
        Wed, 26 Nov 2025 22:53:12 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11dcae73bedsm3208764c88.0.2025.11.26.22.53.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Nov 2025 22:53:12 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: "Anton D. Stavinskii" <stavinsky@gmail.com>
Cc: Inochi Amaoto <inochiama@gmail.com>,
	alex@ghiti.fr,
	alexander.sverdlin@gmail.com,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@gentoo.org,
	huangze@whut.edu.cn,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	looong.bin@gmail.com,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh@kernel.org,
	sophgo@lists.linux.dev,
	thomas.bonnefille@bootlin.com,
	unicorn_wang@outlook.com,
	yu.yuan@sjtu.edu.cn
Subject: Re: [PATCH] riscv: dts: sophgo: cv180x: fix USB dwc2 FIFO sizes
Date: Thu, 27 Nov 2025 14:52:29 +0800
Message-ID: <176422633734.834799.16302142544416130381.b4-ty@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251126172115.1894190-2-stavinsky@gmail.com>
References: <20250611082452.1218817-4-inochiama@gmail.com> <20251126172115.1894190-2-stavinsky@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Wed, 26 Nov 2025 21:21:16 +0400, Anton D. Stavinskii wrote:
> I've tested the current dwc2 FIFO configuration and found that USB
> device mode breaks in ECM mode when transmitting frames larger than
> 128 bytes. For example, large ICMP packets or iperf3 traffic cause
> the USB link to hang and eventually disconnect without any messages in
> dmesg.
> 
> After switching to more conservative FIFO sizes, ECM becomes stable
> and no longer drops the connection. iperf3 now shows ~130 Mbit/s RX
> and ~100 Mbit/s TX on SG2002 (MilkV Duo 256M).
> 
> [...]

Applied to dt/riscv, thanks!

[1/1] riscv: dts: sophgo: cv180x: fix USB dwc2 FIFO sizes
      https://github.com/sophgo/linux/commit/1d3ed9920a193e5d99d651d6ec1dbbe215ca172f

Thanks,
Inochi


