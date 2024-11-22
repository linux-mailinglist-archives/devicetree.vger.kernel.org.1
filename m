Return-Path: <devicetree+bounces-123809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F3B9D613F
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:17:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A00F160522
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 15:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22BBB1DF99A;
	Fri, 22 Nov 2024 15:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MS+pMZ60"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C121DE3D6
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 15:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732288573; cv=none; b=QrTUUkfVd94tG9u/oacNrM3iGURKnnxunabWbTySyC+riT/VVy1zFNHlIJBMJ2GRGqRfmjMa7o3AXQnnl6fzJygVLqYcxWR+rbz+psJ0E77EjBxzcEkuRXHUwMFzmxPDMddGZzr/Ab0lIAocNL7dU/0Vk6YFYa1d7fczF5uMp7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732288573; c=relaxed/simple;
	bh=5rrwq32kEK+fI/VP1Cfd/uHvFlAf1s6u5eFPfyluEOE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SG+zM+2t3xigYmhIgnlWOJxM2AXYA7/D4TPQ8KiJjvH6pilb7AT6z4LctjfKQUftX1dM3Mox+Gcvs/UMXxI1jjQHSJ+nZ02jUeeuZdQz77XiQ/bXVyLRYidxRk8z+4QsDw8ii0zcCWmQ7uiql/Z8/5m8saJdNfcUSidtNMinnGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MS+pMZ60; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-460ab1bc2aeso13507501cf.3
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 07:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732288570; x=1732893370; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5rrwq32kEK+fI/VP1Cfd/uHvFlAf1s6u5eFPfyluEOE=;
        b=MS+pMZ602PCykqd+3Rw1A1x995CzHE9EnTKnH4rsllnmx1Ra1T8fXckEeFOzvVoIQV
         S+B0tdTCsylxzgDnEQGnnYI5Wa0jHWUooPsfbV9CcVsFjQhzD5nslxXQ4nm25fA40EmJ
         mvGe3ORan/JnWouYXVwzNYkIpJgMdLGPMegvxXHwuoKw0xPyfGFYCrxUR1qhlWsRureo
         8NzHCWRS4tNn5UA+xew5RQF1mKexAHtKKgNVSG9iEjUWCUCgkZ8zGRFhXKXslT6oUzrt
         /RZloufl3KjEoVBnZ1KyFOdg24Fqodnim4gSWCHK6EsPoXGlh+5cMzuFwjxn4WgDJIkc
         9+mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732288570; x=1732893370;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5rrwq32kEK+fI/VP1Cfd/uHvFlAf1s6u5eFPfyluEOE=;
        b=fUjD0XQL8416NLWcoq91GOiwb9ufEaERxwQuwlI1nPbuq3LiZHFAkGaq/EJ3p9eG02
         fzb/BxqSf0qMXklHXU6eWGW29+MDDqNe19N3ff9C1gf7kuZqbcEMRKrenkLJ+DEGlxxn
         LXy2Vg3zy4jb8Zt9EgeQJi2OPNTO7lOrvFFWVQJ9m5XHr7fn3Tc1hagGElgslCH1VY3I
         W5MnexXjKr4Tt8pXvalYLIeqJ8PAapZNK5vQaZqh9ivaElkt74lXJcO36+vRtctok1SA
         qF/ik0eLdXBziumOmmDLziG0fleGFvNoqNQQC+2pPDjAhajaTZABu3vJD49fWIPzAFiU
         qWRg==
X-Forwarded-Encrypted: i=1; AJvYcCUJYTF4yQ1Muih/diaF7T/ATLM/uYM99b71QFzph7mVy0SzRJEq1l687s4Ib6uFQKhzUS8D9yLD4Wvk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl7z6EVZ2S7qXBlIDM22I67kGsraY7BWLc47H1NBkR0faN+buI
	NKx3hFum3cAHvrW5zfNYxBSVZbvUN1BgGek2+pdxdn3TeojCDsIc/FLnlxIQ40Q=
X-Gm-Gg: ASbGncucl38g0V7Qb09K69v9VzEsEnU0jrUMMegcINg4wHhmLKAzXbB1tJ7HrkjXnVD
	7Fm0MhGoI2xijqxCwQdeg/j+nauSRu4Bj4EWm9qqLDv3pP5cqubXxYrmT/lRKVpKw4iJmldRrCb
	+OJ0DNc1l9q0M5bI1sqc6yBruPNEkLjZuKNDo0lg8VXUktp+REOvY4gGj/mcDkBYpHvcjpV1Cdw
	m42G0d0zLueMN+pUWMpnRDX451xqnbvOeFZjgIa7D9NIq4CKNNsDbE2HHn7j7bl7CEg2/b/SAZ6
	frrrPcplStVReRToQA==
X-Google-Smtp-Source: AGHT+IFYmzB6ahOA7oyO0hzpIlhfyGNp+j0P3QoJogYyXgM/7h0/rO+wsgEgfbueMejf8XFDMB/97A==
X-Received: by 2002:a05:6214:27c1:b0:6d4:586:6292 with SMTP id 6a1803df08f44-6d450feaf50mr39784616d6.26.1732288570113;
        Fri, 22 Nov 2024 07:16:10 -0800 (PST)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d451a97d26sm10793136d6.42.2024.11.22.07.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 07:16:09 -0800 (PST)
Message-ID: <ac642b48-89fb-4f93-bc4b-30ae01773b9e@baylibre.com>
Date: Fri, 22 Nov 2024 10:16:07 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/10] iio: adc: ad_sigma_delta: Handle CS assertion as
 intended in ad_sd_read_reg_raw()
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>,
 Dumitru Ceclan <dumitru.ceclan@analog.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-17-u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <20241122113322.242875-17-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2024-11-22 06:33, Uwe Kleine-König wrote:
> When struct ad_sigma_delta::keep_cs_asserted was introduced only
> register writing was adapted to honor this new flag. Also respect it
> when reading a register.
>
> Fixes: df1d80aee963 ("iio: ad_sigma_delta: Properly handle SPI bus locking vs CS assertion")
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
Reviewed-by: Trevor Gamblin <tgamblin@baylibre.com>

