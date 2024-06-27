Return-Path: <devicetree+bounces-80856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3456F91A94E
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B020D2817B9
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 14:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 039B219645D;
	Thu, 27 Jun 2024 14:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rp+DlHSg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E49195FEC
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 14:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719498899; cv=none; b=WPL8dUxIGTv7H+5v4ncFAdtLFjs28S0y3RUKAH/6eJnA7rMGo7+62fcbt68JHZpnAWTBU0V1m/BlvUD93ygjYbaRP9zuBbkMU6G9f3uQscvzEH0vlJyh/qZRFpHDAqHc79boby0rpxXmAGkbpNzjZfjy7a0dM1ljDoxX6pcGO+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719498899; c=relaxed/simple;
	bh=zguDLaxzEP5ll5x1PQ8QZ4iJg4eLozqPD1M8fbq03jI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DGwelnTTGdEHyZ+ZKvB/ThsjQ90axtJPZDiukxQtm4zusAX5pD8X3TJkn1neRmJHS31E8CSd5tz0zbjfH17tq4VICDWcYXTrXqXhwKWCuOUCW9N4ZUzApsxVct0FcWNuUrE+vppUKkUYgs7HfRfqNaEEbwTxg4q416i5MysyoLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rp+DlHSg; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-52cecba8d11so3833940e87.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719498896; x=1720103696; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jz1cCr8L4wELlDLV7TgHeFnSV7RSZaDycktjZG7y30g=;
        b=rp+DlHSg/SQW56Nx+dcc1GBJuObNp5wiIgIFznrqeIw/ugSYS+fScZeeIjDEHx2HG1
         f/gY97W0+uII4s+j0ikL0oCyxd+fMB6lUNY4Sej0xJ4qQsJxEsHd+h/1lABXO/FIoaZh
         dUxJbiBBtWEH4m+nOcDrPH8A9wFo0T1P1RJgvAn4dnLUpEevpetuZ5f4Nnpys2jJvqxw
         d4RbpFLzyYY5AbPfyycWY+ZA+sybs/t5j+FJUVxnkMnMj8k5e032G7QhhgnTefoR+2UL
         VJslsR3WxmDDdtQPdJZj168hlOdN/bvZ3CvxUBqTgqrdkOgpphifsgM309TffokhLBrd
         74Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719498896; x=1720103696;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jz1cCr8L4wELlDLV7TgHeFnSV7RSZaDycktjZG7y30g=;
        b=cRtvSQaacwZPM1NaS2/Pwe4VYjzFmpqbZw1hNMF7Mu6K4mRtR46G/ykjN+xEdHUfum
         s6BTrScd/ZUDhJ4BgTDCfHzQ3oNHB6k4C3VMi+vZZWVPjAd0YVI3Z9u1pPV7sJQIa0/p
         o5qodypRBhQ9LsBcaG9on7AnQQOEB2/ZYrpLQKFSsR68xuz4kKn6pr8mYdANdEjBlPbA
         dBBg0uAbHLD/7lqu44Y4MULQYAF7apN9s4/agVwckPFNs4rz26owPYW/yZT+rR125E5x
         IgtAlizHzKMq5YDHDpg6Mq5ZBZFnWjyKmfPYfRqil8KJIDvgEmVaEn4oIloSyYQ8LN/F
         wdNg==
X-Forwarded-Encrypted: i=1; AJvYcCVyPy+jc3WpYSDOB1pa4WKiPa7CgJz1B9MIhXhTFmzhRJU2fiTQpcq0A2lMtFh1Ek9zOig9WVgMtgVM+/PQ5tmEwIPFGxiEkVy52g==
X-Gm-Message-State: AOJu0YxMcazJ/UF1XXsLI1diizScb6gD1cZ8/oLE9hIgTgD9ZpUBhsoZ
	3KEimPot7EYij3KIiH+V2ZG2zFSykMzhvYI3MMgH3x4XIZ8TtBPaz/r7waTqnHI=
X-Google-Smtp-Source: AGHT+IHgZ1tGepEs1cMlh/0EwKv7vLqC2jcAsTAPu51Jor47f+778HanIWr3gvAKeMkBNwQX0VdDSw==
X-Received: by 2002:ac2:528c:0:b0:52c:df51:20bc with SMTP id 2adb3069b0e04-52ce18350e0mr7717882e87.16.1719498894488;
        Thu, 27 Jun 2024 07:34:54 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4249b132fd1sm81927285e9.0.2024.06.27.07.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 07:34:53 -0700 (PDT)
Message-ID: <8bfa46a4-b18e-4d6f-856a-acbeca9398bf@linaro.org>
Date: Thu, 27 Jun 2024 15:34:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] ASoC: codecs: wsa883x: parse port-mapping information
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Banajit Goswami <bgoswami@quicinc.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
 <20240626-port-map-v1-2-bd8987d2b332@linaro.org>
 <z7wmi55kimskgfcon2difo6agc5nwkssehao72w3mtq3u2ig4f@msmv2on6mw62>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <z7wmi55kimskgfcon2difo6agc5nwkssehao72w3mtq3u2ig4f@msmv2on6mw62>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 27/06/2024 14:36, Dmitry Baryshkov wrote:
> On Thu, Jun 27, 2024 at 12:55:18PM GMT, Srinivas Kandagatla wrote:
>> Add support to parse static master port map information from device tree.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   sound/soc/codecs/wsa883x.c | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/sound/soc/codecs/wsa883x.c b/sound/soc/codecs/wsa883x.c
>> index a2e86ef7d18f..43156d39480f 100644
>> --- a/sound/soc/codecs/wsa883x.c
>> +++ b/sound/soc/codecs/wsa883x.c
>> @@ -1399,6 +1399,14 @@ static int wsa883x_probe(struct sdw_slave *pdev,
>>   	wsa883x->sconfig.direction = SDW_DATA_DIR_RX;
>>   	wsa883x->sconfig.type = SDW_STREAM_PDM;
>>   
>> +	/**
>> +	 * Port map index starts with 0, however the data port for this codec
>> +	 * are from index 1
>> +	 */
>> +	if (of_property_read_u32_array(dev->of_node, "qcom,port-mapping", &pdev->m_port_map[1],
>> +					WSA883X_MAX_SWR_PORTS))
>> +		dev_info(dev, "Static Port mapping not specified\n");
> 
> dev_info looks strange. It should be either dev_warn or dev_dbg.

dev_dbg should be good in this case!

--srini
> 
>> +
>>   	pdev->prop.sink_ports = GENMASK(WSA883X_MAX_SWR_PORTS, 0);
>>   	pdev->prop.simple_clk_stop_capable = true;
>>   	pdev->prop.sink_dpn_prop = wsa_sink_dpn_prop;
>>
>> -- 
>> 2.25.1
>>
> 

