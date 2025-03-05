Return-Path: <devicetree+bounces-154289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D14C8A4F94D
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 09:57:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7D80188EAC4
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 08:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3415B1FECAD;
	Wed,  5 Mar 2025 08:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="E91BkuPI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FE91FDE0A
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 08:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741165005; cv=none; b=VRB1qMbUdxMGXCZ6/vDvyYCRqp85q0XgEgUbo3zSvfHKKzdAbXM3XHD+v35TxYvgUOn/wU9Kr9Hrjvms80I6nhU5PH4EaaQ/THixpZu1Vr5Usbvtm1nGZiNLYWRu97077DeNzgWbnwglIJl4c4IGQJHfOo2MFDXArPIYd5Yioc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741165005; c=relaxed/simple;
	bh=MdB85ZcPm8v/V2YtsHgVtSYH4zfMxt4J5oHF0yYVGyU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mvh0grBz0bkuLnCewoI5axkR8wFlFq7xT4SudD46QzzU9/wIanJCyM9MqgGA5/T4LhK7OezYpwuwgZgBGF0zGWbVRlFC+NHvTUfHhFYkv9OmbdllSIFn2Zp8GDmTzUvNa4lEMEmI2o7Ero84BCqHklW3C+10yr+uyDekjbgO1d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=E91BkuPI; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43bc4b16135so18261705e9.1
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 00:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741165001; x=1741769801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Fuv0TDvt2J50qLsgdzrl3qC7n/blSVSUBhsKPFPU+Y=;
        b=E91BkuPIeUYfMcnTyNokmzWbTMua3YEMe0zirdFW5yT9xxIkxFVODfiqOs73p73Dj8
         Xc5eAofl+WhV3hj8G64KEo4YTrfGvyh368lc9h3B2/zabFThFNDc/ztf95TrQGJF7rDX
         C2TtfZJJj6okUP/OokIksJmle2ImDzdzE3VKWTUlYviHFbAYAj9FCux2NqM2bnBCxOnL
         czXfN5iixzFp2uxGiXBtVOgalHtNHZqZJhFi1/ucoW4dbyz3qgq2jtalE+cspd3VVdXO
         WBHlT0W3iVwgwpl8B6iidh2c2XVnaAPalKiZLwfriYsENBUZb2oenWJVGRBGR8i7iKYD
         NuXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741165001; x=1741769801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Fuv0TDvt2J50qLsgdzrl3qC7n/blSVSUBhsKPFPU+Y=;
        b=D76Wet+H78pqZ3R/LVMhItoWjPChcMOwLdd/bamKXp4ZgETzS8FqRFuXqQQQPhnfDs
         DgaNY4QmlIixQ1n7dgdotbDUyKiXCYOOhQL5AO6IhGeeVMrDUdwsZr93vR6pQLUoDgT8
         tVEI8uzQazSrSER2kkU2vnJENDjHRpdts8Ek+61dEWHrLhIC3neZLDCyGg9EQk7plcJf
         JJNRMbzPV8zPsO6ZtbwEvAJdKCyTSGS80ANtAqytercfArV3jzfZ8gkl3StqNGosVf/b
         nwGAXXmK6v+g80boXDY9yGU0/snkr1g8jpCyjISgMnTsK0dLTga2xq04xQ1x6s1DiGBA
         WeDA==
X-Forwarded-Encrypted: i=1; AJvYcCXQ/6YuFiTEXHmm8i8gk5053Sn90QIqbwWc7kU4gMLay1JMXOsYAt6TjHx4u26k+x75gX7oDrX1zv/A@vger.kernel.org
X-Gm-Message-State: AOJu0YxfjygZpwHRi/P61lCJQd9qfEhjMOKOL+NiqOcUSHpStAipk3Ty
	3AMsGQY6kKCnBh+z09j+6ACatAVC3WOZMSosmuUque9gq722KX+MvF9cSpouXkc=
X-Gm-Gg: ASbGncs1eTSVNFaPFRDx9uq/9uaG8jiS2QD3CNRQIB4djkRQIyoCKmTBXlHbpW40+TJ
	8nBLx1cpQAbi6HUtr8SALl9xWhu71T/MKHZhJmz9vSj7qW/J29O1Ss1F5sVWSs4TRsPQMWAvbFC
	TSWrDoRjPQEFhD/U0J/wjrKweMfcYB/10mw9rcgJZanO/AvPi45vaVb0ATBOgVEHZrpYhGw3GZy
	pEguJtYtRQeTpRi/jSlJO3DTrE0CazA7FRd/HFIbMxMZf2CzgAIgREz0HrgrfsZY8cXwJrTCoaI
	UubDud6bO6Le8xs24rprIeEAYY6hSsQiLfbgk/ROH92B
X-Google-Smtp-Source: AGHT+IEjTeOshg/et4xsAiyT8rCEdbinKDlmt5E8tVs9hXKleiSIZhgrtg7jQiHngwX96hNKwI634A==
X-Received: by 2002:a05:600c:1988:b0:439:9377:fa21 with SMTP id 5b1f17b1804b1-43bd2aed6c2mr12768215e9.19.1741165001227;
        Wed, 05 Mar 2025 00:56:41 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:e514:53b3:5af8:e408])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e4796084sm20652588f8f.19.2025.03.05.00.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 00:56:40 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yinbo Zhu <zhuyinbo@loongson.cn>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Huacai Chen <chenhuacai@kernel.org>,
	Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: gpio: loongson: Add new loongson gpio chip compatible
Date: Wed,  5 Mar 2025 09:56:39 +0100
Message-ID: <174116499292.21788.16321684566048827154.b4-ty@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250303074552.3335186-1-zhoubinbin@loongson.cn>
References: <20250303074552.3335186-1-zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Mon, 03 Mar 2025 15:45:51 +0800, Binbin Zhou wrote:
> Add the devicetree compatibles for Loongson-7A2000 and Loongson-3A6000
> gpio chip.
> 
> 

Applied, thanks!

[1/2] dt-bindings: gpio: loongson: Add new loongson gpio chip compatible
      commit: e4a345c55e1b9b5ab5212a93b081f666f71b303b
[2/2] gpio: loongson-64bit: Add more gpio chip support
      commit: 44fe79020b91a1a8620e44d4f361b389e8fc552f

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

