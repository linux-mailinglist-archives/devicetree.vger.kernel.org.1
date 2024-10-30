Return-Path: <devicetree+bounces-117462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D75419B65B8
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 15:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CAA928220B
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 14:27:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B78881E2303;
	Wed, 30 Oct 2024 14:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LMxxUptL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7747E1EF94E
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 14:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730298443; cv=none; b=a07T/Fy+NFwRjvqfEBN2LIgTquvT5lw+xIRtekfacW1hG+GncWwBMSGLN1lUuC+CtmT6TwtHnQxch9H3XVTGaT3F9bisnHNXrlGgm+fWsxNhAMtQwedQrW/7oiIGZHFv9mDp717+W64aNi3XrMebRTQaLaSbZ+zDrE6gUZNntNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730298443; c=relaxed/simple;
	bh=TKUoAPUA6DySqr60oJ3GcgzsVj/+dwLSsZp71Yup4YI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fjRzJUXf6QBWmJecX/XFpzGvC60aV1DzfHVb7fI4BB02BXLOyOAFBGaLedywxjVmMf1sDHDuPQWDAc0+QuxliZ+Qyq6zdKxRF3zuRDwVz7dUlzHAyHZMxGMX0gYq6duUruDPYrstkefZhbhSPwf3eYQ1jUuLJKFsnDZbnL68ugE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LMxxUptL; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-288a990b0abso3365916fac.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 07:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730298440; x=1730903240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OJr8SKaI8AcnRFsMtOpCdNtJ/tI/x3PUXE9ZFvbALXk=;
        b=LMxxUptL3PNCmEiCfCJOGsZr8i8vQ3+CEAmslNlLWag5WEQseAWVP6WRU443v/q/UX
         kiM3Tfq6FJYfqHPRkVQw0b/amCMwz7BFp9TE2xffkp9f6ZWTN6ib77wcJ8S7FhzCYRCc
         VjHb+3FY3k6cV/IeZsy88p5EJln69D0q8uUZJokzGt3W7vNtoQIexU2vvhTGss2xGcQ7
         UJ2tQhhcwnMnxUq5vkWyAYvGWW5L9LBY53+09Rd1MIE/33zhzNLIELRTmb5RNtEfiTHb
         XT45e4aQm9mWAU2eDN3FmcT//d2Js6PVu/VO8A891aQcSuzbMaOmS+TAE/4WZzH53fIi
         oItA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730298440; x=1730903240;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OJr8SKaI8AcnRFsMtOpCdNtJ/tI/x3PUXE9ZFvbALXk=;
        b=axG9P8+1Ctjhzx5kBX/1dh4RTY0hpSmywQDfZKe08PpSn2ySocOf9yxDhgU2aeVinI
         KwOZM0mF4P7zLKjwGK25eMaamhEqsL20tusUPJiyDRgV+8cCVjOkmy8URRBcqpJ4J4AK
         JFw3mA28OR1mVyGwaxh3bPexlWvMZTRv+KBJiE5kFU/mXNX2St3Ek8OeNoS9i1ryuxpt
         13Y6Qvz/0C2vuA/A1VjJ1JcrE8gkDXds9yk0PtXe+DM/8cydWshKYDV1lEbn/fiSbvm7
         zMnRFoP4GXhHr5I/I/7mAxIK9w1xo6DZ1saRA1hBkctgmHxQvsAAQlEHE1rsJZIRt3cC
         fugQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqZK/jVoNmy5XtHmlts6cFasVFLfkMZJj4o2pjLpU7UyJ2B17C4QYQYf2VwsvtHf563q4RxW1K2S/a@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3rsUrFPLR6y+E1lP83hMzuQiDavOwoNQg1QCqzjS56CpkYqiu
	kNXWKj/ZCGKKOVEj3qnjNsgxF6jxrnQMbpV8U2PCiWw1msN569vQGwcw59JSpBA=
X-Google-Smtp-Source: AGHT+IFjLF23bXQI112RrKS7DtmQwnJ60Ef1gSmQvtciDIl80QcFcve5plrDwJb0QoEP9FPGBx1k3g==
X-Received: by 2002:a05:6870:a917:b0:288:2906:6882 with SMTP id 586e51a60fabf-29051db9ca3mr13044852fac.29.1730298440581;
        Wed, 30 Oct 2024 07:27:20 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-29035d20d3fsm3425347fac.5.2024.10.30.07.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 07:27:19 -0700 (PDT)
Message-ID: <4c457ac4-139c-4df0-958a-fcda94705d02@baylibre.com>
Date: Wed, 30 Oct 2024 09:27:17 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] docs: iio: ad7380: add adaq4370-4 and adaq4380-4
To: Julien Stephan <jstephan@baylibre.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
References: <20241030-ad7380-add-adaq4380-4-support-v4-0-864ff02babae@baylibre.com>
 <20241030-ad7380-add-adaq4380-4-support-v4-5-864ff02babae@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241030-ad7380-add-adaq4380-4-support-v4-5-864ff02babae@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/30/24 8:44 AM, Julien Stephan wrote:
> Adding documentation for adaq4370-4 and adaq4380-4 supported devices. In
> particular, document the reference voltage mechanism and the gain
> parameter that are specific to adaq devices.
> 
> Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> ---
>  Documentation/iio/ad7380.rst | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/iio/ad7380.rst b/Documentation/iio/ad7380.rst
> index 6f70b49b9ef27c1ac32acaefecd1146e5c8bd6cc..1b9777c33e0c3e9e06f72d7c957a012346d4a26a 100644
> --- a/Documentation/iio/ad7380.rst
> +++ b/Documentation/iio/ad7380.rst
> @@ -27,6 +27,8 @@ The following chips are supported by this driver:
>  * `AD7386-4 <https://www.analog.com/en/products/ad7386-4.html>`_
>  * `AD7387-4 <https://www.analog.com/en/products/ad7387-4.html>`_
>  * `AD7388-4 <https://www.analog.com/en/products/ad7388-4.html>`_
> +* `ADAQ4370-4 <https://www.analog.com/en/products/adaq4370-4.html>`_
> +* `ADAQ4380-4 <https://www.analog.com/en/products/adaq4380-4.html>`_
>  
>  
>  Supported features
> @@ -47,6 +49,12 @@ ad7380-4
>  ad7380-4 supports only an external reference voltage (2.5V to 3.3V). It must be
>  declared in the device tree as ``refin-supply``.
>  
> +ADAQ devices
> +~~~~~~~~~~~~
> +
> +adaq4370-4 and adaq4380-4 don't have an external reference, but use a 3V

It's 3.3V, not 3V

> +internal reference derived from one of its supplies (``refin-supply``)
> +
>  All other devices from ad738x family
>  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>  
> @@ -121,6 +129,14 @@ Example for AD7386/7/8 (2 channels parts):
>  
>  When enabling sequencer mode, the effective sampling rate is divided by two.
>  
> +Gain (ADAQ devices only)
> +~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +ADAQ devices have a pin selectable gain in front of each ADC. The appropriate
> +gain is selectable from device tree using the ``adi,gain-milli`` property.
> +Refer to the typical connection diagrams section of the datasheet for pin
> +wiring.
> +
>  Unimplemented features
>  ----------------------
>  
> 


