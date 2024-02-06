Return-Path: <devicetree+bounces-38911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C92784AE6B
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 07:33:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD23C286DB1
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 06:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933F1127B6B;
	Tue,  6 Feb 2024 06:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="olrzNDEN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545F6127B6E
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 06:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707201214; cv=none; b=czcUiqJotIZ9t/1KsfrR9HzPiqCe0Arur6p6xhT5CO+khvbmk+udp2xiQjeXWVxL6Knq0qO+7pZCLbo0PL1xvMPN9pY2XSAVHshaANOSlGR4pIAQgKl3++Y+dPmk2qq8zOnDDPAiHXcRlmW7DHZRQWE2+rh5a8cvjfbtW1dU/Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707201214; c=relaxed/simple;
	bh=yEfS68ZaG11FmPJw+YIL+y1X6E2ocoDjkTZJbnh5Og4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UajX4kYeEcGllmsgqE3s5i8SeOcjFvqNpta6G93QqFtbK1+ei6qll29KMjLEWZnGITPSzHq2yboroVA7MrZUTjOkxxmzBBirsc8Q+7finyynYH3G1qjTjyYtoEtEeRM/SSCyt/nPtY2NAUhDhHpjywZCmoTCzhTxDcuMEgezXDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=olrzNDEN; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5115fcef9e9so161669e87.3
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 22:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1707201209; x=1707806009; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MUfk5AFliSEaJHYEe90eS5Tk2E72Nu1M00RsyVShQXI=;
        b=olrzNDENxOv1DZtQJyAVFEMUnDk1AMPMBVQ6tRpqAeqtaTWTrRnCfhvjV1PQ2T5r3w
         Ui3TIwH3jEHzloTvTi9ZIVBfCuyPQq49nBbSrItFHfp2j+mqcGR4ONpnqkLoFliA9a1h
         jyRmDyKix1CS2DeRhJcO801ktZTdv/H4hwnBS61LkG/ZfI3+DoMTTEn7BCEoKJhJsgar
         7OSnvrq2nsPMx1Vfxye5XLiAFYJxzSrFLzIbqz2mhcOBYhsPrOVjZTu7Tpum5JHCz7za
         yYy/GSjfVgd6s7AKJYjcR0x4x/x5OGRcPtSf8fOZi+m/xXcWqHx859kJNA6n5Elw/Dnt
         BS6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707201209; x=1707806009;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MUfk5AFliSEaJHYEe90eS5Tk2E72Nu1M00RsyVShQXI=;
        b=pZ9sU8WcF72NY6i90MRdFInTU9O5nAKHFXSLlXQPTj2IfgmTyg1S7vuQpwAxsc8J8P
         FzE42v/C6lK7rBKuOjQ+11d+pnR9S+SU79lahFm54SeB+1k3OZIZeABwJoOZCNuwU0ox
         r64xvcAe2L6EDcG6qsVrIjrn1Ve8cUf4x9Kchs17IVzhpYnhVnXkMbuaSOcy3rQ01TL+
         cowlTcWxwh/J6hbgv39L0ZCQ4hHjagDUD5MTVxiWffGAHFHTQ6syuiTl92wA7DBicdSc
         xR7vxfGcgqBO+aDIn32TC6rKaq+xSgtyPyzPQk3ZTfvmx9OpnpYeWvj5NcDRQGZVYnJD
         /cFw==
X-Gm-Message-State: AOJu0Yz15GXFwFU/R/159sQ33XDK021HiB2fkrtltny+6clLKD7L3+AK
	ddrWvJNiWEbsGyJ4gRHKDgS1K3F954nc2yx7h34+G814cYmHBj3on+6qD6cPb3I=
X-Google-Smtp-Source: AGHT+IFKp8f8zNec2Qzx0+JhNeYQQlf1tX6HAi3rCWpvR1s5SLbNmmUokSmb+/DzonZwYuUaVlMyyw==
X-Received: by 2002:a05:6512:517:b0:511:51f6:4760 with SMTP id o23-20020a056512051700b0051151f64760mr1190585lfb.4.1707201209252;
        Mon, 05 Feb 2024 22:33:29 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUyCPJKxoB3l3DmSSjs3jxLG0ERJh5ObZcnDGbSvty3aSE33M+l4vpKUHlqR0UZHXzYvJFTTqJMDQFJNFWSoN87M7wqMDD+QFPXEJL64wV/vhoGCSFB0m1yrdGeUuvMNKi1cHx8bp98stI325VIuoXHnslv/bySZpgxuZCKsOMlvXgRXMb3MwRaOYZg+T/McT5lvolAFsyPYRkiKJ6BL4sDEO1hVa9/gyVFbHoses7KtOC14z0MaFhwEtCB9ejZxCHAlatI6tsu0fxzo93BbtSG7XqRjlqaxaYnXe4G6ZKsRf4n/fRqpDyFy/vXcYhh0wLSwDySlJRYlKr83qrXJbSJjJUoh/Md/lDHAcSxFDf9ERwTYCZmqNc5vxQxbjGkJTcSUK/a/CoAJCxRAIzov/+wlAn2gfyq4VZxSUT64vE7D4wuSobZgfa8mohZTpOP3T2RMSeHn8oBVw==
Received: from [192.168.50.4] ([82.78.167.154])
        by smtp.gmail.com with ESMTPSA id a5-20020a05600c348500b0040d8ff79fd8sm863218wmq.7.2024.02.05.22.33.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Feb 2024 22:33:28 -0800 (PST)
Message-ID: <c2427050-9d96-4f2b-b6b3-1f3605df77d5@tuxon.dev>
Date: Tue, 6 Feb 2024 08:33:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/2] ARM: dts: at91: gardena-smart-gateway: Use DMA for
 serial ports
Content-Language: en-US
To: ezra@easyb.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Rob Herring
 <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Cc: Reto Schneider <reto.schneider@husqvarnagroup.com>,
 Michael Zimmermann <michael.zimmermann@grandcentrix.net>,
 devicetree@vger.kernel.org, Ezra Buehler <ezra.buehler@husqvarnagroup.com>
References: <20240102161839.702625-1-ezra.buehler@husqvarna.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240102161839.702625-1-ezra.buehler@husqvarna.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 02.01.2024 18:18, ezra@easyb.ch wrote:
> From: Ezra Buehler <ezra.buehler@husqvarnagroup.com>
> 
> On our AT91SAM9G25-based GARDENA smart Gateway we have been experiencing
> various problems which we were able to trace back to unreliable UART
> communication. Enabling DMA for the serial ports resolved these issues.
> 
> Ezra Buehler (2):
>   ARM: dts: at91: at91sam9x5ek: Use DMA for DBGU serial port
>   ARM: dts: at91: gardena-smart-gateway: Use DMA for USART3

Applied to at91-dt, thank you!

