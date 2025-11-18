Return-Path: <devicetree+bounces-239572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9594CC66A26
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 01:19:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EE84C4E26CF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 00:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAE21248898;
	Tue, 18 Nov 2025 00:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="u/x9XyTN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002A0244667
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 00:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763425158; cv=none; b=bG4BSH4d3e3Yqj1aZ+fOXX+aD8g+cfkVATxjw/xKU8vzB69dfI7OXq4JSZPzlgqBtRUHdFoAKlBWvXtCN/csY6hNlEu6HwdMwx9JGugbNwM3EAbUDFP3CxoOIqpiTAFyjgyx2sno/eeMa+MZzcZlGzQogBHYrw41Dx2ivUAMfWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763425158; c=relaxed/simple;
	bh=NE51Ww4UYolV2eloWcZw9EaHWXEGQ0AGIHc5YZfdCaM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TU71x5YBnV0Oz1nX05g33HmGhAX4O/AEb2VOHHNskHmM1QtY1MuOwG+xaRDB+zHI8Ez6OxzZT5xklv4I4eNAiVT5bVI00y2PIfA/X4vXjVrdgoJQ2JGn3vjLFy+z7KMpdEPNE+RAzkfsseZAiTjINdv1WK6RAra25JR+Uc8N72k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=u/x9XyTN; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7c76607b968so421565a34.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 16:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763425154; x=1764029954; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WfbAunHtQSMC12tNkJyQ4EuFtEBHZingQmrDRUQvvro=;
        b=u/x9XyTN0e1FR+j2frVyLU47gUYrZs7+yb4wSCYAFvEiL+g+Pu5uNz25BMr69o/fdT
         1xpTvUg5lbxPEDc4JNbZA+kBudsHFqfJxqEdQB4DI7XR4GRPKu3oK6XJyBvF8D8fPVqA
         KlVZRm75xED3/wIHpDga4uvJgeICr9fSQR03Dt5XoN331VLKcfwC2eqb7Xeo+aA0bJ7x
         obyhy05I2FH2xnhq33M4LI8sydwqJbzNcnGtidl/FzwbW8gpQfK3txBZ2I1KNJPbFIL4
         NwyqeEZT0A2tbustHcRByTNhjaw3rDO9rv7Jl+wnhLn258sPaHCRAmAzKhGFusXQGZPE
         0+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763425154; x=1764029954;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WfbAunHtQSMC12tNkJyQ4EuFtEBHZingQmrDRUQvvro=;
        b=K/KqRr4rxsUOabzYH3Pn1VjpqR/CmamXCqi/A0mexlvPNkiYd9EK/b3ug+RESsyyJu
         oEPxBDVZQWFI1ekv50+QnQqmitsmzFUX06XeqVw2abNfc2//Z989W6sR5M7a1a0cpD7A
         bEFXn6n22erDvzLGOWhoOwlQn1ApOPscJrMuJCB71xa4+bJsY+yDckCpIFVIEdlxIbfo
         ILvW7e38A9G2ZwSINMVX6EChu9utUo0fV/11jC/fUGcPM12Q5k3PXA7l4LsfhCpDWKGQ
         nEdJtnUNKPFCw8zDhkR0ghLVdGJ43f9weCXsGHKHQiAV7PvSgDjoTTykifp9f7qp8k8x
         EyKg==
X-Forwarded-Encrypted: i=1; AJvYcCXPtl8gvlV+I3QB/QRTfjxRuBp5E/Ik1cb0OdX00vvA36BGz2YyLKFjSwp9S1nR4Gf0z+PSU7VAp/WV@vger.kernel.org
X-Gm-Message-State: AOJu0YxOuIjzOEevhR3WnNV/VAxn5bdtAQcfzmTxfsAu6O2lGLl6J5hw
	7Ts381Pt9W6P7+lJ0TZq36VkDAHOJP768DftJ+CBTkOo2RAuHr/0S/BVcCgs40azQ68=
