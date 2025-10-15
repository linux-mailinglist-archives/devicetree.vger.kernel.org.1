Return-Path: <devicetree+bounces-227073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DFBBDE597
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 13:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3ABEF3578E3
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 11:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ED11324B1D;
	Wed, 15 Oct 2025 11:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C9PDrK/v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930A62C3256
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 11:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760529459; cv=none; b=AW8CZTTxBeX3ZU9zarHeeEjluVdIqBKVjuF7XahaNj7xf8/WEGLhJsfPu2dCPW17D9Ad0AspVE1vAhR4RMXlJGH3DzDV6ONEK4wCqD4VO0Czwcl+yy7CE/h9PnO+hHyHIlWy9rUOgfqL03fgr81tvt9Nj3b/d6EWu3lriaxthKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760529459; c=relaxed/simple;
	bh=e6nUalP9hfTJgsbidLIuHQleVlwtT+pTzZf78d6vMo8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JWT40F0hCOhEeGcMr1q4i9zrItgH2OThT2CzjSa2Cgo0+WNWBe1PuKgxaXolxTo41yEoTdjvqCv2LRa5fPrbroA9jfDhlSu6PNvcDlddgK6sh05IukqMkvtd51WdjfdGtiT29AKYfG0SEXwT2vI0cIpdL9R67I88hrILhdWal6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C9PDrK/v; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-6353f2937f3so7631470d50.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760529456; x=1761134256; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ieaWzRWGII3uqPa4WyCaS/MYjwfMUCH1mb2GlldqZ1k=;
        b=C9PDrK/vD5sfdAleE1YJqbiaZDCk3UKsiZsOMbaTVEo4p9TJcaUcF/iVUSjORcK05N
         uq9OYwDo93B5Me2AZZfkRLSNIgMD8c38jCbmXMmGf8J8pGal5D/47O2Q9ku5DEywZqwG
         OmXg4Yv1a5eizEVWwb7gHCJ9w8llHco7v9w3IfCX3OEEDskF4I664w9/GygTbbzZlj0c
         MraauNS2NeOujQpQJyTFM3412kqHaGAXayyE5wxPMWAPedomUGIVPr6w8O78jABSFzO2
         wHJUv9YltP6R4K/r2E61rQHqLYZZWmGi3Qy6x11f+NBcXm6IkpO0r2Ljk+oaeQ4GAI6K
         M5HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760529456; x=1761134256;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ieaWzRWGII3uqPa4WyCaS/MYjwfMUCH1mb2GlldqZ1k=;
        b=vt3LXDQCHNjBZ+kGIDJGKwenPwPO5Gj6Pxt/IgFOQTZrg3AqNnkOU7inTNmU0K1kgB
         ZYmW/4KvW6vJUXCzfOKvS9yLluPcEuMjayNfA4Kfk4XmNYiE+c0dfXeK90pe+Ss4C1WM
         BBBQ5+NaGqX4RnpxoJqmYGqTWT2DMB7YWVp1hGrRrpmBJjfCevXvMVvZE+p8bDL5AdnD
         05Bxp0OUhqQysA4sNBZ4t3Ri0hdweY+NSzi9TY3uGkPn9V0QdVYNjziRtclpi3xqzqHi
         gXkTUhxdJplC2KpJIXo2JsikymS1ljV11v/Pq49M0PoUx64Zz+UZcWj1GJu3tkEvVTmY
         rhWw==
X-Forwarded-Encrypted: i=1; AJvYcCUSu6w8C3rlccsNw8CjftP5N+xWNPmrXWwyv5hzjbhokWFPhVjcxkrApcQmf69+4qth9ECq1+5EUd8a@vger.kernel.org
X-Gm-Message-State: AOJu0YzxzVIVmv+HtVyz7ZlUoo438VWU90Q2ainntOCIMAek4Nt6NEOJ
	W7SOmHAOFYyGGF+sc7Ug85wNi1IcEj9/pletxLvIlwcE98uHi4ISybgelDL3ONEvLftKYekBQ/1
	Cb/VFAoyTqXpLGIgeOC3UpLCzn6imTnw=
X-Gm-Gg: ASbGncs2r7Hv+RCe7qAMdXbEMTb2iBtLUct7AtzjwFY6Q4x7v106q4cbV9BIWC79Z3n
	Ic0PmNMTR97g8p+L+z5sixby7VxGUcV1pnJYVVOVPesYMD/js+Qe0agPfZae+SIJ3c9ioR30CFz
	lfzxM+hPRh4MJGLn7Kq2eWu0vZX/Tn/W0uHU/Vr3y6Jou90yDMu8rmeQ/f2sPhYBC8+FC+FGiSe
	nsfTyr20G4w3M7qmIytGq1knA==
X-Google-Smtp-Source: AGHT+IFNe9SeQx840UU/MTW2ly7whPTiSlZ0Fatcdl+zHeGnhTcfrwo2zlexd/EV4UoupspsKkcGV6yrEL5HlrHNkQM=
X-Received: by 2002:a53:ceca:0:b0:63c:f5a7:3ff with SMTP id
 956f58d0204a3-63cf5a709f6mr9503871d50.67.1760529456518; Wed, 15 Oct 2025
 04:57:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251006-st7920-v3-0-4f89d656fa03@gmail.com> <20251006-st7920-v3-1-4f89d656fa03@gmail.com>
 <bf207d35-3ca9-40a2-807a-0dbb0d1504de@kernel.org>
In-Reply-To: <bf207d35-3ca9-40a2-807a-0dbb0d1504de@kernel.org>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Wed, 15 Oct 2025 13:57:25 +0200
X-Gm-Features: AS18NWDRb-G3sUnj4rnpU7SKnuODhp_u2ZhjVPW2nZFhRMfdfCfjUZN2mnbd71w
Message-ID: <CABdCQ=O-WSt9f_cbwUhRw1uy5a-P3-dEcJfcq8Y8thDAzVuS9g@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: display: sitronix,st7920: Add DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

El mar, 7 oct 2025 a las 11:12, Krzysztof Kozlowski
(<krzk@kernel.org>) escribi=C3=B3:
>
> On 07/10/2025 02:48, Iker Pedrosa wrote:
> > +
> > +properties:
> > +  compatible:
> > +    const: sitronix,st7920
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  spi-max-frequency:
> > +    maximum: 600000
> > +
>
> Datasheet I found on the web clearly stats you have at least VDD and XRES=
ET.
>
> Your binding is still not complete (and I asked...), while it should be
> complete (See writing bindings doc).

Thanks for the information. You're correct; I'll add the two suggested
properties, XRESET and VDD, to the binding. I'll also implement the
XRESET handling in the driver.

I missed the XRESET pin because my testing setup was working without
it. For VDD, it's currently connected to the RPi's 5V output.

While other Sitronix display bindings in the kernel don't currently
define a supply property (running "git grep -i supply
Documentation/devicetree/bindings/display/sitronix*" confirmed this),
I agree it should be included for a complete binding. I'll define it
as a fixed-regulator in my display DT node.

>
>
> Best regards,
> Krzysztof

