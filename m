Return-Path: <devicetree+bounces-207859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E583B3104B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:26:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5AEE17A846B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 07:25:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36E172E889F;
	Fri, 22 Aug 2025 07:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="zNVQzzFn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBB8274B5C
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 07:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755847591; cv=none; b=d5jYpZIwU9FqN8wpLh3nerjCHzadA+atb1VH8sYJCEBMrIBeNFY0JF8wuvF3uoKjBdUMLABxEs0cCW1MOEmeOiT4qYEDx6U9EGAE45wUeubaGePTRP3ZQw/KRmhGh+63+fqqjCb6SbUqMQelrU0eWTaL5wF9OP6SxELs63oBVN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755847591; c=relaxed/simple;
	bh=0cIVGZsKog3LpWjaV7XG6J5KkdzzL27b/J6vLZIoci4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=guztTGxUUXBEaWeOYxFH5Hro2GMTV8e32kGR397xHy5Htr/5WypULExMwFVGDsC6Krz6+3uz0UnxWOv7E5kcPmy21BSfjgn9QDh7oSQ+28VaFp4XfK+dBLdCb1tuNvn9Gs1b/x/XHaMbrdcmKHZX9y+hI98t0yD4HN7lSZXr6p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=zNVQzzFn; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45a1b00e4a1so14674485e9.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 00:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755847587; x=1756452387; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lK3kj6aT+uG8TNpObwIxTe+g6r92LKlTq+gjwtDBVRk=;
        b=zNVQzzFnw6Ir2uWiC0VDKKumRfmUWCmeEV31QGKcZ2nzBt4CI97D5zdXjcrOEHjS0h
         xZ5yZWK9gnuuNPd9PEZnUUIOmLC2Cd0dVUKsXitGDOU0lNvynkUexFOGtCqQ/vp/lxgI
         HbJZvVDtCaK08BhzMB9rjzNbbgGrbAQoHarWOfCMLk4JiZS7sxhxcApcag6oUH3r4HZd
         etubO1LL0MaWgki/QT5hQ6EPCP26zR1TW/tBrwLXBEfcnJrhr+UbT912a4ITqoNKLGHf
         eGfp+KVlD9n5veE5OCs3CS23rYqicCrXT4TGgTN+ki5KCoQnhM1/r6/DbYRyXNxyM9D0
         axsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755847587; x=1756452387;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lK3kj6aT+uG8TNpObwIxTe+g6r92LKlTq+gjwtDBVRk=;
        b=wIo524KcSgeybzm/cKiklVrR1fcO0/PJIg+IMH+1xvS3bB2x1b8rKoDMsFWnsRtPZ2
         X0MzRQexhTA9jJekBc6Q5qZIxHrSJguQlqLp+PQkfqtX7i+JdfzzXbkEYNbSAP4UYEJW
         X19QmDCGryAUj1Q39D47fZnq02yuwk7DHqgnOLHmwjIKHHJ0GHXcXe/tzU/fj3y+u1At
         lkL5TWECrBIYDOWw2OCvUgPckg9iLS9R88Z6pR0mD66N4UWZ4WpKSe3YgXtYo8CHenZ2
         eLe0QEd6YUKh6zixSWj+Xo3HmFaNiPD4xfzVIk01ElsmjY6T1bypThRNZd8Pjfe2cRxw
         vskQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGiCJxKgYVVZ+Jab2C0VJG0oWAFQUeea/Ho1hjlvdo18g0TPo6VycM9XDPcvp01QPG/wo2I0AoX/iM@vger.kernel.org
X-Gm-Message-State: AOJu0YwCMQCDYMXZtY/86y67AY92KNTlwyldcMHAt1xPuAJpqD+6Z+pP
	UMYJGsMj/mt5hGFmUsLrDRmFjqJKbxv/B8xNqBAbl2D2aQbkvRy3Mooh9or3N0OlPnw=
X-Gm-Gg: ASbGnctc51y0x/+YtO+BtYUNCsoVauSLX/yYDIJRIlpRsGdsAxoucBY0g8NjwRfzd5n
	50TSSIpk6Erd7cWkr8uVf2JURxi5jO4pW/nogqFdjcpCtcmE+BDknxs4BoCJnzzwcpPaFa2cEIL
	m74W80zWkKKgIvHECucyeOtmZ0YLDT8IlygM6CY89LLtTMizeq27fDVva5YdcJo/siX3C3sszNO
	7cg3pTXqzLMH36tWbd/fCwE4Ml2/qXYvu/zFJ6ofYVhMdPNr2OsSP6r9FANJCtSrv4ydIkP9D8z
	ssMsTCx7Q4AIUoFgCeQ3dxGiBFxIl7z2eiPwkVTNDwiIPARgb/6ISruRk1+qXsRNHO7+tPdVS1m
	bVeZ0xhjrOW+ioL7E+2AAPKidCd2eailBLOVfctOFQLKmttDFKC1wLSKi8yVe0e0AVpEoyQiVh4
	lVxQUK3w==
X-Google-Smtp-Source: AGHT+IHDuHRP55niLwTskQO1m/b/5ctH5UZu5kjoy3BiQ8RvkZmMD4Fr6kF/PognPgs2X/R938TpUw==
X-Received: by 2002:a05:600c:1c28:b0:459:d780:3604 with SMTP id 5b1f17b1804b1-45b51798fb1mr14095255e9.3.1755847586840;
        Fri, 22 Aug 2025 00:26:26 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b50e2f0adsm25076255e9.13.2025.08.22.00.26.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 00:26:26 -0700 (PDT)
Date: Fri, 22 Aug 2025 08:26:24 +0100
From: Daniel Thompson <daniel@riscstar.com>
To: maudspierings@gocontroll.com
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, dri-devel@lists.freedesktop.org,
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: backlight: Add max25014 bindings
Message-ID: <aKgboFjwjtZsanWb@aspen.lan>
References: <20250819-max25014-v2-0-5fd7aeb141ea@gocontroll.com>
 <20250819-max25014-v2-1-5fd7aeb141ea@gocontroll.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250819-max25014-v2-1-5fd7aeb141ea@gocontroll.com>

On Tue, Aug 19, 2025 at 12:58:59PM +0200, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
>
> The Maxim MAX25014 is a 4-channel automotive grade backlight driver IC
> with intgrated boost controller.
>
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>
> ---
>  .../bindings/leds/backlight/maxim,max25014.yaml    | 79 ++++++++++++++++++++++
>  MAINTAINERS                                        |  5 ++
>  2 files changed, 84 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/leds/backlight/maxim,max25014.yaml b/Documentation/devicetree/bindings/leds/backlight/maxim,max25014.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..30b591152fa31d5e43243cac44c72028b05b5f8a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/backlight/maxim,max25014.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/backlight/maxim,max25014.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Maxim max25014 backlight controller
> +
> +maintainers:
> +  - Maud Spierings <maudspierings@gocontroll.com>
> +
> +allOf:
> +  - $ref: common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - maxim,max25014
> +
> +  reg:
> +    maxItems: 1
> +
> +  enable-gpios:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1

Is the interrupt useful for anything?

AFAIK its perfectly OK for DT bindings to describe hardware features the
driver does not use... but is the driver missing out on error reporting
(for example) by not using this interrupt for anything?


Daniel.

