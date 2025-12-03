Return-Path: <devicetree+bounces-243989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 649F8C9EDED
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:41:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23EE03A6571
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70C632F5335;
	Wed,  3 Dec 2025 11:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B7h3H8WI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93AA22F1FEA
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764762115; cv=none; b=qdcaeVJAju3VTq4Noyfu2L1YEm9uwsdIhg6z+1z8aovWSsjM1UhcMm/sPgDr3qQo/m9QEod7K+3AOiV5e8OPey7dlX8zrLRqtKfYZWQvtdAM5bHS8hojoJp7/jHSCitMwzzAjV3SUB2WjC/1LVhJzJTCVgzMPIJSXX+O9bgDZtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764762115; c=relaxed/simple;
	bh=NZfWwXUdM1N8hWGPoLMUun4FAnEIkz/8GtgT2xrGdP0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SF5PHCvFNCSx+eBZx3Er/atyiHJghgVGWwHAuDX/uUqxNTa97KG8mMjdky8q98CStrIxWEm/I4LSM0eLduzuOj6xD5Qbvp9sa+SvoN9BabhAcg+X1dnFDPugUFKvu8DM6OFGHENDrFTvUhWEB0383Xb6VluHDgkpVIhXtfy5FEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B7h3H8WI; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-37b9879f5e2so8951821fa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764762112; x=1765366912; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YT9NAZMbKjHwVuYxESthg1Ziab3zAEt8ty7uKrcDriQ=;
        b=B7h3H8WIdDMCMmOd9CC9y9MV1fotb/Bg9Yy+kUEy8lcRHf861Jt13VA+PVwWMRn+5D
         fPNPEPsP9sFv2FpAvYbYyD6m2w3xIWOzt9dRtB8rJGWS6shQQDzn+gDNWsG6r7tZYx4o
         OCcVU5FEMfoXNMT6EabYxz7Kcp3LDNNp03008gZ4oCicnV5/d1ZdjjPAKuCApfeG45MM
         6Ge3n3F9hlx7oc2W/HzUtgd7SBMhpM2GZcLuV1HvQ8C3zIOyhja+Y6rH4xWl7frMGXJu
         r60xaIdFj76U/DQx+ocIvV9APJq2smd2h/GyKHQ2Ae82vZSqjUJmfj2CIkEf4JabyuIg
         i6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764762112; x=1765366912;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YT9NAZMbKjHwVuYxESthg1Ziab3zAEt8ty7uKrcDriQ=;
        b=rWXZD8fTNrzLNDi4zx19N/wHsWNesVa2yanmWtmbIs29O6w81684WOqwYKcrKVOrcy
         6S+cxUFp5XeVF7IKxEUpthjvlozL7rd/m5+4nyk/599qBPgogqF1jHD0XKIsxqR9yJ5Y
         u0lNMinj4xjGCMXs/xTAKKk9EWP30rC+W4h+FococO0TDyNAhsDDh9E43n4+KQnzX9/b
         6/K9pO8I3Av+nskt9m6yrP8eHhVkeumf8jwhMbFYz8LVsBbYhv5VmYoppqpb7axrbfyO
         1ec9lejYJ1wp64C0MPyP+X0QMdv65MgL7OKA/L5y9RmBdO4XZHLN7lcA1FstY/2eNUci
         3HNA==
X-Forwarded-Encrypted: i=1; AJvYcCWHrDG8+TT+Of73FHWECUwRW+PI72IMbvZIuoavgiYTDo8vwc/ANJCHmByRvzg3pxb9oCn4UtF4xQ4v@vger.kernel.org
X-Gm-Message-State: AOJu0YzGzhJECkBlh50cOVZ4+6vRRDEDghZDywz6avzdPyc/uE2bv+aL
	3IGL3Yj0ewsZlSQGHZ7wMNbkUTNHbRemnvr4fe/AhRdmSqHX3mlkBqxmiwm5tTfuJNrxCaNeuAq
	UpjUf
X-Gm-Gg: ASbGnct3tlVXvVbdCDuJhOy4V9KL0eArli3P6iVYZZASjUTADbQM1/8R+0sRr5ubz81
	R1BI08tSz8D1wFhhnih9eDIbxJm070/kTKpi4d1prQJApUp90vrDjNiD0Rz8o1JyF2qRJxJIiXf
	/ic1jP2YZsXHPYJsHs6mLjjTZr0kmCkkZVOvpz3OBu5mhR8TtzsTSJxPOqgSMs6I2nqhBO6WZKf
	gwWYttXajj1mFaggoBQkOtI4SoRKjiizvb9Pocyvby6lzVidlRFKUEcyPJJndg41B1YaIW7shWb
	8gzSr7ILB5vGfYT+7CCNM9PxBqgL2hMWsRG13KFUdjoUV63+soie4DqJg6oEWj3K3NeoHmRhZuO
	ry1/tO7HLgc6+HG5Qbt+tkju7Q8/PgUu3ZWzKjXeLYu1pPrejE/ozbtVPO+I4kvGExG4Cd6DSNp
	ODcAw6pmcPc4u2AbfrEnf6+gq8ZZpeGO1w3cu4n+uadrlGUCsOKxo2V+Iy0V+hdjj94A==
X-Google-Smtp-Source: AGHT+IHZYJ3v8N4m+tfsV1kg9naZCMOnd85Ke/4k3M/zcy8OG5fna7oWAdtTIBLeUOImwgoAihGktQ==
X-Received: by 2002:a05:6512:15a8:b0:592:f383:3aad with SMTP id 2adb3069b0e04-597d4b22844mr263435e87.8.1764762111652;
        Wed, 03 Dec 2025 03:41:51 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bfa48a9fsm5633460e87.67.2025.12.03.03.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:41:51 -0800 (PST)
Message-ID: <40980eac-9e9b-4293-8986-bff46f30a50b@linaro.org>
Date: Wed, 3 Dec 2025 13:41:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: sm8550-qrd: remove data-lanes
 property of image sensor
Content-Language: ru-RU
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
 <20251203040538.71119-3-vladimir.zapolskiy@linaro.org>
 <9252338e-c775-46db-9376-53002edf429a@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <9252338e-c775-46db-9376-53002edf429a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/3/25 13:11, Konrad Dybcio wrote:
> On 12/3/25 5:05 AM, Vladimir Zapolskiy wrote:
>> Samsung S5K3M5 image sensor supports only 4-lane MIPI CSI-2 interface,
>> which makes the sensor data-lanes property redundant, and it can be
>> safely removed from the board dts file. Noteworthy that the property
>> value is incorrect, because conventionally lanes enumeration of image
>> sensors starts from index 1.
> 
> This seems to vary between sensors
> 

It should not, from Documentation/devicetree/bindings/media/video-interfaces.yaml
the clock lane has index 0, data lanes enumeration starts from 1:

   data-lanes:
   ....
     description:
       An array of physical data lane indexes. Position of an entry determines
       the logical lane number, while the value of an entry indicates physical
       lane, e.g. for 2-lane MIPI CSI-2 bus we could have "data-lanes = <1 2>;",
       assuming the clock lane is on hardware lane 0.

-- 
Best wishes,
Vladimir

