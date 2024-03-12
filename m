Return-Path: <devicetree+bounces-50044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6968793C0
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 13:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 365D928326C
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 12:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96DD67B3F5;
	Tue, 12 Mar 2024 12:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mGTxnbab"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3BB7A14E
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 12:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710245005; cv=none; b=eLvSFJh8LUrlVvFlYN/aZpiPMReN4njebqRkQMeh0MfKMv/v0IsNODUI58gDC9OQ4yRD6g0W+LqLKjQHw9oH6IMh4A/j/iq7YkhrG2yT4XPQS2i/6lQWml9DejdZbaukajNc2PFeZpxWW6cbkisnCoWG+60Tiz+hlLy3zdYqaLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710245005; c=relaxed/simple;
	bh=mYDXkLkmO306AaXyIF7M8YDLT22d1ev6IWwdSQV945U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tghmm+ATJLPZUVUZ62kLJQgbsofF1R1HePqltZfx82IJ0npNI6UAidU8+6xEc1PMos8nh56G0o7UKrL7D9WEhmI6TFaK6MgZZHgZG1YL35pLO7tKA0HHLiAk2Vo6Ua+hpYG1fE3rF+H3Hd/15V56KtSLJOaYubuMq7XR5ghSfkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mGTxnbab; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-413328344acso5169525e9.3
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 05:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710245002; x=1710849802; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nxq7pcJo3LT3VgGTpu291pG7RDcNuTFCrtjHrNFKvcY=;
        b=mGTxnbabxdYWLGAIXubZY9tyEEuFoDaOFe4Pr+bSTn51TERXsfOZ0eCkpvfteDcBNz
         LiY0j1O/ND9x5wTWZTaDvD1/ykVdY08OX20NdP0dz6c5YRQarJOw+teUcsfQD5Og1ZgR
         fqGhAC7AGB5Xouax6vXuUk7FuSr8UpqNWONF6T+/LPR77Kv7qBianqAzLijSaq4aza7t
         crtjuOI2EJ7TldFwua3VpyHYKqnHg8apWhgOjLhLirr6D7d2WMg2HSnD94jupKLyeWIE
         9ExEKi0nEHMNzs2hQS3haRBWMEwgD/yoLpbsVjrFtDweLH7ELnmftMcHlRNQbuLHAzhp
         nrCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710245002; x=1710849802;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nxq7pcJo3LT3VgGTpu291pG7RDcNuTFCrtjHrNFKvcY=;
        b=V5kSvrLYj6v+OseATy/O99xbNAGpMFS97l6y2/6D9Ke0feSnUImOdAWJuHm0HsS6b5
         wB5Qdg/U1V9huw8kcbeYncS2MoobY4D1dL+ymvAR+Gh6q2mIT8xq9RFtVEYNwJOO5dyP
         JAeBMEB0hVNG+Brc3B3yGrd4hTVGgz6JkL7Z7DRUmN07Xvr9NnMtHY/2c1+ZRBC6Jdu7
         HqrIUrSkEKaqlCVQnygo1qPHGqW3Q0XGhO4oFtrTMBJrlDFyJI/UC6o7S63CxnSKrbn0
         NqgizKCuZIPPjGIaUw/TuhXlb7RPJvs6HG9JkeaMdY3vzoq3EOdD+2g/k5v+5osZojV6
         UPgw==
X-Forwarded-Encrypted: i=1; AJvYcCUOOJle9v/w1EwZzp1y9BgZn/AbNmQxePYWLQ2YwiU6rndWw3jOqO6pVhDtyPDGlQYu+nbO1EpHo7mjAGmRoC21vGrKnWLavQozzQ==
X-Gm-Message-State: AOJu0YwAZnAkCU/A7+Rh46c/tZxJiKewAjYo6e9iONwWSGavX85n51OJ
	HInfpBqK0eema5bDhJE+kAxQNedD9TDDzo5nxosTsRw7uVus0QzuSOPUrepImfw=
X-Google-Smtp-Source: AGHT+IFbkRb22ArDTUOGRP1IZHMKrk8HwSfVZan9rWO8EdKfq4QaTVzPNGy+pUgZnDJQpfwohOaG+w==
X-Received: by 2002:a05:600c:43c4:b0:412:faa7:1398 with SMTP id f4-20020a05600c43c400b00412faa71398mr7505612wmn.21.1710245002001;
        Tue, 12 Mar 2024 05:03:22 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id fj3-20020a05600c0c8300b004131f5966f5sm11892371wmb.42.2024.03.12.05.03.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 05:03:21 -0700 (PDT)
Message-ID: <bc402b70-4b68-4768-b976-8fdbdc61d152@linaro.org>
Date: Tue, 12 Mar 2024 12:03:20 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] platform: Add ARM64 platform directory
Content-Language: en-US
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Nikita Travkin <nikita@trvn.ru>
Cc: Hans de Goede <hdegoede@redhat.com>, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240312-aspire1-ec-v4-0-bd8e3eea212f@trvn.ru>
 <20240312-aspire1-ec-v4-2-bd8e3eea212f@trvn.ru>
 <4b65793d-0196-0118-6304-b078eaacd482@linux.intel.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <4b65793d-0196-0118-6304-b078eaacd482@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/03/2024 11:40, Ilpo Järvinen wrote:
> On Tue, 12 Mar 2024, Nikita Travkin wrote:
> 
>> Some ARM64 based laptops and computers require vendor/board specific
>> drivers for their embedded controllers. Even though usually the most
>> important functionality of those devices is implemented inside ACPI,
>> unfortunately Linux doesn't currently have great support for ACPI on
>> platforms like Qualcomm Snapdragon that are used in most ARM64 laptops
>> today. Instead Linux relies on Device Tree for Qualcomm based devices
>> and it's significantly easier to reimplement the EC functionality in
>> a dedicated driver than to make use of ACPI code.
>>
>> This commit introduces a new platform/arm64 subdirectory to give a
>> place to such drivers for EC-like devices.
>>
>> A new MAINTAINERS entry is added for this directory. Patches to files in
>> this directory will be taken up by the platform-drivers-x86 team (i.e.
>> Hans de Goede and Mark Gross).
> 
> Mark -> me.
> 
>> +ARM64 PLATFORM DRIVERS
>> +M:	Hans de Goede <hdegoede@redhat.com>
>> +M:	Ilpo Järvinen <ilpo.jarvinen@linux.intel.com>
>> +L:	platform-driver-x86@vger.kernel.org
>> +S:	Maintained
>> +Q:	https://patchwork.kernel.org/project/platform-driver-x86/list/
>> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-x86.git
>> +F:	drivers/platform/arm64/
> 
> Is some ARM64 person going to pay attention to these patches (you or
> perhaps somebody else)?
> 
> It's perfectly fine to have some ARM64 person(s) listed as an additional
> maintainer there even if the patches themselves are routed through Hans
> and me (and pdx86 tree). With Mellanox and Surface platform drivers which
> are also routed through pdx86 tree, we have Hans + me + 3rd person listed
> as maintainers.

You can add me as a +R.

Perhaps Dmitry and Konrad would want to be on the list too.

Actually since Dmitry has already done some work on this, I think he 
should be on the review list for this series.

Adding..

> 
> (This is not to force anything on anyone but it could be beneficial if
> somebody more familiar with ARM64 is in the loop.)

---
bod

