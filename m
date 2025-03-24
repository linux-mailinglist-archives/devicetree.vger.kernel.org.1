Return-Path: <devicetree+bounces-160243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3759A6E02A
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 17:50:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4B2567A7E82
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 16:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20BD32641C6;
	Mon, 24 Mar 2025 16:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GByonw+x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE3A263F5E
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 16:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742834995; cv=none; b=B0osq7hfcFp04Qcb3pJNLsbU9VRfvLWTLba58jqiPm8lev+ATv27OdtKiLwUXyxHO8YXHdkbUIHBqDEn5nUKO8MfEC2cz9ms8Gqlmt09fH+ObQt8+IePRZ1ipPZnJrVCbv8f0GVQcKPvvgAqkM7zDQGsiyAziIDGB6dRNxP9ygU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742834995; c=relaxed/simple;
	bh=LviRtfZ2Zkhdvc1v2tQGyN26tUVva3KWP4SpMnY0qFM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ku7Fjp+3x8MCyhmJlVDTvMw2EI6027lvXkongqD9q+J3nLvDEG+x1mEgI7R6eZ2pk70RH/FTXYyiCMTijKUC9RhcD3V5wkHClClpux+GjRXitzm3Rq8GTqy5SLsaj746j+aurUBEmkF+shO9uxSGklGRVi2s+4qlhcJOVr8NiQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GByonw+x; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43690d4605dso32669775e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 09:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742834991; x=1743439791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PKZOx3qp50UyeT4k9CXml4Zn6aQsxicd61ejBpyhlHw=;
        b=GByonw+x/a/1AjebGTc6VSwGRiKm7N6ggsMu7tsYjwDCnzPoQ3pTN+GwxNg+BQeKbb
         R4joKHKJNfmX6J4sEklmxh+ZaCVdghWhObGMgPQkCva8cJIUsi+ZtNO4Iu1yabCQ5xBe
         iGBYkJYT18sflhoL5FkDkvAwddFWLehrTTJtGrv5fvCbfQueDreLBYO8aUkGedaY2Q1p
         bqx/BwS2alQ3YIpxljP0GrlRJ/ncNXIoV4c46Ka5SgWsEYaGJAiSg65bc8LI3BXiycWz
         WWc9UNK0u1qN/uzTeZkfZRz+vUJXZBH4hshzOIjTttoMoUqj2+djiYxdfzdBRH3+8AGs
         iRiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742834991; x=1743439791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PKZOx3qp50UyeT4k9CXml4Zn6aQsxicd61ejBpyhlHw=;
        b=e7Jm/dPPUcuuwuqdsr+J/P8g/ipnODt4vJGJ/ULWB9hA1TC2px0XMW37JGpGW8QDyH
         Ou7MV7m2ukxdHfq0sqzzTrz3eCzz0L9+8VudOHVQVILJiOM8AXWWB+V2LDzO/LLsnHGH
         9/nU8+n5kxAODbQFl2W/4jc/PHjUxf1YIoVp38l0U+Q2flpib1dVWHL98q4GOWH1QC7a
         drhZTfWLc5wOO0s7OeZ63AERovlHlg8DoEI9Kk+FYb0jjhHsKZXX8xE+2q9ccaVhsOHr
         JO5T/+kSBeXX5EVjKhf9e7B8cfjm7YwVj4l2Kp6OwPGqLzB/CKa/Ir7ZiK/WLTiS0u/9
         fMmg==
X-Forwarded-Encrypted: i=1; AJvYcCVudr95vz3gw5+Bge4fSczUfNes4YL5Rh1U+JXtvI/G98w0N67jUm9yqHg9qGIU/IONgXJLvbETLp9u@vger.kernel.org
X-Gm-Message-State: AOJu0YyCjvQixQ6Ldh3y6696SYZ/elU+ck9znrocXXEgNZ9Idt5fJv8G
	YpPWmbyShQOfSJhiNoLFGLan1fRLY1oEPTCgkTUSqvNSW7W8NvyOSx8czdXTJ0o=
X-Gm-Gg: ASbGnctXOUWHsGEunJTuEM33a7YeC9zEnVTPLmHsIpN8T1sE0zi++B9MOfR4JklI9FL
	/9ZrOnilFez3fz0vRjqWnOpsmagzB04uMcgEVQXJukf2EVVsfpWJc5MpxRNHAV3XaGafl7GFcyo
	xMt2CMqPept4RL4AcJk8BdAZLaXwD1avLF3ujgTU6M1f/vX63eVq4/zCsgaUDFoUV0NJgbpni6o
	HeeQ9OJWcAjaZk756G983FR2qjmiVSLILy8V1i8HbSS6SnV76WFZdE4wdM0KnpNUb7ljL3qSurK
	uNpnyvxlOcKX5an20OFo3nQWs3bUNorR1owZIHagZq688qhGmPxnQZ3JVMWhtW3UswyVdXbVMw=
	=
