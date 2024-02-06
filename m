Return-Path: <devicetree+bounces-39035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C03A484B36F
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 12:27:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3F181F21901
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 11:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D58D612E1FC;
	Tue,  6 Feb 2024 11:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x+6+Pol1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F056812B152
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 11:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707218856; cv=none; b=Z7ST5D3Skes4eQcO+FiKNq1QDsqyd2WIH8D0mPhfop9n1gEAmXZmnvUVKTkXltJ8bwfuR8w25dJXv5MyBFTiVPAnxUM/ED6aR92X/q8eMz1l/vA2+4K9Ah2mg9OXVCf341NdxeH1nnAe5IcHVXO5l1Zathxgv2jGkv2hSjUi01w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707218856; c=relaxed/simple;
	bh=gXN7kMUWDno01YMrPfKX1MLl3Rs+yrfkwTb+tydc39A=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=TBQInSpVCpREmYs7zwNdXyRSU8TMjTsgmatz7o0IuUpMuqHHFv9i1izTXHnI3grwQxWiNTOrHb0ON9aOYZ726znJNfx3jJTXUJpTVmqIfmoTFlYNvNuk0dhIrKLt6kt4mGW2F5zmsX4RTbI8oawBK9KqC/bdJ2L2zGyRUd76mZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x+6+Pol1; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40fe59b22dbso2685995e9.3
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 03:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707218853; x=1707823653; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YL20oyCUSOrX5NeAsflMjElvQDqC4Fvyflz7/WjWFXQ=;
        b=x+6+Pol1cUkKgrS7wu2gnt6qw/VtNMg/UFj6Nmtzug4UKnpVRs1IFfwWiqX47YECmG
         ghqUO+RBd4HtFD0W/HL41814oU0xxUe6sPqxqvQiZyhQMpMKH3NmN+3NRxP1kQq32ddA
         QenSqvcYqsDfKRYIeSFqGCArdb/HXh2u6DNfxh27R5TAVkhgiZyMhmN/i/BOzRqobjQJ
         qlvvCe68Msr7Gc8n7xFAOm91zxR20/B0SxKcnKaWYgpse0lH60Z+qz7IwpWbWdCUl2jM
         grIj02eGnF169aKh8OypgC3BQjEzqgBcHG/kY0sHTb8/OkPiL6SiugBVGAUG8/wQBKKZ
         jrow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707218853; x=1707823653;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YL20oyCUSOrX5NeAsflMjElvQDqC4Fvyflz7/WjWFXQ=;
        b=bvY+3H6Q8dR4P0newmeqPohvnqo/L+7jgl4YuCj7EhQoa2Pa0c9H8bouRYTC8ZLObW
         W0jqHRIjT/R4Nd09DatOllAMM2vq/rlid2EEiS6Gh9AgM9nDH61xK962k6pX6pW0G2ph
         pV7oIC9KJ8c8hVTGzYmCcldCpS/GLfFlDxh2NroDyQO8ozg6pV09GHI/yZq7m4+0LlTQ
         bx1/B66jZ18o/OZ/qMOjCYqPcHOTzC6J1PgPgaEndwrU62YU4SKW8B+ZNe6kR/9Kr0cx
         duCog+nYss/ow5W5XnT+r1Ay5k1DZn7sceO4+uAg25VYVZclSncpfAoaYKVrF4EVPne8
         SLKQ==
X-Gm-Message-State: AOJu0YxDtafOfkfnfFFqwHrgls/KxY2ifaw72b+M184ocoGUA8vO4bJs
	fj7Nf6Bsu9MI/qOhGRJgjWkGaggVFxnNf7XpqQuuPv1nTlnlpRcoJ23c/Gm+Z84=
