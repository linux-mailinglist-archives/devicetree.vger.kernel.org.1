Return-Path: <devicetree+bounces-67832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C548C9DB7
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 14:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77951284546
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 12:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48AB61339A2;
	Mon, 20 May 2024 12:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="y976RHh7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50149367
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 12:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716209629; cv=none; b=oaoggh7jd+JJWTKzIdm4KTt7S1NGgb99sNO3qykVBI9977spUgEmgQFq5vK8Ac3DqEqVS6pooA/s5/r0It6unqTfj7wt1e8f/c6id/mKCURs3/iByVK8wgo+5OS4/7xUk10afFSUVVd2rWchu/RMLFfdu5a++lN01JjaRASC1X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716209629; c=relaxed/simple;
	bh=XpTS/UOJcc9WbuJR5vn3xPlMLUss9X8Ut2VcUbv1GcI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jwZ4vsTSO/6uAms+8nXYfQaDJfwy6BaEkqNy8PMyFpxGgXzQOfstuMEi7jzC22xnqw9Xfa1vGG7IEcA6yMunqQrRbNuezcI7h0M4ANqUSz6MFhniav4qKFwNlv7dAH4oPxEIfDnTbG+H9/AkcrKl2ZLTEaJFuLNlHEseiurDLqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=y976RHh7; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-351d4909783so2101487f8f.0
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 05:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716209624; x=1716814424; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XpTS/UOJcc9WbuJR5vn3xPlMLUss9X8Ut2VcUbv1GcI=;
        b=y976RHh7jUFdKkMmWzWd+M5E07mzTUGkp/h6nvf6SSXkSqUyDkqkTch/GvKXzEVdpa
         m/2qKTm2hjhRlfYuGh/eekWJlWHNV54YHryUG9Ab8C6axB+luDw2L0zfva1/1QU/+0Er
         vXzgEpBWUJ8qILqpDwi7uK41fdj5r1Hc+BacXK5cqAGM3W3TMbDxfDQVhDmLbS4qV/u1
         5egMYT3aZjmnqHd6Fm4022oYcPjo+7xFW6IQ3R5aQKiwJJvx8PzKUkmd4oQgk9EWVFCv
         NNqHVDwhcCaEEcQKPV9fijGDA6TpR4iL9hZ/gm5LzH/ajffhR48FpocZ+3pozF3Bil1s
         1tew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716209624; x=1716814424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XpTS/UOJcc9WbuJR5vn3xPlMLUss9X8Ut2VcUbv1GcI=;
        b=r9ULlNH4bKEE1S17Lf5jNKajiN+op2TfVSSmqSyLdeAK3UUNLZz7AWrB+vDtG3ic+C
         T+INJep+UY6VDx1Aakq/H6FcehM0i9f3HVDVmSKAXSDRGGZeMud8e5VqmTu6vmUfC9rp
         fDk7hC7O9TH+Qkutz7QpZo+X78Vn9nFOc0PXNOg3DzIRLyEqO+KyajGMKp39d9kIE1xm
         D6kJUQdGekFto+05ytjK3U15iwuf9RiA/j+RYOzMW8PhJWfuFccCehJWLngKJUeYskun
         pEeF/f+k2xwE5MHSDiMtNy4dh9o8FQ7bhnccz2V4BRj3ARJcm9Xp7S0VPbvo52Sws2Kr
         XuLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPwY1DaeaVVwJkPHAxRkJWOP5NXVxGjDHFVFtXkWrZybKbFcqRxVw2JarRdcpd3IlZA5le/e2G57r9RQjtIuefXbmXlbPPjMlShg==
X-Gm-Message-State: AOJu0YwFqQCV6PkNF3agpHdtgoyqmFquVinpNZaWzBmBcRXdOO3xrWjf
	YY5EORuRJR4WKDh4xJY2n9ixjfOD0Xhxzp2tMnxOxR7UkFwfTszrfEgNLgvWfJ4=
X-Google-Smtp-Source: AGHT+IH3TUiR89Y7ynALFtrZoHqN4V0wClqNFYlgiy6j8bhsqgAWhVOwSDHKAiedHWew5HkCZs07ZA==
X-Received: by 2002:a05:600c:4e8c:b0:41a:408b:dbaa with SMTP id 5b1f17b1804b1-41fea539875mr229021755e9.0.1716209623945;
        Mon, 20 May 2024 05:53:43 -0700 (PDT)
Received: from ?IPV6:2a01:cb1d:433:4e00:3518:6eec:d551:4012? ([2a01:cb1d:433:4e00:3518:6eec:d551:4012])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fe004eae9sm407632325e9.1.2024.05.20.05.53.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 05:53:43 -0700 (PDT)
Message-ID: <eae892e8-f888-4d15-85a5-c89b6b6825f7@baylibre.com>
Date: Mon, 20 May 2024 14:53:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/15] Mediatek thermal sensor driver support for
 MT8186 and MT8188
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Nicolas Pitre <nico@fluxnic.net>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, linux-pm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Cc: Nicolas Pitre <npitre@baylibre.com>
References: <20240402032729.2736685-1-nico@fluxnic.net>
 <981a8748-16d0-4744-b097-aa9dd14c63a8@collabora.com>
Content-Language: en-US
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <981a8748-16d0-4744-b097-aa9dd14c63a8@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/23/24 11:22, AngeloGioacchino Del Regno wrote:
> Il 02/04/24 05:25, Nicolas Pitre ha scritto:
>> This is a bunch of patches to support the MT8186 and MT8188 thermal
>> sensor configurations. Several changes are needed to cope with oddities
>> these SOCs implement.
>>
>> All values (calibration data offsets, etc.) were lifted and adapted from
>> the vendor driver source code.
>>
>
> I picked patches 7 and 12 (and also fixed them) introducing the nodes for the
> LVTS controllers, but will not pick 9 and 15, as they're either missing thermal
> zones and/or using the wrong names; let's wait for the next cycle for those, as
> I will also be able to add the SVS on top (needs a bit of time for testing),
> getting both SoCs complete on the LVTS side, without rushing.
>
> Cheers,
> Angelo
>

Hello Angelo.

I took over Nico's work, so I might have missed a few things, but I'm
a little bit confused with patches 7 and 13 (you wrote '12' but meant
'13' I guess, didn't you ?).

It seems to me that patches 7 and 13 were applied in next-20240503
(f5bcf8ab0950 and d3dbc472ac66). But I don't find them any more in
next-20240520. It's likely that I don't understand well the process, but
I prefer being sure...Should I resend them in next series ?

Just a comment about d3dbc472ac66. There's a typo error, I think:
nvmem-cell-names = "lvts-calib-data1";
...should be replaced with
nvmem-cell-names = "lvts-calib-data-1";
...according to the related yaml.

Julien




