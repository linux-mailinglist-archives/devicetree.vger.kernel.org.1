Return-Path: <devicetree+bounces-197572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AE545B09DC0
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 10:21:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 748F27AE98B
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 08:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DAB1220F34;
	Fri, 18 Jul 2025 08:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="wxAi4bhi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B752720B7F4
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752826886; cv=none; b=N5cgc24HHmKiYqL8VhfliguRIksWMABlqhFjeXB3bThNO7aE6zvY/DnN9J0bvwPLDBNT6G0Zg5QVw8pLHP2atyocxtd52BLT4ZNp7V1LVBx2b1bwjVukXReEGwm+Qz7MEDV7E/JjZSaA8n+SChDDuLuOyqzU32r1gSY2/r9VvEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752826886; c=relaxed/simple;
	bh=ehBRfidVMiTgGu4yqitjDYf9E4aZ2H0XQi7Akm7vD3s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u2Uu1kN/PbR/nuIJ8nmhR6WLSsIga7cxw76LNDfKgjsSKoFXqGLLb+6IVdrWVbtcP5jViVr9YG92wbTTgMo2pr8QIrZkd/dofR2RS9mQzGJCP4TPrzx+6zwYBxCAGRf6qDiSPXIHMgxk1ri8N2PgfJUntB6YGqINCpDlF2Kl5Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=wxAi4bhi; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-553c31542b1so1601597e87.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 01:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1752826883; x=1753431683; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ehBRfidVMiTgGu4yqitjDYf9E4aZ2H0XQi7Akm7vD3s=;
        b=wxAi4bhiOUU3MfYunI+AG6YzRVV5pig1KV5XWgiqVH1IylauN/Y4U23DDUspwOYm7g
         7a5MDJfIL4N9CF5gJSO8bANSbpRvslHuGmzXsAv6TDRnvpWAdIfJfGEN/Ks5nQJhVFHE
         daOqV5rncYKJC0TD+sUVY8K+HzWvZm95VHTe+JfW2Zj+wj6lH2ZPbyJcoIrN5JLDeXCB
         owYeSXbP93Yusw7+8QXWjd3+Gxz4iqngm9UrnhHgKw8ZgeF8Ef318qNNdUKiSzqAe5K3
         rZzONZge8NT424LlrteslQ//Mkkc8YbL/y2/CBdJ4kvaf444DUZYfaCDHLb+EehCfXO4
         yKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752826883; x=1753431683;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ehBRfidVMiTgGu4yqitjDYf9E4aZ2H0XQi7Akm7vD3s=;
        b=J3YDvmTx+m4NhsFD5i4zP3AL5Zepn9+oMBsIiX3Eb8PZqOzQ+MN83CQS7bgI2d9/gs
         OF60XqR82qdZhnfbU94xSXB/THpZ7Tgz9EFon1MnplbPJ6Z/YzaVH9HBWqcfUHxL5xrD
         ko+DlnW51PE072LLkSbNbIxGsVHn2YYn3l7hWwVHlmmpAscwdpJJb1oRS+7sAD8rKRnq
         aigQWnnd4VXX6vv6PDB41wwoNnwoP6JV2gR3UbgTV1huwAOXYyiYoE7t2V/FXFJ1o2Vr
         b2V/CNHHi5yMDsW0Rg2xG8AgHuCbISUGGBDdqN6gJGPQy1kk/h3v847clCJpDJmsIj/5
         kP/w==
X-Forwarded-Encrypted: i=1; AJvYcCVdeisk+O9RnzMh4x4no3rD4d/JRHoDOWs0arKkPKoCslHREXD5VaYE17uQK85MYufG2ZNnJnNeEdyB@vger.kernel.org
X-Gm-Message-State: AOJu0YwnhKCXZA+SXsbqfjWgheXj4Q/inuQLdsSaQXnTlbrzZMm+AIak
	Xf37Slli4oZuUh+zxopCMA39kGfUnF/0GrtRAaL4Ck6Sx1bpW11oYoeZMlV9gtbB9Ib4lX+SbwF
	wnFFkdN8TZmp1NZu9CkqsySCYr1HnQBNfCVTAyR3ENg==
X-Gm-Gg: ASbGncvF6z6iNEwYdB2lrhSRGUQ9cKnOTwofHfQPXDkZ4QKq5SkWlw6PhpxSO/2xzWe
	2lDtR/IiUEYFEBX6JFQt9go7Kxy6kBJgzOBPibswxcMv/G5E5Mj9mV2oPE2vH/yuEWFR013DzYS
	vcLokPtxNT8194iKtshUQFjZCEqGCY2lqp04RodKkJnAAFrK0akg+r4OPkn/mSRjhMK6OQd9Ytn
	gJ3d62LGVR9aRx/ktDSqyGmWFvNhwlVCyEw+Q==
X-Google-Smtp-Source: AGHT+IEaWSG03ounh8FuQGPFdYkiUPh2qNisS32R9MoEM8O70oPinE1GtqhwtKAZTDuOeWMM/l/IcLkx1x4qZ+HIn40=
X-Received: by 2002:ac2:5616:0:b0:553:a2c0:da70 with SMTP id
 2adb3069b0e04-55a23f563eamr2309934e87.26.1752826882698; Fri, 18 Jul 2025
 01:21:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250714202829.3011298-1-robh@kernel.org> <20250718101147.4906bd60@akair>
In-Reply-To: <20250718101147.4906bd60@akair>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 18 Jul 2025 10:21:11 +0200
X-Gm-Features: Ac12FXybEW0KgacJXEKotlpT_ULwdNJr0HEMAnGR1ZlrBw7Vllv0nLHyyPwCvSw
Message-ID: <CAMRc=Md_r2J50EWFMyr=j+JU+LqcBZQ2z8SR8EbK3pkD_xQkEQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: Convert ti,twl4030-gpio to DT schema
To: Andreas Kemnade <andreas@kemnade.info>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 18, 2025 at 10:11=E2=80=AFAM Andreas Kemnade <andreas@kemnade.i=
nfo> wrote:
>
> Am Mon, 14 Jul 2025 15:28:28 -0500
> schrieb "Rob Herring (Arm)" <robh@kernel.org>:
>
> > Convert the TI TWL4030 PMIC GPIO binding to DT schema format. The numbe=
r
> > of #interrupt-cells was wrong compared to what is in use. Correct it to
> > be 1.
> >
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>
> Thanks for taking care of it. Now it is in, but anyway:
>
> Reviewed-by: Andreas Kemnade <andreas@kemnade.info>

No worries, I updated the tree with your tag.

Bart