X-Gm-Gg: ASbGncuEt8kV6CCfquxOwvQEeJb1tJnf0IdQoy6eGxOW0DzoEkFqBiXlFsBwoV4oIhT
	31sGNWYeqqUfhCMRZxUY7v8nOV5V+UY3Xc+jQHA+0WuXROJApqUGFQ5El7SENiqt0tHwKrfGHHD
	0616WJSB8W0wNYO5SB1dcuY0ls74CsdQoNpvWX5t1bB3+1qjnOUGc+0kaOgitj45uinGce+x3cz
	7SSEjEJPlXI+9URE/o5n/SmDlXRGsSS7b7z85SmnDnZo+44ZlMyCKFBJVBdNW/QsFwz0nhGyGtY
	5bU65eHKbr8p9Qi7x1ZLpRsaN+dJtthiU7dnj/VX4IJJIPoVGlhLMjD/35iHSFShd/PhgP8Z44H
	uvAr9GvSCse9JOrO2xL97klo339IueY1tACJU3FzqPqVV9wKWtBVvxaCdz8OrH7tO8vuJ0FHJXS
	0Y9Rfy98jJ391WRSG5N6FTVEfsmxu8L564H63+OlKOywUWbJzDAInKfoXPsDH8mo1+RQr9WVI=
X-Google-Smtp-Source: AGHT+IHWlrolEv5LzL/t5TMhIIrUFVdsu/RnLAh79FM+odn19g1L+h2UPrr0XUBtACgyhVjNRMc3xw==
X-Received: by 2002:a05:6830:34a1:b0:7c7:6217:5c60 with SMTP id 46e09a7af769-7c762176133mr3002294a34.25.1763425154062;
        Mon, 17 Nov 2025 16:19:14 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8e86:179b:44b8:cc2b? ([2600:8803:e7e4:500:8e86:179b:44b8:cc2b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283c4dsm6084443a34.7.2025.11.17.16.19.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 16:19:13 -0800 (PST)
Message-ID: <5cb6243e-f47b-48dc-9f43-299cde632e08@baylibre.com>
Date: Mon, 17 Nov 2025 18:19:11 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: Add TI ADS1120 binding
To: Jonathan Cameron <jic23@kernel.org>,
 Ajith Anandhan <ajithanandhan0406@gmail.com>
Cc: nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251109141119.561756-1-ajithanandhan0406@gmail.com>
 <20251109141119.561756-2-ajithanandhan0406@gmail.com>
 <20251115183144.15b3e236@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251115183144.15b3e236@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/15/25 12:31 PM, Jonathan Cameron wrote:
> On Sun,  9 Nov 2025 19:41:18 +0530
> Ajith Anandhan <ajithanandhan0406@gmail.com> wrote:
> 
>> Add device tree binding documentation for the Texas Instruments
>> ADS1120.
>>
>> The binding defines required properties like compatible, reg, and
>> SPI configuration parameters.
>>
>> Signed-off-by: Ajith Anandhan <ajithanandhan0406@gmail.com>
>> ---
>>  .../bindings/iio/adc/ti,ads1120.yaml          | 109 ++++++++++++++++++
>>  1 file changed, 109 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>> new file mode 100644
>> index 000000000..2449094af
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1120.yaml
>>
>> +
>> +  vref-supply:
>> +    description: |
>> +      Optional external voltage reference. Can be connected to either
>> +      REFP0/REFN0 or REFP1/REFN1 pins. If not supplied, the internal
>> +      2.048V reference is used.
> 
> How do you know which set of inputs is used?  Looks like a register
> needs to be programmed to pick between them.

I would just make two supply properties for this, ref0-supply and ref1-supply

> 
>> +
>> +  ti,avdd-is-ref:
>> +    type: boolean
>> +    description: |
>> +      If present, indicates that the AVDD supply voltage is of sufficient
>> +      quality and stability to be used as the voltage reference instead of
>> +      the internal reference. This allows the driver to select AVDD as the
>> +      reference source for potentially better performance.
> 
> This one is interesting as I don't recall anyone arguing this made
> sense before.  In what way better performance?  Are their boards out
> there where this definitely makes sense to do?
> 

Seems harmless to have the property even if no one ever uses it. But I would
be curious to know the answers to those questions too.


