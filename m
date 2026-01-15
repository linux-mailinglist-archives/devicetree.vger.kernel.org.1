Return-Path: <devicetree+bounces-255624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3531ED24DD2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 15:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC26130B65DD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 13:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92C203A1A49;
	Thu, 15 Jan 2026 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pardini.net header.i=@pardini.net header.b="PMLAk9lr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF0F39340E
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 13:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768485593; cv=none; b=MF54yH5rvfSQnOtfBQVYhRrOwjHk7mRcZ7irMJHX44DWpMrsJazXXMyNcW5xXYyVsrJ62ZWwMesQfylPFk1FKnPp2j3CDd/0rrEhOUkvHUPYPHWUD0D5UKoQQo+GekDtTybkidEpp71/4bM7NwAefy9+wjHo+r19FqwaHkuw6uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768485593; c=relaxed/simple;
	bh=fUlaZgpdBz4lX7Y6bddTVT/L42Pwda9ID64q5rmBzd8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UZMzK8l/ifKq2HuobLZE5bUHj/JIouOIFyxQgKReItbSsQn+HGgdO957S9wE2vTVe8DkgPOCRsh5FAYg58+RSSdpw/1hwf9wz/8+OJywQuvzqF5x5k18oy15gAGyWTkazPncVFS1SQPfCJqNTlvRPjuYVhMZCoLQRxHkYUasZHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pardini.net; spf=pass smtp.mailfrom=pardini.net; dkim=pass (2048-bit key) header.d=pardini.net header.i=@pardini.net header.b=PMLAk9lr; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pardini.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pardini.net
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b874c00a3fcso156824566b.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 05:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1768485589; x=1769090389; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SYIhPG6x60jF1PxiSFq6Xnv+Wsxju3BBfQyn7pIJfb8=;
        b=PMLAk9lrMiN0AqySbt/M4ViEjCJZjcZv9s3l/2Ktq/1THsQ1dixd6xvHBNtW+gEjsn
         fvn8N4v58rCKg16jhccuSU2Vqmzb+iAB36bU9Ii5RydRcTxf99RGzHc9YrelcDJihuwA
         PeIMzOduU3yIvsmFqIDYHYu+O6cRMRoqjl44AF8rOIBQo/Lq6IyREAlUnekgxpWI2sDT
         L4B8u5dduuUD0jlexf83H4tyPoZNWgKuOoP9trpZO5tTd52Zp4yOy0w/77e9crqHZTS/
         GLGoaPP41vF4/9VakPN1UijcSJnYGbCXNMry2YqfGZcUDrNhpyWihOQS8U2AlzhSoebF
         mImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768485589; x=1769090389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SYIhPG6x60jF1PxiSFq6Xnv+Wsxju3BBfQyn7pIJfb8=;
        b=KKYNX/s2wLcRrgKHJFIRNYFbIG9OkB7mwfE5XhZkCG+MNrPRA18jUpH4Lc6qWY8tFL
         uXFCcuHBjBnIXi2pBvRKq8DAIAqitakM7e9kL8wb1W815UlC7QuV0vL1GMUecfsO7yHN
         mrCD8mKZXN92Jke55GfMpQeY7yZJ7ZHwGzFHoFUYxtIxlhfx8hfisPls1z7Kli9DLsrx
         AknbC08VEIZ81IezQQzCL8fq3yPmUOa0oN+8yHZlZjYcL/teCNfs5h4fKOPtXZQW6ZZW
         w/Jat4wnF7uyC22iUnKUALnfGx8glioN+WgSSD8EI2k8VVCjs8yvvZNsCaJCMk/hJOK1
         cPmQ==
X-Gm-Message-State: AOJu0YxuTqugxzWrfhCSY2lxbLk93LnAuKC57x0hUTjjOGgicQsxvKCx
	u4LkRUB12KbvFx4Po+PNNk3iBTySzLJ9uscAeBmGlvqkNSsffFS8ibXjkTK21OoAeA==
