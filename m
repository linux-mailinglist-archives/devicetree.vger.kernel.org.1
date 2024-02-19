Return-Path: <devicetree+bounces-43422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 031FC85A56B
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 35E0E1C20AEA
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33BE7364C0;
	Mon, 19 Feb 2024 14:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x3DauRNp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B655374C6
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708351618; cv=none; b=uMJ6n/n6mH62Pd5awu1uLaYdRbckbqNv7GOQ7AC/P8httEPYfRJKbUqTYR/Xo4Xw0sqO/tE6Bx7ejkdH1WjC1gYdphSb8u2PC/jQIj1UC2VyUyugf8H2NrdoXELpeyZQJM3/bWUe4wOUvOWFYUNgtzRtz0UjR43GN/4re+cYcxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708351618; c=relaxed/simple;
	bh=ZN4BmNlEPEpjW/1H6cuktkLIhxEDSd5BgGVVJDCLARw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EnwWGOEPeXhz03l3Z20HYDE4ILpfoU71TaRiFfc4PD9cQ6yPJnLDppLQcbhddOGwa2iUsxZ1pvSWsQNVLyIUVgnDHmctDip84wlsCG4UMETZ/88ESPXPXZOD1uNhXacHTlDlGWAbmUyAvTBohNg1L+OsNIaT7gXlWk3UGo53t0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x3DauRNp; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-59fc2666815so409545eaf.0
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708351616; x=1708956416; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZN4BmNlEPEpjW/1H6cuktkLIhxEDSd5BgGVVJDCLARw=;
        b=x3DauRNpxSasiSusCnfPUiD99ZhMX9wFlxFvRukioEBT3PUdaDkL2Mkfq8RWevdycb
         M8I04oIPCDGeh4t15Yg1VmICe71+zPx8hQe13O0ChRc2IPfjI6QA5IuEuzkKXoW9UL26
         jvF+w0UJ4HF1bhLJLPSk8paQDTPTEY7+Amx7g1z7bscRESgf8fntXmFX5e/DJt4Z60yR
         Qv6ITduFqDuGDJSltMT6fWgNGpkfM5TI9zl8YZKAnkdpsqyGQpN+LuwZRQ6c4bDwxpYc
         aomNlT11H9eb0Tc7+1EU3n82UygI3v4YHO7TQmKsRAGPQlcpYnaBTpVYlmDtjSITYoXS
         bxag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708351616; x=1708956416;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZN4BmNlEPEpjW/1H6cuktkLIhxEDSd5BgGVVJDCLARw=;
        b=W+N0bVBQHqoGqLt26BW6uix5W0oFCaQfrsKS4TIMjkYK6JijV/MJ44LegOSZ8u+3R7
         8jRYww3a51fyoXLAbhz835yasTz8BLJLlQgZjw4R5/lhZlcAJit18GCHuJQHXqtj32aA
         TeTVbb6QbnqeKMRnRZhz1crDj1SPY0IEFIIEXm9+XGetVvQ4GRD5cytGP+STUTFT8JxL
         FKfEpT2QKPX/tXWJQOdvfYXitOV+zHxdope967leX0wmKd+2NFxX7fdygY2pUM1/Ghfl
         ai5sQPHR8kSGQC1H6naXillgaW/qOtzCR5IzeVu1IV/Zcuz0RpZa+XjjZN3JaPt+vsRJ
         uoRA==
X-Forwarded-Encrypted: i=1; AJvYcCU4gi/AEVoHeQCwF5ArklghRy+4v59bJAOWHlIeqtmd2MUcrG5fEMu78fFbgHKRe49xH1QRm9ssqg8EBNIOOUxQjukbezAOFdUhwg==
X-Gm-Message-State: AOJu0Yx4lz5tyBdwRtBEllJuYo9IxuSw8MZaerTsiyTuXNSZ3P35lx7l
	hBmnr3lxXIj8STdPLsOs+ra5MxsgEVDP0kdxphpxlcABd5VIUkJfkuaz9fAuGNdpLefWj3Bu466
	RjE7GA/BzCjpzdRBt6KTH6VDR8oSJqhK+M0fiMg==
X-Google-Smtp-Source: AGHT+IH04EqapwhcfryqkGeJ0PLDo0rjKByqtrCM8cYE2MnjC0gv9WZUijbBYPo1lK02ZF+BZQw3zmYboI9pZdUPgfQ=
X-Received: by 2002:a05:6359:4427:b0:172:d79f:1841 with SMTP id
 nz39-20020a056359442700b00172d79f1841mr14599705rwb.7.1708351615699; Mon, 19
 Feb 2024 06:06:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240215-mbly-i2c-v1-0-19a336e91dca@bootlin.com>
 <20240215-mbly-i2c-v1-1-19a336e91dca@bootlin.com> <20240216022704.GB850600-robh@kernel.org>
 <CZ6E24VPJKJG.35LACFD6ZV5KE@bootlin.com>
In-Reply-To: <CZ6E24VPJKJG.35LACFD6ZV5KE@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 19 Feb 2024 15:06:44 +0100
Message-ID: <CACRpkdZZhhzg5SY7U5dv_OfLEVejRFom4V9nCfkQXunAw1ZXSw@mail.gmail.com>
Subject: Re: [PATCH 01/13] dt-bindings: i2c: nomadik: add timeout-usecs
 property bindings
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-arm-kernel@lists.infradead.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Th=C3=A9o,

thanks for your patch!

On Fri, Feb 16, 2024 at 10:16=E2=80=AFAM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> i2c-mpc (fsl,timeout) and i2c-gpio (i2c-gpio,timeout-ms). I agree this
> prop has no reason to be compatible-specific.
>
> Feedback from dt-bindings and I2C host maintainers would be useful: what
> should the property be named? Having the unit makes it self-descriptive,
> which sounds like a good idea to me. timeout-usecs, timeout-us, another
> option?

Use i2c-transfer-timeout-ms in my opinion, so it us crystal clear
what that property is for.

As Rob mentioned this isn't in the kernel schemas but in dtschema, so
you need to patch this:
https://github.com/robherring/dt-schema

Yours,
Linus Walleij

