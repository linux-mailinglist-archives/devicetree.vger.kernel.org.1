Return-Path: <devicetree+bounces-132437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 348129F7169
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 01:36:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 240C61891248
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 00:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F331111A8;
	Thu, 19 Dec 2024 00:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="ARQdvUuu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7DF0C147
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 00:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734568610; cv=none; b=qylWTjJVXJWRApXUC7NctSw6kOXNBU1FUIoz0GwjuSPXqOVhI+4c1AWM4vgiT8AKBjhutTTPhUw4cC30Le5kHkfBU5Ujf6wKGfS/5YaOb12ZNzZmY+X8BlS5+877ShwBFWjGKfx6lPivhcpzcHE3xUnrXx1UnMYGh4MB2NWd+RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734568610; c=relaxed/simple;
	bh=+SaeB0VCw+i7foCEgr6B5tYSBWITRsDz23gNP6NFVdQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nQIXnP+PMkMfNpDaKYQfm9jxkual10CWwpaxePXQBOw0nb2+JZg77MDkTeN9DmAKRHdDVjauJ+VdD4s9BDQvu00VTpRlQnCX3UUN39vFnLD14T1TDPF91nbSVahURZ/xdvD0reywIjE2NV70/cP4O3rBtZUtzzNbQZi5zH88DZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=ARQdvUuu; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3a9c9f2a569so1836595ab.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 16:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1734568607; x=1735173407; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cb8i+/RcecBf8L1BHUB812gTo+/Q1lLoDgdoPwfFPzM=;
        b=ARQdvUuuuNMZ1mnpffyLFKwFFV8P8HM7iBq4VgQcTS68dWVRRAe1NOa1yzAv+rNJCK
         uyF0GE1vQsn+3QCJfxh2gvhDZLz3QMUj99YUyfHuDtYs969LsNWWO/CSkhcJ6yIBRt5P
         2jqXLD1uWXyzOkfT3O3X2/dGJD5fwEk8L5M1LqnQ1D3zXlQZnzjo+cPp3iSM/w3ms45b
         famEk76o+6h5VQF31G3mFkeiPZgQY0RKYIQbuhq2DGO0E+A836cjoqI2wXdqi5T0jYoa
         zAKKT5MtJn+aO/MgWvyKCotoIM7YDx9c8lw56A6Xv+prrxm92wUGYV7uA/A9kOaNlkNs
         6c5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734568607; x=1735173407;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cb8i+/RcecBf8L1BHUB812gTo+/Q1lLoDgdoPwfFPzM=;
        b=MKLwIL/R6w1Y12EB9kaO4rU/FDII5MAVSrGqIAxPcztANhBNvY9+gkRsDlHFsooWFQ
         qowrl957kIOsJPtMiEa45F3US0gtYA5aW9sjrnnny8N76aJ5ZBnAJVnF/6Vzvaz8ZCpe
         ltkeugdO7t7CGxduGWer91AdHtgxMqdFsXx3IEgToBAiMkAXqDR+EWEyjHfh3ulUrGtf
         iOFrNJYLAvK2yxapxjlLbC1kudCNJJ0AIHQG1Z109cx7ajgUXeQrJVAcjhKaw/46NFGm
         O+s3wtdcIABsi2cVm5rUnvwDG7s6YQJWrKVQ0dFujuXJKU910reoSyAu5FpcUvUx9QF3
         s5JA==
X-Forwarded-Encrypted: i=1; AJvYcCWxgdlLOd0sIM6KQ0lS7KcmKe2Xgoj61rMG/RtS5ptyQt1Rivy5Yxlu32GR2luQAPE99FcXz+TjPaSL@vger.kernel.org
X-Gm-Message-State: AOJu0YwOyVo0menX8NxRXOcDo+MRHVoqU3VrpV79Zxzt1cMABW5VFjMC
	WMTNZ3/luPGl9kJIrrQc7658JnpJPOvOdrP2WbPArkiHD/arbCVNzGZOUDUfqBo=
