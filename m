Return-Path: <devicetree+bounces-99099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD0F968BE7
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 18:18:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A31051F23A3A
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 16:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2801A305F;
	Mon,  2 Sep 2024 16:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oboYHzKE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D321A2646
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 16:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725293816; cv=none; b=YwDQQIYivBI4WqGwx9zH6wgNKnMXcZQi5hgP6Pdq6ycKjIhaMfpC9I347cOyla/On5rYf8cQH0kJRAB99fS/aCRnylpEUFCPKfihOg9UxnRs3s8/Ye5JIg3pzxj4ouZZayrMnPVoZGXibDFQtC3nr9FJnmju/Yla962mq/j8viI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725293816; c=relaxed/simple;
	bh=279AYoB6M6LUfQWrroj3/71+NSd4D3D9x57DTZOMsl8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KxntHNtcV8gvpSbthakNvcGBdu/jTJHAzG+l3cibW6oVfpftQeKbEKpjNwMINbIA9yf3fkYz7da1OX4WQVg6Nt+onZVgFPfVf+Z83z9kc6xSXcmFq8F/C6Tjv+DTI2H+YbHKnPpLGksrwkayNNYkRW48vxK9qTGn0pnjhxPY1n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oboYHzKE; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-42bfb50e4e6so20240785e9.2
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 09:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725293813; x=1725898613; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q8h/EGszP6xFdvE6sZAaqQlIirsRwUlWC1I0F8vKGJM=;
        b=oboYHzKEXDObutJxWvlJ0KXsvupktBkpbbpaW8yVC+AeNBh96phKjumM0oKTGB7CYh
         1NtpTkr44mwUWx2VK8khLz9TnvnhbRpHuQM4XCswGvEQBt9zimoh7ORn/G5ZlWSbKXav
         wdAkl5PfSssyh9uWxGzTVLkx2pI+XLDewUQvV6kyKFTU3OG0NHQtjXU5ppt7pTR2mya9
         rDvG5+wfxq4KIY7kIuWNrNMt8P+GsM5oNHIuUIE/k3kk7RBASsZ4Zr2EIKdAeweOXQOt
         pWgAj5ZGqPBsZJZlU1d4+asETGFKu8oaxVkMt/LE9eFokGsK5dLbS6ub2VlnbWjezOh0
         qoNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725293813; x=1725898613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q8h/EGszP6xFdvE6sZAaqQlIirsRwUlWC1I0F8vKGJM=;
        b=Jl4gxKUtplekAvc7rtVBw/a8wQAuW1sJ5CjNPijHMvIUv4wOPsqFFBDmslwdPbpc0M
         PoKILAAAekNA+tdWIQbvcsfr6ePYMuAxiKONYAC3IURpjC7eLVa+6n8CaJqxsD94Gu72
         SEXhuugNmt4m7W7zb2k1GND9bRMyucDoS9K38YuGw3RkQpvvPpQc+4X66H5bC7jpsR4b
         7sm1uYD1ss0j/ULAgEBiNrZdAvng/LdN+ITzzaeaIMoHw1jTYK5iMRnKqRECUf9JTaQm
         kR193o1rGv0Fcp3YHsVn4k8HQ8bx3vh2QJOD6hOFtpcZvZBkFcVTFefFKPSWKV97mSW1
         E+xQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxVeHux770f6O70neQ214rFweKBDZw01GWGkH6Qj4xPzCZHm/j7XkR0y2iIEY/sfi8KfS0L4J6YR4y@vger.kernel.org
X-Gm-Message-State: AOJu0YwHSn1GbooLfTHZVKqSZiY7nCyPIAjE4cwOhxU7vHCmFvVtSvyR
	l6DgAZaf3ZCYyHACIulg2RopSaPs+DubCQo7lR22V858VMbD39yjEbMZYUiYYAo=
X-Google-Smtp-Source: AGHT+IEmOkVDfJIoDWZjj/iaAv98BJrAju1GPOB28FkfzY8GNSwwTPs7KU6TSWiaChCcdpz0zMtN7Q==
X-Received: by 2002:a05:600c:4505:b0:426:60b8:d8ba with SMTP id 5b1f17b1804b1-42bb27a9ca8mr116220405e9.28.1725293813003;
        Mon, 02 Sep 2024 09:16:53 -0700 (PDT)
Received: from [192.168.0.2] (host-95-233-232-76.retail.telecomitalia.it. [95.233.232.76])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bb6deb273sm143693955e9.8.2024.09.02.09.16.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2024 09:16:51 -0700 (PDT)
Message-ID: <b305c86a-1dab-41ef-ad04-49526389dd97@baylibre.com>
Date: Mon, 2 Sep 2024 18:15:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 5/8] iio: dac: ad3552r: changes to use FIELD_PREP
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dlechner@baylibre.com
References: <20240829-wip-bl-ad3552r-axi-v0-v1-0-b6da6015327a@baylibre.com>
 <20240829-wip-bl-ad3552r-axi-v0-v1-5-b6da6015327a@baylibre.com>
 <20240831124847.5c679e55@jic23-huawei>
Content-Language: en-US
From: Angelo Dureghello <adureghello@baylibre.com>
In-Reply-To: <20240831124847.5c679e55@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 31/08/24 1:48 PM, Jonathan Cameron wrote:
> On Thu, 29 Aug 2024 14:32:03 +0200
> Angelo Dureghello <adureghello@baylibre.com> wrote:
>
>> From: Angelo Dureghello <adureghello@baylibre.com>
>>
>> Changes to use FIELD_PREP, so that driver-specific ad3552r_field_prep
>> is removed. Variables (arrays) that was used to call ad3552r_field_prep
>> are removerd too.
> removed
fixed thanks.
>
> LGTM

Regards,
Angelo

-- 
  ,,,      Angelo Dureghello
:: :.     BayLibre -runtime team- Developer
:`___:
  `____:


