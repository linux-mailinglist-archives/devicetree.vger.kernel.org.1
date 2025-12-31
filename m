Return-Path: <devicetree+bounces-250873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4DBCECAD0
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 00:41:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2A03F3000B2D
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 23:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3C0530F94D;
	Wed, 31 Dec 2025 23:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nhNLG7KN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7D430F946
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 23:41:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767224482; cv=none; b=GYuhTx4lo+jM0oB656dq/vvopdWOfPsMcKzuJ/5XAIP7z25mxRS3whrnqJjBO7S38J0qe2fiIUo9GPDsaiG6DMtmrhv1r+SAsBA4EUmZzlA2tBsTaZgkLKHZ9Iw817HA7+hyX9fesRQLPYAR5TPsyeIjbFYmXz+vbC6f2OWAmxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767224482; c=relaxed/simple;
	bh=BWy1gXyOOWYNnYUBz6Zo1eDM/lnD8SOnC63pK454g8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m/lyR2Xzbj4CZxFXCA/XPAU2wXmaGvOgwQKKbIVxPvqyA2hXqbsXtZA5Fz3qWIVfXcooNmkKu8rHjH4Wb1+v+NaL6bQhFwEDAG/8YLRGiIhnnPYC/28f4oy383tzpFn2kdBRho+nrB/mVIA6ZjjV9vjuv77Nsj5Cq4REcMdKj+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nhNLG7KN; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7b75e366866so4972955b3a.2
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 15:41:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767224480; x=1767829280; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BWy1gXyOOWYNnYUBz6Zo1eDM/lnD8SOnC63pK454g8g=;
        b=nhNLG7KNf8ryHZsDsjazvvhjhrSK2fojkHdAZerUfZYxrEdshByrXlaaZ0AAGSAOvj
         oyESHjwZyipucGgaPE5q8fB0tUUZ29ov3ckVz6lpP5OTDFl5VF15FDlsoj7LI6bUNPrx
         VjY2oYxtJnPvmqkRi6/J0YiZn3nqwfqKrORxgdbxEIROWOou10nv5D4UJal9vxHckzSH
         2p+UR4KApM6J2n82Wlvb5m2G4LzYgLHQ/wr1Ftbef6s9xYyFKeJFp0d6VTTJzyT1UZsP
         2fOI8rbvlObGGgn1EutaEfAdjR5Hn++6FI9TXQDdpfEBXDg5E3l3qX30lsVt8V9I7pHr
         jguQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767224480; x=1767829280;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BWy1gXyOOWYNnYUBz6Zo1eDM/lnD8SOnC63pK454g8g=;
        b=HV2o2WJH9qr4GjBWGOM7tH9ONhM3s0rQchVxSiC0Ky50xTPPIvnD86zMdILsSjEdeC
         vtuw7/CUCkXqb6XKD9Xgox4TKAxydaypILD6MtBUduLLMQZzrIgWd/FDMiB5zgEItOFv
         V3aY7Nm3jPQ53Qozq/Zdgt3y9rMX0nofcvf8Dn8T6/0luc3za5M1NhqbV/pFaxSgHOQq
         9jPa9OvRxAuBwfxz7NKmNFcuoJto78TLCrBqrhOyWg0ac5UtOLTvARLIsO9WwgCu9uje
         jsvtZO32d5LViHenGM31epDlTxm6TJfAEhC28dx2YIGIQD32EsoGm00aDYzxadMMDKh1
         BMjg==
X-Forwarded-Encrypted: i=1; AJvYcCXXjLAXIbKGZ6G3r2e/ZAsLxxJ/j9Z4yP87T+CHQdOpDSuhjIWraDHFgrdyG8Q8jT8Bb7B49NPWmDfz@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn7zEo8ReRi40hzxJDKzMfCGoc1N/gBCrrjrU8v8zqDNGYaYgY
	DaIHpOs4AxEWm+mOn3SugXrTq3mXuIMCQIwqCAv7nGy+bG78KAmEJan1
X-Gm-Gg: AY/fxX4rsPxJWTJnQQoKJGtCeEDrediN840Luide5AIQ2A/lssGCdBolW4CT5LWU2VX
	tlC3nlKK1JrYb5ia+XPR7JebX3oU+NaXh4wWYNRs97zXT5u5S9raBDX5Z+9szVMBIcXQNRDrJZ1
	4eQmzv2Yo6SBpDv35eZgh/XnX0zXseeBRi8Eb1MXzFieZsFvcFBdt220WFLsVQ92RSB1VEUpWPZ
	eDsEa84MRo7lr4HFrxVhtxBJo1VXsKmbpE8N83FLNMYs7xCPh7mb+KhAbHX8GxZSy3ZZtdYhiu7
	/zNjfdIZUbMmkRwVgvDUuPuaOGMv3YR6TdILuLqASXWsVLtiTlljBxoh0LZzl1CWKcInJ9dYDu9
	/rcaLVWOlCifhMlGWZapdC6WH1fvTj0L/nOYwEqTXzBgrfgUmEStLTjsjAr6zC2lKWUwTE8/5dM
	/6E54AJfj3rjoAkSVLEcR74+M3
X-Google-Smtp-Source: AGHT+IHdS1XCFIF/s+R2MzEjCr3KsXQm81WSnRd7sNkVOMb7Y4hp3EFixXPpBvYYArS7H/0Gwn6dbQ==
X-Received: by 2002:a05:7022:3b8d:b0:119:e55a:9bfa with SMTP id a92af1059eb24-121722b46d6mr35420452c88.22.1767224480383;
        Wed, 31 Dec 2025 15:41:20 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217253c058sm143562327c88.11.2025.12.31.15.41.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 15:41:19 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 31 Dec 2025 15:41:18 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Nandor Han <nandor.han@gehealthcare.com>
Cc: wim@linux-watchdog.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] watchdog: imx2_wdt: Allow to continue in low power
 mode
Message-ID: <ee2771f2-539d-4bb2-adc1-663e39488148@roeck-us.net>
References: <20251229145000.421426-1-nandor.han@gehealthcare.com>
 <20251229145000.421426-2-nandor.han@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251229145000.421426-2-nandor.han@gehealthcare.com>

On Mon, Dec 29, 2025 at 04:49:59PM +0200, Nandor Han wrote:
> By default, the driver suspends the watchdog in low power modes (STOP
> and DOZE). In some situations this is not desired.

Following up on Krzysztof's comment to the devicetree patch:
Assuming the watchdog is in low power mode while the system is
suspended, it is all but impossible to imagine what those situations
might be. A reset by watchdog after the system is suspended simply
does not make sense. A system which must not go into suspend mode
must not be permitted to go into suspend mode to start with, or in
other words suspend mode must not be enabled to start with on such
systems.

Guenter

