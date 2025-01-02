Return-Path: <devicetree+bounces-135041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0179B9FF86A
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 11:52:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BACDE160DD3
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 10:52:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A931F1A8419;
	Thu,  2 Jan 2025 10:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="X1hbv+CW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6E4192B89
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 10:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735815142; cv=none; b=iRN+WkEaS74riDuEpoLg8N5Z8O16QoobH7T5egoHcwp0YIswJJ8cxO5rVO+5kRdblyXQMZND3+R9N+MIjvs4bKys35WrVmWF16J8RCgTDgzvD9k7ZZ5C6dzRmzlKVbsPGoLI+Dn8UdkdQWOe3V3YwN4GzRi6BN3GtJte8iEFdnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735815142; c=relaxed/simple;
	bh=mMF/3PAWbT4cwYrfbRt7SNtYsxbQwYPfM12nGDJoqPQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EVPgrXJ4jhVo7BByNo9jAPI+LpxgjMuDJ67+gIDLl1wJJKT1VHlEbi6mVN4D5Y4Ca1MLkEAODTQXBHZKWE6PNcN2daSTnProMA7UvAK+fE+rpCAzLNqlz+VbyWFDMqgRjN8jJFYdVEUb1pchLXsAO+0LCz1d//mVzO/js8fJypA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=X1hbv+CW; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3862b40a6e0so6187883f8f.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 02:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1735815139; x=1736419939; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ze9LqpjCGSWa0yPDrI54f/7UaaRjSHcJ6CR6aCivtOE=;
        b=X1hbv+CW1mIXR5inMbIRSMeXu/iV+kika7xeuUAOOc8Pkj93e35QOzK2BTqlo9rkB2
         RzdHFjnLfrc+iu2Fnh95De/rfhyxa+S2od0M4ya4jmKc+3yOnguowXtB7ze/BfM7isYa
         1Pea5NJgMQSJfZs/yE/VahCSiqq1qRkPGZmaoaaEM3go+p0yh9aamPbIQDfpHJ2VN6lx
         3qeHQowwLBkOlN/2rmEVHPOtblNIoI3zN3Y0obd8TjBN5F8adYUPZoxLBJGjbzkOlXRH
         5eHJ6o8lkPYKCuK2NXcoXSm1ajMVv2XlO8+FxA7Hhd7eZKr+jGxO6f1drnVJWpW9+RKu
         73eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735815139; x=1736419939;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ze9LqpjCGSWa0yPDrI54f/7UaaRjSHcJ6CR6aCivtOE=;
        b=QyOlFFQ5pq1AIIAxuDr5AAcRDmO1xfJT7os5E2c6UE/ZI1HL97Qt/yqCH1kfjWSYKQ
         ikT/OaiTuu64UcLkTiESZDl5Weq2mG73/KRDlIzr6P3PT4y2pH5ULJTTSFL6zykeX6+R
         3d9Br5Y2PysAJI7a0IX40T6uumNY4Lb6Lcjhx7Hoy2SAJCKlzL92Ubrl3597mX6L/Kiu
         TNICZ18tL9ybUbpk7HsTxhCc+VLl9hxYzTenWrieTb+UKjHPitYcvl6RRzzoQlnlcavT
         De4kYxiUG9oB02jFO2ThG7uJazyRzgTLIztg+LPJAUckMErMwGZU6r7iPokBYspt5Xtc
         gvcA==
X-Forwarded-Encrypted: i=1; AJvYcCVXw3EUTdeaWH7QS0L3vcKbAC9gv5G7fnKlPHGB/oNeG+die4jYN7NwkHO5anUDR0kESblFiWj4PoF1@vger.kernel.org
X-Gm-Message-State: AOJu0YyNATWXGypJkmRqLBF9PPxHEua1yaRkmOTrPETNJrJ06jjxRjv/
	Z9kNErd3ds+60Wv7o+u+WnqV7aZEz0Zd7xR1CaPzMV2c4cwpvC1i0Cy1Oh+Xw1U=
X-Gm-Gg: ASbGncvtfnnPadg8eWEOKoBz1dyRJ5xIctaZGKZDMj9dLcpf84t5XPKzsy1NlcEWQak
	swrMKIKjkgBvF8UQ86ISTREbHws604bHchaOCHElMn/T2bOJBhjaXwouLU+wUamLlHkFZ931T3y
	vMkXNSgB39KPiQXbiKlBW2qKwp4K1fvdOvrSUMTH7Q16SstV8n6/QF4xWl2KHyPFqe11rV+3e6C
	SN0GWP4MnMyOnfXXvj0DGt7o8g7hXR2XGucD6Xlstcp7fEpccI7S0/3t5xnIdR+Sg==
X-Google-Smtp-Source: AGHT+IEAXmh4Jm/fooPniPUd+cP6NsbK2SR6lviu3UydjCwVbdG5V5GA3GQCHI+v0JTIHRvlmZHUzQ==
X-Received: by 2002:adf:ab0a:0:b0:38a:50fa:d582 with SMTP id ffacd0b85a97d-38a50faf3cemr11500112f8f.59.1735815139109;
        Thu, 02 Jan 2025 02:52:19 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.102])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b3b295sm490098515e9.33.2025.01.02.02.52.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jan 2025 02:52:18 -0800 (PST)
Message-ID: <70aab1bc-1427-44ed-b516-843429d0bdfa@tuxon.dev>
Date: Thu, 2 Jan 2025 12:52:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 09/13] ARM: dts: microchip: add sama7d65 SoC DT
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, mturquette@baylibre.com, sboyd@kernel.org,
 arnd@arndb.de
Cc: dharma.b@microchip.com, mihai.sain@microchip.com,
 romain.sioen@microchip.com, varshini.rajendran@microchip.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-serial@vger.kernel.org
References: <cover.1734723585.git.Ryan.Wanner@microchip.com>
 <3f63aebc4b31da1b631ce7e6d76aa0046deeda6a.1734723585.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <3f63aebc4b31da1b631ce7e6d76aa0046deeda6a.1734723585.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 20.12.2024 23:07, Ryan.Wanner@microchip.com wrote:
> +		pioa: pinctrl@e0014000 {
> +			compatible = "microchip,sama7d65-pinctrl", "microchip,sama7g5-pinctrl";

Please also update the documentation with the fallback.

> +			reg = <0xe0014000 0x800>;
> +			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 10>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +		};
> +


