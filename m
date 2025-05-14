Return-Path: <devicetree+bounces-177265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C050AB6DF7
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 16:18:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D10723A5BA1
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 14:18:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3178319E806;
	Wed, 14 May 2025 14:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SRxzxuTT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C812194A44
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747232317; cv=none; b=NQZbf3AyIrC93KYxSRuq/oIsRLZ2pvJ3i4a/l0EG9fubO1ROXdPWtLMTdwf5GWJ4MFkaAQnnZgSAXdJyoiofxMoqmf2y8m2O5s9oTgpNDTu2d5vMWucTCOuBvJcqFvdOiaBovWC1mpkgfrMDJJrqMM9mPqYz3scu78YBb05R0L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747232317; c=relaxed/simple;
	bh=jHsA7WLaZAQUssN/Gkcz6ehZZJvqAMZ8Q9SHY06sn3U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PNdHUej4xjQnVtN50vDaBqekzHK9U/0JXcwB43G/UdvFgOmHmNh9S7EBpm9r4oHP2qh6HTff2zqW6/ksEAW2Py8M8Gtt1cSeQphXzxrz8dtfF0kPZCc/XeiruiGpQ3tj/D/bmScBH9huoXuhaerXQWUFsQH+25smuHMexjqoIFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SRxzxuTT; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a1f9791a4dso3218723f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 07:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747232313; x=1747837113; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rUz3GV+6dO1qGU9AwxqVGKIzfxuE+8NTURqqLEaoFC8=;
        b=SRxzxuTTbN8XuYsKfshneQIHrI5xt+1ppK/djF2971+1Vy2jJPp8qGCBQSi44Lb3On
         IoSuu9bwVirXecmJZr9wN/SZAibIDkPiBFbvrcXYxq0f98nanuoIxGhmRSAyzdjLHn5Z
         YZKICCCExK5lvbtaJQgGdWOGmTvhVZcFRCqwYWm3XJhDVXnqgyvMjz2UdAr1be+8IZft
         GSwAoc2v6qsQsTaW+4fQaie8L7gyAEzYNzB/oEPtcw96/OzG7FAL32/1E2iSwYUPTDyC
         MYWAjiNwuJ3Fxb4m/AL66Yj9MckfVVP019Uv49fTE5zB2LAg7Jk+e2Al5kuc6sbDDRq5
         GmPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747232313; x=1747837113;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rUz3GV+6dO1qGU9AwxqVGKIzfxuE+8NTURqqLEaoFC8=;
        b=FNTWO9GLfUK/6g/dIhZg5A0igH/AKWL00oua74ZCONlBVACarhzhpl3o5ql7PSVANS
         F0atEiGYrgl6wRo2/X2KirNR/Moo+7yGzqwqiXOZcgTxNCyvK2Jc4ESzzSjPog8lCpYU
         5InaCcrKDv1ohHTURX2PkK4r4zCTCrOFzWejrVLjLkaVcDQTnzaj1JTBakQt019wq2cw
         q9tDhUZidO0ofmgXNxlKqln0xmojbXuFPXpis4pNHvDcqB7z5VP26S96gN8HAJxan1of
         6+e+TbV7I2cAHnB1lGRYE+D9ULHlvETMzYwaOiK5ByKPY19UCxNoEnTPitpRYZo+iwpl
         4TkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFAUQWDBjSsOuiiA50pBqACOd1JYCg8EM9ilebTwk5j4tPPvcOVN1JGJa2DgLmvjLKX67yGs027wRO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc401fm9FxnMYgePkNnRoX9gh+0u14l1tuBiPMoB+sqCOr9FB9
	gZd8X35R42oGChXhDkMT0+c2kOWbBjbHw8OMzCLjGf3wnL6ZIX3EFHUGAMZvMiw=
X-Gm-Gg: ASbGncvv1qDd2hdXekioRhVltZNWBAN2wUQilSvcSKGvmGp1OdbbUTkYBTPbLGiByjW
	++ooxA3WE+8J4nXtZdxbCAgXrvD7FJTK/ms0pOFcwrTQ0UrHvP+YugCEy7f7R4ubfbAdW0Lf30g
	wCgdmZhwgHM5Q0uO6Uy2WL7BXrUdTx8EC22TTkzVJpifljoCbmhQ/al07Za9+K9Ehyvz7DJVy3J
	IewXtJ2IJ+/nfQ1SY4g9Ztz7JpgYFR4tozC3onJ+lOsBAEYhhY8SnjddQgZ29Nwu+AIoybLoXZo
	RBhMV5RU1LB/MnueGVc82cPTqC6eaa9NAezx5DmTwOz1Bq/7RU12YtSoS5J4D5q6IEVoiOzpDz4
	fPE8S1t4ACgTS7Q==
X-Google-Smtp-Source: AGHT+IH4+d+Pry2CNpgKUNvxX7a5CyUBEerUkhvVVYoJxhPCGMW/etsCZMqBlMg4OuejtHCSPvBihg==
X-Received: by 2002:a05:6000:40c9:b0:391:39fb:59c8 with SMTP id ffacd0b85a97d-3a3496c1ebdmr3217848f8f.25.1747232312583;
        Wed, 14 May 2025 07:18:32 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4c5f6sm19729450f8f.86.2025.05.14.07.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 07:18:31 -0700 (PDT)
Date: Wed, 14 May 2025 16:18:29 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	ghost <2990955050@qq.com>,
	Jarkko Nikula <jarkko.nikula@linux.intel.com>,
	Jisheng Zhang <jszhang@kernel.org>, Chao Wei <chao.wei@sophgo.com>,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-mmc@vger.kernel.org, Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: timer: Add Sophgo SG2044 ACLINT timer
Message-ID: <aCSmNRTVXQ51xj0m@mai.linaro.org>
References: <20250407010616.749833-1-inochiama@gmail.com>
 <20250407010616.749833-2-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250407010616.749833-2-inochiama@gmail.com>

On Mon, Apr 07, 2025 at 09:06:06AM +0800, Inochi Amaoto wrote:
> Like SG2042, SG2044 implements an enhanced ACLINT, so add necessary
> compatible string for SG2044 SoC.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---

Applied, thanks

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

