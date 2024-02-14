Return-Path: <devicetree+bounces-41610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D241E8546D2
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 11:07:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A7A41F242AC
	for <lists+devicetree@lfdr.de>; Wed, 14 Feb 2024 10:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5087316436;
	Wed, 14 Feb 2024 10:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LpVsPc4y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487B118638
	for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 10:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707905234; cv=none; b=nhQ+ELVsUt2oYbksQJ3dK+VHVI0vO1LQfGLZeij8TtJTEt/fXTPznWhbo1CmlaiVy/HvBr9suKX2usJNxhR6JS6+KxOgdAMYt3vW2afvO9rMMRWt2AUSm8fkcs+cfLH6eJuFKOhOzqnQa7F3FzogwmA16zwHF0PS5hY/f90ifxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707905234; c=relaxed/simple;
	bh=rGwB3RhNSr4qKav0ne6HyDsRuw4c1fRzMD5WJFW+WtA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jYo1TfS6wlMgAvzh045H+3etFYJFumQijVpx54oGGUtjWyenUf+tP9AWYo8vM5Iv7K60pZSGGdM/2t7pOlCdwoQMdLsvmmmT7hNaWm/R/wqgKKWx7XS2zUrOqvzs6XZmbwXUtcY7xv3ia1BvlDAxtZvvp4N0vJKkh9j8KI3xQvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LpVsPc4y; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a3c1a6c10bbso473494966b.3
        for <devicetree@vger.kernel.org>; Wed, 14 Feb 2024 02:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707905230; x=1708510030; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=juOSjXJFvpyuRyUSSSfH+mvmzhE5cNMeHN27SB8k1eU=;
        b=LpVsPc4yD79Vly7NytO4iuFQ2scy5/V2rfNuBge5QQLHCRAMiHlk+wJP1Lc0/hbSpu
         C4ItaOgMrw+/NfPT/bgxzaSUaXZQKn7L+c7nwHKEOxDlWN1o9ZaYqfdAfhGrQTeJMsQH
         cOI3RUeH0cH255sa5rVVo5jEhztEG+Mv7aR9kMDGhS8A02ueJ8xdfwdxaAiapEv9LEcV
         pa2YrI9J7+C2jMDuw7ykYjfkIFJtXxgSU5Fg2bDZEOpwedfEBPnDjdGqW0py25Yl7IHH
         PRkzrktl46uz5ValPFTB7cWsaJfHogxGgNih9gUrQvi63fh2ds1pQMV06FGZS1dLY1p9
         dUJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707905230; x=1708510030;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=juOSjXJFvpyuRyUSSSfH+mvmzhE5cNMeHN27SB8k1eU=;
        b=toPyHEUrlxtbBU6ZV0TV1AEoNS76mS7uVr3YsWCHUxfwnXj0cXgQ9GEKOqtHeyQVZ0
         LQBZ3r8X1TipeJghOkiboMke0pZwMLFtEsgdpE60ANRtWp1Hnymd25CYQOQK8ddD4tUc
         vv8kYqdR7JgPKLZdtgGyPre2iutMux+vo/RnmiQ3JQyN+g5o9+4C0+ldrEZMmCHJmhYh
         IOEM9IsgHujpBmEgaKdQAF1fzcEfsiz7mGv7L7YxdXKuLutn8jLo7GPCc+uWEyifaBSV
         Cs1WiQqCRI8FZN1eIxj0k8ja6sBhsG0V307t44zCMSbAofb47X4hRzoY9ROE17DP8+wS
         j9+g==
X-Forwarded-Encrypted: i=1; AJvYcCXLUSMP8XIiGit/aeM1x0ZicFEFSWByBe3u5tJzYxvlZkhCivURtr5rCmQO4qi/1QpvnyqrtiRHqahWkJiMJa9x3H46NKpQdYgD1Q==
X-Gm-Message-State: AOJu0YxGRDeQOmGYHFwX4+k2fTOLTfFGVjog1/Jy5m3i6NLdiBSyAFrt
	bstGFG9zSd8Mz6Pb955HkSkqYzQC4k1WRcKt3Yoo+a0VkkKZJZm2mB/LJJJDO0s=
