Return-Path: <devicetree+bounces-172904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE704AA6E59
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 11:42:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4163D16C8E3
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 09:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7A6230BC0;
	Fri,  2 May 2025 09:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UTUTESF8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DC0226D07
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746178975; cv=none; b=acYIXULlnwNimVSZ3TWLSYY2da/tN2bGC4/5X69+0cbaLQZC8zSBouK9mROyJXEcRYksy8lytNi0XtGKHeFRd5xE01APk+ZDXvuuMTervqzuCESy7Di8PWwifz0WM5JwSNf8fMgLtPxp8hPbh2KVAf2wxljhjL3tAGe0uHIWNc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746178975; c=relaxed/simple;
	bh=XE7hRm0qUP0PF61AUPQ84APUG//4sM4kzYT+GWRzLUQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
	 In-Reply-To:Content-Type; b=rzw5784hc3V0A+eT0hIjy37p3gc3ImWlMHYAuZC8qQBbrm1E1XUDOP3DWUZXDIMJi7oYT+gPkoKwX3CObXdjn40z7isnUx8rBVGTNFzNUjI8qRLJyLlAnR+8dU3edLY8c+ZFxh6BcxPpTOQziq450T96xe+zqCkGztk9uJl9k+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UTUTESF8; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-39d83782ef6so1935970f8f.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 02:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746178972; x=1746783772; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WX/evLS+DuAe/0hAk5mHgxdHnsJicsKUxinsRE+gIwI=;
        b=UTUTESF8oIlgwT1NlAMe84PQyu+i2zvuu36LEu2IRmlO4C5699pofAS24BZRT+Nd8c
         iPUzLgTYXIqfDrkaxKy+JPlWPSzupqok+ycdPWiJBIL8oIi2Fs9knsc89krO9dLNGfHL
         30gBVBj5VR0c4b8p0xr+QehSMByt3cursARIoWDyCB1kZHTX1NtVQPp1dkPew0kMqpDY
         MlRhcpT8hmIi6pJw2zXwuY9KhYsUI56QYTMjS+Ge+gIQAI9d29MTLYbtIgBsLPuVnnAJ
         xbSDodvCMDzKrHkdQIbQvCeHrJZzsMaMX/cGz8mMiuH1FE8CQSae9DTl4Glky2M31H0k
         cD6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746178972; x=1746783772;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WX/evLS+DuAe/0hAk5mHgxdHnsJicsKUxinsRE+gIwI=;
        b=PRF1mo4lsv72ZJ5nKIqBgLHO39mFoH/X64xYBd5tGN7DUqaWOCX+H+LJPfpQhofwPf
         veAtq+aBhDR+g7N6Wl+o5zm/GOz5FFfgiNwJ9Ws2ejqu8tIqVTd/k7fk4zusyvqOGh9C
         bF00UrwodHJwsQ1LVOaNvojKhsWyaElsF+NGNN6fXvKa+wzAtm1L9S71fFkN4kqRWGTo
         1AaT9+jfFLKywOudXL5fmSkzkeOsMHTTdTF/1wtOKPpN2RrJa/A1Yrlj+Ey14iJxO4FX
         wSDc+obmeRf7FEAcfjy3+yB2MdarvLULHuvzQoM6OOkv4SCOivSCmWBFBggNziZYFuGd
         fA3w==
X-Forwarded-Encrypted: i=1; AJvYcCU0cjmf4XDVJ8wxygsh1ARSLKrgiskIPBe1i6mxArSS5m/4qr8PlbnlE0zp63Nurx5VsIHBd2xfRQTx@vger.kernel.org
X-Gm-Message-State: AOJu0YyVcklmH1LBgoLhlDu8xyItsDwR3tV37j6wFvgQhs/AYox1bsMX
	l5cjcuOcUdrmy1XJdDBzceKka6MFwFqpaiplKUQApDXLZQSfeWlnVg/cj3UHsYI=
X-Gm-Gg: ASbGncsaXNAFLpwny8UZFpvmhiaXcb4gdYJnvH1aNWLzv1sZb32tiUBSXq37+VKzxrX
	9gAnzOvtg3713JFld/4dkZTDJGTPGs/yF1cOsCj2iBQCaC5cAzNIQnTaMnKpp/aH+IJTTJUEidJ
	qlSAq4R0UXq+PY9F8I+W75b8PJM1Z0GbdRs/JHLcLrVvWGJexVzdtu57B31CfNUyHEvFZ6495Di
	jUjb/+ayZ9MCAoi72Y7W905v0wMv8IHbHj7+saTJblDYkdI8+JVccUVHMIpQPmjGsUzY7A/WArw
	+wziC4wwbCTEUWkyB65LCrIvxHGdzLa5hyU0Uut/DfBIkMkShONwCefBfUoVv5QOgv9PKsngW6u
	V269K
X-Google-Smtp-Source: AGHT+IFiBHhJcjpY8AHYvmDW+6tcszRqTtvHysmH6lFStDCvbCOZgJoVZxZSTCZEdI78/1mXl/L2Pw==
X-Received: by 2002:a05:6000:2585:b0:390:ec6e:43ea with SMTP id ffacd0b85a97d-3a094038f02mr4157873f8f.15.1746178972094;
        Fri, 02 May 2025 02:42:52 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a099ae3c1fsm1660874f8f.37.2025.05.02.02.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 May 2025 02:42:51 -0700 (PDT)
