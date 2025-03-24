Return-Path: <devicetree+bounces-160200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF35A6DD20
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 15:35:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79E00164D7C
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:35:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5B9625C6FE;
	Mon, 24 Mar 2025 14:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="khylHgf3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE94925E466
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 14:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742826936; cv=none; b=rtvRlXEIo2HrofDhQRWgLyrINv2oBL56lnsbiC42fHM6FAtwo9q+qinuqWM/KkWWfeyH7+VuIU4e087rm9usE9h0jq9EDCBoSgnuOmMRNRq9E/QCvX+0wiQZ1XB01w4257LseN92Nmge09eWJNph0CxGZA5OkRmRBSFWC4I9JnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742826936; c=relaxed/simple;
	bh=JcUU6kx8vLMpNVMKZgSh6GDyCeP5ZASKnMnCzL3EmGw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qL/yLd3WFd2d1w+jSMmIBn+ffH8W7auYcSNPeHQ41mOg/LARD5kBAkpFYfDL2QyBf4x/ZkKnSy1HHEdPFcizQlKs74zH7J93RGRqT6uBSLgVehgMp0x7zzeuuFA2FVS0DJq9cOg+qfFzW0HWnpp7W/gkdjgb0AtnWEBjZvQLOqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=khylHgf3; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3912a28e629so219174f8f.1
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 07:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742826933; x=1743431733; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=p0w1ABYz+mEqIesnfGQKbGmtokLlYJpMd3Zdm6+vaV8=;
        b=khylHgf3ffQl/9GDoPVczpciQPXaG4KQVlFViZ3ob6u9bEiT2Vw/SLU9XrVUvhoQPu
         ZeuR2UkByxjYHapF1OfM6E2AphrE0gBgPzrK2vCMVilG1o8MtYHJbvUmVPtVzy7ra4ej
         oetGeXRUQnbz3f3wIte/jZUdqDsdlPIiXmJffabG1zuEz5ixgjLY6T7e6udtUH+PRbBm
         d9wj9vjFFSbHU31XsdrVsEMyhXHiDLX55+v9d8Fs3NMzrb1/XLYqqHWzEf955r1N2Um+
         JhW+cpXGuIXbB+ZWwo8a427170V/sQUfjtSAshAbI/jsytMYV+P76gsX4sED/3CE2vR0
         j8WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742826933; x=1743431733;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p0w1ABYz+mEqIesnfGQKbGmtokLlYJpMd3Zdm6+vaV8=;
        b=ErFN1kK84fl49wk5zavZA3Xc6tjSWGHc31OjszzF4gRxrUzmgAbkogqDjsa6lVTkeC
         dNN6ocD0w3JWDQY+ETK1Eihj4/RV8xu3m3hMVjPh2rB1uM7kNaVHEtDxrWvik7s2uA6U
         ApC6xtcdMeSKisKXJuRS4FnTa30bXP8ulFPyXwVLhBNw4897M+tT/gpStBGirJz3zHu4
         yMo8sb2STbi+Fj7X2+f80xuSyVjCUdyJ2QZg9CX0c1kwlxYp+LJVlSqfImLeTOT8qBTN
         7AHoMdL+Y/tTYgRSpA1v3sXPjMJkJqqN0U4FSfYxFTdFEhPJ4qjCPpcUjA651FQdFI8M
         ErPQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8LQUH71pMkM2uaCsoeaImsAo6TNieHQHeB+lqnsf0/M9vI6ByxkpQKZAPwzNYy19unWw7YEd2+mPG@vger.kernel.org
X-Gm-Message-State: AOJu0YzTATJtvyX40F4flXXwT10IUxt6nOd0mWEdIi42CzpPfHkBxz9Y
	gsvp9jYvF10Mybnz+tYE7osT5akfw4XgtqUdoJMMW+BaWKVOO2Hy5p89WUK3lMk=
X-Gm-Gg: ASbGncueF6i4UfnyUFMf5G7KRVzoi45Fe8tI7WVSysf9Utw3ObkissIIYXDRIJAwq50
	C3R51pZRaCrZJ1J57VDg9az5yA3MVV6gVH8CtKBVAoSlBlJz9j1jiXgEBB67lRQvh1TzYdfC7h7
	dHclrsvXJwy2kr1YXRLgZUli4KwWkBmR+sU/EIY87S0DvG19KCF55pD2jGUZY558jKS7hYjLYYk
	wKhyxUYovD01ThrTAZuZkQxb92JmToZd5pKM6GyboHbkn9jnQqPqMuPNe2QaoN5LlbHntI08W0n
	T/46VPpgdUFESywDl/ObIoueAblTsxBGrgfiE/qrw5Lc7Kk8HI04o3mQjLm5wMKOdMmsH05T8g=
	=
X-Google-Smtp-Source: AGHT+IHLpGVYohdhDePOX/01BUfja4SyeL/k1YW2dpCn0rRFA4eApzkryD4JY2waPAlUftYv7b38qg==
X-Received: by 2002:a5d:47a5:0:b0:391:3110:dff5 with SMTP id ffacd0b85a97d-3997f903a65mr4449412f8f.5.1742826933041;
        Mon, 24 Mar 2025 07:35:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a3c90sm11410480f8f.36.2025.03.24.07.35.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 07:35:32 -0700 (PDT)
Message-ID: <7beb5a48-715b-47ac-a908-ca0fa135fd93@linaro.org>
Date: Mon, 24 Mar 2025 15:35:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: NXP System Timer Module
To: Daniel Lezcano <daniel.lezcano@linaro.org>, tglx@linutronix.de
Cc: linux-kernel@vger.kernel.org,
 Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
 Thomas Fossati <thomas.fossati@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
References: <20250324100008.346009-1-daniel.lezcano@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250324100008.346009-1-daniel.lezcano@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/03/2025 11:00, Daniel Lezcano wrote:
> Add the System Timer Module description found on the NXP s32 platform
> and the compatible for the s32g2 variant.


subject:

dt-bindings: timer: Add NXP .......

> 
> Cc: Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Thomas Fossati <thomas.fossati@linaro.org>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  .../bindings/timer/nxp,stm-timer.yaml         | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/nxp,stm-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/nxp,stm-timer.yaml b/Documentation/devicetree/bindings/timer/nxp,stm-timer.yaml
> new file mode 100644
> index 000000000000..41093892c617
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/nxp,stm-timer.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/nxp,stm-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP System Timer Module (STM)
> +
> +maintainers:
> +  - Daniel Lezcano <daniel.lezcano@kernel.org>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  The System Timer Module supports commonly required system and
> +  application software timing functions. STM includes a 32-bit
> +  count-up timer and four 32-bit compare channels with a separate
> +  interrupt source for each channel. The timer is driven by the STM
> +  module clock divided by an 8-bit prescale value.
> +
> +properties:
> +  compatible:
> +    oneOf:

That's pointless - you have only one.

> +      - const: nxp,s32g2-stm

Keep this

> +      - items:
> +          - const: nxp,s32g2-stm

Drop this and oneOf. Unless you wanted more devices, but then it is
incomplete.

Best regards,
Krzysztof

