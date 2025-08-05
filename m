Return-Path: <devicetree+bounces-201983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F106EB1B88C
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 18:32:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B08C73A660A
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 16:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F92121CA1C;
	Tue,  5 Aug 2025 16:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="olh5lgbJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5E11F4C99
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 16:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411525; cv=none; b=TpLCHOiagd8R/BsB0xlED1wxN5qGz2TKMfbKK9nFRM23Sx5lXStEI5rKlOFczN/i/4lOZ99W8uG/GK8SEDkaXwe0qv2j6Kl3v0y0ax5mcyQ+Tze6EABP16KDqz2qoqlLyTnF2qcpgqDQrFZU4TowJUleVTbt3WBPBW6/wdHUFoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411525; c=relaxed/simple;
	bh=BtAiTgvkkjlBfBvo6XtHgXIfvNar7zG5HMSPnNCDLis=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RUBMSNGlD6zWPJaUKM1XS+wu5TzuWoqFyMTNZ7BOQrF2ZGIBvlR71ehl39kei0tc+0SCbbkkzKJ8MaLQ9UKpn4EbtBVGwIYw9lk1q3wYU2vBREvTL86d4xlLn3MO8N4t99NUQmMMQakR6qkB6WxsCpGYbRonLUMiYi8qh8koWpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=olh5lgbJ; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-741a905439eso2004586a34.0
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 09:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754411522; x=1755016322; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uur0nAlqBULqZvR/jwBKMPpy4vyoMv3vayFy80V0+TM=;
        b=olh5lgbJz3G8eGxz3o1+JTfTxq8xc6A7F/ypesiL0QnKyk8KGlHZvIyF5mPt2BxtBb
         36b0C299hrljswibQaZ/8l244n7/XLt4uAA1OjHGrg08J3YWM7wanPwq0i//l2FxW1hU
         R+TYVrkjDCN65gny2zW76xDKuyTAI2+vDkxGFrCp8NDsAofGwECNnxofrCJLgBikzIAX
         oZFyorRgzmWBdzgtEEXF2RZiuV9ONMEh+mMltZObCgg5PqH8QJx7R98hGGOWKaJlcugb
         M4jHJOGCuvdjoBanNPDew715cUcntDzU6wkeTV1Gti0H3hPduRwo/PdQIuNSCul9I9cA
         PGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754411522; x=1755016322;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uur0nAlqBULqZvR/jwBKMPpy4vyoMv3vayFy80V0+TM=;
        b=r0WXsQyj79/YTks6UvwS0O723sa8aGnRyqqGyqSYagpjOeCCoH0c025T4LK44/HM5E
         Ev9ZwD7cbi3LZbPLxLHN5Lh4EdvkhQixCVJYsB9h5Oyo+y6Vs4yJXOKdSQTL7XBTPR+O
         2jnH3ZJr8GWepu+QD1+cVV7eV7bDQAM9QHlivkHNOye0U57EglsI8p4RCsI5I3bkc6Z1
         32Kops96jVFD0IER7KQK7/7gUqXJD/ND/ysrRD2BmdZrLDoGxSdyAj3BEN3AC1GLe7FG
         eSOgRJFdrRwcUxbiVDg1ykfqYmzWQ5rcB59soOIYypqsMXgZ3pKJWT9od0cUejipyCrY
         fL+A==
X-Forwarded-Encrypted: i=1; AJvYcCXQd30SPeNdhNeMMTPPwU6xHzqet1k01wMwsD5RnDNecPHK0yOwRhDAbkIvkakPJUj2KZAsNflHyOmL@vger.kernel.org
X-Gm-Message-State: AOJu0YwQWRhooDSy9nsrAQawjceq13aZ5Lxp5Ty6K9UAg78R0AjWKf22
	zr6OBb6YYLp/8sBQCzU5wAIaElzvurtaHssMxlvC4EmGbhmOqlsCri9IzPZvDc3Jeeo=
X-Gm-Gg: ASbGncsxy3YKj9zEICQcQozPa0cyomegyLro6Sd/7JjMbbAHxJZQ1/JX+sLMjdRjqI4
	OR+busXUeKvRTq/t4xF7JviG9VX0a5T+uLYdpyrG8LQb7oSvqRr53mpHi9S1Kxe05YYBq8/YwYY
	1VyiA/xDenvqwJJKxdkAQVlmRMYoqzUlibtts69gGSiswatRGRcmDDnU1rjsSSMJxi3W3qoOF/c
	Ojv+s/sHR3KQoU1asHieRZpYEzZzxTt/Xhkj75iRBF+ccQjuqKc9ufNhzaKhp9VBR3sUt3890Ex
	RNNUgJl5UkAGl18y9WA8uHngJGLCeH3lrjOHToU/LoOv6RMao+6BDeaT3e0F5SAepN2r3MR/GFq
	ePsTxjT+tyG7lUu+NIMjcyvPHAQujqnZO1yfynhDcp39S+KfZg+VlENvJ7TNLDuH/8OrVL5Uo5F
	A=
X-Google-Smtp-Source: AGHT+IEnvk2d31UKd+tMc+mbVq2Ah+wE3Sz5iHZ3ZBziMqKMBF0tm8r034C7Lrlr2Q0zurnS1hQADw==
X-Received: by 2002:a05:6830:280b:b0:741:21b8:b24d with SMTP id 46e09a7af769-7419d0e6299mr9460158a34.5.1754411522370;
        Tue, 05 Aug 2025 09:32:02 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:cc63:6a65:89f9:fe4a? ([2600:8803:e7e4:1d00:cc63:6a65:89f9:fe4a])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-74186a0f8c1sm2849781a34.0.2025.08.05.09.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 09:32:01 -0700 (PDT)
Message-ID: <b0764ff2-1361-457e-b240-2d08c0916a1f@baylibre.com>
Date: Tue, 5 Aug 2025 11:32:01 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] iio: magnetometer: add support for Infineon
 TLV493D 3D Magentic sensor
To: Dixit Parmar <dixitparmar19@gmail.com>,
 Jonathan Cameron <jic23@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
References: <20250802-tlv493d-sensor-v6_16-rc5-v2-0-e867df86ad93@gmail.com>
 <20250802-tlv493d-sensor-v6_16-rc5-v2-1-e867df86ad93@gmail.com>
 <20250802124333.67f64863@jic23-huawei> <aJAmgX0876tu5Ss0@dixit>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <aJAmgX0876tu5Ss0@dixit>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/3/25 10:18 PM, Dixit Parmar wrote:
>>> +static const struct iio_buffer_setup_ops tlv493d_setup_ops = { NULL };
>>
>> No need specify that NULL. Due to some odd quirks of compiler specific
>> handling and C spec evolution (none of which apply to the kernel because
>> we carefully choose build options) that is actually less likely to do what
>> you want than = { };
>>
> Originally it was { } in V1. Got review comment that it must have NULL
> if no ops is being passed, so I added (May be I would have asked and
> understand their point). Nevertheless will remove NULL.

We don't need tlv493d_setup_ops at all. The NULL comes later where
tlv493d_setup_ops was used:

ret = devm_iio_triggered_buffer_setup(dev, indio_dev,
			iio_pollfunc_store_time,
			tlv493d_trigger_handler,
			NULL);

