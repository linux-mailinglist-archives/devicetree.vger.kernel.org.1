Return-Path: <devicetree+bounces-165410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1940DA8432A
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:32:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E99873B5664
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 12:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF71A283CAD;
	Thu, 10 Apr 2025 12:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="wAcr0Kz7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD682284B50
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 12:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744288361; cv=none; b=IhRcjsU/mxDgkixL/VTojUeVisBsMylLZ1GK7MgqTAsIYyUBdZuR4aiRD3PGJ41WLUqNsThfCk8dHuF7Efh6HWnG6fFmKt5zFnk2jhRlPqjZTPSVtbqrkz3N5hOTi7HtfcXKzgxFqHj7aJAwpTyc2V/FCFa7WwF084Z14aIYL4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744288361; c=relaxed/simple;
	bh=vaduyXSktTjHWIM6mMUVuzB/JU/7o9Vgbb4ojf5mTUE=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=LMbhJ2WjPQ4k4k2W1G3XO/7RdR1q2IpKaaCOvAco9wgeK0lrG330rU7MdggwKgiPvxOOLftad9OmsQRYdApjQsxLxzNr9Xf82VRTyNA8UteVfArRyOjiH7+nWfluJaKx913L/MtR1BMliuU1Rjc47gH4qGDacNONEpCAqYRQILI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=wAcr0Kz7; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2c7e5f7f0e3so159576fac.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 05:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744288359; x=1744893159; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GvSNTACO1SZCY31F0gRrZZq+wvkmlB8UFBxIZ9DVjtE=;
        b=wAcr0Kz7P6zFsFwt5BfIPOsSF+2tNShxV8aRC1lu6GJ4Og3+aB0bcFOUrzv/M3dhKv
         FIebYKdLbbqWlwVw8ZejZFvl15rw2avJp2inoI7GNJAGz+iGp9Y++3ZWu3yqGmpB0Itk
         FPYHH7KjpeZ3jx0R+tVjcTJushdG4J4JpDy0yUEGNvMS/JAZQabieAIVeKExMqqt3WkO
         nVO3vw2anuWnBVpq591W/UqcgkpGisHHFiRi5prN9Gk8PbeNpCkjvuNgcisQKMYT7uH2
         /FYTnyTIMLfyipjnKmdZM2sGCjyJKEK+ParzF+zONIfNGoDuDVJCri61PuOZv+SQRF9z
         QZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744288359; x=1744893159;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GvSNTACO1SZCY31F0gRrZZq+wvkmlB8UFBxIZ9DVjtE=;
        b=HFEf4/aKu8K5n93niEN6CR6GfYgFXt+cXyW1iYiqCr2HVtjcr8tr95ZrDTwuZ9LXXf
         szs9lh1urK4QrM3hDKlh/WsM6KovQWqPHi1oXJvX+mImKT1fl7FeEtRmtWT4bJRbINfO
         YReBELxpoairHsnCXlJYavEnTvcl8HbKgHqiXzs5IODQ0pjJMqIHrtLc9EZh0YBy3tG9
         xiAXrUGijmJucY/LC18FwBHu2hvjvXRBG4NlEs4vdRrbENRcHV5LO/sBjN1ad6JnBaAF
         WIx2zDsglbtVYTLD1EOERK9nRmglG7WbK7LkJJuGZ9B8uOuklELTO+nwn2SsmwswIVJi
         Wpfw==
X-Forwarded-Encrypted: i=1; AJvYcCXBmKBRw/wH10YMGSqDO9VjAj2LARsYIO1+m8bajcVn7ddQA4wPZ4xqgP26xWjASfxrbxEa4I+9eGTQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxeCSelDcw1EkKsXOMQvPa1gMkZMhm1fmXtCtrm2Nzm5LNe0UmK
	aqxIjJvbXXM1hctJrlNBhAI4nKFyvNC94y1uV73RVf+hMHkPSB92OBRrbBC/D5o=
