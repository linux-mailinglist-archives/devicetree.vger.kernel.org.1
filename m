Return-Path: <devicetree+bounces-205982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 124C1B2B0B7
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 20:46:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C34A65E660C
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 18:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBC31270559;
	Mon, 18 Aug 2025 18:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tZdRi83b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0111D3314A5
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 18:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755542777; cv=none; b=Qy8N3/2H2iadomVW5CN4H2VS9kjmnsXErrIPgwTrPTZE3x0F58WJUI1UCV+cq/dpiaN6jY3pXo2OjK3JogzjZoV6IYrviZ27Dy414zsUNvB73RSg40B1yS1zZ4fW2y8LwIkGPR90ubPKmg8XMUlxhtMspnP0xZ/riqU1N0P8Rb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755542777; c=relaxed/simple;
	bh=C53WQThecyRHyG2y2doWAd9gG6VnMVqKUiUacXtVys8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GumB+KPIo92To9ZXZxiAtqEkr+gZRVIxZP4GNrU/Gxqri8MaRT4RATo2JFaYYnRm5LKIVLFSf662+V8nMzQzC1gQYdSUvyv23dZFcB7vG+nOhcLKeLNJrMClMCJRhf8AlZJy1vIgfwzBGqSgXY1pQW5LIIKAcOQqV82P5Hqfs5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tZdRi83b; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-30cce5da315so1348047fac.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 11:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755542774; x=1756147574; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xKwtzpSJXdc0i1E4Lfs0SQasfYwFsWMXD3Ma/0/zLOY=;
        b=tZdRi83b5/lGbwbqyUZCK7mV3MvjoGwbpVAVo5cHe0Gc1e985xD0G30vgFM2AUaHEB
         VdJF/MhJxmANr9c8mxvnVxPnwUJIgtJo2Dzt8uXEH1JpV/N8xRqv51PVAcNGeuqxsXX7
         NnM50nB+DU0YJGKj6uu04yy6Mc5h93ZuDhco+6InF1NiUDy7Gw7S0tMRCAuXdiTzs6F/
         nbSYac0zzv9AOxOI5URwnD8GkPNDIVhHkveb5syE4Pw/23bBiGzS/jgGyST0NiuR1ASu
         PVlmgBMIXrps4XE/ydhNswnSSCYI00Vnlwy6QPlV1YHeCh0Zd7TFDJCcYLXX0hRUNSBR
         ohaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755542774; x=1756147574;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xKwtzpSJXdc0i1E4Lfs0SQasfYwFsWMXD3Ma/0/zLOY=;
        b=gy5gw8FLgOHEt0dtqh01QfOHQv/zFh250xXS3JcXbQaELnbLI9zS0q5Ahec6Wl4jyx
         SeoXumtFMNCvW0ewb3f628mDPyf95su70oq9ViUFmoMnwfTrF9va3WoJFrjFLW3scNb7
         B0eP6A7dQo73gt1HCn6zUnE4iebc1c8uieMShuuiWLAds7hViRUtCFxIzehXeZXjkrjG
         vSgG+1owl5h3ctIagwCyfDiVMe3MMqrzU2ZDf3qv+ErCsOAQJlTQBuBw6anWlfey0zRB
         7Cbr9XyeOPNr/DGMWPUjR0pCgRDbAYEHDMufLcZYW5wJekZoujUJkN2mdbXjxSINtEHf
         IBaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUv93+NvwcrqFjPGs7aCKI11AFtRSDAwyUj4PtbIC034I4RrHu02eqJdHmHx+dtQOKv5tj6dPkipGy5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+F31wHqQL6CJaOh42b7kdsN8KkhxKZ+Qv+nNxrS06SXEIc5wi
	PGvnFeuLmq8Zp7O14RRaAT7rgm9hBgTG+l2IzwsUrt4CQFSJ7w0HuUJyB++ex5MNcH0=
X-Gm-Gg: ASbGncsPTat8hMfXvkwJdjzYxDu1k7BEVPOK2kKBWGoATd9Mj6iWIT1WgVvO3Xwpk3E
	IWhIwJlLSFD8qvm8qKg8l6SzvjQQikW4IqRQPuqREEDjtGMWRuBJ2qztA0ujJSE9YkLqlzSQ5/4
	Hnh4+L+tnF+vu4WBgVapDH8zqL3Q3CVbJcBDnsRYs/zLZzSH19+2xrE5I+1jzMOWSG+1foBEvj8
	yIRSl7PDJyJidEWU8gHQnhhticlBp+Qrphlgnd320heHnAhchZ1PfApG+20ceRtbwYRkkc8GcNx
	utiuDcSL+NVAYCFpmnIzkUxhMVnVz69YxQjxcxyZgmvHNKywdqyqdqUxNOL0LeHrlpLsUUa2Q4f
	lkJ442jaNNJi9EgY2cVNSFi8nah6vn0DfjIQCl+u8FYpgLNtF2yAxm3Tk4VZSrMFEoS+vHjL60J
	4=
X-Google-Smtp-Source: AGHT+IFa8rtZwWPOCpTppRhVyDky9XeYSaC4LBjLvLnOvIueLM8NbOrIzbBeJn1GmEaCymt6Vt/peA==
X-Received: by 2002:a05:6870:789:b0:2e9:4038:83d7 with SMTP id 586e51a60fabf-310be4c509emr5219307fac.11.1755542774067;
        Mon, 18 Aug 2025 11:46:14 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:ee1a:f057:94fa:9a73? ([2600:8803:e7e4:1d00:ee1a:f057:94fa:9a73])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7439204e556sm1987755a34.43.2025.08.18.11.46.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 11:46:13 -0700 (PDT)
Message-ID: <8127b81f-d2a1-4dfc-b8c6-45615ba9e431@baylibre.com>
Date: Mon, 18 Aug 2025 13:46:12 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Support ROHM BD7910[0,1,2,3]
To: Jonathan Cameron <jic23@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sukrut Bellary <sbellary@baylibre.com>,
 Lothar Rubusch <l.rubusch@gmail.com>
References: <cover.1755504346.git.mazziesaccount@gmail.com>
 <20250818191932.42c22df3@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250818191932.42c22df3@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/18/25 1:19 PM, Jonathan Cameron wrote:
> On Mon, 18 Aug 2025 11:11:56 +0300
> Matti Vaittinen <mazziesaccount@gmail.com> wrote:
> 
>> Add support for ROHM BD7910[0,1,2,3] ADCs.
>>
>> The ROHM BD79100, BD79101, BD79102 and BD79103 are ADCs derived from the
>> BD79104. According to the data-sheets, the BD79103 is compatible with the
>> BD79104. Rest of the ICs have different number of analog input channels.
>>
>> This series adds support for these ICs using the ti-adc128s052.c.
>>
>> NOTE: There has been work on couple of other patch series [1][2] touching
>> this same driver. I haven't considered those changes because, AFAICS,
>> there has been no new revisions of these series since mid June.
>>
>> [1]: https://lore.kernel.org/all/20250614091504.575685-1-sbellary@baylibre.com/
>> [2]: https://lore.kernel.org/all/20250625170218.545654-2-l.rubusch@gmail.com/
> 
> Pretty simple replies to the changes requested in v1 reviews and nice and clean
> so I'll gamble (a tiny bit) that everyone is happy with this and at least
> queue it up for build testing.
> 
Reviewed-by: David Lechner <dlechner@baylibre.com>