X-Gm-Gg: AY/fxX7EZas60oQANBrO6vkimA55dijnIaXY7lvjn+vr1OeFa/XlGFyKn21/pvL6i84
	LOGQA2g0+CffSAiIQOIDrmZsJ5McVptaoYDtPi9L7T2pelceGm8IMmkxND6zVrk5V5Ktf2Uu+xG
	OJkupp56JV193RsDvDCWxOlKgxpjeWs1g4HWdMKqjYqhAGw0gGI0eKD/ZwBd627fyytl/tmJ5BR
	AnyKfNBGJjgWfDO7nehW8h6mql5bGQdhWbNZHqKwgpz2eeqzzf1Z5RcxqPZ4xNuzsKfFia/YfSH
	OdJ7i2JOgyk7dYDQwTforDZMgcpEGSY7wvVGmf1Ev9ivM7lEQuzKBFyZHnJALz8ZQHIU9j+oklk
	8EB7DPmSsR/GRKQXtyGBncVhhLAiRDyJAnsT7F+BJUqQX0JOXtDrGSn/yQR7VfolKrVfdYRefrf
	yZxVuKLmIpA9VkIe5iQvMOSnqjcT+9lUNwy+ONRDfUMlyaJcPx2dB8D+Xmwtpon4/i7FDFuOsJ1
	oqyTkjy+lk/WCClODX1mCk7FbptUihYWAVM8k/TA39zK8V+Yu0XxtSVWQ==
X-Received: by 2002:a17:907:3f21:b0:b73:8b79:a31a with SMTP id a640c23a62f3a-b8761059dc7mr555045166b.16.1768485589247;
        Thu, 15 Jan 2026 05:59:49 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:ed4f:c8ed:4383:1c08? (2a02-a466-4d7a-0-ed4f-c8ed-4383-1c08.fixed6.kpn.net. [2a02:a466:4d7a:0:ed4f:c8ed:4383:1c08])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86f0d6d7c6sm1614104466b.42.2026.01.15.05.59.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 05:59:48 -0800 (PST)
Message-ID: <1f256bf2-2739-4785-88fd-25101df9dad9@pardini.net>
Date: Thu, 15 Jan 2026 14:59:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add the type-c controller on
 Radxa Zero 2
To: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
 <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-2-8b5cdf328fde@pardini.net>
 <aeaee3b5-5f08-4abe-b646-a45ab79a35ab@linaro.org>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <aeaee3b5-5f08-4abe-b646-a45ab79a35ab@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Neil,

On 15/01/2026 14:00, Neil Armstrong wrote:

>> The Radxa Zero2 has an FUSB302 controller on i2c3 at address 0x22 and
>> INT# wired to GPIOA-13.
>>
>> +        interrupts = <13 IRQ_TYPE_LEVEL_LOW>;
> 
> OK it seems I did read too fast, this should be 74 !
> 
> S922X Datasheet (same as A311D for this)
> 
> Table 6-32 GPIO Interrupt Sources
> 
> ---------------------------------------------
> | Input Mux Location    |    Description |
> ---------------------------------------------
> | [76:61]        |    gpioA[15:0] |
> ---------------------------------------------
> 
> So gpioA13 ==> 74

Indeed. Sorry for this.

>> +
>> +        vbus-supply = <&ao_5v>;
>> +
>> +        status = "okay";
> 
> And I get:
> 
>    DTC [C] arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtb
> arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dtb: fusb302@22 
> (fcs,fusb302): 'connector' is a required property
>          from schema $id: http://devicetree.org/schemas/usb/ 
> fcs,fusb302.yaml#
> 
> Please add a minimal connector, like:
> 
> +               connector {
> +                       compatible = "usb-c-connector";
> +                       label = "USB-C";
> +                       data-role = "host";
> +                       power-role = "source";
> +                       source-pdos = <PDO_FIXED(5000, 2000, 
> PDO_FIXED_USB_COMM)>;
> +               };
> 
> I'll drop this change from my tree.

Again, my bad. My intention here was a "minimal" description, mostly to 
reserve 0x22 so end-users can run `i2cdetect` or such on the 40-pin 
exposed i2c3 and not be surprised. Guess I didn't run dtbs_check hard 
enough and missed the required connector.

> 
> And you may also add support for the superspeed mux to switch the USB3 
> polarity.
> 
> I have a prototype at https://gitlab.com/superna9999/linux/-/tree/topic/ 
> amlogic/radxa-zero2/fusb302?ref_type=heads

I'll try your prototype. I had no idea it actually had those capabilities.

Do you think it is worth to resend this with just the fixed 74 pin & the 
minimal connector as you suggested? Now that I've seen your work, a "add 
FUSB302" that does nothing (while being capable) feels frivolous and 
confusing.

Thanks,
Ricardo




