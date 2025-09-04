Return-Path: <devicetree+bounces-213017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4708B446B2
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B02F16D4FF
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6310C272803;
	Thu,  4 Sep 2025 19:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hIxA6llD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BA3202C43
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 19:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757015241; cv=none; b=RhEBIVq/EOb0SQ8iCLa3knwmkUPcSqJPJq1pip+nrxdGzgDbjSM8Dv0y52hA8vXFGzHpNs0v4VZgQjVLkRjJKsFjD+gIYeANxovau1FLeVbm87itUC81CyqwraB4kVlzkdLRayF50S+ykhhpaVNUro2XHCPuXlTY/E8mvRjgDjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757015241; c=relaxed/simple;
	bh=0uKBluwkW8S9ZJojZ77XmvLQl0hO1ujm9d+I2eVJD9Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nRp4cTOF1trx250lCMXj2yCLSTYowDZkaLXV3+evJsCK2ebrlOnW4hTSBvn0dW+eGFKjhsSIXYPEzAnRw8BN3HMsAcvaMiSnP2+ZoZOEt8qZkXR3ujs6gbdxgUccnJO7yhqG0FgX314AXxtHrnPxyl82UkWqwWnaM5Yl8gPZKiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hIxA6llD; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-3197f534179so1245762fac.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757015238; x=1757620038; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WdrAdy+IWPnyy2x2OiP/b29/tYOXeCzQkBFpQM/hl8M=;
        b=hIxA6llDXXzK/GvZGyMiInf0MscUctA466Fj1Wik4GeERuD/lkfbpApQC5uw3iUp81
         d2f6VHqKy6lTeS2r+tKJCLpSS7uus40IolEbHY92ylL/6vc/wlU3wPV8L+/agsyaJeLL
         stVIVfVEM0OOpmaecAZT9pOet9VUF8duv3eDJByMi301CHuo0t725Tk5TWPBI0LZpdqi
         zFN1OyI9TMyW8y6+DesETY9ary9+jStO+ZBoobVWUz1VM2Sm14Y4z1XtW+JK7JfpSK+J
         9ZDAcA51hhEEgo5Q7Qc+xRNqi3+r3wi/hZF0aZ3e9aHSMctrBrohq2Y9Ogafzh8cSfKo
         QNVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757015238; x=1757620038;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WdrAdy+IWPnyy2x2OiP/b29/tYOXeCzQkBFpQM/hl8M=;
        b=P8q3RzrJB7VDZu7eKylrn0nfx7CElOERWDjJWmhxN/BwBIqiWUDBs/hUC8vEgdkYaP
         yPFi1d4kaVInYZcmzTUvfvZ0+hYgY7BMN4npdrRwJidE6uxmgp7k1YwOl/mB0ElprXdB
         iI+ijacxmQ1ABEQeKkBvQzwxsVsTR2023P0R74BN35BSubpykB4eQnrmd4G28tLU+2nu
         Z0ERx1V/h1YlmoQaP9QVxaXzHo/Z4C4CR/2uJ0U2xmojte/0nZ46t8vKmOeu4F2FcAzI
         faUizcNdlDjHS4XbbXdiHyk0ys96NtxPIa6SVwAlYfPPuYVwcPqJYDF7les+zSL4F5/W
         lmZw==
X-Forwarded-Encrypted: i=1; AJvYcCWKpox05aTTcfFHZ/qwtl9nX0V0f/A6BQJygRwCi/nO9mgSCrnK6kBt2fRdEp0MQfsKqes1yDaepAOQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxyWJ2Z5g723orKDD1P2hjFSQOxkfwO1gaad53fh6Z9e4bqu46V
	UqZQ4u3KYuhcX+iIoaEHqRCsxxtfJPiZPTIlrXRLfqHEdIEOQ6buIx89+foT+hMJsUQ=
X-Gm-Gg: ASbGncu+5M2oDuWzGLQ+vjKb+zxrDi6zRkFWS+WqVFhwuVd1uscgExmuvcUqcrKx/Lo
	ERS8WadZXZZY63Zq3FnTkEmjZgqc5cntZvzHzhsQrseL1opVioLzoK+8DweR/EBxXkgfLsmA9cz
	72LlcHcJiJNC5iE+idiy5981UKOS9qnCTcqDT0C7u8suAX7QKlkot/qi4S3JrWLBCE1kbEeR2bU
	xf7ZbLn5ITQ6MCGUKFAjzqprnm77KO7KExBGY9y+9DPVi1LJpGinulTIvo5OFK79v/2LHcg4nda
	DwECMyRXQO4MLQ6xK9DGmHwjrhnJjtaV8GkUYfQ39mNb5PahZVp/FTkb18f5e3l2oy8L01xcnpY
	K/gp4/RZRyYPIF/13Rer9KOuFDUB9ywSjiwwUJvnhCkvHkMMeYcJyFvc5MSTcoUDIEqyxlrys0o
	EtewUPJcI5zw==
X-Google-Smtp-Source: AGHT+IEw0CdMxMBJHWPN4YIH+Prs/3E9C5k20ULoXPlkVgyx+QT8YIIdd6jgssVML2iYRirYhicCOg==
X-Received: by 2002:a05:6808:8117:b0:438:8c9:5d8 with SMTP id 5614622812f47-43808c90671mr7979280b6e.48.1757015238298;
        Thu, 04 Sep 2025 12:47:18 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a178:aa1c:68f0:444a? ([2600:8803:e7e4:1d00:a178:aa1c:68f0:444a])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4380001d11asm2968057b6e.16.2025.09.04.12.47.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 12:47:17 -0700 (PDT)
Message-ID: <99775fab-c0b3-4ecb-bc79-eabbc4975d28@baylibre.com>
Date: Thu, 4 Sep 2025 14:47:16 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: iio: adc: Add the NXP SAR ADC for
 s32g2/3 platforms
To: Daniel Lezcano <daniel.lezcano@linaro.org>, jic23@kernel.org,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, conor+dt@kernel.org,
 krzk+dt@kernel.org
Cc: linux-iio@vger.kernel.org, s32@nxp.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, chester62515@gmail.com, mbrugger@suse.com,
 ghennadi.procopciuc@oss.nxp.com
References: <20250903102756.1748596-1-daniel.lezcano@linaro.org>
 <20250903102756.1748596-2-daniel.lezcano@linaro.org>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250903102756.1748596-2-daniel.lezcano@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/3/25 5:27 AM, Daniel Lezcano wrote:

...

> +  clock-names:
> +    minItems: 1

Usually if there is only 1 clock, we don't bother with clock-names.

If we keep clock names though, I think it should be:

  clock-names:
    items:
      const: adc

Since that is the only allowed name.

Although the reference manual calls this the "bus" clock, so that might be a
better name.

> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    adc@401f8000 {
> +        compatible = "nxp,s32g2-sar-adc";
> +        reg = <0x401f8000 0x1000>;
> +        interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clks 0x41>;
> +        clock-names = "adc";
> +        dmas = <&edma0 0 32>;
> +        dma-names = "rx";
> +    };


