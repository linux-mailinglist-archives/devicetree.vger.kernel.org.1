Return-Path: <devicetree+bounces-58441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2288A201F
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 22:24:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85D6728BDFB
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 20:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A36E182B3;
	Thu, 11 Apr 2024 20:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HEPP92Ch"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC93E17C95
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 20:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712867055; cv=none; b=nnZqp1RulIgkbhAd8nkDNHszlgyFINEDKN+BzCL8mrRMZLE5T+ZFX25EXWbNK4G6XLJMPHT3plYXbD2exzuz8i1JapBVTZpGw9/uqP1P67jPvyxKqD2ZZI4714Z1PLJNAjXw4g0rLju6iu+vmTQF/3IxD79YbVKI5QYo0Td8el4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712867055; c=relaxed/simple;
	bh=QqxmKREBd98R95lxy1BDt4/C4X/1ZCgWeLkeabMbOEM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nZcor5WVaGAri0py1ee40F+hTos4To/SP4NIF2C9Gzg8wcoQZbWZPF6R6qxpR8t7vPaqZXpSOdIjzdlstt+vt2MvXEyPXUNYRZkV15P49fBgWOtYm0Ghr+s3QBNEsBQwM/Ytms+Ed/kE5K/x2UkIDZefJ6cP15VCcfYTisMdfRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HEPP92Ch; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2da01cb187cso2238561fa.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 13:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712867051; x=1713471851; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OkivZAy8vHp+8K7Um26GAxu/l7QEtqH2ogeAPyc9feU=;
        b=HEPP92ChPg4pOcong9yW0dsFZyHT0Pau2psj7nyeyyH7dnFsQGY4Y0h8klNpaIPMFr
         uB1oCbuOnyZ/QQu4ltfgALX6pNC/G7Sh7z4twNAlZx5wIuoBbSrdqdKIvmQhq9z2R/MR
         +FdaocwAISbH14MZQHBHxIID+chGKo2W6UFwVVXucOu/C0yWXPd6Tj7d5i2BiTvRC4KB
         IoZDWRlpLYoB0ofPYmPPsq1I4GdWCbBCjy6ks9KT9nC/gLQLaIxMvfJ8GIC4L6GNC5fe
         SLIDs3RhnrOGijK63uTkIC1GZDTBu8UFn+Chy0WQaEBxiXSZnTzCpUSL5RZMFni0CcYG
         h9BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712867051; x=1713471851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OkivZAy8vHp+8K7Um26GAxu/l7QEtqH2ogeAPyc9feU=;
        b=wI6UpSZZtm+jNJyoK2vCNBwFDIPr1U/Lr0fukoYw5SbePb4wYC3s0EU7ZkbQTXyyPH
         C7u29kfxjTTXZAo6qpMild/9lKz+rQgv5Wl0peJaXI2+PnIxve1X61e5zF5NkCvqFD4j
         fJCo87iS43Bw2QeKbpeVWJZKgAUTE7+TF8zsmaQmAM/4IRHC4gyxhmIZVt5VUDWaXyY9
         xtpebydXHPyIP2BY1CJuJn3WXT4hP5JAu9Y2v6YYyTrVBzbTHaUXHHZy5W3pvTwESw1w
         9iXHp5ej08RXxTb+S1GCUi0pqlSn/NHUyaqae63S0tLyFfIwvh4pAXc7jLp2ea4RE/OD
         iscA==
X-Forwarded-Encrypted: i=1; AJvYcCUpYd4fSU8chw/Dt+immNW8uazPpqK2zQJYDYEDYnGjkb6Np041C1jUnXyJgmXzUUO/xIByN8V69ZkdtpCUn0IpFbb4oTAayp+EiQ==
X-Gm-Message-State: AOJu0YxXo7b8oz/rEmB68a9l3QW2i2HtFVqFLvtnWDrTEXf1VD0MkjFh
	Ld6GqTv1ODCVDn4CukvXj4po0436PWcnL2xSgpH4shmsms6CyIk95IicbHVbiz0=
X-Google-Smtp-Source: AGHT+IFmKV1cZUNf2RDPXfgrp5jM/80Z18N3yhtpLtRxKHZ1VDKWNvDrx521CSjJRJIGHFCmxXfoWA==
X-Received: by 2002:a2e:7d15:0:b0:2d4:49d1:38e with SMTP id y21-20020a2e7d15000000b002d449d1038emr508466ljc.28.1712867050958;
        Thu, 11 Apr 2024 13:24:10 -0700 (PDT)
Received: from [172.30.204.35] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f24-20020a2e6a18000000b002d4295d8563sm291115ljc.62.2024.04.11.13.24.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Apr 2024 13:24:10 -0700 (PDT)
Message-ID: <bbec514f-9672-4e5a-bd83-20ab59b3dcd9@linaro.org>
Date: Thu, 11 Apr 2024 22:24:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] soc: qcom: Move some socinfo defines to the header,
 expand them
To: Elliot Berman <quic_eberman@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-1-ce2b864251b1@linaro.org>
 <20240410132510649-0700.eberman@hu-eberman-lv.qualcomm.com>
 <2c2bca6c-b429-4cef-b63a-ee3bd6c9eecb@linaro.org>
 <20240411130802689-0700.eberman@hu-eberman-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240411130802689-0700.eberman@hu-eberman-lv.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/11/24 22:09, Elliot Berman wrote:
> On Thu, Apr 11, 2024 at 10:05:30PM +0200, Konrad Dybcio wrote:
>>
>>
>> On 4/11/24 20:55, Elliot Berman wrote:
>>> On Fri, Apr 05, 2024 at 10:41:29AM +0200, Konrad Dybcio wrote:
>>>> In preparation for parsing the chip "feature code" (FC) and "product
>>>> code" (PC) (essentially the parameters that let us conclusively
>>>> characterize the sillicon we're running on, including various speed
>>>> bins), move the socinfo version defines to the public header and
>>>> include some more FC/PC defines.
>>>>
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>>> ---

[...]

> 
> 0xf is the last one.

One more question, are the "internal/external feature codes" referring to
internality/externality of the chips (i.e. "are they QC-lab-only engineering
samples), or what else does that represent?

Konrad