X-Google-Smtp-Source: AGHT+IGsIrjwU4Qkw/ArYYbQXBn23TCR0QiE+rStqaDxjhVjEBz4OuRNF9W9knz1s/jwN6xXyT5JCQ==
X-Received: by 2002:a17:907:10c1:b0:a3c:1f9d:e7c with SMTP id rv1-20020a17090710c100b00a3c1f9d0e7cmr1676571ejb.34.1707905230537;
        Wed, 14 Feb 2024 02:07:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWgkTA7mGgZrhrH3LdmdX9cZY1h+XQQ+w0pcZKX5n/aCjAg9OKchFuPqOswsEVUeLDn567qokNRp1scf5HOxlcQ/09qy3IGpHLbIRrKUzYM1hmaPxyPjpXrIjUMNybH9qcY08pNQBn8Xrv4db67AMzXC8IX9/mV85j+vh6cgrawPfLMFdr7iLhTN+/wW5+ZMIqv0hRISRjQUqtQ3n2M+SgPYjz2PQ/v4UyY6ybRD46WqJdeyWg+Vhl9wViTaGnj/DhsWT8dy46WpxLKQN7Aa9bfaORl57x/kknvbuCkFe/OduPKUkJWb02AX8xZpcMOIFiWgdPqmIB2MgUyq7IfQGsTLGQECe6ARb0lQKyuomeYSFhBNe+asNMFsWg=
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id o7-20020a1709061d4700b00a3d6395156esm53769ejh.168.2024.02.14.02.07.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Feb 2024 02:07:10 -0800 (PST)
Message-ID: <1e1ae38b-7f8c-44ba-9970-0929aaaa28a8@linaro.org>
Date: Wed, 14 Feb 2024 11:07:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/12] memory: stm32-fmc2-ebi: add RIF support
Content-Language: en-US
To: Christophe Kerello <christophe.kerello@foss.st.com>,
 miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, devicetree@vger.kernel.org
References: <20240212174822.77734-1-christophe.kerello@foss.st.com>
 <20240212174822.77734-7-christophe.kerello@foss.st.com>
 <989661f0-f539-43c3-a332-13c0e99ed7b9@linaro.org>
 <edbb5e6e-44c0-426b-9c97-87ea1eee1b4c@foss.st.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <edbb5e6e-44c0-426b-9c97-87ea1eee1b4c@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/02/2024 14:15, Christophe Kerello wrote:
>>> +
>>> +	if (ebi->majrev < FMC2_VERR_MAJREV_2)
>>> +		return 0;
>>> +
>>> +	if (resource >= FMC2_MAX_RESOURCES)
>>> +		return -EINVAL;
>>> +
>>> +	regmap_read(ebi->regmap, FMC2_SECCFGR, &seccfgr);
> 
> Hi Krzysztof,
> 
>>
>> No checking of read value?
>>
> 
> No, it should never failed.

And you tested that neither smatch, sparse nor Coverity report here
warnings?

