Return-Path: <devicetree+bounces-130857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEB79F1141
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 16:46:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F48D18841D6
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7D251E3DC3;
	Fri, 13 Dec 2024 15:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qoSf1Yyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AE21E2854
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734104736; cv=none; b=K/kZIDxT9/UAWhnii1VXJw8BVLSbURALSC3Zl0nLOL0OwWs0tgmU5COSQKYvfOQDFe0bG3v60XLerta+NbWFzfaKBIPHbnyr9OFzQ2WiSEMfA3hmy8HUgpPCKidv1e/u57T1LlbE3APWqWA1Jc6DvwsPiCxGEB2rzRoKHTpF9ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734104736; c=relaxed/simple;
	bh=Nxvv1cCz6TKkbXr8HX2g6P7ksf9y32L+nlrBlqKA3iM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FoKxRhFnV6TfJ7nnC0g/+wJy33jS5bEUKQa7M2TcYhpG+w6No4Do0yxsSz0gf3RsHwptDlAVn0Ns8EhC5BNxmPjrU7QJ0PVjRqY3gOFaqoCN8a7ej0psQN4azbLgDFosAa1DnHy2i4Uos8MqpF+gJSHeIYtlOnwS46GFbygPB1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qoSf1Yyd; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385dc85496dso119426f8f.3
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 07:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734104733; x=1734709533; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=C90Z0ka9nOZIBq7k1HLzjmeviYWi0ODLZNSrcrD2S/o=;
        b=qoSf1YydDIF59x4A03ApuV/wEX0kE2x539SkH9ffEKW6SRBDxUk/BnSqBP55NeDefB
         wapIkH0LMyzSJSCBkL093aUBaZY6dA/ofaT2okyJNq3c+FBn/1sc0QrjwdSXRI7v4SU0
         zefm3vsK1C3lFYBEC6oZN+NTScZdywWFh6K7x6fi1fUrm7zrX9XKH6kRgq9si/MDZqdW
         KtC9qqGgnS+5Fp3LF7tgD/UfO+QBrA72H+faTmAunYVmGboDrclTrnIHtEmCt+pi+pLP
         wcXi0mvZ8HjkqiBfQI90NT3DUsrTiXtWL9ixIBqifQgHiiMhLyY6tEvdBD2COi28SPAL
         Pauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734104733; x=1734709533;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C90Z0ka9nOZIBq7k1HLzjmeviYWi0ODLZNSrcrD2S/o=;
        b=enyRULlPhyV114LeNRot1gvOuVICN4ldbsBIComzyJki+I48Rj+NyMrbb9PvVVpiX8
         lafqS+FdrzfJkaqwunUc3DyM6zUYb/kjMK/x4vtcgA18O1Rl/vYML4hBYI1WndcNTDjI
         naXbIMFeVNalFizg611k4TQgPXcQ+f+sfNVSYbFGblOxOuXUrXXWqwjQmnIYhte1R7Ru
         jRawcoFcmTxoUSlpz/xA0OQZ87MqvVARCo0nZAxwAGiBxMjDepUCfCnWWPIZWsWe8lLI
         GVKIBGbIKsJwPIGvA3hBBlqQDzR7yXYNqM7qDflpr1yQA5+sJOIKTvlK/wjzNnxf4p0p
         5ARg==
X-Forwarded-Encrypted: i=1; AJvYcCVsGu8BtgcZ3K1nhmWHM5R8DU/y6sdvAf/mbHqL3hcXPBtlWKUhB+Dem0pFARxA0txrSdqUoq7dK6+W@vger.kernel.org
X-Gm-Message-State: AOJu0YzKyi/ZHx66XuyFu6Ut8wg8DxNknK9f3uvprMUlUUCb5ilby3v/
	1enatujcyn1NDH++4wxbiLcXw+IE0UWlgRJscKW7ksziI4GZl9BVlIU9WVoSIBE=
X-Gm-Gg: ASbGncu9ZvzjmQ5ImTwexmfjnPr+17Z/C/grcZ8jnyDzXMy0zVkLl6DPe9UELaE5W0a
	AZbTsr1X6rg2+VCJ3cM0dPNKi7u6PqF2cMlEadRj8it5eV4wlp2wnIhkV6Xk5V05DExrGqERGvj
	NPvLZtzAhp3UTKHdIUlB1iCfw6uRTxEzZX++eqCdgC7FG+3ney3JaI13ukqMFZTM5NFPiV/3oXR
	BDqkrM2YliOOewDYtUUYprP5AYsnKNG2EpyjSbPNiSx1RYNs5PfYl0NMyFmJIXb3Ed2dmRnS4ID
X-Google-Smtp-Source: AGHT+IH6ycqwtCzFPC+WaTT0uXaLa41FuuSR0fsIxYwG4+t2LDNl5+4msHz/yZpo78JXBatep7Vx1w==
X-Received: by 2002:a5d:648b:0:b0:385:e9ba:ace3 with SMTP id ffacd0b85a97d-38880af1006mr848496f8f.1.1734104733160;
        Fri, 13 Dec 2024 07:45:33 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824bd990sm7496894f8f.46.2024.12.13.07.45.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 07:45:32 -0800 (PST)
Message-ID: <7edc0cb7-d6fd-4395-b2ca-dfce243f066c@linaro.org>
Date: Fri, 13 Dec 2024 16:45:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 13/23] arm64: dts: qcom: x1e80100: Fix ADSP memory base
 and length
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Abel Vesa
 <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
 <20241213-dts-qcom-cdsp-mpss-base-address-v3-13-2e0036fccd8d@linaro.org>
 <Z1xUUAnxsCY33umS@hovoldconsulting.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <Z1xUUAnxsCY33umS@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/12/2024 16:35, Johan Hovold wrote:
> On Fri, Dec 13, 2024 at 03:54:02PM +0100, Krzysztof Kozlowski wrote:
>> The address space in ADSP PAS (Peripheral Authentication Service)
>> remoteproc node should point to the QDSP PUB address space
>> (QDSP6...SS_PUB): 0x0680_0000 with length of 0x10000.
>>
>> 0x3000_0000, value used so far, is the main region of CDSP and was
>> simply copied from other/older DTS.
>>
>> Correct the base address and length, which also moves the node to
>> different place to keep things sorted by unit address.  The diff looks
>> big, but only the unit address and "reg" property were changed.  This
>> should have no functional impact on Linux users, because PAS loader does
>> not use this address space at all.
>>
>> Fixes: 5f2a9cd4b104 ("arm64: dts: qcom: x1e80100: Add ADSP/CDSP remoteproc nodes")
>> Cc: stable@vger.kernel.org
> 
> Why bother with backporting any of these when there is no functional
> impact?


Not sure, I assumed someone might be using kernel DTS from stable
branches in other projects. Kernel is the source of DTS and stable
kernel has the DTS in both stable and fixed way. If 3rd party project
keeps pulling always latest DTS from latest kernel, they will see so
many ABI breaks and so many incompatibilities (we discussed it in
Vienna) that they will probably curse their approach and say "never
again". Using stable branch DTS could be a solution.

Such 3rd party project might actually use above device nodes in their
drivers. It's just some of Linux kernel drivers which do not use them
(other like PIL seems to use addresses).

Plus DTS is used by 3rd party Linux kernels (out of tree), which while
we do not care in a way of driving our development, but we do consider
them possible users. They also might be relying on stable kernel branch
for this.

Best regards,
Krzysztof

