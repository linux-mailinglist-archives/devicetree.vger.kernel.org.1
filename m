Return-Path: <devicetree+bounces-96398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5167C95DE17
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 15:31:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 818301C20F2B
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 13:31:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FCA717623F;
	Sat, 24 Aug 2024 13:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AcdQWU0q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9C5156960
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 13:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724506311; cv=none; b=qCEBOaXqjZ/zDavoZOLkl+LYJQF4BeT/2tdJbBJLTBxXaGIfTPqUi1jBDCRs876trCsuqlXCuhaf/pAwNfLDdeifK8kPHLBjRJ1GikV/eaPKtOomaoF2DtDHVaKPDxPnjDESd3HCVD2kMSfcT5lZwr54D62P/e/erw9QktfjGSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724506311; c=relaxed/simple;
	bh=q2FiwbWN5Ks/pfrAWeo4mRm9niAs0IVKgREydX5NwxY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=stwxx2jJKR70q8DNxmgDoJqBJLMp+QuqjyDOJQGnHkbSMqih4YMHOfagTRtCibF3IBjWIjIleyfy/VVrhYQr7A0T2w3p3i5vvyfY7ZFkQX0Unq6d3WKkki7YGJ7wPDAL4dZ7oinjlONaPlSO2WF9w1qhu8Dm+oJ0EwqzV8Xjf0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AcdQWU0q; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52efcbfacb9so564224e87.2
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 06:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724506308; x=1725111108; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RLWX/5SIYPjwceOuGKBwVTZlsQA8zhlUnRn9GP6P+OY=;
        b=AcdQWU0qhF8EPyW1wq/B/Y8OhjHHeyWW+KiyadulPFjUtYtRxfB5CScUTX9K3vZ+Tf
         kUkF3TvX3T7sdXVMlPD5bUr/tHyAQTRxPlO4anl/DaNf5CwvvK/ZbnqLqo/RSRi9amRk
         FZy899ZNctP4OMRRYpv7/ClmMTZP2qxe1xOYUkAW2B8nDk+GCQGz92Muk4v57JL1Gpbx
         AIyqrc3LK0AfWQs0g7IgwFrKK+bQCrlKzOG/E0BgJZD5U6AIAE+731RRovbOBUNP1K3E
         2fOv1wUVxK88vXELU0LeHhaxVWJ72D9gcnQBHnmSc4RDyeltqmQSYiFSMmogllA7Idwl
         XvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724506308; x=1725111108;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RLWX/5SIYPjwceOuGKBwVTZlsQA8zhlUnRn9GP6P+OY=;
        b=gk+B05xPcQQhF25h+Unqo7Wu5Gl+Ls6xiXG7V+cnPUylZs+qqwG7ParwW3seh6Drjc
         UCuuSgGgm0RB2SHtQEKvJ1ksVb8EuBvqLXqw3RG92wAD+ppzJS2UaRztC4R1cpRARwWa
         uzQVB0x4wgcxvigkXDHmYa2w/jEl1fYou5Egn3GbSerI3/1lP9zIaiH5mzokDASibtVW
         /dPe26l8i/uefAb0VTs5batWquwlwJT9nsglVnamePRn6cwy9MaX9poFScDb5aqj/5Tw
         B490yzol+2CN05USWSCQ9GcNt6gAQEU1uoBxg8xUqlv6mNSASXx8Zu3bCsghCg2lux34
         7DkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDSZVk+j4y5sXrr9dcWTyepQNwF09353kvAFj5MOzhWuxaX6oiNwdeqA7tokysZdUAIhco6hLeyFaz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9YBqNQCb7HyTAMOVkUFFFhKOEnB++zeQK4OQ9om1zWlp6Lg08
	d59qmdL+9ipc8cKEsh02FVJ3wp1ff1rehp++Sj5vRGm87Wc542pWDZws+dCRC8Q=
X-Google-Smtp-Source: AGHT+IGAyhgfB2fZzHIr7u9lFSSzZcMJDsFciOaPklAFNW6SbOGfj3F1ghJolQzNo0SgeO8ySa++yg==
X-Received: by 2002:ac2:4e07:0:b0:52e:ccf4:c5e2 with SMTP id 2adb3069b0e04-534387cd2d2mr1999710e87.8.1724506307592;
        Sat, 24 Aug 2024 06:31:47 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5334ea36408sm854425e87.73.2024.08.24.06.31.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2024 06:31:47 -0700 (PDT)
Message-ID: <c7aa6519-0706-4cc2-b043-43f31a78ab5b@linaro.org>
Date: Sat, 24 Aug 2024 16:31:45 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/13] media: qcom: camss: Add support for VFE hardware
 version Titan 780
Content-Language: en-US
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, bryan.odonoghue@linaro.org, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-14-quic_depengs@quicinc.com>
 <c501b813-e78a-4fb0-aa7b-a2fbbb90f10d@linaro.org>
In-Reply-To: <c501b813-e78a-4fb0-aa7b-a2fbbb90f10d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/21/24 14:11, Vladimir Zapolskiy wrote:
> On 8/12/24 17:41, Depeng Shao wrote:
>> Add support for VFE found on SM8550 (Titan 780). This implementation is
>> based on the titan 480 implementation. It supports the normal and lite
>> VFE.
>>
>> Co-developed-by: Yongsheng Li <quic_yon@quicinc.com>
>> Signed-off-by: Yongsheng Li <quic_yon@quicinc.com>
>> Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
>> ---
> 
> <snip>
> 
>> +
>> +static void vfe_reg_update(struct vfe_device *vfe, enum vfe_line_id line_id)
>> +{
>> +	int port_id = line_id;
>> +
>> +	/* RUP(register update) registers has beem moved to CSID in Titan 780.
>> +	 * Notify the event of trigger RUP.
>> +	 */
>> +	camss_reg_update(vfe->camss, vfe->id, port_id, false);
>> +}
>> +
>> +static inline void vfe_reg_update_clear(struct vfe_device *vfe,
>> +					enum vfe_line_id line_id)
>> +{
>> +	int port_id = line_id;
> 
> Once I said that the comment with a typo can be removed from these two
> functions, however the functions can be removed, since they are trivial,
> use camss_reg_update(vfe->camss, vfe->id, port_id, ...) directly in the code.
> 

I see that these new vfe_reg_update() and vfe_reg_update_clear() are
callback functions now, so, without making a step back, now it will not
be straightforward to get rid of one more level of indirection.

Just remove the comments then.

>> +
>> +	/* RUP(register update) registers has beem moved to CSID in Titan 780.
>> +	 * Notify the event of trigger RUP clear.
>> +	 */
>> +	camss_reg_update(vfe->camss, vfe->id, port_id, true);
>> +}
>> +

--
Best wishes,
Vladimir

