Return-Path: <devicetree+bounces-162378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 60327A78136
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 19:12:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B46C1889975
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 17:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A738F20E32B;
	Tue,  1 Apr 2025 17:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QICRop94"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C192EAF7
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 17:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743527544; cv=none; b=WbAdRq0OuUcnqOiqYGZ9pxucom2UYTY3/zPS+rOv7g07wnOncjErPQovXNh7Qo+Hki03tGQhcHXyWL6zaZouSKQnZ6lxxip4tmU/bnuvBLPYq2+CFhQmQIsU/ItuyGf+7qZXD0MwzxsMbH7ksSu+zJgnNqLidFqgMH+OtcYOsH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743527544; c=relaxed/simple;
	bh=BP5il8vEaAu9aTth6vD6KtGRpBas/BFDLnGP8Zck+jI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yy/y3hb/u6blxOEZxkPjVLe+2c9bgNsGZ6I3nVeRHmC6fYL0VyLoCiKVc99rLn6+F/9Ay768Ok2bLmEidvfkaxrsKzboVfYHckTrT3ahM4AVJUN8h8XLCyaaxhX5nhOMnHViyvP1UxS9v6Zzn0hfas54d1lrgiOiylF+nqNi/24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QICRop94; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72bd78e695dso1856839a34.3
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 10:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743527541; x=1744132341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UD+DYeYJxZX2qc60CEMQlzZ1bJFQsVcFTnUWz6yYLuM=;
        b=QICRop94zqRHlyWfyeq4ZekdlOkyntlvPl/GpH3z7Un8jXS9aMppFKyAYjHsC940we
         7l8zT0EiXuqdJUVPyPdtB+mUFK1dNhGje1NDMnZkHMMgMkNryV9dmNFw4GXFZc/aRCEg
         sI12pVp803RSR/zG7KSRB2nXZE5ZJYlaY+1X0+9HFzckUaFUt9dbuh8eDPYrjUnrzi0t
         yKDzHS+/5ziax0cLgqaTULwn8C5BMsWWdmYsLbj/oDGnckJMMOyUWGdVNcbJFSw0Bl6Z
         wXWN2oyJer8kKww2RB52yNWi9KeSz7zvD0nJ4VkLdDQbnSXJyWLSokIV+B0smf1nI5zj
         Yfeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743527541; x=1744132341;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UD+DYeYJxZX2qc60CEMQlzZ1bJFQsVcFTnUWz6yYLuM=;
        b=pQpsr4u4y6y31ZwhCBx3lgYh00062S7YvSIrN7LNaiDGqdF0BDuLp2GL3zZdUj4Jbh
         THxowFZuOH+ZONjG5WlM/qOCheCy4SbtyZLtNn8oLSjL9HJ1fC/AyyUgGjkbhQ9tYPIJ
         fC+j32jfWMbEi5n6a8fkA/DDgXh6Cm0Ho3LY0Lo3Gr4WfScCBOKkjWJc+2kQgyACktvw
         dbHUQ5pJAKHfFWCd8N21A/fHt1xpIi4BEC17Xj2421QjCKhCICwl/3W784POdC53v8qb
         r1P2taJH7cAhLMdw1/mGth4GYgawUmY3lz0lbwQcEHLEJxGKdZrpRzxiQEgrYnDhlvZx
         Owfg==
X-Forwarded-Encrypted: i=1; AJvYcCWjjUoD1ROB3nUEAB4fMowQxUIb6u6K4vBhbRizrcaxemsR6/46kpVzNcc9bLVpXsFROduJPmx2uess@vger.kernel.org
X-Gm-Message-State: AOJu0YzJveWAR0mBS0M9Xd3K12/ARgkv7ZXvfOYXwJuaL6KBkEahtXQS
	h3BHPJdCEQW/ZG/JkZ1YqoGK7FstWYy6cydUCCuRPqlXXwfDVXFm50cx5ykNpGI=
X-Gm-Gg: ASbGncv9QW19X/sHhxeVFNTeOH5TpbpkKjhjLVno4uRKrDDZVckQOV3d/Giy8lv/E5o
	MapviYLLRYHRQUNUa8rIu1jQUEcte6qI3/F0HeguPwp0YQ4BWdg6aqueWnGlQh5XK2WhnquIh+Z
	UcXokUmcrN24yXKyLHLHhO3JMmXN1gsrIHoc3t09DNepVYOAGNCor9mdqgSwPDh3wm0I1JRlCr0
	K5OFM3jHDlqOfIvwKMZUfMRHFpWWUVy341esEvMiuFyqoxPPOJKNRY4o2NlYBizsPC/yux6hyIw
	cCZS5zT1n2shPfxTCAFiisP1T/19K9I3cnpqDGoyi9tjEqg1f5Z/RVl4XQwYHhPyZgRg6Z73Xvc
	TElHp5w==
X-Google-Smtp-Source: AGHT+IFO98sJd1GOfYYUHbpUvxWXLRd7beck4SwvpYzQJESTfWe3OYpajZbcTX2Jw9Pw0NfMaczKjQ==
X-Received: by 2002:a05:6830:6509:b0:72b:9bff:abb with SMTP id 46e09a7af769-72c6381de2amr8883395a34.19.1743527541164;
        Tue, 01 Apr 2025 10:12:21 -0700 (PDT)
Received: from [192.168.0.113] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72c580ba906sm1921676a34.25.2025.04.01.10.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 10:12:19 -0700 (PDT)
Message-ID: <2d78031f-de8f-42e4-ad3e-42cff63387f1@baylibre.com>
Date: Tue, 1 Apr 2025 12:12:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 17/17] iio: adc: ad7768-1: add low pass -3dB cutoff
 attribute
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: lars@metafoo.de, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linus.walleij@linaro.org,
 brgl@bgdev.pl, lgirdwood@gmail.com, broonie@kernel.org,
 marcelo.schmitt1@gmail.com, jonath4nns@gmail.com
References: <cover.1741268122.git.Jonathan.Santos@analog.com>
 <2aa347a97e7ea974951609b0bdf81cad0b21b993.1741268122.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <2aa347a97e7ea974951609b0bdf81cad0b21b993.1741268122.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/6/25 3:04 PM, Jonathan Santos wrote:
> Ad7768-1 has a different -3db frequency multiplier depending on
> the filter type configured. The cutoff frequency also varies according
> to the current ODR.
> 
> Add a readonly low pass -3dB frequency cutoff attribute to clarify to
> the user which bandwidth is being allowed depending on the filter
> configurations.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---
Reviewed-by: David Lechner <dlechner@baylibre.com>


