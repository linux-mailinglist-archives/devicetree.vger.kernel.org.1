Return-Path: <devicetree+bounces-33163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8098832750
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:08:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 813B3285717
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 10:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 045DD3D0D2;
	Fri, 19 Jan 2024 10:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nxvPX3Om"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322503CF66
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 10:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705658835; cv=none; b=Y+qUso1Suoy3J1e6exhaMfTpsEMvZ7x7onOTX4atwFyBkjgaKvZyR918W7FIXDrxEsUbcE5VeCXe6hwDvAsRn0Ed206aFhv4qrI8DgtxAtra3ieBbmZLiR9xC6+6Lw7BYdIg7iwYVmT+C3yLWRhP4pDNPY1XyDXCp+baY/XUAL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705658835; c=relaxed/simple;
	bh=zLXtu6szFeWljVZSoUilDAfrFCs1+Io7uRaQKIIJn+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q9YwPUw+vblarBQqCn2nr3wlR8ko+e7KK5JwM1Vbc0b4YCzqsWoYCBa+2bgM7qiizoC9/eJT1pP4/eNblpVuIAuHBOlJZ5d+Ci/WBupOc4XU/voIUqTmADOMpXyqZtAG39/UzC2xPMmIqqRT1ZjflrccehFmPp0OCX9Ld9PgBzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nxvPX3Om; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40ea084ec14so549135e9.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 02:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705658831; x=1706263631; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zLXtu6szFeWljVZSoUilDAfrFCs1+Io7uRaQKIIJn+c=;
        b=nxvPX3Om+xaLq70JPCHvi8At6AFleuldoQDRnSExDfQqaOOrHXaEkwAYHTIBaRbneL
         QN154fd/3Ua02TZlc6YZj37C/v/+sc1uxwYltjfsqFUqfAL6KuMdsZ+gSasPlmAjvfQO
         SHXrJUa0sRgZrRkyb4XDOMb1fnOzXuoniWeM05qtaXzI2TUkkt0q2fSP3N7joHLOw45t
         vc7fY1qdnxJv9Ak7QrQd6WaCXk0ROM7mpER0T9wCxJt3xbVykmQXpAdZS88Ot8KAGm+d
         vyWJJ5sZHDHSlG6odU0TPWaXNU+cAEiz983Thw8KP3khUCY6yRa/TSRRVbHOHUiGvuH1
         +qoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705658831; x=1706263631;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zLXtu6szFeWljVZSoUilDAfrFCs1+Io7uRaQKIIJn+c=;
        b=ZFfsyJzkML3Tp9tLr1qNeIDg9o69RZsHgnP6jHa+UKLPHZ4xR+cH907PT205nlmgeQ
         J+N+iku9h3x5yZ/WXiMkgZKOjQ/NmaBGzQy6A2F+B0dqVOnoo0tTtcPSVGGXk3SEirEG
         FlOga0CeXni8CtRI1YLq8v3Y5uylIYvcAHrtAEZv07TpabJ/6t6dapN86exDV9VjKsK3
         OLxyvb+SDUP7OrOiqDvFRaxsiasH7XUsgr1of0ra950tOMcnrw+aAi1u8LGyRbgUF6Oj
         DY+VKPqoemcFT1XIenUP7BQEMFHurfAAJ6/68sn9dsQucUoEe/qmLweHf/LW/5wEgB+3
         2XJA==
X-Gm-Message-State: AOJu0Yx5RwD1s8sXJKnrtpNp4aozFq3osQzKhCl0DIQQ14wp8lf/uzN9
	Wi+90NEW1K7FDWNyxaW/0/aISKA0W1ttY+m7MawLJWsobAyZuqfaSqvwu3Fe2zI=
X-Google-Smtp-Source: AGHT+IF8++eqimkhaOkxMirehfcF2AeHDfKJiw3+NZuqF110PBm1nBFe26FRDTwpJUXDtN6ZBmLrbg==
X-Received: by 2002:a05:600c:2114:b0:40e:3b47:eb71 with SMTP id u20-20020a05600c211400b0040e3b47eb71mr1469467wml.73.1705658831414;
        Fri, 19 Jan 2024 02:07:11 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id r20-20020a05600c35d400b0040d8eca092esm32535456wmq.47.2024.01.19.02.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 02:07:11 -0800 (PST)
Date: Fri, 19 Jan 2024 10:07:09 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Karel Balej <balejk@matfyz.cz>,
	~postmarketos/upstreaming@lists.sr.ht,
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v2 2/2] backlight: Add Kinetic KTD2801 driver
Message-ID: <20240119100709.GB100705@aspen.lan>
References: <20240118-ktd2801-v2-0-425cf32e0769@skole.hr>
 <20240118-ktd2801-v2-2-425cf32e0769@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240118-ktd2801-v2-2-425cf32e0769@skole.hr>

On Thu, Jan 18, 2024 at 06:32:39PM +0100, Duje Mihanović wrote:
> Add driver for the Kinetic KTD2801 backlight driver.
>
> Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>
>
> ---
> Shared ExpressWire handling code and preemption watchdogs haven't been
> implemented in this version as my questions regarding these two weren't
> answered.
> ---

The last mail I saw on this topic was of the "do you have any better
ideas?" variety. I (mis)read that as "unless you have any
better ideas" and didn't realize you were waiting for anything.

I didn't have any better ideas!



Daniel.