Message-ID: <356bc97a-bd75-4894-98fe-d7fb0e02e1c1@linaro.org>
Date: Fri, 2 May 2025 11:42:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] thermal: Add support for Airoha EN7581 thermal
 sensor
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
References: <20250226003608.8973-1-ansuelsmth@gmail.com>
 <20250226003608.8973-2-ansuelsmth@gmail.com>
Content-Language: en-US
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Lukasz Luba
 <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Christian Marangi
 <ansuelsmth@gmail.com>, Zhang Rui <rui.zhang@intel.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250226003608.8973-2-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Angelo,

AFAIR, the LVTS driver had issues with the interrupts.

This driver proposed by Ansuel Smith looks very similar to the LVTS and 
there are some comments regarding errors with the documentation below 
which may appy to the LVTS driver too.

Would you mind to check ?

See below.

On 26/02/2025 01:35, Christian Marangi wrote:
> Add support for Airoha EN7581 thermal sensor. This provide support for
> reading the CPU or SoC Package sensor and to setup trip points for hot
> and critical condition. An interrupt is fired to react on this and
> doesn't require passive poll to read the temperature.
> 
> The thermal regs provide a way to read the ADC value from an external
> register placed in the Chip SCU regs. Monitor will read this value and
> fire an interrupt if the trip condition configured is reached.
> 
> The Thermal Trip and Interrupt logic is conceptually similar to Mediatek
> LVTS Thermal but differ in register mapping and actual function/bug
> workaround. The implementation only share some register names but from
> functionality observation it's very different and used only for the
> basic function of periodically poll the temp and trip the interrupt.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---

[ ... ]

> +#define   EN7581_HINTEN1			BIT(6)
> +#define   EN7581_CINTEN1			BIT(5)
> +#define   EN7581_NOHOTINTEN0			BIT(4)
> +/* Similar to COLD and HOT also these seems to be swapped in documentation */
> +#define   EN7581_LOFSINTEN0			BIT(3) /* In documentation: BIT(2) */
> +#define   EN7581_HOFSINTEN0			BIT(2) /* In documentation: BIT(3) */
> +/* It seems documentation have these swapped as the HW
> + * - Fire BIT(1) when lower than EN7581_COLD_THRE
> + * - Fire BIT(0) and BIT(5) when higher than EN7581_HOT2NORMAL_THRE or
> + *     EN7581_HOT_THRE
> + */
> +#define   EN7581_CINTEN0			BIT(1) /* In documentation: BIT(0) */
> +#define   EN7581_HINTEN0			BIT(0) /* In documentation: BIT(1) */
> +#define EN7581_TEMPMONINTSTS			0x810
> +#define   EN7581_STAGE3_INT_STAT		BIT(31)
> +#define   EN7581_STAGE2_INT_STAT		BIT(30)
> +#define   EN7581_STAGE1_INT_STAT		BIT(29)
> +#define   EN7581_FILTER_INT_STAT_3		BIT(28)

[ ... ]

> +#define   EN7581_NOHOTINTSTS0			BIT(4)
> +/* Similar to COLD and HOT also these seems to be swapped in documentation */
> +#define   EN7581_LOFSINTSTS0			BIT(3) /* In documentation: BIT(2) */
> +#define   EN7581_HOFSINTSTS0			BIT(2) /* In documentation: BIT(3) */
> +/* It seems documentation have these swapped as the HW
> + * - Fire BIT(1) when lower than EN7581_COLD_THRE
> + * - Fire BIT(0) and BIT(5) when higher than EN7581_HOT2NORMAL_THRE or
> + *     EN7581_HOT_THRE
> + *
> + * To clear things, we swap the define but we keep them documented here.
> + */
> +#define   EN7581_CINTSTS0			BIT(1) /* In documentation: BIT(0) */
> +#define   EN7581_HINTSTS0			BIT(0) /* In documentation: BIT(1)*/
> +/* Monitor will take the bigger threshold between HOT2NORMAL and HOT
> + * and will fire both HOT2NORMAL and HOT interrupt when higher than the 2
> + *
> + * It has also been observed that not setting HOT2NORMAL makes the monitor
> + * treat COLD threshold as HOT2NORMAL.
> + */
> +#define EN7581_TEMPH2NTHRE			0x824
> +/* It seems HOT2NORMAL is actually NORMAL2HOT */
> +#define   EN7581_HOT2NORMAL_THRE		GENMASK(11, 0)
> +#define EN7581_TEMPHTHRE			0x828
> +#define   EN7581_HOT_THRE			GENMASK(11, 0)
> +/* Monitor will use this as HOT2NORMAL (fire interrupt when lower than...)*/
> +#define EN7581_TEMPCTHRE			0x82c
> +#define   EN7581_COLD_THRE			GENMASK(11, 0)
> +/* Also LOW and HIGH offset register are swapped */
> +#define EN7581_TEMPOFFSETL			0x830 /* In documentation: 0x834 */
> +#define   EN7581_LOW_OFFSET			GENMASK(11, 0)
> +#define EN7581_TEMPOFFSETH			0x834 /* In documentation: 0x830 */
> +#define   EN7581_HIGH_OFFSET			GENMASK(11, 0)
> +#define EN7581_TEMPMSRCTL0			0x838

[ ... ]





-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

