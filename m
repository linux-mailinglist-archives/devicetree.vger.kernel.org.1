Return-Path: <devicetree+bounces-139002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9732EA1394D
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 12:41:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFDF7168BC6
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 11:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CC8C1DE3DB;
	Thu, 16 Jan 2025 11:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Az1JkgPU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4111B1D86F6
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 11:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737027707; cv=none; b=umdm6jnTqQe13wYmYskDAAsezAK5Ww5P5t2pOHWKAitrJnaHWNZy7gUgSNd3Z34MgOdQ9XU+wd9VgDeD5aFzJB/LN1UBOS59UHhgU35U3HeuxF71yiKrTSluR5SpWr0525au3UzWB0kz0zCZFypqn+d8PrKudJRuZO+NAs2DeuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737027707; c=relaxed/simple;
	bh=grVoZNVjcvy9MCcSf9CkrEgnrvso4XYxU656pIV7e5E=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=R34AXmagaA1tpZ3QN8b3s1dIpFiSf7Av/iJfMUz3DhKQN8B5wGiUae9sLnEIe5FNkUsaU/HgpRCaIxtoZD6pobvvpewzqgw6HQp/7VawyglwO5Nk4ZWwtvoytF5MnxywhSE6fxSvxjxhfE9czvk4rmfsxEf8Lq3jK9iyv+j/BhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Az1JkgPU; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-436326dcb1cso4774865e9.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 03:41:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737027704; x=1737632504; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bKtUMEoqDHLTfhHmG3inCWsYClLTJL5ZLVp5zayXN6U=;
        b=Az1JkgPURBxpMk2FaVwXIK6P2JWoRJf6sXZ39rB3DozZBZxgpBIjvEkVVwB2Kqz0IU
         I0a1ed9CWyXwdezV9U+7Z/HObjfGYQt8jyWLJ9xyhtRQSAK8vNnXEGzs6ybl0hwE8yM1
         +F+W51Lw9/Lwko9m6YcADY11v04rUMQ0+GCHiHqsKrQ+myzIWJOhoIPRQw1qeZLA81I2
         ftcE2CwXtArX9KaEYb1SXkEmrrXg23/fAWHdGs1zuswXAj7fcKRc8CMgswL5S5q28CAK
         DBgLs7kBMfxwWsft8Okbuhf9anLvYhzlWqF4ENMjhcVUCrF1p6faEcxVhUJgnggymq1U
         1iDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737027704; x=1737632504;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bKtUMEoqDHLTfhHmG3inCWsYClLTJL5ZLVp5zayXN6U=;
        b=Z60GMIiWejtnKYC3QvQcxtsgIwVBM7t70XlaaE1tBgn79RgrDP6pCHy9xW2zdXmXTB
         JHKykmhi77rL8mfczlUA92jeviy5a5qj0gQW+dJhc8wZM+PVpMVcoqZxNsvGbipzLHT1
         PP0pvpnjLhwji/LS8cPMRkkIvvJ/tRSLbnOzk1v7Vl9VKELfpqfuKpif7ARlW553O91U
         2cmXMJ8oKL+ayyDBElUWiV0DcO0r5epIZ7b+jUDozZqKeuuUhwz/Oj0gH3HjQV+seA+z
         p5CDMP7LgGXLaOqfNRUut6ixWIPk+0fLNOvnDv0k1f60zA0t4+uFElilH37qQzm1QwtC
         pYYA==
X-Forwarded-Encrypted: i=1; AJvYcCV/69vU3pj+G0zFLV16jNd88/GkUza8UsHhC9XYoHImiFIloeKpkNwVxbb3vhkYOJWusBU79da35MlG@vger.kernel.org
X-Gm-Message-State: AOJu0YwqdKiHTfTjEtUmW1cueUOTv1HqeQVGtqdkBjrDmYN+KvMXqxia
	0NUb7LnLU94r3q5PhgJHdYN9oeAbU5R13minyYXOhX+GJTA+5uyv9iJO17KWXFg=
X-Gm-Gg: ASbGncsn1vcyznL1U9wExXfMQYe8xNGZCZFZvssslVmKnN6dsEAsLeQCYMktH5Czg3y
	AASskTuz+F7B1n/gGuWZYEUGHmKFXBsToh82xbI6LfYlJzUJm/8DtCn1i0f6fI2KIGFiD8CTdz1
	6HebgC+ZkYHbAWsotVggQ3RhN4uI0gL7fLEM1vyHT4EyOah7t2dZjfVMBUyXTcZ5r1PDBdxO5U9
	dkcB8bchlnDfBbJbkkXlsbYBKczD8o5EVcIDl+GUGI/5VwxNMwzmiEdKb60nL1+LA==
X-Google-Smtp-Source: AGHT+IFueE/gZTYtweq/GR16SLOOq+RSDS7PYuc5QwoykXqiYGNy+orWNKBAzKyMcjXwFzsBcfLt3A==
X-Received: by 2002:a05:6000:401f:b0:386:3328:6106 with SMTP id ffacd0b85a97d-38a872f6193mr33619540f8f.35.1737027704561;
        Thu, 16 Jan 2025 03:41:44 -0800 (PST)
Received: from [192.168.0.14] ([188.26.60.120])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74aca93sm57515965e9.13.2025.01.16.03.41.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 03:41:44 -0800 (PST)
Message-ID: <77eeed18-4a48-4407-ae83-7a922045b29a@linaro.org>
Date: Thu, 16 Jan 2025 11:41:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] firmware: add Exynos ACPM protocol driver
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com,
 peter.griffin@linaro.org, daniel.lezcano@linaro.org,
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
References: <20241220-gs101-acpm-v5-0-4f26b7fb3f5f@linaro.org>
 <20241220-gs101-acpm-v5-2-4f26b7fb3f5f@linaro.org>
 <8e6bade0-5184-4bf7-b1f0-103a77d0f98b@kernel.org>
 <060c7a96-c1ed-4c97-8a3f-f510102466f9@linaro.org>
Content-Language: en-US
In-Reply-To: <060c7a96-c1ed-4c97-8a3f-f510102466f9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/31/24 2:32 PM, Tudor Ambarus wrote:
>>> +config EXYNOS_ACPM_PROTOCOL
>>> +	tristate "Exynos Alive Clock and Power Manager (ACPM) Message Protocol"
>>> +	depends on ARCH_EXYNOS || COMPILE_TEST
>>> +	depends on EXYNOS_MBOX
>> Is it build time dependency? No || COMPILE_TEST?
> There's no build time dependency, I'll drop this line.

There's no build time dependency on EXYNOS_MBOX, but there is on MAILBOX:

ERROR: modpost: "mbox_request_channel"
[drivers/firmware/samsung/acpm-protocol.ko] undefined!
ERROR: modpost: "mbox_free_channel"
[drivers/firmware/samsung/acpm-protocol.ko] undefined!
ERROR: modpost: "mbox_send_message"
[drivers/firmware/samsung/acpm-protocol.ko] undefined!
ERROR: modpost: "mbox_client_txdone"
[drivers/firmware/samsung/acpm-protocol.ko] undefined!

Will replace the line with "depends on MAILBOX".

Thanks!
ta

