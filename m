Return-Path: <devicetree+bounces-52143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BA28857D0
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:10:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 875331F2347E
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 497A95810E;
	Thu, 21 Mar 2024 11:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mApNJrVB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E242B57303
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711019453; cv=none; b=guOLxWfO4SfhyEiIxHUGzNtihWcgi73nITRVgQv0gwR4k8/AKaWt9fkDj+zSMk4DF5s+MZBC0zMCjyk5Fgd6rt50Ta1xVyyiD4KiP7fAXor04d9p2ONUtq7tJCOPvJxefiFSTnoYl/9GdSp6kodiCyyOgfdpPIb4DT2wgueSGek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711019453; c=relaxed/simple;
	bh=HiyzjWuZe4akURA2KrDOEK/6yEjz2zKACEidUJroprM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rHsJYdrOCHIf/bXVO/sN0MfzWKcJ0RjLFQD9qD5M9qGNtG1B0nplpM2Cw7nABh62XQo/OIoA3wFndaWZsiFhokf6Xt2iKVHI5/TETaGILiuyOy1NKkUulj7+FOyIrfRYtd0cyHIEGW9pG3REZA3sfmjpPZMVQEmvt8rw4sEgmVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mApNJrVB; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-513cfc93f4eso935344e87.3
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1711019448; x=1711624248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=42mZaGZ2xKNdpcKyZrDEjFTU384gr6H3b1H4sGa8VMM=;
        b=mApNJrVBb8v8XSuK3Kxdo5ttrONIMN7nDfjTyU36ebishYaIzfVufZ+SDj+WJPlL9/
         g/oofo5+/Z39wn7qAIQCvimHZZYoh+91oevXMfo/Qe1ew+QOtW0DSL5CYCNr+lS9mkWV
         qmpVrjXcUD/Jxk7SRrCd01XX7dQSmWrFXH2TjHPnG2EZ+wxwYr9NaROkIkGtfijAoRyk
         SSv0Iyz4s8RzPU/3BIj7MgpDb/Eoip2ZU8bkbbWMs8CEZsvSaA5v+LyZ/lbxelv7RybN
         WsIHIJPRdnlbRK2MrJS4qo+5L+KAMQWLO9ivgLrXCoFDDgYCzJcKEOZZBI242UWUTW6E
         Wp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711019448; x=1711624248;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=42mZaGZ2xKNdpcKyZrDEjFTU384gr6H3b1H4sGa8VMM=;
        b=bU+NIZdFCrb2mjFCXfXvr/g7yCMiFJt3KyfbkO8KdJYPzVechToHs6m/rCpuHKMiOu
         vlZgWfzC/6PZhRglQjrzbE/qzM4rgDqL9WHUZSmrbLa1FJoRQmcDQxpOYTEQC6MukXoM
         bYcFpYUXjntFyUDM8T77YzwAN7zrt33KslKaFA/Pd689peLfqQG5a/c5ddqGYjoW2UXX
         ThISLU+U4y9qGdNiF1oizvzQPH0hCj2UPbMJZ535+Q/11ior/EpFocB/50dJRiNTDWns
         43cmwoq8D38g8+Y/MPaJXu3IndOXhsjjfL4iL7VObEE+fXbB15YBjewlGkyb3zF4Ls9z
         szeQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8/ueQr2ZcU3KSFaN2JpBpYWy+o5nzOPWHwK33RPYMVr4mR+iziKgZzPIrh9MDifUwQP2dlYd3qT6p7M2YOBkhRecYy4x33eD1wg==
X-Gm-Message-State: AOJu0YxcFrVU0GuEcpKTT9W+pu9XOa7WHE12TGL70mk2ol4NBgSCf6x5
	RBTuWvTZCM1TY840uTV+yTz/hnojOzRjIbu7Ddq3O0C6Nj9RMqp7RIIEyG3YKOg=
X-Google-Smtp-Source: AGHT+IGvcTh7vN7pxLf6gj/1+af1/5TJBaNI7eIf4z/0IrIp5wE80J6I1g6vqN8ZvmZqy22AS4gfrQ==
X-Received: by 2002:a05:6512:10d6:b0:515:9568:fb14 with SMTP id k22-20020a05651210d600b005159568fb14mr854610lfg.46.1711019447705;
        Thu, 21 Mar 2024 04:10:47 -0700 (PDT)
Received: from [10.3.5.130] (laubervilliers-657-1-248-155.w90-24.abo.wanadoo.fr. [90.24.137.155])
        by smtp.gmail.com with ESMTPSA id p11-20020a05600c468b00b004133365bbc6sm5211020wmo.19.2024.03.21.04.10.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 04:10:47 -0700 (PDT)
Message-ID: <775348fb-3227-4609-b4aa-c8a6eddb8953@baylibre.com>
Date: Thu, 21 Mar 2024 12:10:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/11] pinctrl: pinctrl-tps6594: Add TPS65224 PMIC
 pinctrl and GPIO
Content-Language: en-US
To: Bhargav Raviprakash <bhargav.r@ltts.com>, linux-kernel@vger.kernel.org
Cc: m.nirmaladevi@ltts.com, lee@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 lgirdwood@gmail.com, broonie@kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, nm@ti.com,
 vigneshr@ti.com, kristo@kernel.org, eblanc@baylibre.com
References: <20240320102559.464981-1-bhargav.r@ltts.com>
 <20240320102559.464981-11-bhargav.r@ltts.com>
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <20240320102559.464981-11-bhargav.r@ltts.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/20/24 11:25, Bhargav Raviprakash wrote:
> From: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
>
> Add support for TPS65224 pinctrl and GPIOs to TPS6594 driver as they have
> significant functional overlap.
> TPS65224 PMIC has 6 GPIOS which can be configured as GPIO or other
> dedicated device functions.
>
> Signed-off-by: Nirmala Devi Mal Nadar <m.nirmaladevi@ltts.com>
> Signed-off-by: Bhargav Raviprakash <bhargav.r@ltts.com>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

With this patch, an issue is observed on am62a:

root@am62axx-evm:~# dmesg | grep tps
...
[   12.122631] tps6594-pinctrl tps6594-pinctrl.2.auto: error -EINVAL: Couldn't register gpio_regmap 
driver
[   12.133216] tps6594-pinctrl: probe of tps6594-pinctrl.2.auto failed with error -22

Without this patch, the issue disappears. Do you observe
the same result with your am62p ?

Julien Panis


