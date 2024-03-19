Return-Path: <devicetree+bounces-51471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFB987F6DC
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 06:49:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E7DA282778
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 05:49:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D472245957;
	Tue, 19 Mar 2024 05:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mTcPOUFm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C65446A4
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 05:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710827378; cv=none; b=UDLxqpryFNWrxb6hARJ16V2Y2wO2WAANHkT4Q/I9Ikjqu+LcrZEzOYnoDwVv8P/R1GkAqmlvH9X9+I5bLkis6wzReP/tjXchRfOfwSCz/PdNMtX28vgEb6Dtq8l1a3gQAuDRvivfqJ4b+Fc1e7j/pj0frAyh6wD3hi9j4F9mZr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710827378; c=relaxed/simple;
	bh=3wLhqYA8kjRNglii51LsWQ+j7Mdkmx0klG1c2/Ru/cA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FA1P6/voGzKWUS51xmrGsIhUuGmt6M4JA8DhLZRnVN19mUkLDfAULWIjlRS07+opMzcNSlxBNLldCqDKkZi0+ENAW0KtxpYK+tOSnDoJ+Nt6uykskjQruq+4Kfs8aRLb4T1wwVVUeR9vKKumnojqA105RVYvrzsUZ7yZow/QFKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mTcPOUFm; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a46a7b8e07fso363266766b.2
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 22:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710827374; x=1711432174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B4bBPzB3w6RgHzzG9byfprH0T7FpSJo+QprsvPHF+xk=;
        b=mTcPOUFm+wffvGqn6ugn3SqmhO9f1HpsebuUqg72xgc9IsiUaeTfYsVPqiMgAM54y2
         J93SCaDBvzNuhh2333DAnSShAEBUNFCp3xxJydVLPKzm2hQEGZCBf9pogL+10HHlAb/E
         sg7nvv15vIVTT+2ZdpaeDuAhNctcAggb0QdK23WEpKvoyAyur7M3ojue32GI0z4J3qg+
         abVvJQXXGhd6cqOTFfANy6RhyErMu+TzfQcyYecNLzoTX6HFeQzozPUXNtvklETs+nPD
         P2uT6QEzYHYBN7+ErI39Qn9oj9o8BE39JHhv3M5doNWZoa/VR1XFeBpIzoihp4Zuxpnl
         xV3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710827374; x=1711432174;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B4bBPzB3w6RgHzzG9byfprH0T7FpSJo+QprsvPHF+xk=;
        b=eP1p/enLauns5ETlMDvBYH5qy0dp7qwwYHXI9yX9vVXBVrQRBAw1zl9ADUFqYEQMYL
         AsoRBsYE2OcJYZPJa4KzePHYNXgkQCrnI6Q826VDfkOexc4SiNCjDUD9X3Ft2iUSiLfV
         jJxbUwlwxaN5loWw4M9ffuPM5QkiPGxStbxOAUW0ZcmJSj2k3Jl75mUEpMhaChEMTtwL
         q9d80J5wLCmeCcS6JCYxMDuVFzLmEs3KxFCEfceOTP8gL9Gf3ZEM+gtDG/EjD59ZpPZ4
         YyvBBIlNIbFxRDEVhIUmNss5ekzJewh7jjeBAgxEZhJusjXLrYyj5uIJFwr1JeWiRCbf
         nm2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUMnU/plkQuAqW4T1y4qvSloHBjS7bnssfc4z3Tj+xocYQWlr0yC6HfDI/VQDvI4sVQkjI4Gc4fDlPw5YmRPnLlbgAn+YJbnbFvmw==
X-Gm-Message-State: AOJu0YwVvkJmspa/9b18eCvClTEJPw+kHRjeOtOderHnBovz0S+F438L
	3pC5pkAj8x8KuxF/itEW6ZcIBKak2ESfPVqMfSeON9kBuXOXXMntJbWG9RBtZ8A=
X-Google-Smtp-Source: AGHT+IEh+vDv9zJrRz/0IJPHkzIf99JRfO/ePCJcZCQ0lNZVgT210A2ArrvpPmP/QQpsRHshHxRIBw==
X-Received: by 2002:a17:906:6bd9:b0:a46:cedd:4eb1 with SMTP id t25-20020a1709066bd900b00a46cedd4eb1mr2168889ejs.42.1710827374260;
        Mon, 18 Mar 2024 22:49:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id a4-20020a170906368400b00a44936527b5sm5678726ejc.99.2024.03.18.22.49.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 22:49:33 -0700 (PDT)
Message-ID: <de0b32b3-348a-4d42-89cd-df2c439b8009@linaro.org>
Date: Tue, 19 Mar 2024 06:49:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: hwmon: adc128d818: convert to dtschema
Content-Language: en-US
To: Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240318-adc128d818_dtschema-v1-1-d0af2caef145@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240318-adc128d818_dtschema-v1-1-d0af2caef145@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/03/2024 21:12, Javier Carrasco wrote:
> Convert adc128d818 bindings to dtschema to support validation.
> 
> Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>

Thank you for your patch. There is something to discuss/improve.


> +$id: http://devicetree.org/schemas/hwmon/ti,adc128d818.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments ADC128D818 ADC System Monitor With Temperature Sensor
> +
> +maintainers:
> +  - Javier Carrasco <javier.carrasco.cruz@gmail.com>
> +
> +description: |
> +  The ADC128D818 is a 12-Bit, 8-Channel Analog to Digital Converter (ADC)
> +  with a temperature sensor and an I2C interface.
> +
> +  Datasheets:
> +    https://www.ti.com/product/ADC128D818
> +
> +properties:
> +  compatible:
> +    const: ti,adc128d818
> +
> +  reg:
> +    maxItems: 1
> +
> +  ti,mode:

You need | to preserve the formatting.

With this:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