X-Google-Smtp-Source: AGHT+IEgPD+xDa6jr2Is2O2+Xj32Sel7N6UWscGct1y1fK9hAAcLY0xxiUzIYdVwngw880A7Z6/vOw==
X-Received: by 2002:a5d:6da5:0:b0:391:2f71:bbb3 with SMTP id ffacd0b85a97d-3997f958f34mr10938614f8f.46.1742834991401;
        Mon, 24 Mar 2025 09:49:51 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3997f9e6450sm11505850f8f.70.2025.03.24.09.49.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 09:49:50 -0700 (PDT)
Message-ID: <1f090804-2ad6-4ab4-a6a3-aa5d482f320b@linaro.org>
Date: Mon, 24 Mar 2025 16:49:50 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] ASoC: codecs: wcd938x: add mux control support for
 hp audio mux
To: Peter Rosin <peda@axentia.se>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: broonie@kernel.org, andersson@kernel.org, krzk+dt@kernel.org,
 ivprusov@salutedevices.com, luca.ceresoli@bootlin.com,
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com,
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
 perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, johan+linaro@kernel.org,
 Christopher Obbard <christopher.obbard@linaro.org>
References: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
 <20250324130057.4855-6-srinivas.kandagatla@linaro.org>
 <CAO9ioeX9RTBAeL3+9STn+=oEYR0wtaF6yoa=esNddEvqLQyO9Q@mail.gmail.com>
 <e4e94fbf-172f-4cfd-becc-cb2836ac1fb1@linaro.org>
 <ctcqkdbv6zh2rabkkr7tlhxlcfsn5nazjfbsnbbu4l4blyakft@pejdsvnazfh6>
 <324d5789-6309-4a64-bbfa-3afa0632e7ff@linaro.org>
 <8fbc8cd7-f8e7-e33b-74df-cdea389ac9a4@axentia.se>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <8fbc8cd7-f8e7-e33b-74df-cdea389ac9a4@axentia.se>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 24/03/2025 16:33, Peter Rosin wrote:
> Hi!
> 
> 2025-03-24 at 16:58, Srinivas Kandagatla wrote:
>>
>>
>> On 24/03/2025 15:18, Dmitry Baryshkov wrote:
>>> On Mon, Mar 24, 2025 at 01:58:06PM +0000, Srinivas Kandagatla wrote:
>>>>
>>>>
>>>> On 24/03/2025 13:50, Dmitry Baryshkov wrote:
>>>>> On Mon, 24 Mar 2025 at 15:01, <srinivas.kandagatla@linaro.org> wrote:
>>>>>>
>>>>>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 
> *snip*
> 
>>>>>> +       int ret = mux_control_try_select(wcd938x->us_euro_mux, state);
>>>>>
>>>>> Hmm. Does this really work? You have selected the mux in probe
>>>>> function, now you are trying to select it again. If I'm reading the
>>>>> code correctly, you will get -EBUSY here.
>>>>
>>>> On successful selection of mux state, the mux will be kept available
>>>> (mux_control_deselect) for any new callers.
>>>>
>>>> So we will not get EBUSY for the second caller.
>>>
>>> No. wcd938x_populate_dt_data() selects the state by calling
>>> wcd938x_select_mux_state().
>>
>> At this point we also released it (both in success and error case).
>>
>> This will hold on to the previous state unless we have defined a fallback idle-state.
>>
>>
>>   Then you call mux_control_try_select() here.
>>> As far as I understand, it will return -EBUSY as the sempahore is > already taken. Moreover, this is not how the MUX API is supposed to be
>>> used. The driver is supposed to hold a state while it is still in use.
> 
> Dmitry is correct. A mux consumer is supposed to keep the mux selected
> while it needs the mux to remain in a certain state. Relying on details
> such as idle as-is and that no other consumer butts in and clobbers the
> state is fragile. Mux access is not exclusive, at least not until a
> mux state is selected.
Thanks Peter,  I agree that its fragile to depend on idle as-is flags.

Will update accordingly.

--srini
> 
> Cheers,
> Peter