> 
>>> +	if (seccfgr & BIT(resource)) {
>>
>> Then on read failure this is random stack junk.
>>
>>> +		if (resource)
>>> +			dev_err(ebi->dev, "resource %d is configured as secure\n",
>>> +				resource);
>>> +
>>> +		return -EACCES;
>>> +	}
>>> +
>>> +	regmap_read(ebi->regmap, FMC2_CIDCFGR(resource), &cidcfgr);
>>> +	if (!(cidcfgr & FMC2_CIDCFGR_CFEN))
>>> +		/* CID filtering is turned off: access granted */
>>> +		return 0;
>>> +
>>> +	if (!(cidcfgr & FMC2_CIDCFGR_SEMEN)) {
>>> +		/* Static CID mode */
>>> +		cid = FIELD_GET(FMC2_CIDCFGR_SCID, cidcfgr);
>>> +		if (cid != FMC2_CID1) {
>>> +			if (resource)
>>> +				dev_err(ebi->dev, "static CID%d set for resource %d\n",
>>> +					cid, resource);
>>> +
>>> +			return -EACCES;
>>> +		}
>>> +
>>> +		return 0;
>>> +	}
>>> +
>>> +	/* Pass-list with semaphore mode */
>>> +	if (!(cidcfgr & FMC2_CIDCFGR_SEMWLC1)) {
>>> +		if (resource)
>>> +			dev_err(ebi->dev, "CID1 is block-listed for resource %d\n",
>>> +				resource);
>>> +
>>> +		return -EACCES;
>>> +	}
>>> +
>>> +	regmap_read(ebi->regmap, FMC2_SEMCR(resource), &semcr);
>>> +	if (!(semcr & FMC2_SEMCR_SEM_MUTEX)) {
>>> +		regmap_update_bits(ebi->regmap, FMC2_SEMCR(resource),
>>> +				   FMC2_SEMCR_SEM_MUTEX, FMC2_SEMCR_SEM_MUTEX);
>>> +		regmap_read(ebi->regmap, FMC2_SEMCR(resource), &semcr);
>>> +	}
>>> +
>>> +	cid = FIELD_GET(FMC2_SEMCR_SEMCID, semcr);
>>> +	if (cid != FMC2_CID1) {
>>> +		if (resource)
>>> +			dev_err(ebi->dev, "resource %d is already used by CID%d\n",
>>> +				resource, cid);
>>> +
>>> +		return -EACCES;
>>> +	}
>>> +
>>> +	ebi->sem_taken |= BIT(resource);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static void stm32_fmc2_ebi_put_sems(struct stm32_fmc2_ebi *ebi)
>>> +{
>>> +	unsigned int resource;
>>> +
>>> +	if (ebi->majrev < FMC2_VERR_MAJREV_2)
>>> +		return;
>>> +
>>> +	for (resource = 0; resource < FMC2_MAX_RESOURCES; resource++) {
>>> +		if (!(ebi->sem_taken & BIT(resource)))
>>> +			continue;
>>> +
>>> +		regmap_update_bits(ebi->regmap, FMC2_SEMCR(resource),
>>> +				   FMC2_SEMCR_SEM_MUTEX, 0);
>>> +	}
>>> +}
>>> +
>>> +static void stm32_fmc2_ebi_get_sems(struct stm32_fmc2_ebi *ebi)
>>> +{
>>> +	unsigned int resource;
>>> +
>>> +	if (ebi->majrev < FMC2_VERR_MAJREV_2)
>>> +		return;
>>> +
>>> +	for (resource = 0; resource < FMC2_MAX_RESOURCES; resource++) {
>>> +		if (!(ebi->sem_taken & BIT(resource)))
>>> +			continue;
>>> +
>>> +		regmap_update_bits(ebi->regmap, FMC2_SEMCR(resource),
>>> +				   FMC2_SEMCR_SEM_MUTEX, FMC2_SEMCR_SEM_MUTEX);
>>> +	}
>>> +}
>>> +
>>>   static int stm32_fmc2_ebi_parse_prop(struct stm32_fmc2_ebi *ebi,
>>>   				     struct device_node *dev_node,
>>>   				     const struct stm32_fmc2_prop *prop,
>>> @@ -1057,6 +1191,9 @@ static void stm32_fmc2_ebi_save_setup(struct stm32_fmc2_ebi *ebi)
>>>   	unsigned int cs;
>>>   
>>>   	for (cs = 0; cs < FMC2_MAX_EBI_CE; cs++) {
>>> +		if (!(ebi->bank_assigned & BIT(cs)))
>>> +			continue;
>>> +
>>>   		regmap_read(ebi->regmap, FMC2_BCR(cs), &ebi->bcr[cs]);
>>>   		regmap_read(ebi->regmap, FMC2_BTR(cs), &ebi->btr[cs]);
>>>   		regmap_read(ebi->regmap, FMC2_BWTR(cs), &ebi->bwtr[cs]);
>>> @@ -1064,7 +1201,7 @@ static void stm32_fmc2_ebi_save_setup(struct stm32_fmc2_ebi *ebi)
>>>   
>>>   	if (ebi->majrev < FMC2_VERR_MAJREV_2)
>>>   		regmap_read(ebi->regmap, FMC2_PCSCNTR, &ebi->pcscntr);
>>> -	else
>>> +	else if (ebi->access_granted)
>>>   		regmap_read(ebi->regmap, FMC2_CFGR, &ebi->cfgr);
>>>   }
>>>   
>>> @@ -1073,6 +1210,9 @@ static void stm32_fmc2_ebi_set_setup(struct stm32_fmc2_ebi *ebi)
>>>   	unsigned int cs;
>>>   
>>>   	for (cs = 0; cs < FMC2_MAX_EBI_CE; cs++) {
>>> +		if (!(ebi->bank_assigned & BIT(cs)))
>>> +			continue;
>>> +
>>>   		regmap_write(ebi->regmap, FMC2_BCR(cs), ebi->bcr[cs]);
>>>   		regmap_write(ebi->regmap, FMC2_BTR(cs), ebi->btr[cs]);
>>>   		regmap_write(ebi->regmap, FMC2_BWTR(cs), ebi->bwtr[cs]);
>>> @@ -1080,7 +1220,7 @@ static void stm32_fmc2_ebi_set_setup(struct stm32_fmc2_ebi *ebi)
>>>   
>>>   	if (ebi->majrev < FMC2_VERR_MAJREV_2)
>>>   		regmap_write(ebi->regmap, FMC2_PCSCNTR, ebi->pcscntr);
>>> -	else
>>> +	else if (ebi->access_granted)
>>>   		regmap_write(ebi->regmap, FMC2_CFGR, ebi->cfgr);
>>
>> So this is kind of half-allowed-half-not. How is it supposed to work
>> with !access_granted? You configure some registers but some not. So will
>> it work or not? If yes, why even needing to write to FMC2_CFGR!
>>
> 
> This register is considered as one resource and can be protected. If a
> companion (like optee_os) has configured this resource as secure, it
> means that the driver can not write into this register, and this
> register will be handled by the companion. If this register is let as
> non secure, the driver can handle this ressource.

So this is not an error? Other places print errors and return -EACCESS,
so that's a bit confusing me.


Best regards,
Krzysztof


