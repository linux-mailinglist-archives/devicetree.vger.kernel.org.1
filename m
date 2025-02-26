Return-Path: <devicetree+bounces-151734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA52A46D07
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 22:07:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A3B616ABDA
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 21:07:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2034258CCD;
	Wed, 26 Feb 2025 21:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KLtrT+RL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7206614A627
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 21:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740604067; cv=none; b=mGnQA1dL/KAs6qdkHh7y4XsyaafmTDA1wFGexYNueSCkly2wDOa8ICQNPgdKEWY01va+yaoD8RqNcpmII6lKJjHjln5zcYQWiJ+njHnBNXEFCKXcDntjfP9tWPGPWTtNLbB1J40IqR5q2BuDVEP29lqaxC/RPXGsoisWgLxv46o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740604067; c=relaxed/simple;
	bh=3gNhjM3yKm0K6Ah9xUBppNQkh1jUAuqUXak4kK0YDAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KuknJbdxbMlVpqtrWp6gd7a4kEHhukeVkN9/WjGu51ehUk3oWNzx6vGvPSGtkjL+8Z6YcxWXm1DOH+WHbwJr2PQdDrD/O0+w8svNYgmh7eqEggR9+bfT4ar4GflIbo4hrCmjriCyzJ3nUnhAYYEKLoYPpVSAcb/YoNs7v9MR9p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=KLtrT+RL; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5fce03395d4so160202eaf.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 13:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740604064; x=1741208864; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KK1tuZqXEYAuGWGI6cUSPf3OqgxZ66WV1IIk40XRFRQ=;
        b=KLtrT+RLHDIczN/2UAclKv3sxqOp1Rnvz/PgwHPHmZNBUnRxBWxu3PvJx5Pp65xwSJ
         K+EbJg9us/3o+SXuTaTmeiYVR654XHl7V2ESSy6L88IFQtbfUSAbZES3lqlTMapgfTKN
         +nF4oXo/ZTbsX1FygzYPyzu8YcY0f+alBHZDZugBHBDvSrDwv+PAe580xEqedy/syYfC
         t4Vv5UKQ/j9yUURs4856mdnmW7xeOpxfCQ08K9Vq33sJv5UYusWsVTiZnHYte2v6ptGw
         YFdIxxN0mpzdQWecx0qTxLArfc1AiMMkUI4zYRbgWsyCxCCfhD6HlfrW7DwihrJtRC9z
         WUJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740604064; x=1741208864;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KK1tuZqXEYAuGWGI6cUSPf3OqgxZ66WV1IIk40XRFRQ=;
        b=W6CknoJ13/oztNS2ETYd84eBW4NSsvGrFvO00uVaOKS2kWwB/eYFNNyemuNyek+Yph
         WZNmFwtRBdiQxCzlx1nx8iiTYz5MMhJ1yHE4ZaTChU8/RNPwF9ladk4wsX8C/0p3+eMh
         iliYrnChg0Io3V+4/8GTlfcFyY7DOv62Hx4XDePaznTU1Bi/pHevHNdqzuZ1oOjvC1H6
         PqtTFyx9aeImyxbT850TVVpnP++AVDb26oGEARVRPDA740kCe24EhLxhg9QB6qthCRLV
         +T+poPKMXzkLM00AQzBGvxkJOW49dMF+Nmp+Ee0taMEbkShIyu2ybonoEpJ+Q4LFLtZ1
         sqDw==
X-Forwarded-Encrypted: i=1; AJvYcCUJW1R3mwMl4cCihUi+K9ygY69EDLP1t4TVOwKTONShHZCJCz6aUsj72ztXNhOHgDYZai/kjAIDV+R1@vger.kernel.org
X-Gm-Message-State: AOJu0YyOUKcLhVKn4FKNWJZdMD7iqPFLdt6iLlg3jT2quISLF485+tNy
	twS4Jnv8thp3PTa3jfGp2ahI01Af78e3GSGvMknr0fXNqgfDffEsZcfIj8slo7w=
X-Gm-Gg: ASbGncsX+M0dj6aXNDAAeq5jY5KuksUgHr0K05dmy1iYLlvfuc/KsZExWsRlithM3oz
	Xhejd2KwyR93N9T2LfpmOEaVh0vUnCBJaTG0zS+xtAudvUPi+7SVuqYWSAAIta5iiEWcuoJkZO4
	eR4saJesVeNzx2it6axajHvASUml6vHsY7rYgrmnXSGMv4rwVATwkjcOzmz/CAX8SaHkzAqmIQ+
	p9sanUTo5LUyRePN05Xd+SvRn81GtntJ2zah8I0WJNn4y+JZ2+9wsnh3Ez1dQ5tyLgsb+AKxeww
	x9bkG6nwpBZRFX8Uw1XhlsEBs6KdSVQvm8rnfpLnq2VAOwyl7Wn+QRvD4mA1+CU=
X-Google-Smtp-Source: AGHT+IHssznl155sIKLS2/z36QzUbKdpoR9TisWcZupZqKI+AgB0MKw9+XKqfOAHyCzSuYMlO3Iehg==
X-Received: by 2002:a05:6808:8f2:b0:3f4:2b5:4809 with SMTP id 5614622812f47-3f547e3a527mr2408127b6e.26.1740604064569;
        Wed, 26 Feb 2025 13:07:44 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5feaab762easm26979eaf.16.2025.02.26.13.07.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 13:07:43 -0800 (PST)
Message-ID: <a49c451d-65a4-4a59-8099-8b88bfc8b643@baylibre.com>
Date: Wed, 26 Feb 2025 15:07:41 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] docs: iio: add AD7191
To: Alisa-Dariana Roman <alisadariana@gmail.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 "Rob Herring (Arm)" <robh@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Ramona Gradinariu <ramona.bolboaca13@gmail.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>
References: <20250226115451.249361-1-alisa.roman@analog.com>
 <20250226115451.249361-4-alisa.roman@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250226115451.249361-4-alisa.roman@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/26/25 5:53 AM, Alisa-Dariana Roman wrote:
> Add documentation for AD7191 driver.
> 
> Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
> ---
>  Documentation/iio/ad7191.rst | 129 +++++++++++++++++++++++++++++++++++
>  Documentation/iio/index.rst  |   1 +
>  MAINTAINERS                  |   1 +
>  3 files changed, 131 insertions(+)
>  create mode 100644 Documentation/iio/ad7191.rst
> 
> diff --git a/Documentation/iio/ad7191.rst b/Documentation/iio/ad7191.rst
> new file mode 100644
> index 000000000000..6ab615ea457b
> --- /dev/null
> +++ b/Documentation/iio/ad7191.rst
> @@ -0,0 +1,129 @@
> +.. SPDX-License-Identifier: GPL-2.0-only
> +
> +=============
> +AD7191 driver
> +=============

In .rst, the page title really should be a different heading level
from the rest of the section headings on the page.

> +
> +Device driver for Analog Devices AD7191 ADC.
> +
> +=================
> +Supported devices
> +=================
> +

