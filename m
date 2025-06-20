Return-Path: <devicetree+bounces-187718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C292FAE11E8
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 05:48:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2C3357A28A2
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 03:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76B0612F399;
	Fri, 20 Jun 2025 03:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JGApsDrb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF59322E
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 03:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750391322; cv=none; b=nm3C+VIAJt5wsyIGMbe1SQ9Vc5JQIdQHoXxiDTdvQCtsKtNiqyBi1gDJF1zESCz4r1wXxqcu1IGc8JA38lIp/HcRZhViZ5BGWD4wOfQDAEoztsNkfbu/GRbZPtlrjJMtT0ewvXyW2MFwO0nptAWWoy0S1Bt3Jjn7eHeYzv/AKIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750391322; c=relaxed/simple;
	bh=VwrYgiU9qLl9h5RiaQZdlQWFJ3QfhivfwTz0HNGgX18=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=D2EdkxmBdwLJhiyCRD/T3oAqZe6289gIYywZ9KxQXHNsKCyZZ9RCig6fIFpVcWre58qQOoy51gcvJxLvpjMJuC3U2jk7uNESiGmrf8uHAanHazBBAdhAxdKCye6Jz04XIgOISWGtXjE0Mucmev/RbVEE5UlmtdLcdNKZBq49UN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JGApsDrb; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-af6a315b491so1227918a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750391320; x=1750996120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QQes6Cas/O2Il66TXoZhd9SrmsyHWm0zoxLufdtfzV8=;
        b=JGApsDrb1U7qYrGKQXmlA9AlwgcqSv4i0Sa7V8Ue5lMiz/fCNDkMwjjjzhkQWACEFS
         LGDEFJ/WmUc/CSN39T5ZFaWDq9In6YXLJwnVNfg8pUiI12uyyL92O8s0GLveO6wvSo3U
         LCsjhyOUE0h0cokiKgUwofcMeCwzuIVnL5Sf5Rf7Z+BmcETiRjU6x5SyyXULVgDvQFbX
         O2/07yRMyRhnG/i0bg/4+O6sQhJIi2iAOtbOtcB6FIWa1yx7iZsC1JKZFS2dHI/tGAG3
         hXg3cln5o6vm4WzPj1Dt8icZKqhzXmgK4URnu4IGcbO9oKuyC9a+RSUFTEaRxvoe/fir
         9ixw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750391320; x=1750996120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QQes6Cas/O2Il66TXoZhd9SrmsyHWm0zoxLufdtfzV8=;
        b=QzL4XvfeE+BwdAWPphen7jqxvjV+664S+VachVbriYXIRqBPtb0UvTDham7AttgXMH
         glCQIo922rtEwB2wdplww4cCnJHhybnAfYQogSzfsyxWCvaB2LpwXlsczGYGH/WyfUm1
         y56zngYF8PAwK+pfWfrYMQDk3V6dvHkbOcwmUsf/bjBrzlBGNdqgbqFwOHC4CTYjE7zy
         /5ch1oiLNqUUtmu7QGLibHzoB9DlRAW2GFUdeoSD4nZbIGIM+vWP9xFN6Kuw/AQdqEzm
         jOHA3oG9ubZezqW9oRDHcvkvx7Va41jE+Tba2S8P7t3T//edyIjiIlxUE05vA1gJoxGu
         7hAw==
X-Forwarded-Encrypted: i=1; AJvYcCV2ECGn6h/ua6nCoI4C+36XqpaZg28XCvxZsLNtscYkHVK7ollnyC21e2V8MooTyd2Xx4s8GTLniY/4@vger.kernel.org
X-Gm-Message-State: AOJu0YyLbSEwzSHpqLepFBBGJMJ6aeXRuCEVRKOWuf/Vw7KImWHbYXhA
	FVSlM3UYZBgLDsqnfXvU3d4vn7hSzg2hBnxW6QXJBSURluNzo/Y8rJ6Hey8vZEgP
