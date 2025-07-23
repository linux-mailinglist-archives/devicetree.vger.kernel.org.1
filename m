Return-Path: <devicetree+bounces-198948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB20B0ED1F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:26:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40EA73A9A00
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 08:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 078B7279DCA;
	Wed, 23 Jul 2025 08:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="WF2Xc2ES"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99672279DAF
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 08:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753259159; cv=none; b=Zwnjwuer/ZbR1UOkk+Duq93zHDwmRwoI/zKDApfc0DRntqL271HaVbk0F+E+OL9LOMCzBwZEUTXPALUWK2BDwg1CzxBZwtDO+MsSbACk0GunAZzxFmeeZ7olmcFDF6AnrazNCMlxD1XM4S9Y359QrxJQD/XvDSg7Z33wMr0BxTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753259159; c=relaxed/simple;
	bh=vLCNSJ4DxVZDJPQ7cVNRDySeLw0NidDKviv2DX8YsFo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BgEUWdFciIG80CRhAjvu5znWlEVO42Ji/HzIu5aQbMvhOYz0OIXOJ8Mnjb1WQdfKfL7eaJqxDGXUOVbbqKAEAh7++9D17MKTk8KEIZ77NxY8NL6wEVJXE0nZoTOWLvZLqCLxfl16EJBiT6WFJsqK0mSmzFTu4W78SGmIPqf+wDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=WF2Xc2ES; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-3137c2021a0so4949301a91.3
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 01:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1753259158; x=1753863958; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vLCNSJ4DxVZDJPQ7cVNRDySeLw0NidDKviv2DX8YsFo=;
        b=WF2Xc2ESZUXC3I4997szY/O/Q2b8sQFJDwGqigrANiJNjwrQgnWk/KgiUjPftfzFf2
         YUADAbu9eIdyFhPrkqBiefiC1jjzmUhXODL5cM5E4M+gVRXQLQJNJCAbF5LQAI0FEefj
         q8MxMVO9ld3BbUf/aaJqD6gt8F++fbHQ/OBNzs7YGg4l1EmRhzW/YAVxoXGzw4MRoUre
         7p+327nZRUY2hjKCflgCpBZrPK8JaJWKKILr/859g7GVsWIzAzbdinzhOLaP/UOkmAp4
         W3o0M+K6QAVSrxdF8uS6CNj2+NiV7wNwVJnNH7YJrUx58XVYBith9M8CmJspWHHkuxPW
         E44Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753259158; x=1753863958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vLCNSJ4DxVZDJPQ7cVNRDySeLw0NidDKviv2DX8YsFo=;
        b=hgHJi/gQbLbQ7NRpbnVr5xvm+dyr2BHXcMghkXMjhck/pvK03djSkSX+W0ywOfy+Wv
         X4OQqSBJ6Zt0DeVb/KZKeqKvPHCNg5WBbI7vh5rg7yXeeOijKwbOYXnq3Ilwy38wT52Y
         Q6XYXAnD1bYR8vGhy8LbTptbVd2jt7ktCTT8cPBqGHqy8jDrd+No0hRilRr10D3Pz4hc
         fnq6+q+kJsSwEwoHpSYMZhxkCZ6F3VuKftjgvRO56NOzhZEP4B1rvmWCo4E9av4hydKs
         xhj+cjNiOFHof5vO6FeVo7i2Idw3ceiDJUTNAA+j9LZwsf2rhpi7PJixOlyCxEfwfm5E
         kajQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWhhz+Se9w+dcihcAswpY7Iy/3XbE/ZWcSpBpOMVkp6TcWxIHRGJHEWdDNPJw++pStZuZjdu4ZA/gq@vger.kernel.org
X-Gm-Message-State: AOJu0YzXQJTOlzspfe5MRm8ZNxOI1FL8xwfbHewnFs03FkdMIflUOsqn
	csjX80tg8+VBipMh2KSk+k1sgl+PoVAH1coI63nkjwkM7GOlKxEUrGo8V4wzDMrJAuLtLb+/UyE
	/EGxchYgexgFXN65HFctltRTmNDOzfsj4LsSmwWiATJiqgKCEXqhB
X-Gm-Gg: ASbGnctliM8l0P6MCqC89BWhZ6kU4PG24n+0MqfDDIwW9DK9OPi873I6RE/54ajaNP2
	ATmtB2VO7A1ZN7Xf4kU9j2cTl7taDZLYoo/QF3GFb6i3lVtJAFu+WkxU3mi26p3BWjPqJbgLsmk
	K5jmM7wx7BtJL2MJLLLo5zow48yznaMU+TL+NwGtj5pnjiMb6SaqqI9rrWQ4+UwPXmzqUyUa3QS
	u5D41RyG059psDq6JsqWSlcB7PhEwt7siHy4qDqYwfU+JPP
X-Google-Smtp-Source: AGHT+IFzwCafFosCdx131zbcEFY3D64m+7mo0loj5vAsYVkMFUgy5UAHuuRGjg5yAkxctR2cI5zO8+e+kqhHgdsFxCw=
X-Received: by 2002:a17:90b:53d0:b0:315:aa28:9501 with SMTP id
 98e67ed59e1d1-31e507dc7b4mr4498294a91.24.1753259157929; Wed, 23 Jul 2025
 01:25:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250722-axiado-ax3000-soc-and-evaluation-board-support-v6-0-543979a60ccf@axiado.com>
In-Reply-To: <20250722-axiado-ax3000-soc-and-evaluation-board-support-v6-0-543979a60ccf@axiado.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 23 Jul 2025 10:25:43 +0200
X-Gm-Features: Ac12FXyLbBDcOzrp8fBxUqR9jIu-gUOTaGAF4LxjwERQBqGacqdoGbliH_T9iv8
Message-ID: <CAMRc=MdFoAa2omJgL__4mRqX5CYyhZ3VU_Uy-Tf1oPSuZdV93g@mail.gmail.com>
Subject: Re: [PATCH v6 00/10] Axiado AX3000 SoC and Evaluation Board Support
To: Harshit Shah <hshah@axiado.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Michal Simek <michal.simek@amd.com>, =?UTF-8?Q?Przemys=C5=82aw_Gaj?= <pgaj@cadence.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Frank Li <Frank.Li@nxp.com>, 
	Boris Brezillon <bbrezillon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, soc@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	Jan Kotas <jank@cadence.com>, linux-serial@vger.kernel.org, 
	linux-i3c@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 22, 2025 at 10:16=E2=80=AFPM Harshit Shah <hshah@axiado.com> wr=
ote:
>
> -------------------------------
> Hello SoC maintainers,
>
> This patch series adds initial support for the Axiado AX3000 SoC and its
> evaluation board.
>
> Change from v6
> - Ran "b4 trailer -u" and add reviewed by Krzysztof
>
> Add soc@lists.linux.dev in the to list and send this series again as per
> suggestion by Krzysztof and Arnd. Thank you.
>
> Checked locally and able to apply these patchset to soc git.
> (git/soc/soc.git, for-next, checked commit: 7dfbf3176d886ff9a0c7786942d3a=
89809d0641e)
>
> Sorry for late request, please consider this series for the 6.17.
>

I can't speak for the rest but do you want me to take the GPIO
dt-bindings patches through the GPIO tree for v6.17 separately?

Bartosz

