Return-Path: <devicetree+bounces-67862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 823228C9F97
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 17:23:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF1421F21736
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:23:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 489A6136E26;
	Mon, 20 May 2024 15:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0oWg1e3I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC5C135A79
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 15:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716218598; cv=none; b=aaJDeVL483Z4D0ChaOJnvXaBF/rN/OrSOHGvUDxJpnt8ciTy8i2hSeShtm0dW3YhAn2DEDdLM9gBwGTwHcqKaF+1eUek1Rk/FBtmWwfLFWmOSI8xLWlA2dTEfgnU3smXlrjQALSMhl/MriLnUnPd9lN8J0e7Z82Zf2QI74QtyKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716218598; c=relaxed/simple;
	bh=/MqlQoolb7hzFTZdR5tx+GNDxGNoERix/Mm8NugIaCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=H51eyMbM0mH21sKxExpeO0EQaI2ri4oMxMJcBBAD2W6oR7q485Erb2jtI16PMPKlEP6qQHP0AkQ9191XIsF+GUNeAc+7/bHdJOKaXmD0TU6YdWwbgHk51KJd0ilYTN/z+oQ41ZBEHNItM8jd2T+fFymVrz68se4Df64wvYm9paw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0oWg1e3I; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-420298ff5b1so29678415e9.1
        for <devicetree@vger.kernel.org>; Mon, 20 May 2024 08:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716218593; x=1716823393; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BvrEYs9DYAbC5MlxDXuq2vHAc+BawiypTJLqHR9+P4I=;
        b=0oWg1e3In4NZcvhOGsf9X/ULcjQCiFro1XqJK6lOUm5R7yqln/lvKrXXQ8+TVM68VN
         MmVGQWpVWhmP5UyIuubPfMYICOHTpjk+MCR3m9Fb0HJMZ5SAAkvYWp753Q9mj4hD/6sZ
         TNezEgKhS8tt1CmuLkT0cGyRQK7zT8r1C2/JkwB1uA0qQH9+0GwQk9BGVaLk9mwOK6fX
         PAIogM4NK73K20GEKzA+2UgwevyrjdAnQCxEOMnrrpS5nEq9K4F2lcWOtx3XjE90F13j
         ZtahiSW11VMMShlnNiAabbrFl21q0Ox3KytXC7XzvHq/oWZOFBQDcHaJG39IZx6I6txp
         jucQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716218593; x=1716823393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BvrEYs9DYAbC5MlxDXuq2vHAc+BawiypTJLqHR9+P4I=;
        b=EIB3lvjRUFVn5/YvlaIV9vSmGffujKmqi+YOnuj+eHZvSKadARsfriBEk4lk3l+9gA
         llv0EkF3dlnvDtmX5CpoFJTObrP0RHcm+v+54SAY3lzKhiWBy09KJkKeUeBWsniH1o8B
         f5TpqMegRKNvpeLyf1Sl38328MLT4Nq/V6Qg/1kBnJx1/Bm2/o2A2/Zhhg5bFViwXTTl
         EiVsG3jmNRQ9rOMeR9p2Mc2iHxTHB6KC8riett7KrVmryS27JZICg2/G4+j5qGndkPxI
         rvkq18mIDY2JyXv2yyYUZa5fIsDDlMOCOVlm2tZiCx8lRrHVAc3gX70GT7l73GZ3BUMv
         oh/w==
X-Forwarded-Encrypted: i=1; AJvYcCX7cDGJ5Q5JqQvssdiORpgHXojIwxuMPQX4fEkAfjYVoWBIFd2F5wlXlSscxAetjzReoAnAD1UCkP/JqoRmaBpRpMc8aeXBKEjFhA==
X-Gm-Message-State: AOJu0YyQJINhip0J5micyfzEQDoBXuG90yj8yA1bqixmsLZa38x2iDHp
	jSfPvuKGqWH53AP3Ovig0v4R+ceX9xZAvqZd21AfNP8p4c9Ff37mJA2Y/z12Mr4=
X-Google-Smtp-Source: AGHT+IEfQLzDF+6DeA5WUKvuzwObOI9YQj9ggS89zR1Mmor4R3KYRZxxcVlburs7BeHxESEegxmkMA==
X-Received: by 2002:a05:600c:3ca3:b0:41c:23f3:65fa with SMTP id 5b1f17b1804b1-41feac55e3cmr276704235e9.28.1716218593164;
        Mon, 20 May 2024 08:23:13 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41f88111033sm461769625e9.34.2024.05.20.08.23.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 May 2024 08:23:12 -0700 (PDT)
Message-ID: <51a47736-ffe8-49e2-b798-d409ca587501@baylibre.com>
Date: Mon, 20 May 2024 17:23:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: mediatek: mt8365: use a specific SCPSYS
 compatible
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 MandyJH Liu <mandyjh.liu@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20240518211159.142920-1-krzysztof.kozlowski@linaro.org>
 <20240518211159.142920-2-krzysztof.kozlowski@linaro.org>
 <f42ef151-6eee-418f-91e1-5ac08d161119@collabora.com>
 <2cc638ca-0add-4c8c-b844-606e22dbd253@linaro.org>
 <cf8c87fe-7a4f-423f-9c97-3759eeee4894@collabora.com>
Content-Language: en-US
From: Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <cf8c87fe-7a4f-423f-9c97-3759eeee4894@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Krzysztof,

On 20/05/2024 12:12, AngeloGioacchino Del Regno wrote:
> Il 20/05/24 12:03, Krzysztof Kozlowski ha scritto:
>> On 20/05/2024 11:55, AngeloGioacchino Del Regno wrote:
>>> Il 18/05/24 23:11, Krzysztof Kozlowski ha scritto:
>>>> SoCs should use dedicated compatibles for each of their syscon nodes to
>>>> precisely describe the block.  Using an incorrect compatible does not
>>>> allow to properly match/validate children of the syscon device.  Replace
>>>> SYSCFG compatible, which does not have children, with a new dedicated
>>>> one for SCPSYS block.
>>>>
>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> Technically, that's not a SCPSYS block, but called SYSCFG in MT8365, but the
>>> meaning and the functioning is the same, so it's fine for me.
>>
>> So there are two syscfg blocks? With exactly the same set of registers
>> or different?
>>
> 
> I'm not sure about that, I don't have the MT8365 datasheet...
> 
> Adding Alexandre to the loop - I think he can clarify as he should have the
> required documentation.

Unfortunately, The SCPSYS (@10006000) isn't documented, but according to the functionnal 
specification, it seems to have only one block.

I don't have the history why SYSCFG instead of SCPSYS.

I've tested your serie and have a regression at the kernel boot time:
[    7.738117] mtk-power-controller 10006000.syscon:power-controller: Failed to create device link 
(0x180) with 14000000.syscon

It's related to your patch 3/4.

-- 
Regards,
Alexandre