X-Gm-Gg: ASbGnctWO+TmAg1FOFF2nXUmFPm8vnMsArraHD0GzHCxJ4V/IeztlBNFp1We6uoseRB
	WS1Ud5zVeK57asnxOkCMQka+jHllUEY6qa8r9omO8bpdxOGthbbMS/d0JI76Ye0IgfgkhGGdSw4
	UBsiJOOnaFHvIzhQD+3yG/kDqkpNJ8jRSriuzae8QEe7K0P9rrqJXPwEIc/U+wBgXTt2EqRX5lF
	IuBDGU9h1UI4pqbBdnnoy05bQDyf2iUJo2oRnC/MaJWcpNkoK+Fj7HNtXYaZ8D7/OkG3dtmpAGg
	yZNxYxdnSRmDOWi/yKCJcP+QdpNMe9yJTl1vnJxkRhmIhhvN5CPAqI8ZVv6VC2xD4w9vMnofzve
	ts9wrOEbBCxhfV3G9MZC/nteskdJ/qwymg4PksCH5
X-Google-Smtp-Source: AGHT+IFqygRUTa0qJH/jbI08TI3HUb3mAZh2qKl49pKcYEj8JLf7VIlo3CRV1/wH5tEEYbYFsSXvlg==
X-Received: by 2002:a17:903:22d2:b0:234:d7b2:2abd with SMTP id d9443c01a7336-237d991fa85mr18639095ad.19.1750391320103;
        Thu, 19 Jun 2025 20:48:40 -0700 (PDT)
Received: from lcwang-Precision-3630-Tower.. (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d861061dsm6935075ad.118.2025.06.19.20.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 20:48:39 -0700 (PDT)
From: lcwang <zaq14760@gmail.com>
X-Google-Original-From: lcwang <lcwang@ieiworld.com>
To: zaq14760@gmail.com,
	Conor Dooley <conor@kernel.org>
Cc: cip-dev@lists.cip-project.org,
	drm@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	noralf@tronnes.org,
	robh+dt@kernel.org,
	krzk@kernel.org,
	onlywig@gmail.com
Subject: Re: [PATCH 3/3] dt-bindings: display: Add MAYQUEEN PIXPAPER e-ink panel
Date: Fri, 20 Jun 2025 11:48:33 +0800
Message-Id: <20250620034834.734926-1-lcwang@ieiworld.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619-earlobe-skiing-25605816a861@spud>
References: <20250619-earlobe-skiing-25605816a861@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: LiangCheng Wang <zaq14760@gmail.com>

On Thu, Jun 19, 2025 at 16:43:46PM +0100, Conor Dooley wrote:
> > spi-max-frequency:
> >   default: 1000000
> >   description: Maximum SPI clock frequency in Hz.
> 
> Does this actually not have a max?
> The display surely has a maximum supported frequency, which might be
> lowered based on the board it is connected to.

On Wed, Jun 18, 2025 at 08:13:38AM +0200, Krzysztof Kozlowski wrote:
> Don't send multiple patches but version them correctly.
> 
> > title: MAYQUEEN PIXPAPER e-ink display panel
> 
> Don't capitalize all letters. Mayqueen Pixpaper or whatever it is really called.
> 
> > description: |
> 
> Do not need '|' unless you need to preserve formatting.
> 
> > reg:
> >   maxItems: 1
> >   description: SPI chip select number for the device.
> 
> Drop description
> [similarly for spi-max-frequency, reset-gpios, busy-gpios, dc-gpios]
> 
> > additionalProperties: false
> 
> unevaluatedProperties instead

Hi Conor, Krzysztof,

Thanks for your detailed reviews!

To Conor:
Regarding the spi-max-frequency property,
you’re correct that the display has a maximum supported SPI clock frequency.
The provided datasheet for the Pixpaper controller does not explicitly specify this value,
but I’ve tested the panel on the RZ/V2H platform and found 1000000 Hz (1 MHz)
to be the most stable operating frequency.
The current binding’s default of 1 MHz reflects this tested configuration.
To ensure clarity and prevent misconfiguration,
I will update the binding to define a maximum: 1000000 constraint for spi-max-frequency in the YAML schema,
pending further datasheet confirmation

To Krzysztof:
I'll make the following changes to the device tree bindings:
- Update the title to "Mayqueen Pixpaper e-ink display panel".
- Remove the '|' from the description.
- Drop redundant descriptions for reg, spi-max-frequency, reset-gpios, 
  busy-gpios, and dc-gpios.
- Replace `additionalProperties: false` with `unevaluatedProperties: false`.

Best regards,
LiangCheng Wang

