Return-Path: <devicetree+bounces-223445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A61ECBB4FAA
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 21:19:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 660DE3C7958
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 19:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F24E28134D;
	Thu,  2 Oct 2025 19:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WtMB58od"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f54.google.com (mail-yx1-f54.google.com [74.125.224.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37A32765D0
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 19:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759432761; cv=none; b=iCirxJG35pFOF2BzyRd/6exsGfNIMmiiNEMBb8322mFTDD+ylo3H0PDXvM/u8sZh7SX/CPOYXhrhhoOrX6npoFf/+QPBY7GWboCM/0i0jyjYc7PQCj3/acPhvNeEzcIQsX/ZwUlN5D7t2WU32W/ntuw7CNWdMQfsldzGfpruG6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759432761; c=relaxed/simple;
	bh=EYCmAP2B58rza1pmO67EikNUlQoH1ubGX1nFMa61uJQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aohj1IXT1prWYTlFBpQzq3M1ve9O612jkQagscShv5uzCatyM2gqr3un6VSWFMgFGAu62b2HNjQZCfABjYTDpmoaBykUMM0enQugR7LFo7nNKCHiA1TR1tHLqyIvhi19gXWtbaukiqfjYrOVfrvPRCos0Y5F3L4yb4UscgXqEGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WtMB58od; arc=none smtp.client-ip=74.125.224.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f54.google.com with SMTP id 956f58d0204a3-633bca5451cso1512272d50.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 12:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759432759; x=1760037559; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iTEm/KM3nO+P6ZFw8LYiN73U+Rr4Kx1wTBiXsd/aQ7Y=;
        b=WtMB58odEWZ5lKUPKP0ZuHD+BODAqKSIgH8YbY6oS6NDs6l7ugOXh50R4BnUDy03Uc
         zAM1IhnzlvY3edhqr+waCdqymVm1NidAyhWAXDS1CKwB3vcs1hPzV9D6QZ26ITju+Ptq
         RM9ft9e7AyFiUnHij4u/+NgOquWomaIkm4qfnjR42f4N7qZPh0E8H6CHmKy8UiCoqZmv
         yVDQ2Pqnt2JAn/hocstSpE6GdsCpztsq3akPL+t/6PBwMjoWxGyojKMtWS3gZyacbYmS
         otf0UiCOhTkGCMQ7FTXgGtRbEaZbvk79/P/IO/yYhLVP8WhUaV8fwSX1YjDy+ZVncRMF
         49sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759432759; x=1760037559;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iTEm/KM3nO+P6ZFw8LYiN73U+Rr4Kx1wTBiXsd/aQ7Y=;
        b=fcild/aa53JVHP4B+rGmT5MrypMtqqdD3RhnLG7lUzWkUztrt2TKfGwHfWIM9ea6EH
         7qlXjjFtWm0x8TSWx3Uytu1dWjtU0vCTwNOWo0vrZV+9VBSK7uN1MyneAVukP232rOQP
         EjpN9z6khIrdz1hyZxw+l2zupOmsRW0upnjgL/CmQrDmPFbQoFyYlUDMxAyK4JPrO9t6
         ec2nbKH1KXagb+QnYCkt47N9Nm/si+McFy3zzpWJEXx3eGoDQ9DkQAuxVZaD/Dm4M7Fc
         modlgPdFYkGm4gVfkHcytBuZb5qCSgUFLlmsUHhhekkY8YfpnYFQrNZjzadefT0u0nnc
         FvWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzCzgVEx47viryhyTqk0JB1WLYmYWmVGuQur/X7O1rMNaW/BdyDb6T7gvm6gnBUg+QtV2blBX11YWp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd8Kg5lrQuFSvAK4vZjPnm4E9Z4HODSsdhf6VZ2SkkWFyEXlx0
	vGH5fwneBENFpCJfyQmGG1VGEknhG7Nf+hg8MezhCY+dG6+8FsauYC7fhlcDcLpEDYPfZ80qT10
	McposrXBOiaBAClo4uFftGSYgs2uJngk=