X-Google-Smtp-Source: AGHT+IHNSb5WfPqOjTv3r0jZq5uDqSROjhUbSTnfm4dksEHIOS8qo/yoZ/TBbIJtsJjNvTyq+FEY8A==
X-Received: by 2002:a05:600c:12c2:b0:40e:55ca:5a48 with SMTP id v2-20020a05600c12c200b0040e55ca5a48mr2016841wmd.16.1707218853181;
        Tue, 06 Feb 2024 03:27:33 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCV5ek4Ikf2wgrRNKkJUghWAgoIpRRJ0Mud9KPtDl9F+gnZzKCLCabu6rBlm7qgvf/tmbazcR/Mv/11crA/K7BqnKxw9shHu7ekYKEel1rTvSqbGWrYu/A0EfD2eV0UYG88RoB+iZigOpRcXaebCX952XrTIuwLuTvXVXzG9CeRgquFVOAqGB6HOFJXkyfBforc+Y/oiAgZRA7a6qh4Njjzpgmk6PI8M40vGdY+LYsndupbELQjeMbrWAvBUdsO89D1vdiFhb0z+nsGzD/8T+MAAQlBf50UPPU2pveihfSqBx9WMmPI5et4anJKp/D4=
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id f17-20020a05600c4e9100b0040ec66021a7sm1695964wmq.1.2024.02.06.03.27.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 03:27:32 -0800 (PST)
Message-ID: <0e44a868-0f2f-449d-9520-2ee34dc0ef93@linaro.org>
Date: Tue, 6 Feb 2024 12:27:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mfd: Update pattern property case
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Naresh Solanki <naresh.solanki@9elements.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Patrick Rudolph <patrick.rudolph@9elements.com>, mazziesaccount@gmail.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240205110244.676779-1-naresh.solanki@9elements.com>
 <8714b420-58b9-4d5b-a489-31670c8d325f@linaro.org>
 <CABqG17jfHpi5oDt+=E925Fp6DN2OftmDEjpmvb5=3nxMt+d2iw@mail.gmail.com>
 <47d66b4a-5608-4fc9-88bc-911f74d62819@linaro.org>
 <CABqG17gS6kdXKdVOc-CFEQp_BGJBANdCmEhUvQ1t=Tx=vw-9pg@mail.gmail.com>
 <803fd797-50d7-42a6-8723-6d001f80f7bf@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <803fd797-50d7-42a6-8723-6d001f80f7bf@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/02/2024 12:11, Krzysztof Kozlowski wrote:
> On 06/02/2024 12:07, Naresh Solanki wrote:
>> Hi Krzysztof,
>>
>>
>> On Tue, 6 Feb 2024 at 13:06, Krzysztof Kozlowski
>> <krzysztof.kozlowski@linaro.org> wrote:
>>>
>>> On 05/02/2024 15:00, Naresh Solanki wrote:
>>>> Hi Krzysztof,
>>>>
>>>>
>>>> On Mon, 5 Feb 2024 at 18:38, Krzysztof Kozlowski
>>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>>
>>>>> On 05/02/2024 12:02, Naresh Solanki wrote:
>>>>>> Driver expects regulator child node in upper case.
>>>>>> Hence align with the same.
>>>>>
>>>>> Did the driver have DT support before? I think no, so why aligning that
>>>>> way? I would argue that driver should be aligned with bindings, the
>>>>> moment you add DT for the first time.
>>>> Yes the driver has DT support already.
>>>> This patch is to align with driver:
>>>> https://github.com/torvalds/linux/blob/master/drivers/regulator/max5970-regulator.c#L381
>>>
>>> That's not support for DT, but just naming regulators.
>> I'm not sure if I get your perspective right & please correct me if I'm wrong,
>> I'm just trying to adjust the dt binding of max5970 because found
>> errors related to
>> regulator child node SW0/SW1.
>> Regulator driver expects to have regulators child nodes as SW0/1(upper case)
>> But dt binding expects it to be lower case.
>> Thus there is misalignment & due to which, when running CHECK_DTBS for my
>> mainboard DTS, I see some errors.
> 
> I understood that, no need to clarify, it is kind of obvious. I still
> claim the same: When the binding was added? Mid 2023. When the driver
> was added? Much earlier. So someone posted driver bypassing DT
> documentation and review and now you claim we need to accept the driver
> choice. Do you think this is correct process?
> 
> If so, what stops people from sending all the driver changes without DT
> and documenting whatever they had post-factum?

I would like to add that OF probing for MFD driver was added the same
time as bindings, so that's the time when OF was added. Therefore you
cannot use excuse "there is ABI", because your commits added both OF
support and non-matching documentation.

My stance is: fix the driver, not the binding.

Best regards,
Krzysztof


