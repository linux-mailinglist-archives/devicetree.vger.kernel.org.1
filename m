Return-Path: <devicetree+bounces-43433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DB885A5C3
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:21:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 358152811BB
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0BCF374FF;
	Mon, 19 Feb 2024 14:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tTKE/O3m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B250A37160
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708352501; cv=none; b=ZTp7lQTRzEjzeOLkNfRWGBXlTmDorl9jYZIX/oNDVnPvz+TrvG0Qzl7NQj2jbEZJV+4jD/daHwjMIAF7q33ogcFnYAes5RISjJClZAtzbrEQsgwDqWe/FkA+/im40OwdSR3xBmquqdAsE//q2pniRhiBeJ6cMoqNA1eyr0NcMEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708352501; c=relaxed/simple;
	bh=SrwC0+4KeISVGwaFeZbt6eoTCX4pOFuHjyV4acTEdn8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pA63zjDLBKOokYdMGlI/j4avaBl32khdiFOuHFJennf7t1+DxUprxLf7z408LruJHUP8tcgmiRpvEZ/PFvFGIzeSxVepxgigavrkx6biVtDqF+bFdp6lEiPziShoiRQHoauaccULPy2SJWu4LbEEjfLDn8SAlzTZAb9U828DKfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tTKE/O3m; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6084e809788so2896507b3.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708352499; x=1708957299; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SrwC0+4KeISVGwaFeZbt6eoTCX4pOFuHjyV4acTEdn8=;
        b=tTKE/O3m1ig1JfmukMOVlcj0apK05F9sHBrjZZLTBULHI9BN2gazcHtXkSDnb6xCYd
         WfZ656EQgv0JCpsSGckqoKmDaJMUHfoavozMkgxR4JVU9gPGtr7UjW9XczgmCBuSUaUi
         4A6zZ2WZ1xfI2Oug/shfdKmJAsXs+50ma4/m40nX90nbPq6GAE/BU/MehJF0xVTk+ogu
         BTPc/U5ip9whYC8BxpIVO7gqmQxmdkQyouo0+54+UwpXzmRYn6iGSqQHZ86J3w042Hws
         HxStEv/HeJe64OHL720Tk8A/P53E5xxkjXHvHAe+KM3+6HE7OVhxMMbFZi09wFGPYJfC
         2RLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708352499; x=1708957299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SrwC0+4KeISVGwaFeZbt6eoTCX4pOFuHjyV4acTEdn8=;
        b=vCzv3nnrk6pi3MWvRVahztj91fL1pGsHpirXAssfhmkhvWrSLL2jQds4mGIQSgEyU0
         V/XnOx4+FcZYfFBKrDIdIIALVzgxXEbQy5dCHW9ACHBSMNjkBHdY1dZb0MUsxMcEwwpU
         URD+y2PvYCw/XGyuo0rxiHyCC1PmVz5gTkKMec7JXX6w5JjdwXzN2k5/A12EuURprijH
         AiH++iAKWBQ0fyG6YxgHazd5Al7mdiYMW5mubKuV9RoH76e0jeiTqQmnyNxgZTvb9bwh
         oQ1Q8st/quXnG8Zl1Jv+5mhPQaWPCghpZVdR0edPTAqkeFA1niQTphuAdnetMrhokfEA
         umxg==
X-Forwarded-Encrypted: i=1; AJvYcCUBZZ8c13QFbZxEUDoZVUXSfd2N1t0rmyAXgU00aQWbUPSriT02BIRN54KczK5OnHjXuQ2SJObM9kBYcqqebYHnb7nRcR1ACSB7ow==
X-Gm-Message-State: AOJu0YzM8hCgIM4W/QaTmTVpfz0LOv94l7VRS4CSaAv8ju8j0B2C5k5y
	UvgPV5ntjIOw67kL/jW7/3NnF14+AyqmUDB+/7mOMY3Gj+VHBRfZLlNIj/tZl3G+ElLuUrMHQgD
	Wa6fT2AN2+fCl/JwNL7VgeCY/I7UpfPo5sdOLpw==
X-Google-Smtp-Source: AGHT+IHNfSIGwbZ8da8WA4wu3utNXpd89Nvp2VMBYUutX9dQbg95IHwCqHaWvUBTbOVrAfhe6rvgUYD4B+AnWJejaYE=
X-Received: by 2002:a25:838c:0:b0:dcc:fe98:368 with SMTP id
 t12-20020a25838c000000b00dccfe980368mr6937583ybk.19.1708352498795; Mon, 19
 Feb 2024 06:21:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240215-mbly-i2c-v1-0-19a336e91dca@bootlin.com> <20240215-mbly-i2c-v1-8-19a336e91dca@bootlin.com>
In-Reply-To: <20240215-mbly-i2c-v1-8-19a336e91dca@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 19 Feb 2024 15:21:27 +0100
Message-ID: <CACRpkdbuTX50syD0CMFcZXBmAHw4nwpcSc-C1OOUQEA9WHqCwA@mail.gmail.com>
Subject: Re: [PATCH 08/13] i2c: nomadik: replace jiffies by ktime for FIFO
 flushing timeout
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-arm-kernel@lists.infradead.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 15, 2024 at 5:52=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> The FIFO flush function uses a jiffies amount to detect timeouts as the
> flushing is async. Replace with ktime to get more accurate precision
> and support short timeouts.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Excellent patch. Thanks.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