X-Gm-Gg: ASbGncvMX5DcyEIqd/3W/telyrNCCUeqsqz9zGQlxbScHy6hIKT7cm2m34rMdKGQ2bP
	CvIKx4vYNoKt3Dr4uo+VkhNQCBW2WWZccEdU1ZjVpBTrX4D8qOGAOjU9DHA1nw3kblpDD5ziwWY
	RzUkM78DLeRAzUpDPsa6wji4txj+kVwyjocCpcS6U/yksNjI7I991Rv6q/8cHS7Szz2ROOacWND
	icN+XYWNdUZY1II8DpdOaB6CFJSGpZ1h7k4d/a6IA==
X-Google-Smtp-Source: AGHT+IEVtvbFpBLouDHWhbnJwj9NSB8Pq7ept+0Odbowddpf/FU0e2Uma5u5HxHffyYlalF9KHMt5Jw9aECDeN/zoBQ=
X-Received: by 2002:a53:b10f:0:b0:635:4ecd:5fd2 with SMTP id
 956f58d0204a3-63b9a10a963mr341381d50.47.1759432758769; Thu, 02 Oct 2025
 12:19:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <63cef5c3643d359e8ec13366ca79377f12dd73b1.1759398641.git.geert+renesas@glider.be>
 <609ec2e6-c877-4fc5-95b7-935ae2549b3a@gmail.com>
In-Reply-To: <609ec2e6-c877-4fc5-95b7-935ae2549b3a@gmail.com>
From: Bruno Thomsen <bruno.thomsen@gmail.com>
Date: Thu, 2 Oct 2025 21:19:02 +0200
X-Gm-Features: AS18NWDGIVU_xL1fm5D1v8Yjg5VdVlAOAuUPKHvGlBNPozwO0Loo6YBnGyRj8GE
Message-ID: <CAH+2xPBmWkb-m2S68SybAakJsFRizX-0T0YtXiHGFt+2Q=kpvA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: am33xx: Add missing serial console speed
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Tony Lindgren <tony@atomide.com>, Judith Mendez <jm@ti.com>, 
	Kevin Hilman <khilman@baylibre.com>, Arnd Bergmann <arnd@arndb.de>, linux-omap@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Den tors. 2. okt. 2025 kl. 14.32 skrev Matti Vaittinen
<mazziesaccount@gmail.com>:
>
> On 02/10/2025 12:53, Geert Uytterhoeven wrote:
> > Without a serial console speed specified in chosen/stdout-path in the
> > DTB, the serial console uses the default speed of the serial driver,
> > unless explicitly overridden in a legacy console= kernel command-line
> > parameter.
> >
> > After dropping "ti,omap3-uart" from the list of compatible values in DT,
> > AM33xx serial ports can no longer be used with the legacy OMAP serial
> > driver, but only with the OMAP-flavored 8250 serial driver (which is
> > mutually-exclusive with the former).  However, replacing
> > CONFIG_SERIAL_OMAP=y by CONFIG_SERIAL_8250_OMAP=y (with/without enabling
> > CONFIG_SERIAL_8250_OMAP_TTYO_FIXUP) may not be sufficient to restore
> > serial console functionality: the legacy OMAP serial driver defaults to
> > 115200 bps, while the 8250 serial driver defaults to 9600 bps, causing
> > no visible output on the serial console when no appropriate console=
> > kernel command-line parameter is specified.
> >
> > Fix this for all AM33xx boards by adding ":115200n8" to
> > chosen/stdout-path.  This requires replacing the "&uartN" reference by
> > the corresponding "serialN" DT alias.
> >
> > Fixes: ca8be8fc2c306efb ("ARM: dts: am33xx-l4: fix UART compatible")
> > Fixes: 077e1cde78c3f904 ("ARM: omap2plus_defconfig: Enable 8250_OMAP")
> > Closes: https://lore.kernel.org/CAMuHMdUb7Jb2=GqK3=Rn+Gv5G9KogcQieqDvjDCkJA4zyX4VcA@mail.gmail.com
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Reviewed-by: Matti Vaittinen <mazziesaccount@gmail.com>
> Tested-by: Matti Vaittinen <mazziesaccount@gmail.com>

Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>

>
> (Tested booting on Beaglebone black with a config and kernel command
> line which were NOT affected by the issue. Well, prints do still get
> through the UART to my minicom, so things seem to work for me after this
> change as well :) )
>
> The change does also look Ok to me.
>
> Yours,
>         -- Matti

