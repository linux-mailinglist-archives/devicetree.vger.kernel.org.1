Return-Path: <devicetree+bounces-227904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3643BE5A80
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 00:18:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EE69584206
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0584B2C235F;
	Thu, 16 Oct 2025 22:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U96/ogYb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3453B25D1E6
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760653086; cv=none; b=lB3Pb+S8IJXVxO60VuikpLspFqeyU0f9b9EewtrF5+2LluuIeohavRNLBZLxwPSplQ/KOUe/e9QnUqTI1cUQRs4pslJJWuBoZti9ISbayReWFQlMye/+mco7kGDlbQSzmeCQLioR7oP37331jBYL1TzV6LWvvJ9KosMo/EUwu7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760653086; c=relaxed/simple;
	bh=7xqMM4w688p0AnL2bHbxl1+atuUYQy+3HnHSF9sf/IQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=la83bnjSV27ICI2fa4oaKQJ32vxRYzmJMIjXyWTfHLYyT1F0B01GHJt29E7bdPO6qixTi/m6bNc+Yc1k3y9Cxof5dEJW6uQlc1uE041SZdm0mn2Mpua+d4tuf6GQc8Lx94XKUnCXaXNg8Zm2aycNDpFSTvnOwHPVo2fR8Sw0ZLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U96/ogYb; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-367444a3e2aso14114691fa.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760653083; x=1761257883; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7xqMM4w688p0AnL2bHbxl1+atuUYQy+3HnHSF9sf/IQ=;
        b=U96/ogYbcYL1tNOzrvlNbNVZ9WdG50oiIB9LtlYrQwsmb4OttqDVAnCdklGnurG+Uq
         JKhY90VXyuH/4Z3CUVnTek9d9wC1e8C+1tDS0A6LbmQ5v+2f5sTmcqKp3W9OuBQbZyl4
         ImJTw6/JZilkj9z4PthaiswZRhwn6AFRs9xS6jV31MiTsMFov33cEXqPgcY0yD6f2cMr
         Y/eXFFzaYvqNhcBjGuMwUQ4cpfkZr7sE6RT6F13ZntgyNws/Aw4wmuZB2fhakAlDR9DS
         SO/ZdspmGRukI8fXg3oqeJKSwlLxcxffvRa3qf9/cCFNE6EMIc5c2RlnvWfzqdEtM1qu
         ZXKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760653083; x=1761257883;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7xqMM4w688p0AnL2bHbxl1+atuUYQy+3HnHSF9sf/IQ=;
        b=gnpVzHz7Ev0/lo1cRucB/1K5AKElQjroCjfw94xdvmJ7zZPIhlHnBvY1e4RK02G7KO
         q9pGj+LWHc4B1Tcl0ioQv/NiWC9ddmk/4cNv+yoYqphIQp+5abXL3JDkJqhN1jM81m4E
         kID+mS7zn4ZVQk1F0sDMPr8Zrr8/OpRS4csNKgIzppox0A3Cn0BjMiTtrW/ESISKvXX8
         Ym1Ur7vtc7+QIXzsYxCJGFo86aRF6V8Szz3Jz7OPgZXLEo0Tzt0bQEGNiGTOgRQ3NW+5
         3OU+OtFyZWMbxu99QdQE+zLGK2kYltwfN/8IhWEoghh6bz7L+utjr69kSpPHuZxw2i8m
         AiJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQWuAxLlLselqY2JE5j0xlNEHHrnJiZRp4XXIiqf1UJ6cTYlOacZnpeBRxBGZLraujcICjBVuXwWjB@vger.kernel.org
X-Gm-Message-State: AOJu0YzaQVaTQx3a0saKL8vVr0FpNgLO7XHj9cLnhnwIb++x81RCsiQo
	N9Ne/1jrvrnVhx8OYD7atMlwueUsVmGo7oehAzpTMmSEyQuj41CQFtmABvm43a87TIZfApbx66h
	BL1Iqp9VCOSDVc1uNzur2DgRaP+FHY7BzKW9KMPACeg==
X-Gm-Gg: ASbGncsWh/g+BrAo5BROzKX6XVEO68PzwVPeDTgjv0hM+y/Lfqyydlk45EDkoptAUie
	jshxSPu5qQY7biuamALXwUkLFjC6fj/LGGKaIh5mWv8/kQYFER0o1tWZbvktRyHKDZ/VhPDngIT
	NYm15ZtCtpLFkCEJBxyNGf++B5qjvFN4BCgO5tnE3MYrBJvzsdsvafsqSbzTM8SXE1GF5SmaJZb
	XCuO85oCKyO91dxT47jbK4soJ0KCG7RguBoRVsaTfo9zhsMdav0L93uLx3Ak8fv5WZdpkk=
X-Google-Smtp-Source: AGHT+IHRpvTzR9lRZrlmQ1podNEFEF+NC21f0G3G257FEgsRUC3w77A0jnF1673Idk1A/qWEdilf/Xf7lGab2jdyAQA=
X-Received: by 2002:a2e:a596:0:b0:372:8ca0:15af with SMTP id
 38308e7fff4ca-37797a6fb5emr5125231fa.35.1760653083253; Thu, 16 Oct 2025
 15:18:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250812-tegra186-pinctrl-v3-0-115714eeecb1@gmail.com>
 <CACRpkdb=U=h5OguMuy9G6avCCN6Aem=2_60C+_uBsrY+UvD5ng@mail.gmail.com>
 <CALHNRZ-dRvaN_SyHRfAsq2MO-ec8rzkeCy6CtJpYdWTobf1-Wg@mail.gmail.com>
 <CACRpkdb46OwzNQuSp0+QQVjy2LojMyhdE7XrNwdsyqGi5okASw@mail.gmail.com>
 <CALHNRZ_+Oh2AGZTvJ66EjBEKEf7PdQsMM_BTNNnjENJpbOKiog@mail.gmail.com>
 <czukh3b6lb7x3uwn2khcgzrkccyveokdpksxban7arhod6ygh3@uukoulmn5gil> <CALHNRZ9J2VFLm39wm7+8Le8rt2HpfeHgDOm6mc-s7_Ya8aXe1g@mail.gmail.com>
In-Reply-To: <CALHNRZ9J2VFLm39wm7+8Le8rt2HpfeHgDOm6mc-s7_Ya8aXe1g@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Oct 2025 00:17:52 +0200
X-Gm-Features: AS18NWC2jQDWzQH1uHLFWOu77qn-QxNZZEbGaap9VZGs-W6Fej50AwlRr45fuS8
Message-ID: <CACRpkdbYkWL4BPyARSOCRQoVHJkTFpDA+Mfo-Aq+-dLGosqJOg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] pinctrl: tegra: Add Tegra186 pinmux driver
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 14, 2025 at 7:54=E2=80=AFPM Aaron Kling <webgeek1234@gmail.com>=
 wrote:

> Reminder about this series. Patches 1 and 2 are in v6.18-rc1. Patch 3
> is not. And I have seen no indication that it has been picked up or
> will be picked up within the 6.18 cycle.

Patch 3 is a DTS patch so it should go through the Tegra tree to
the SoC tree, I guess Thierry collects them?

Yours,
Linus Walleij

