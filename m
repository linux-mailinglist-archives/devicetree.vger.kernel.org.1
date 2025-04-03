Return-Path: <devicetree+bounces-162979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 998B8A7A82B
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 18:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63755174E84
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 16:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4ACE2512EA;
	Thu,  3 Apr 2025 16:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I3i1n9Mw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8DE2512CB
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 16:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743698893; cv=none; b=tmtn465xY7/ZwUH/BhEXtcnJjOoNWvt7/NmPoU55i4AGoF3oH5lSrL1FZJxTGwHE/zBzHyjAavSRgzuybMsnOo3AIxNcx2+SEdrc6TmJG5ShINxdoCZJu5bIrdqOdXFnUStu6ULjBtH4ErKjvbtcQfijL+UEB/iFJ/bqIiRgd/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743698893; c=relaxed/simple;
	bh=4wuv9Dt/9rj9cF2a6+xai4em1wNvUS1HPV5q6UbrWUc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M8RLobzNAYctKsE2LtlkfXdW6vwtelPdFSlgd8qcpf0J5ssWpUhPwbBQFyh/hUDpwbu0tsJDlF0yI9BVxAvLAi5mJY00HEcQTVUJP9VgZdX8E2UmEgZhTqrpfoEJoyeeh4HpZGTpnP7zljgjQcLHz8RtgqznkxO5SokOObvzw0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I3i1n9Mw; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-72c0987bc4fso459146a34.0
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 09:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1743698890; x=1744303690; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YSC+FUFy0d9lpIsypY5Nl8Mx6gi/Bcekgwf80nw84HU=;
        b=I3i1n9MwCbrlxICsFt+cvK6O+W9NjVOn+9VoukT2RXByhIBHiCtcZ23dCHs0WUzMwf
         fokR4pphQR0FTr+wpqfty3N0QwMNau8SwRYJMPT39egB/8aIXvl6HuRk4qAAt1L5j08J
         2+wt73oTEvRjlo/2e7Wrd+z3bTlOTXBLwRDHG9C6sMnfN613s/KEhc3D1zHl26yKz59K
         Vqzp2YWHIzJWI5eD1QrWmZhqAs39Wi0/Wgc1V+ppEl4AC4uo6GQtnswEtt+CzaNTjiLE
         3FTOlhsW+7ECI+p8evg66aC6ezgw6B78+gzUqW8RtUnXTX6BoIp+ZDNWPZ3a509rKBvr
         XqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743698891; x=1744303691;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YSC+FUFy0d9lpIsypY5Nl8Mx6gi/Bcekgwf80nw84HU=;
        b=lqE4pdTNltg33v6+5CCM6TgLJlgAhogdftr7a0uzL6HcYdcwJ0JVbjP9Nt4TQLG0uM
         6sUt66fR3VweetjZwSia9qy1c5m/6FaDNSenJt9HaBLk5zmOBhceT/kh+6cL97Idecj4
         PASjH+i9MR6JlF6fquYbzv7pE1A16zCOHkI0VwXSlTrIFpA+XRUcpCUrKlMN4AGVNDv4
         P6eriogVQH3NjLirl1QzTJIYDOJURawTwnsREEFTuOqcxd5Ii2G88SuJznE3prl30i0l
         Nyri2YXNMghbfPyTkm4rqf5di0d7i4yN72a419eYSMvqvpH042Z6XlLWK4UMfvRvzr/p
         8NHw==
X-Forwarded-Encrypted: i=1; AJvYcCU0Ew9WxMJBXIvxGgL3EaZ9L/OWxcp0YTCQw8ELPCsUY5juUDlz8bxUMZgWvCv0W3/r815xhTDug493@vger.kernel.org
X-Gm-Message-State: AOJu0YzGcqKVsp11rjlq+ZdKrTS1LwWpGn28Q39NQ/1BYAVNnn9i+vmF
	p0zhtgzdOMehknn/e0s6SrD4XzoKlq/gNs1rl6tRJ/61N4gfJYlulawexTjNSA4=
X-Gm-Gg: ASbGncuo/7CDN4osydQo5JjQIvLABejUF3eSWZBCz7cRTjUtfWXfufMml0kGaDStqjJ
	wS1da/DlNh5QNwZDQ4shgX9dYmxpD6PzAJk208GHIXLK8oxvJgZa2sFdJS8RmeMT5KXYQjkoRUq
	kNZCbx4cRrZFq8Pm9mWfv8Y854O8VyprfnjuEKx2oh0FeVhWDENr8TO5mg+4yXzp5hrKKj1tX4z
	7jnzaFbA/jUlkAAT6AHmVaiGUuUlly47UUw3JBulD0Rg0TwVjpXoL+h+mwZXPvHLMFV3+1tcK2W
	c8uAE72wsdnq8F4QdYi6tMV9TU91vcP40j8D57LGjGDh7liyVq6XC5H308pGn+78378iW4+OPyj
	KQ9M52g==
X-Google-Smtp-Source: AGHT+IHMO8mKj7XI4u0FpdUX8+XWGlKjBQ/8BZn9Gd3V/HfCKgUeXNkn3/hksONPqG77YFoErY/6nA==
X-Received: by 2002:a05:6830:4987:b0:72a:1d2a:4acf with SMTP id 46e09a7af769-72e3696f946mr147011a34.17.1743698890734;
        Thu, 03 Apr 2025 09:48:10 -0700 (PDT)
Received: from [192.168.0.113] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e30511237sm281580a34.15.2025.04.03.09.48.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 09:48:10 -0700 (PDT)
Message-ID: <c146175f-6a21-4039-8c81-5933a9ef5ef6@baylibre.com>
Date: Thu, 3 Apr 2025 11:48:09 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] iio: ad7606: add SPI offload support
To: Angelo Dureghello <adureghello@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
References: <20250403-wip-bl-spi-offload-ad7606-v1-0-1b00cb638b12@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250403-wip-bl-spi-offload-ad7606-v1-0-1b00cb638b12@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/3/25 11:19 AM, Angelo Dureghello wrote:
> Add SPI offload support for the ad7606 ADC.
> 
> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
> ---

Reviewed-by: David Lechner <dlechner@baylibre.com>


