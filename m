Return-Path: <devicetree+bounces-67838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0B98C9E02
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 728EC283E22
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 13:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200A41304AD;
	Mon, 20 May 2024 13:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jsSxg2fb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E65653805
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 13:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716211184; cv=none; b=o3KJ1cljt0A0SvBA6neHc3WL3fHeVWHOwkHQW1a6QjxjvEDs7j1cxRjyokSFqPlFz9SJfZMkEgghKhpi61ln4sttgHRbAcZhot3C1xBp2BPYSGKSI0v9xRpqoBHSKsoxvIBLuJS/5soHNf6kWvGjimyzP05mTvBDTC+myF27F6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716211184; c=relaxed/simple;
	bh=IgqbNXBP/0P8QHcQL0i7iv0mKwRs9caTUkz/Xf4zihM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MVtJEe1aoyOgT0iaW45NtaoNhnDthegpAKtPr0rNIb0/+OkC/Q9KnROy/zmqKWHwk3vwYxcopl47RBQ7T8FZ2QEvJbysFJRc4rasnsByyWlU2AhwCWJOhdqILwH/EYC1o31Ca4L9KlzKbiN8rk9Wpc3khvKLGs530BS5tYZcdyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jsSxg2fb; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2e6f2534e41so27580721fa.0
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 06:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716211180; x=1716815980; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7aASBHYEJ2GmCl53uLDmFJwacwwec87xHdsVfr2Oydk=;
        b=jsSxg2fboU0TAoB0X5oTsmDj9oCUxzlSyK1Js4P+CDw0S4nhUbttYWAeLSECr7sFt+
         2HAC9NO6XylPtTPNAkggdMocS0w7tsi4qVoILw8TbSoT4M6ETuL+xlMI158gh0n5DHxN
         1IC05+ISxAB5kF6qvtcdRyl3CCOtWO57B6hQUptPZM/dBXK5s8HU2SQcXzX4gXgt4Xgx
         Q0V0SSzM89wUWn8chvXc4r5sSMTtm8ZB1cje1H6UfZvy1Bonf6+LICuX50u+DMNUG68/
         tb623yYj+3G9QHSEs0sSAsLaZT3YZjdK1KkgYd7qNeR+DW+nYa5yIJPOHVHOYWLonazj
         YL3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716211180; x=1716815980;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7aASBHYEJ2GmCl53uLDmFJwacwwec87xHdsVfr2Oydk=;
        b=sjYxJcEYETXURtKPKy5rB9kQFBkpjn+5WOUrhRTGD32peXFTp4nS0XCkjfP/BXL0Ym
         wr+PB4RMp4M84hC+AufiwvaVsYbDNnCkGn8HrpodsQHCxzx8ymxQI7gTgUqBDodt/v+9
         CCQVligWWsOBnXUPMLLEHZUGBf9ZGx7FZ4IduGPvTbEEnu4t1Ada2MlMvUg6uimAmCT5
         k7Qq8jlqto26raETbxa24ByIjp7mjbuSUXJdQlIUW16HWRXGN5qaxKzVZ9uTzdM3lOR1
         I0MCa3q6w3rkvCnWzGvztovKRa0ap8/tU1tEoxCO3x7omLb9pKAvS898aQN4XPmx5LkQ
         tOqw==
X-Forwarded-Encrypted: i=1; AJvYcCWPoxLVlC0L/GM8fkVS7RZU04pGKX+s8muqjdlGoX/1u7OPhOd6dg3wBTaTWpdnlsEHQkGWKuflE8qaDjJLp/S/5jUHfVtXRb+D8A==
X-Gm-Message-State: AOJu0YypjcIv8FOIWPhAnBnK9hs3c32dA6WT1YDcGMY44NO47noWqWZb
	+zJ+VPdr6fNA6myQUx5WJZPU+cnXAXXzEuUTa5zQtkXmOAeE43V3dDok8y3pHRM=
X-Google-Smtp-Source: AGHT+IHUPykzDKwW1LbytWT4wZMwyTT0C5peIVfK/LqhFmf7eVbVhlrgRZ2xa8GpF4TZkCY6CYmKhQ==
X-Received: by 2002:ac2:5f49:0:b0:51f:b781:728f with SMTP id 2adb3069b0e04-5220fc72ffamr15400487e87.32.1716211180523;
        Mon, 20 May 2024 06:19:40 -0700 (PDT)
Received: from ?IPV6:2a01:cb1d:433:4e00:3518:6eec:d551:4012? ([2a01:cb1d:433:4e00:3518:6eec:d551:4012])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b79bd4fsm29437399f8f.7.2024.05.20.06.19.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 06:19:40 -0700 (PDT)
Message-ID: <aa4c1439-bf9a-4710-b534-27d5f845e6e9@baylibre.com>
Date: Mon, 20 May 2024 15:19:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/15] arm64: dts: mediatek: mt8188: add default
 thermal zones
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-pm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Cc: Nicolas Pitre <npitre@baylibre.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
References: <20240402032729.2736685-1-nico@fluxnic.net>
 <20240402032729.2736685-16-nico@fluxnic.net>
 <aab10d22-b1a1-45e9-85bc-a4334aa6c497@linaro.org>
Content-Language: en-US
From: Julien Panis <jpanis@baylibre.com>
In-Reply-To: <aab10d22-b1a1-45e9-85bc-a4334aa6c497@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/4/24 17:16, Daniel Lezcano wrote:
>
> Hi Nico,
>
> a few comments about this description.
>
> On 02/04/2024 05:25, Nicolas Pitre wrote:
>> From: Nicolas Pitre <npitre@baylibre.com>
>>
>> Inspired by the vendor kernel but adapted to the upstream thermal
>> driver version.
>
> [ ... ]
>
>> +    thermal_zones: thermal-zones {
>> +        cpu-little0-thermal {
>> +            polling-delay = <1000>;
>
> Except if I'm wrong, the driver supports the interrupt mode, so it not necessary to poll 
> constantly when there is no mitigation. You can remove the line and everywhere else.

Hello Daniel,

By reading at the comment in the driver, above lvts_irq_handler(),
I'm not sure actually. Here is what I read:
"The interrupt is configured for thermal events when crossing the
hot temperature limit".
IOW, lvts_irq_handler() is not meant to notify some "data ready"
event, as far as I understand.
Don't you think we should keep this polling-delay ?

Julien


