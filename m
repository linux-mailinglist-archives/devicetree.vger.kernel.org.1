Return-Path: <devicetree+bounces-131976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA679F510B
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 17:31:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05F12188A8E1
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 16:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA6614A0B9;
	Tue, 17 Dec 2024 16:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sfuLWT+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7991F63DB
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 16:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734453042; cv=none; b=sBFvxPzUfBSlI6oD0ztoJ5P5pPjwFYjKxY+XBzbZKUjhDB2wR4tQQ+aIx8USc63bgVwq3dzQ7g+IC9X/J/BXYv1WaZ2hHdXj+vxThaQ4Ryn6rCPhnp3rtqzRqHZnB4Ys8aPjGWnqHstuLk0WF/aHr8Z99jueI8D/dXKYoWwrZFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734453042; c=relaxed/simple;
	bh=3yUGsXykP4CEUVJYDf68Q5yPu96ItmlSIIbvKOIPhgs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mnkEsfsVcwMPvHVOLo8wnn4OuxxuIAih+L9iU7/dTGtfzgdEXgiFuexQahirkQU24eF8S5tkCs1ySNCBiES++nmgLOMRXQQFWV4N1jR5l+H3hxyvvWjHuFqg5Er7xscTm5IVmd0C8s6Iheh3tZDw+uCLH1col0y5xJwO1yMGqSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sfuLWT+v; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4363ae65100so31912175e9.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 08:30:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734453039; x=1735057839; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vo1L5JuECv1Uk0Zo3Q9bH/rFDrzzlC7TTsvCSw2yzfo=;
        b=sfuLWT+viRJhprl+vmlKyMgOPRKCF3JKrsEBPno5ABjEz7WKDlNU6CXrlOjW2xK9uY
         PnLIpIYn8UgUgO03g2GqkaoAmirfmW3s6hMZ205m6rbH5kS7ZkRMQY5xtCGJZ1G46SDs
         4yv91z17ZDZMYTMTReeKhtrgNV2z3qxdRYPP37s5cFgKJtHdhk6vRAC44537s7KWlido
         mSOH7omt87DMKf5Wi4Lb11HAG7743uJ5/3MZsf6Rj7Zks1XpepPyUa7zrEpmVqhw9jYK
         EIt1E7Ss35yz/ldjGqqnHJBLkeSVjndDHJqR3YgHSxEjQy5z/PTaJ2tjK7GgixT+s7aD
         ijpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734453039; x=1735057839;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vo1L5JuECv1Uk0Zo3Q9bH/rFDrzzlC7TTsvCSw2yzfo=;
        b=JxhIt6BpLRTgNfQ/HHSG2ngIJsOpCFhXRyQmu4Tua0FUSLhMsuHId+gCE26OCIowTF
         wV04AwZ1R81JqlmmLOub208JGOMvxqk3zycTogRCS5PtDvXLHJoJDRdyV7YVm/vbpdOd
         fkV5YRgsY9RyrSS++Nd/hAf6CnIh0t8ZiIiQTPLQxwFhRL/HcmUjs2XAlNpLBAUWlrpl
         Vk+4kOv2BDxT1x7BJvDKv55f133UOCqWKSrWPuXbxdzhFKkHcUk6ypWGd8jYfXYGJuBN
         ogEV4EMVPBwqp1GbLk6YpKk02ozaJdIU5u16lEhJe1Y82Ah/Hi34zMhXjT0JWkecFEk7
         F/uw==
X-Forwarded-Encrypted: i=1; AJvYcCXjgelEvqk+XEtfjDSzI55392xKdUkdzyIBOTfWvvLluLrKv8CGoMcX7j1rsHJUvgQhIexsReX1F4CT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/ELSRSANBj+BmEO36+pSbQOEqdD5MTolYGVUpBWb3DI3Gw+3O
	NAMTospyhxauPAeM8+DPpw2uh/oyEbcjbV9NSN8TboaTuTWkhnlexJGxA83CnOg=
X-Gm-Gg: ASbGncsDcLrIXbDhng197ZYCDux9JNHnRrKLwxLCjyKvL1D/TZQYSOke0KCqbjs0ni3
	M5hB6YaRWr2cN6BQmLCJBSmK3gpRDAmBWgC9vvPzsqpQoB6yXDb8rXEJURbHOAFE4bmzJiTt4Cc
	r3w/ylz2FgooLI1uXb2BY1I2BWgMOAGsYKzJFsQkuyEzmFEinTK+8b7gdmgfPrCRg+Uoms6osnv
	itocBlsL+Ns1ENXFgHxpBsfhO0xrlXYZqSud2T3MDbdcH1iawHderJPOosJNRUSbqoUqw==
X-Google-Smtp-Source: AGHT+IHre5NvSx2IdV/8gwVovs+16AluV6QFXnZjAFtO+QYQtO+O8LnhPh+fayg3f36vlzOpV5Blfg==
X-Received: by 2002:a05:600c:468b:b0:434:a706:c0fb with SMTP id 5b1f17b1804b1-4362aa369ffmr207567515e9.10.1734453038713;
        Tue, 17 Dec 2024 08:30:38 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4362527ecc3sm182435335e9.0.2024.12.17.08.30.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 08:30:38 -0800 (PST)
Message-ID: <a1032d53-6f3e-48f6-a2e9-1315bb1a3232@linaro.org>
Date: Tue, 17 Dec 2024 16:30:37 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/4] media: dt-bindings: update clocks for
 sc7280-camss
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Vikram Sharma <quic_vikramsa@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, akapatra@quicinc.com,
 hariramp@quicinc.com, andersson@kernel.org, konradybcio@kernel.org,
 hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
 catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241217140656.965235-1-quic_vikramsa@quicinc.com>
 <20241217140656.965235-2-quic_vikramsa@quicinc.com>
 <02da691b-1f5d-41a6-847c-c7e9b8239919@kernel.org>
 <c14493b0-c9d3-4e1c-9f86-991b4cb25c98@linaro.org>
 <fe28a9bc-82ef-4fef-af50-9d9261ed9b39@kernel.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <fe28a9bc-82ef-4fef-af50-9d9261ed9b39@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 17/12/2024 16:23, Krzysztof Kozlowski wrote:
> On 17/12/2024 17:12, Bryan O'Donoghue wrote:
>> On 17/12/2024 14:10, Krzysztof Kozlowski wrote:
>>> On 17/12/2024 15:06, Vikram Sharma wrote:
>>>> This patch change clock names to make it consistent with
>>>> existing platforms as gcc_cam_hf_axi -> gcc_axi_hf.
>>>> This also adds gcc_axi_sf and remove gcc_camera_ahb.
>>>
>>> Don't combine ABI changes with some less important things.
>>>
>>> You miss here explanation why doing the ABI change in the first place.
>>> Without that explanation I find it rather churn. But anyway, reason for
>>> ABI break and impact should be documented in commit msg.
>>>
>>>>
>>>> Signed-off-by: Vikram Sharma <quic_vikramsa@quicinc.com>
>>>> ---
>>>
>>> Best regards,
>>> Krzysztof
>>
>> This change should be fine since we haven't committed and upstream dtsi,
>> so there's no ABI to break yet.
>>
>> Agree the cover letter should have been explicit in explaining.
> 
> So these are recently added bindings (sc7280 is not particularly new)?
> If so mention in the commit msg that no users are affected because of this.
> 
> Best regards,
> Krzysztof

Agreed.

The commit log should make clear that the ABI hasn't been cemented yet.

20241217140656.965235-4-quic_vikramsa@quicinc.com <- is still pending

---
bod