X-Gm-Gg: ASbGnct/mnyLgWBz0sc7/+72hErqqCi7FSsFRZAg372aymSESa97cMIlST29LOjV9xD
	PIYHhBJKIDA0UK+1jY6p0g7mOQRKXu675dNxInadoJdjElyZKkuCTc3OYJe77uxlkkzV6ts1qYo
	iYqPPBszU6XK6PPuMdot9/UmnGzcaDC6C4aOolmDOrLxCtYuj9SaZh0cnOdrjIQYSJqxmVWG/Qv
	EYY/0TUPmfX8Pcw5/CVsrE6ijMjS6WApHpXoEQYonPAlCb3062ZAJj2S9lfiI6EdOIFQvjuJ5Mn
	vN/lKQ==
X-Google-Smtp-Source: AGHT+IGjJyKsYjWbWITE1klbpwS9jGoMikkrLPCOKb2Dw/oFK7RIUcGdG08meGSlH2+zD9XaD1HuDQ==
X-Received: by 2002:a05:6e02:218e:b0:3a6:b783:3c06 with SMTP id e9e14a558f8ab-3bdc437ae8fmr49474725ab.19.1734568607604;
        Wed, 18 Dec 2024 16:36:47 -0800 (PST)
Received: from [100.64.0.1] ([165.188.116.15])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4e68c2220cdsm16169173.148.2024.12.18.16.36.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2024 16:36:47 -0800 (PST)
Message-ID: <76505ca3-b5a7-4cb1-90ce-0c7951c0b3b6@sifive.com>
Date: Wed, 18 Dec 2024 18:36:44 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: riscv: add bfloat16 ISA extension
 description
To: Jessica Clarke <jrtc27@jrtc27.com>, Inochi Amaoto <inochiama@gmail.com>
Cc: linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>,
 Conor Dooley <conor.dooley@microchip.com>,
 Chen Wang <unicorn_wang@outlook.com>, Jonathan Corbet <corbet@lwn.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?=
 <cleger@rivosinc.com>, Evan Green <evan@rivosinc.com>,
 Charlie Jenkins <charlie@rivosinc.com>,
 Andrew Jones <ajones@ventanamicro.com>, Jesse Taube <jesse@rivosinc.com>,
 Andy Chiu <andybnac@gmail.com>, Alexandre Ghiti <alexghiti@rivosinc.com>,
 Yong-Xuan Wang <yongxuan.wang@sifive.com>
References: <20241206055829.1059293-1-inochiama@gmail.com>
 <20241206055829.1059293-2-inochiama@gmail.com>
 <5e878b5b-b49d-4757-8f7e-4b323a4998b3@sifive.com>
 <F52E8856-7602-4E4B-8932-2B13AAA30822@jrtc27.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <F52E8856-7602-4E4B-8932-2B13AAA30822@jrtc27.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 2024-12-16 4:51 PM, Jessica Clarke wrote:
> On 16 Dec 2024, at 22:00, Samuel Holland <samuel.holland@sifive.com> wrote:
>>
>> On 2024-12-05 11:58 PM, Inochi Amaoto wrote:
>>> Add description for the BFloat16 precision Floating-Point ISA extension,
>>> (Zfbfmin, Zvfbfmin, Zvfbfwma). which was ratified in commit 4dc23d62
>>> ("Added Chapter title to BF16") of the riscv-isa-manual.
>>>
>>> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
>>> Acked-by: Conor Dooley <conor.dooley@microchip.com>
>>> ---
>>> .../devicetree/bindings/riscv/extensions.yaml | 45 +++++++++++++++++++
>>> 1 file changed, 45 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
>>> index 9c7dd7e75e0c..0a1f1a76d129 100644
>>> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
>>> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
>>> @@ -329,6 +329,12 @@ properties:
>>>             instructions, as ratified in commit 056b6ff ("Zfa is ratified") of
>>>             riscv-isa-manual.
>>>
>>> +        - const: zfbfmin
>>> +          description:
>>> +            The standard Zfbfmin extension which provides minimal support for
>>> +            16-bit half-precision brain floating-point instructions, as ratified
>>
>> I think you mean "binary" here and in the entries below, not "brain”.
> 
> No, that’s Zfhmin / FP16 / binary16, not Zfbfmin / BF16 / BFloat16? The
> B is for Brain as it came out of Google Brain.
> 
> https://en.wikipedia.org/wiki/Bfloat16_floating-point_format

Ah, yes, I was the confused one here. Sorry for the noise.


