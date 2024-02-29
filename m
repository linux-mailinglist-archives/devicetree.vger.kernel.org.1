Return-Path: <devicetree+bounces-47366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7E786D096
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 18:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57BE91C21F84
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 17:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F30D70AD1;
	Thu, 29 Feb 2024 17:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gateworks-com.20230601.gappssmtp.com header.i=@gateworks-com.20230601.gappssmtp.com header.b="D7HArK7v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6963570AD6
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 17:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709227634; cv=none; b=uhk6LKquTAmmuMgNGHb+hVKGjPh+1hEg6y19hpQM4WJ6nTj6D808UzoRUGy/2W3ySWM6nBSFR7fsfL7HBonp0g4xZP0O0n+3Gr41TJ293k8LugNoaPpgZIef/yyIrV/+ptaXUkK+WFL39mmsBb5ztEreY/6bGFjXTvaRBWje0C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709227634; c=relaxed/simple;
	bh=853yl5T7RBe14Q7Ic1pdq6lruxKv/bJ3MDmBIIZWjSs=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=kJ0R4IR4NQzLxaX2w20jUuOai2R1n0Bzu5sOcJbJakpO1cF/48cqSaga7Ic4ZG/FVMtlTUXisHXuuFW/du9TMMOfTAlDaR/DPNsJ8fyyXPOc7cL5WJE5ftP0i4FnSRw2Lu3Ywlu16WIHr1/CMBxOxUuIwecyg7D2Pu08+k2fLfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gateworks.com; spf=pass smtp.mailfrom=gateworks.com; dkim=pass (2048-bit key) header.d=gateworks-com.20230601.gappssmtp.com header.i=@gateworks-com.20230601.gappssmtp.com header.b=D7HArK7v; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gateworks.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gateworks.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a3e550ef31cso176202866b.3
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20230601.gappssmtp.com; s=20230601; t=1709227631; x=1709832431; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=853yl5T7RBe14Q7Ic1pdq6lruxKv/bJ3MDmBIIZWjSs=;
        b=D7HArK7vr9IhpSKV4M7w9oNNLRVkDv2nHrmMYoHqdMt3zlGxuvyFgItSMicyJml6zy
         zZ6lXJvw0qlj3ASNSRgTtfHhyzC9sh0kKmneDlV6lUWixHQ5zCQJo8KsdqwJ0chIljsk
         kPJe/XsoRDcHWJQF+WmkSb1V9DrVaZ5r8phH9+ADImYoVCvZHf2WYMK/COva+614TbfM
         Mb6hk5q7btSiXvxqyfEGtZKaPHJdauIsLlnyLmFJGmPgyA3mepWUSms1VyPvkX00uIPk
         Q7rBPDv100R6vRzeoNviXnB3wxIeYzHXRZlBjUcvpvjK7ISa4lH8kmAyZesldhxIE2k1
         jlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709227631; x=1709832431;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=853yl5T7RBe14Q7Ic1pdq6lruxKv/bJ3MDmBIIZWjSs=;
        b=v4SCK3dsJMJNSFgD0pVYWN9jNy0AFgS90ruJcKwgpuRNl2UmzjQa32Jlba5iB0lIQZ
         fTqBqVfi4G04CRZNEGhdS1abiqO4wgp4Abpy886f0p53DDjNaonqlzYV4NWgj5Vq8Cvt
         54C+Eph2jRMaW1V1Ayvwgf5L5clzBbHCI1iLYo034gVrxWlOUtqx15cU8CEf6p++iM7h
         tiBMeoJBXSsKxkitOXYT9nz20CcRsBXTdIAEXee7/TyM4iMhUr347FDeXsM+5jra9hkE
         k1pNVkdVBU15KwTC2dJZWKMN8Hfeo4FrxkuBCuhiZXFrKyYKoelCFeJGNdvE7kEg3dLk
         h1lg==
X-Forwarded-Encrypted: i=1; AJvYcCWP7RJG9A4snS8pr1JadAj9E6xzFO+5fSYI2/xaoIfS+kaAyn5c9Dm2BygKRofbT5dAs5UYFbarR+WHS2mKD/h/f/mP9fY+AOa1zw==
X-Gm-Message-State: AOJu0Yz4ykU/q/Z5WoXBVwwGidMlGz7TlG3kl4QcJwmKC9lE21lauKPQ
	d4Nf0y2SjcDZBq5mi13ZkcoVmrxYfMgEHVWE8kKtddfEHNVL18EwBNplgMOyVrkhriK7FzCg5pY
	jqmqNaWjmZbHKGrm4OFF4n2VawnKqF6yYSNGKxw==
X-Google-Smtp-Source: AGHT+IHY+BeReToKKxC+x9eEFVG469n2fNVsygBbwAcPapCF0QV3dnwOTqV/Fu19u/7jKdln3AQTI2lVnWJwQiLIPYs=
X-Received: by 2002:a17:906:5fcc:b0:a43:a4a1:1945 with SMTP id
 k12-20020a1709065fcc00b00a43a4a11945mr2004809ejv.75.1709227630755; Thu, 29
 Feb 2024 09:27:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Tim Harvey <tharvey@gateworks.com>
Date: Thu, 29 Feb 2024 09:26:59 -0800
Message-ID: <CAJ+vNU3y5pzqeBnr8LHDtJtU7zajfRvP=_WmAhP=cAp_3iGFQQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] reset: add GPIO-based reset controller
To: Sean Anderson <sean.anderson@seco.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, andersson@kernel.org, bgoswami@quicinc.com, 
	brgl@bgdev.pl, Mark Brown <broonie@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Device Tree Mailing List <devicetree@vger.kernel.org>, konrad.dybcio@linaro.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	linux-arm-msm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>, 
	linux-sound@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, perex@perex.cz, 
	Rob Herring <robh+dt@kernel.org>, srinivas.kandagatla@linaro.org, tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"

> On 1/9/24 04:41, Krzysztof Kozlowski wrote:
>
> I think a separate pseudo-device is necessary a generic solution. So I
> guess I will revive my patchset.
>

Sean and Krzysztof,

I see a lot of value in a generic reset-gpio driver that you have both
tried to get accepted in the past. I support boards that have a number
of SPI and I2C devices that often have GPIO resets wired to them that
are pulled in hardware to the in-reset state and find no support in
the various drivers for reset handling. I've often wondered why a
generic gpio reset wasn't supported in the SPI/I2C cores like it is
for some other subsystems.

The approach of a gpios-reset solution makes sense to me.

Will you be submitting a follow-on series to your previous attempts?

Best Regards,

Tim

