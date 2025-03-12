Return-Path: <devicetree+bounces-156978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1CEA5E36D
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 19:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B58D178D18
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 18:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65B12250BF7;
	Wed, 12 Mar 2025 18:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P+Z5JO/t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826501DED52
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 18:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741802740; cv=none; b=SBv2JL7HauJMoqI25BvsldJCmxbgU6lg2/ybKoxalxyc4YVGZrvhaQPOvz1kSd3VUc0gDkBudeP7VC7lqvXVU7Yw7en9FX+92S2wvGoKaWm32S8eDgK6q7EJ3cPXbx/Wbi/R3I3fhpEza9atCas2Sg+GZUeVZpkbIm9lMKaifuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741802740; c=relaxed/simple;
	bh=ZnvtSvXYaZKgXRPi9veH142SzPQiahF6nTX9p/M+dJM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tUbXdI9XX97LDMpeBg1WA/dvVjkZZ8LsW5esdyQEH0THZ4d3Hj7tAjY8lsmju1aJWoEe7xxqsGg6bmqV18hy4Tc6G4US5ckio/fZQ+UleNY5P6rfDOlN2hpfQLYiQdlHIar6amgBM0gW3/D96xccK37Fq/QPTn9GOfYDBgSqGZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P+Z5JO/t; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30bfe08889fso205441fa.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 11:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741802737; x=1742407537; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4JP/zrVSexM0psJNK4a87mL+zi9yaJ2cIxPsPxHNny4=;
        b=P+Z5JO/tsgDgec+EVmgvNitfMfdnsvXASdqP5fIMs9lnDK7SrONlGShwoZdmv4HdbU
         riZq1xoZ7SC0r+qr2LHPJr/2oGC2dLPGC+5iBDUDlK3x14EGEqqE71PSlZA4BbCotYxV
         kMQWY8AvCfDbkaIdbs+di1yVpSasdnUsJMfz8y3U6PBSEWPjQ0NKMpFxiFBtFpJdMhLX
         XW/H5vjJzxf3xjl17HWtIQWvOLbSn33YD0Qa4ff+gHqRHmDi1fHDIPCtwHpdk4lkoQIw
         /a2V0P4XsdBx+bRfFhAcTmsuwlpSfco+YqxzSNVDup57egQtVqfUllKm7uDfPcMHKgfg
         jTvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741802737; x=1742407537;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4JP/zrVSexM0psJNK4a87mL+zi9yaJ2cIxPsPxHNny4=;
        b=eSoG4y2es2qfiTLwFATbhpnc3rzloE0pChh12LVvCGdjV311raiBbV1a/Az66Pya7H
         m1fWPTlJzmZ174mI3UfT7hOA8c0TYVAUxq4I8xleAx10rgwPYWfaXrZmwYA2pR2sgrpM
         uK0XNi59f7l4v76zo5LoXfdlhH7oWCVLXTIZ0mKP4grZNSfrAfQTL8cDx/UC8TNgojhY
         DUXHniq+ZcQJD++n4RZu2H9CnJIgJdxS7G6CowOZDhNqovSBh9FTKd+MRsHgSUarf5xN
         /nJsX9dZvZG+cTajWvxByWrve/t3O6UoCXsb6lUzKrhNGQcGS9MuVDc7ClRgnW1g3YRF
         mnyA==
X-Forwarded-Encrypted: i=1; AJvYcCWvm+IsjkRd+GNT8F4E/QyF6b0A5DH4r55gexB4fZ4jmt24YFqdUUhq4xz/B1p3Pl70ooLD3CN9xU69@vger.kernel.org
X-Gm-Message-State: AOJu0YwERRLLRUNZTjtGWnnbXni+TlMcWVdvGtMNz1eD4yUJngwmxZJp
	7Fbya7gWShng9TaVab41K4s+W2Rz65YzH4BmGHUsJTHaiuGIFxxrURSSiOrRUA4Ia/e6BS0yqEe
	Q0oJFoA==
X-Gm-Gg: ASbGnctebDj+9E2eXAJPcO8YaLMX2DsOCh6fwhB/3yxTeSXsm6msA46pncjS76+hsxj
	t3UlZbQYgkf4YTZO+FcOffbAWLeCpe+tYpcPMUKE9YwxA5MapArR45MgRmtwaR3fTXPNFKazVOh
	etcHfA5MhcLI+STk4l1EWrJf6LTs8xE16bYALaJWCAPOcJvNCp5G4TC5zInNtpJBeptBQXXy7+S
	YH5sOqAU5rlqpKFuNoQj6HFkhpJoc1SGuxcfJtPOfNo9Y02pExWErtPPf9bao/ksGCJBvv62Zrn
	mdWPnWpKaQiTu2o530jpVwmXdslSMR+Pl5NW0gzJCw04Mw8XrL9gKnIpiaVPnjMmR2eRbD4h49m
	nWCxChSYrfbtm2KIE
X-Google-Smtp-Source: AGHT+IF9q4rX/bNC2ZItHt0EL8U3J8nNwY8dNosMDubIuSu9sUrRcC/KaIRJyrmIsSDmKBjdsU5nBQ==
X-Received: by 2002:a05:6512:ba7:b0:549:8f26:ba08 with SMTP id 2adb3069b0e04-549ababf748mr1150913e87.5.1741802736571;
        Wed, 12 Mar 2025 11:05:36 -0700 (PDT)
Received: from [192.168.1.228] (74-111-126-194.sta.estpak.ee. [194.126.111.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498ae4b6f9sm2177533e87.50.2025.03.12.11.05.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Mar 2025 11:05:35 -0700 (PDT)
Message-ID: <ebe9d832-e414-4b67-b78e-f30a7c43a466@linaro.org>
Date: Wed, 12 Mar 2025 20:05:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: media: Describe Qualcomm SM8650 CAMSS IP
Content-Language: ru-RU
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-media@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, Bryan O'Donoghue
 <bryan.odonoghue@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 devicetree@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>
References: <20250312001132.1832655-1-vladimir.zapolskiy@linaro.org>
 <20250312001132.1832655-2-vladimir.zapolskiy@linaro.org>
 <174177914766.189343.17822607487336311201.robh@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <174177914766.189343.17822607487336311201.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/12/25 13:33, Rob Herring (Arm) wrote:
> 
> On Wed, 12 Mar 2025 02:11:30 +0200, Vladimir Zapolskiy wrote:
>> Add device tree bindings for Qualcomm SM8650 camera subsystem.
>>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   .../bindings/media/qcom,sm8650-camss.yaml     | 389 ++++++++++++++++++
>>   1 file changed, 389 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/media/qcom,sm8650-camss.yaml: properties:ports:properties: '^port@[0-5]$' does not match '^[#$a-zA-Z][a-zA-Z0-9#,+\\-._@]{0,63}$'
> 	hint: Expected a valid DT property name
> 	from schema $id: http://devicetree.org/meta-schemas/keywords.yaml#
> 

I believe it's a false positive of a regexp unparsed by a regexp, and the warning can be ignored.

--
Best wishes,
Vladimir

