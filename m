Return-Path: <devicetree+bounces-51464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 933B487F6AC
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 06:29:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B68FB1C21707
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 05:29:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EE054436B;
	Tue, 19 Mar 2024 05:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NTK0VcHb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2846A44362
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 05:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710826144; cv=none; b=JJYg1O12kzEiYa0v6JcygPO0Y4IeAMbJNTei1mGBX/AcSmA8iyimz9QpPHS9chfc0jTbmU2Fz0DwjxXZdGlV9FST+WUM8W8bVLp83ix6564HxGoBy7rKAtYfAY8pe5VRi4ZZ23FweEV0LDzGQ6Ko4bHtJgIbewAK+1apTZMrSmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710826144; c=relaxed/simple;
	bh=K7QToXAAe5HyxCjtqBulr0uqK2YIIFTKc6WGJYf+b2Y=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=gPyyU86kDdRuaTJGkDfyOxD8QS8N7H5srG50zhgbEikbYQSEnytO/dOCTy1xNAh5wTdSCpa8PtkZd9skxcpdcjVTzrlXxehXXYHc/2hRGWeLPqfXIw3yOEmQavuKFwH7mMhb3jinBn68tBMuaVIbbdeJqWswd3tmHydWuc5qGQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NTK0VcHb; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-563c403719cso6207994a12.2
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 22:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710826141; x=1711430941; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6AQO/2Swa2FQ79FolhUdfxGgRssFDYSK6sxer+QvsoA=;
        b=NTK0VcHb8M6pvduuIpM/E/bCQ7lwl3ItbNx+L82Wlmrs0MPhnF2h9njW9OcYY0N8iK
         b+Nxyl9edlohbCzbIwdkJQz0tIiv06cLw21e6vGnOKvOx0eaSbiDZJO2IztYkXY/jd5R
         mmtNde/o0Rdv07tpdvvVUFvZA2fm6FmGqJwZA8Dxc7+oQ65ZcXao+7uIePI+SnB9MldF
         j5RiBWYyYE009YBDQuOoaFsy2X71JvUSzk4cub23cxLkehBeW5wwiGnFYQC2dEsoXPkH
         Fy5wbDU8oFKunHfQTum2AClWf50cxgt2C3Tp7FlQda/4iXjyzKudpBbuMH09il37TFui
         gGDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710826141; x=1711430941;
        h=content-transfer-encoding:in-reply-to:autocrypt:references:cc:to
         :from:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6AQO/2Swa2FQ79FolhUdfxGgRssFDYSK6sxer+QvsoA=;
        b=cAfrZaKgSeFGdHIO1cnKzY0mXxFZ9MdrRSrkip7xTMBp+Oh4pbgWjEYgK34ciaKB0a
         cu9Om//ssq+35a90aw478ct2Zt3LoAJDSEZ2/gedZ1sDXSHEG/156SAujAMuhZuyPx89
         BMmn3RLS21x9Hc7+I6xmdQwpihez1FxzWdo2xBKqenRK/XH3SJ5z42GuMTHKDuJAIgP8
         OoXCTih6U7jmKb1IrrBcLoifXym07b5+lGNU1D/9nNgYjanffpyN2DF/I8P9OZZ1VLIc
         pMOyc0Eo6bpDj0mRQrCiDquT9stMJXGQeSO7LO4PbvrmvFIN8pZBwzB3+OVDTRO+iSLv
         hVDQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1d5EkySsmUxkB0/7kek6hsqdL3MBBIZyfKJj3+BaYgy3pbUVrGnigdsYC7g6Q/rjH0bqoKucV9hY4lmrHKpnQnKjzCuIG+HbgPQ==
X-Gm-Message-State: AOJu0YzthkdkWL+D2vH7wRMD7M78tc4Lz2cGD6pBGPBuEyXXRBt/KY53
	IxqP2Blq/3qGQH8wQ79e1iJY63WmoaVGdgAcZchj8854xcMKbNF3nUmjC8eOlD0=
X-Google-Smtp-Source: AGHT+IFZgAXTNnlTfgh9aF3DLthH2SfgbAvhGWgEWExYIZQitNtiYA6ypFizz++z4ACf/VZ8WTCslg==
X-Received: by 2002:a05:6402:5418:b0:568:9e82:4899 with SMTP id ev24-20020a056402541800b005689e824899mr11081629edb.9.1710826141461;
        Mon, 18 Mar 2024 22:29:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id ev19-20020a056402541300b005689c2c6508sm5330103edb.70.2024.03.18.22.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 22:29:00 -0700 (PDT)
Message-ID: <f59d6389-1c7b-45f9-8b85-274dbbeb775a@linaro.org>
Date: Tue, 19 Mar 2024 06:28:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 2/4] dt-bindings: remoteproc: add Tightly Coupled
 Memory (TCM) bindings
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Tanmay Shah <tanmay.shah@amd.com>, andersson@kernel.org,
 mathieu.poirier@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 michal.simek@amd.com, ben.levinsky@amd.com
Cc: linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
References: <20240311175926.1625180-1-tanmay.shah@amd.com>
 <20240311175926.1625180-3-tanmay.shah@amd.com>
 <d498d76e-b021-4cf7-adca-63f1cd3e1542@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <d498d76e-b021-4cf7-adca-63f1cd3e1542@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/03/2024 13:13, Krzysztof Kozlowski wrote:
> On 11/03/2024 18:59, Tanmay Shah wrote:
>> From: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
>>
>> Introduce bindings for TCM memory address space on AMD-xilinx Zynq
>> UltraScale+ platform. It will help in defining TCM in device-tree
>> and make it's access platform agnostic and data-driven.
>>
>> Tightly-coupled memories(TCMs) are low-latency memory that provides
>> predictable instruction execution and predictable data load/store
>> timing. Each Cortex-R5F processor contains two 64-bit wide 64 KB memory
>> banks on the ATCM and BTCM ports, for a total of 128 KB of memory.
>>
>> The TCM resources(reg, reg-names and power-domain) are documented for
>> each TCM in the R5 node. The reg and reg-names are made as required
>> properties as we don't want to hardcode TCM addresses for future
>> platforms and for zu+ legacy implementation will ensure that the
>> old dts w/o reg/reg-names works and stable ABI is maintained.
>>
>> It also extends the examples for TCM split and lockstep modes.
>>
>> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
>> Signed-off-by: Tanmay Shah <tanmay.shah@amd.com>
>> ---
>>
>> Changes in v13:
>>   - Have power-domains property for lockstep case instead of
>>     keeping it flexible.
>>   - Add "items:" list in power-domains property
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

And unreviewed. It turns out you now mix devices and bring incompatible
programming models under one compatible. And this leads to problems in
your further patches.

NAK.

Best regards,
Krzysztof


