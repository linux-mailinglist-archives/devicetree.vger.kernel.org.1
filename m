Return-Path: <devicetree+bounces-251433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AE6CF2E24
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:59:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 856C230245C2
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:55:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5226D2D6E73;
	Mon,  5 Jan 2026 09:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="akG68zoo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D7D314B93
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767606908; cv=none; b=QaV0squKTRq1WhVuAd9ZLV3qPcx+EZwKBJNT7sjIiYPs4QFe83liBMIV4Ep3BDXgghrdJ4y5c75gMIsxI4wg2H1c0xZXsK5070jY65zvid+K3j3ufeQv1xURWWKR9d9/X8jJxEiSqnXmDALVtp8wXVmY+bju/tH6ILnduHXSbog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767606908; c=relaxed/simple;
	bh=6HoC5B1ekt0sL7loIBZy8fGIO8xpT7YLxuo/MRO5H70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XoSZ+fW2yaTVa2Y5yKNkr6+bo1LjcmkdK1RfVU3JVd2MiGwTf9OIwZVaBbKGI9HRZLMv09e+C+Z837m+CD3vNryYkcD+qu6FDWUIZiYa6ZrOx5W41DDH+9gp0amMwR0jz2UWlXldiwVnM9ikg5wroSWiYfh+Qy4yvWCf5m7jCUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=akG68zoo; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477bf34f5f5so103549415e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767606903; x=1768211703; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8EEV3Yajgow2Le02Xox/uVz7KgADcHkRJO8r3JoHZTc=;
        b=akG68zoozxjQ3b0JhmiR3iSEikMHAgtq4KK/Lc/49V0Zr0cF5q/S2NYqsCsBPSwo7O
         9iPiVTJQs6iI6eMzlEOvFlpvMD3XK6uYjpaSvBpq+eOTZ3UlDK/W2hzQkTQvksIDeA+L
         p4Wals4wzn1GfbLz/mU9gvBGvikPFfAvyl6pEeaxvns40WtJxkXYxoN3ACQy1VVm/MVn
         TzTYQygnhWGKHKLyvfqw0ACySBwqmx/Cs3Fr10/dSSdbX1m0YjCdWouqPEzF0W3Sb/Nl
         qBSR9V3jMUnAYM/I+ZvNK4Hx0igLZXTJYjtHJ+ad9dN2jd3/1rbjKGq0mUSoCC9g/+kA
         TM+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767606903; x=1768211703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8EEV3Yajgow2Le02Xox/uVz7KgADcHkRJO8r3JoHZTc=;
        b=qmuzcU2OMryxXL/MnKuueY8uY+WF5tQdPEfflb6dJCUyOhoIxYGV4Lw0Ac97fPxbHA
         RdslRXMDUw1CMMkfFFXC10dpbFyHBIoLYzTesimr/coFhh8vu6qFOb0zM0CM5ktYp0wH
         9pmleOJ3azVbZEd0JvQ+NZFb9+UFhgxoH3x7lPAI7zuPM/NOqAlR4Xnwrs/hHh7jvXRU
         g/4Q2Jg55OwnR7HQrxwW8e5er7H+H4rupz3FHa4BRD019f45zUNJcWD9vCQvjU6XbD3V
         jWHABdomybxmpK2d+4msmxzew4b7BqHUPLFxuipSm/d4fU4xDAsSpahA7wUgR1Ryx7n9
         aLaA==
X-Forwarded-Encrypted: i=1; AJvYcCUHB2jd/Jy0m1UPDFleYQGpR0SSRWRZPfc3nfKx9NnI82VdsZkOVXd8FEvlHFA5O1FhTHR1tcQKa5Md@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6w8zvHmSvcJTSnNyIWGvXNOzGp2oIRYWUYGnqMmVWQ+fjJQgx
	ogYMu6CR4jAFrBoAlHO+SK7zVPT8hoHz9SSD2zQR+lkXoXdjaYM9cS+kXcBv5d4I3j4=
X-Gm-Gg: AY/fxX61EKhk3DSUjCIjPOyGru67WY6KfpD4mDTzvxxHS7PSAy+sq8EhG+9PfSJgAjI
	5rSqClHX+sIKn5txDpMFOj3wwVKPWunlNSQIK2InH1Ig5ZTKAKj7e4n++1x9feX+gLwNIdqEOXW
	bRVDKlOmONKanbPV/PO37OuHO8GuPN2APftAwLwtsT5GmvntY8MQLiuTLtxrAC4js9F1CRjnPE6
	/bYFiDbYqkS7SjoFtnzTWLY7HvOpaz/BOkVYPbMIxaYXZ7YDlOfLNbpdOGB3hg1JrJAP8Ggi3nF
	riZimWlTMzu9uAmIbWapKJQ8qr1YxFDDWlkXmKqqXJPKgKSKSX5qH1lUhIHTozQCqLaTpoquNu0
	6x3piEJV5271asEkAhNlIEzUQYQ9R+rDoOAA8dEL3SC0agX1C2onUDd7i0PLlNn2RL7MItFUVA7
	sAzDaL1icgSHsNkE7tzx1Jm07G/eJEgkTcHXBI6udjUym4xsnssgTdzoIIevN7hHpK5YcDdQehy
	eqh3I9zZ30sGeaEYp0brqRZoyj5sc+bauyJ2al9zNHYKxyMJbb7g8/Ddgtc4z7Y7jFBjBUE
X-Google-Smtp-Source: AGHT+IEDntn78ZAZ+9BLk0OP0TDSrFfpGHytu7a8eXwL+wuSz/sJ8bMiyLl9n++coQm1Y605Eud1ag==
X-Received: by 2002:a05:600c:4446:b0:475:e007:bae0 with SMTP id 5b1f17b1804b1-47d1956f896mr636890455e9.16.1767606903267;
        Mon, 05 Jan 2026 01:55:03 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d6be5e2eesm55247805e9.5.2026.01.05.01.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:55:02 -0800 (PST)
Date: Mon, 5 Jan 2026 09:55:00 +0000
From: Daniel Thompson <daniel@riscstar.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: lee@kernel.org, danielt@kernel.org, jingoohan1@gmail.com, deller@gmx.de,
	pavel@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: backlight: gpio-backlight: allow
 multiple GPIOs
Message-ID: <aVuKdAyXfWLs-WJI@aspen.lan>
References: <20260105085120.230862-1-tessolveupstream@gmail.com>
 <20260105085120.230862-2-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260105085120.230862-2-tessolveupstream@gmail.com>

On Mon, Jan 05, 2026 at 02:21:19PM +0530, Sudarshan Shetty wrote:
> Update the gpio-backlight binding to support configurations that require
> more than one GPIO for enabling/disabling the backlight.
>
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  .../bindings/leds/backlight/gpio-backlight.yaml      | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
> index 584030b6b0b9..1483ce4a3480 100644
> --- a/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
> +++ b/Documentation/devicetree/bindings/leds/backlight/gpio-backlight.yaml
> @@ -17,7 +17,8 @@ properties:
>
>    gpios:
>      description: The gpio that is used for enabling/disabling the backlight.
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

Why 2?


Daniel.

