Return-Path: <devicetree+bounces-41295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 101F585309B
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 13:35:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1C8528952A
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 12:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBBFD24A1F;
	Tue, 13 Feb 2024 12:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="eX2oetE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCF33CF73
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 12:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707827738; cv=none; b=o4RezVPJsj0zuDD7uCCi1hqdQiBCU3fS5T9zneFL8nG44seAWcJ0tgTLM60vfELFauImi46dNDMrDDQsz0VEvGLaSKHtzjnam1TByeEPtyGVQnPPshfkMuUFLa9D7UBxPSYobuXM6H+FehHvrSqYR5wNuAMYo232RRYGAI3ZQt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707827738; c=relaxed/simple;
	bh=Ikga+bqf2vf5hPQXWvjN9ETr7UkwvNtZEwtIkE+O6OQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OgFDKp6cZsCA+idmci7oK76dT0HrjglirrGyEItHW7+Db3sePbw/FFvPi1frdCC+GUeGKhuVG2wsb5KTF2ZoqznNMcsEVLAL0btm8YuOwmXzRVoBxtFfBAYInzv8U3ml8sd/hULeK8RuT2mZ27XldTkcJRRTsHF8yGy8X6NHq9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=eX2oetE0; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4114e0a2978so11291825e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 04:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1707827734; x=1708432534; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9ylYg8jpgray0kLn3qJlHrPhKR7pfQNba/j1IDxwbCk=;
        b=eX2oetE0LW5iOMadKYzIixYWwuqF6JBtMD7ul/BDsNhurHZapim5BTsP1oYHqSGd3u
         o8bNnlX3FhR4b95idvamT9Z9h0Si29cKjp4J8HPFqcybrbv6JVDBdbWYTF8MUB1odID5
         bQ1eXHst+MmljFNwGEVG9iLu+oOHyM/AR8rYeosK6aOvz08wsLVht3YLBOWgsHQN+Bqz
         uKtwSN34ReGneOBMmPgYGwq/7SWOI/oHAYWgWjYnJfjqBVKlObFnbb3icyUlLbTBWRLl
         /Vucab9u3OMSBpT4MeZ0HgVfa6sLFubQYZXoi3DJCUKr73wWgsW2fXCM4r+kVnj+pVhw
         +VTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707827734; x=1708432534;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9ylYg8jpgray0kLn3qJlHrPhKR7pfQNba/j1IDxwbCk=;
        b=WMdA1Cv7ty/9Lgo+qF9gGoXGobBseOADQGa5bL0jeqtDkwJm7LAOUdlE1+mStdoLFY
         n2L800A+/aepmu15VTUvHzRkAKm2Etau4Ji2GJ+SaYG1+eFhVFaBQ1Qmlt5nGHFjms7n
         sM9JttLS/NdJftM1ncnNR3NVhmtHsXl7lagiF5AMPNy5GCX0X37aLFoTvOvdrWSRplZt
         xJe2yBUeGzQQRLHwNk2M7UYGhkfD8mmRP3NtsnaiKNwa2YBsvONqmK+43vwvAvGA7cMY
         E6uWoHBLCP7hEgSg9DZ5+5tP4yMj2gp+KsCHuMjSf5L78uFPleRoeUa+6Luw/Voqv2GY
         Gk6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXuWwOwPbXh/fs/yiPm1VsRT70ytyWvdW50WDpT3bnIQ3vQ4/9SvICpqf1vd379gPw6O7K0mmIfNDnTxI78qf8cf+vheS0eALiiCQ==
X-Gm-Message-State: AOJu0YyN21Dm1t95gn77Ub4/oNDsqQJPBQPqnx9Hok1248ouYOAdjPnl
	TSxvpjCeperFj0PmYtU9meCXLiycA7DDywtBnb+tIiFZqS7kZttJL37XUBbADPc=
