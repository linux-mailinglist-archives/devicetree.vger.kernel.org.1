Return-Path: <devicetree+bounces-4749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6423D7B39BC
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 20:10:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F06F628104C
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8674366683;
	Fri, 29 Sep 2023 18:10:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CF766670
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 18:10:37 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51F4EEB
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 11:10:35 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9b27bc8b65eso1337853266b.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 11:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1696011034; x=1696615834; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ppKsMWQvsuSQ1SRESoyX6XeM6gP0AaLkiyEIrn/Nro=;
        b=aT5Igy3SsPIOD2W6Jzmj2+8a3wrmq7en90VyHbm+yPYgVXmDEoCFGCbHto/hvvvwLj
         Lkk1YWtw9/lePYMudeWwPwG0FloIdd1Xpp25O3Dp+tl6SIQ9AImXL35adtssa8tmoNx2
         Zow56rz0DM6uLBRop8l1C/3Zr4U42MRW3buYwE/OjJBI9b/ifb1MDxIaxt4s/hQJuv94
         pi0RixjUGQNkBxPiWgnhVXaBkT5ydU0ej6oVPR8mF275ERh0Vz4h/IadzajrvPDThX4I
         sijn8DlkE854F9bIjwQKrOplf0rR+i2OfJjaKEZArPXtblsyUfKAFPphgVjolbL4K7Mf
         9yng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696011034; x=1696615834;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ppKsMWQvsuSQ1SRESoyX6XeM6gP0AaLkiyEIrn/Nro=;
        b=OhcYFvDtJhX/KXHejWwqFziFY3VV+ltgdPYPRgqHHfJ2a514aFNPjo3U8s1sybOrM4
         4Lt92he6G3WEDmHxXTOmqtQxctqksWUu0CxfjNPjqKlAzJZ7bk8RNWwl8hl5V15sy6Wv
         /L9/b70GIa6t1zuUwYSSXBvCnTmE3h7dxcV/BtRMgX8b6Bgv6WmEwPoAW/2fycklnO3D
         jz3Gl8pmAkC9SWDRdKnsUY27dpcAh9pKoZL8nZWnSvbdCsSPx7HUqI5+fuv+cXpWe1In
         VCjdS46Lrrw3S5bA5yPQJL/YdYmIf+LUJuawnRrgZylQ3AQsqHrEMUaZ/RAJPGVXKBvz
         gGIg==
X-Gm-Message-State: AOJu0Yzc0Flo/7bfYUtbc8/3E3aTJ83iCM6OqWNO0cziMSG+qrMz4T3U
	bIFcoKPtEFYUU1g5S5nY3jPJYg==
X-Google-Smtp-Source: AGHT+IGiq7ExCeYG0J5fb3V2IvkxXcEeyUKIotNecF7rVcqTfC0jgClQ6p9IyfmvcVKjRXSRIFGU5w==
X-Received: by 2002:a17:906:535e:b0:9ad:c89b:482d with SMTP id j30-20020a170906535e00b009adc89b482dmr4750078ejo.33.1696011033762;
        Fri, 29 Sep 2023 11:10:33 -0700 (PDT)
Received: from [192.168.32.2] ([82.78.167.190])
        by smtp.gmail.com with ESMTPSA id ep14-20020a1709069b4e00b009a168ab6ee2sm12186108ejc.164.2023.09.29.11.10.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 11:10:33 -0700 (PDT)
Message-ID: <67392eaa-518e-6e04-676c-ba991ada1753@tuxon.dev>
Date: Fri, 29 Sep 2023 21:10:32 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] ARM: dts: at91: sam9x60_curiosity: Add mandatory dt
 property for RTT
Content-Language: en-US
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Tudor Ambarus <tudor.ambarus@linaro.org>
References: <20230928143644.208515-1-nicolas.ferre@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20230928143644.208515-1-nicolas.ferre@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 28.09.2023 17:36, nicolas.ferre@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@linaro.org>
> 
> atmel,rtt-rtc-time-reg is a mandatory property and encodes the GPBR
> register used to store the time base when the RTT is used as an RTC.
> Align the RTT with what's currently done for sam9x60ek and sama7g5ek,
> and enable it by default even if RTC is also enabled.
> 
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> [nicolas.ferre@microchip.com: adapt to newer kernel]
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Applied to at91-dt, thanks!