X-Gm-Gg: ASbGncsmXn2KEwZga3Q1AYi1rmIijML9TqUTWe1lxu4+kDpTl8ZXttpdEY8TIWtjCWb
	IkxFTdFDaHYC/Wxxk9tuiJICZMsjve+P41/WnhYlK/E7dPnLe/jeUzvps+MX8T9RgGj7/GMAisD
	cnnz3SjoJ8Md53S7eVG3IzhbIwb8rZXfZm76BHHVjQbZu+1pvg4TmrSNJWNwNFCq7y8FmClKCz7
	y0aZqXDttY5xaSVSEwFk5QL/28gKHLZxFLvKobAt3/MS1wWv0JIWKu7sDK18gk6LNwcDGiNUlsR
	NJo9HIirB+qVA4tDNrsK5X/cbn27YLSAPUxN+wVVsdpgr2Bjk24wxb3xI9gTu+0DgrMbnObc/2/
	OcHNm
X-Google-Smtp-Source: AGHT+IEJuAZEVXhBtSWrNjlEQvBiq7KT4K1Km9MSzZyjIkHUjkvVril1VSVFFBGM/J31v9xCTSVpWA==
X-Received: by 2002:a05:6808:7004:b0:3f7:f7b7:88b with SMTP id 5614622812f47-4007bcdc348mr1582330b6e.21.1744288358751;
        Thu, 10 Apr 2025 05:32:38 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6045f5b28basm505694eaf.36.2025.04.10.05.32.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 05:32:38 -0700 (PDT)
Message-ID: <0ed3ce4c-9be0-485b-a1ea-6a34931179db@riscstar.com>
Date: Thu, 10 Apr 2025 07:32:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/6] clk: spacemit: Add clock support for SpacemiT K1
 SoC
From: Alex Elder <elder@riscstar.com>
To: Inochi Amaoto <inochiama@gmail.com>, Yixun Lan <dlan@gentoo.org>
Cc: Haylen Chu <heylenay@4d2.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Haylen Chu <heylenay@outlook.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev,
 Inochi Amaoto <inochiama@outlook.com>, Chen Wang <unicornxdotw@foxmail.com>,
 Jisheng Zhang <jszhang@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>
References: <20250401172434.6774-1-heylenay@4d2.org>
 <20250401172434.6774-4-heylenay@4d2.org>
 <8fe0aaaa-b8e9-45dd-b792-c32be49cca1a@riscstar.com>
 <20250410003756-GYA19359@gentoo>
 <dm4lwnplwcxj3t3qx3a3bdxtziowjfoqdy4vrd3ahmzkhejrov@fa5rujatatew>
 <z27ri5eue43ti6b2te2cbxiow66mtgbnyudoo5cs4quabgbx5r@uipzoxvfoysi>
 <a8e5adca-8eff-4bbb-a7fa-ce4489b63fa5@riscstar.com>
 <sl752im2sn5sz6yzc23ctprh3rwryuhgtggsaauxixn3b267ag@6sf5fahu6b5i>
 <20250410015549-GYA19471@gentoo>
 <f7cun6vh6lv7q2qdgba4a55wjv3v2pldl22xnrqxnurj3jlyk7@mvafnye3wv7m>
 <cb13c955-3994-4950-9c28-37703f749b0e@riscstar.com>
Content-Language: en-US
In-Reply-To: <cb13c955-3994-4950-9c28-37703f749b0e@riscstar.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/10/25 7:30 AM, Alex Elder wrote:
> 
> I'd like to see that be the only thing there, and have
> various SpacemiT modules define default values that
> depend on ARCH_SPACEMIT (or _K1) in their Kconfig
> file.  Like:
> 
>      config SPACEMIT_K1_CCU
>          tristate "Support for SpacemiT K1 SoC"
>          depends on ARCH_SPACEMIT || COMPILE_TEST
>          default m if ARCH_SPACEMIT
> 
> I *think* Haylen said that's what he's going to do.  You
> could make it "default ARCH_SPACEMIT" too, though that
> builds it in to the kernel.

Nope, I just reread what he said, and I'm mistaken.  Go
with what's preferred by the clock maintainers.

					-Alex