X-Google-Smtp-Source: AGHT+IFKSw8A/od4MdNrL+6wJDy7UsTiUXnDoSUALZxq9VMlKlnYodvBWf4xHy9YuTFTZ5JKXzVgbQ==
X-Received: by 2002:adf:f582:0:b0:33b:237b:22c2 with SMTP id f2-20020adff582000000b0033b237b22c2mr6751357wro.21.1707827733799;
        Tue, 13 Feb 2024 04:35:33 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXi8bYSxZZJImq1PNwCD/zbXDLxkCIO8LfIOHRNejh+N5NC56GDyLM1Nm8bovLUkXnPpMOI+26eDVPQheNe0iR1G4CrS0U9X1AUAUNtXzgxbooK2piAnVcNGvWsdH3msLdWOPUAuen2jmIIsTuUoSn/UUXBfPBfoAIsVv1aiC8dSyimEMqYlLn7/ezST09rwST2hkGVGIdQoFemLjnBTKDfv0sLYXFKQpWkA/9429i/ui46CKYaMilKSHxD5JTylD5U963lsWK0OYUHDLdBpBhpuJkRuztVnYBetosqDU0rSXU3K895mJjAH8j7tm/9TZelN5XlMDCfmgb0j9koLrqGSu+/MVM/HZ6pBrSbKa1TGuE=
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id co6-20020a0560000a0600b0033cdf118599sm978718wrb.72.2024.02.13.04.35.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 04:35:33 -0800 (PST)
Message-ID: <cda7afdb-f75f-4376-87b8-882297f2657e@freebox.fr>
Date: Tue, 13 Feb 2024 13:35:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] dt-bindings: arm: amlogic: add fbx8am binding
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <8a148279-05e1-4f00-87c1-6ed9ed1cb3dd@freebox.fr>
 <959b8135-a687-4781-993c-5fa5ba3b9c8e@linaro.org>
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <959b8135-a687-4781-993c-5fa5ba3b9c8e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/02/2024 09:41, Krzysztof Kozlowski wrote:

> On 12/02/2024 18:50, Marc Gonzalez wrote:
>
>> Add binding for the Amlogic Meson G12A-based Freebox Pop (fbx8am).
>>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>>   Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
>> index caab7ceeda45a..fce12e44c00af 100644
>> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
>> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
>> @@ -148,6 +148,7 @@ properties:
>>                 - amlogic,u200
>>                 - radxa,zero
>>                 - seirobotics,sei510
>> +              - freebox,fbx8am
> 
> It does not look like you tested the bindings, at least after quick look.
> Please run `make dt_binding_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> Maybe you need to update your dtschema and yamllint.

I ran 'make dtbs' and 'make dtbs_check', and booted a board with the generated DTB.

I'm using yamllint 1.33.0 and dt-validate 2023.11

$ make clean && make -j16 dt_binding_check DT_SCHEMA_FILES=arm/amlogic.yaml
  CLEAN   Documentation/devicetree/bindings
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/dtc/flattree.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  LEX     scripts/dtc/dtc-lexer.lex.c
  YACC    scripts/dtc/dtc-parser.tab.[ch]
  HOSTCC  scripts/dtc/libfdt/fdt.o
  HOSTCC  scripts/dtc/libfdt/fdt_ro.o
  HOSTCC  scripts/dtc/libfdt/fdt_wip.o
  HOSTCC  scripts/dtc/libfdt/fdt_sw.o
  HOSTCC  scripts/dtc/libfdt/fdt_rw.o
  HOSTCC  scripts/dtc/libfdt/fdt_strerror.o
  HOSTCC  scripts/dtc/libfdt/fdt_empty_tree.o
  HOSTCC  scripts/dtc/libfdt/fdt_addresses.o
  HOSTCC  scripts/dtc/libfdt/fdt_overlay.o
  HOSTCC  scripts/dtc/fdtoverlay.o
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTLD  scripts/dtc/fdtoverlay
  HOSTLD  scripts/dtc/dtc
  LINT    Documentation/devicetree/bindings
  DTEX    Documentation/devicetree/bindings/arm/amlogic.example.dts
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
/home/mgonzalez/linux/Documentation/devicetree/bindings/net/snps,dwmac.yaml: mac-mode: missing type definition
  DTC_CHK Documentation/devicetree/bindings/arm/amlogic.example.dtb


Looks like my MUA mangled the patch.
Sorry about that, will resubmit.

Regards



