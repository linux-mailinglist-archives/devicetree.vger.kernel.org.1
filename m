Return-Path: <devicetree+bounces-165860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 019DCA85BA9
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 13:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10C22188A61E
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 11:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ED10238C2A;
	Fri, 11 Apr 2025 11:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zc1P6Ea0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A91A21146C
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 11:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744371000; cv=none; b=cDT7YlDUjBaG6JhvBg6rjnAzgmJU/Yoa2+dM8zuNNDMusSoO43ue7i3h52KSNWgatLvn8aopMAiUtLWRoGNxMwVEJJEpGGSBH5u97K5x6QfSLU9JV/XMK9DrNfV9LQm1MKUFcOmzyUqIHIxquks+Z8+AQQ0UezPve1c2zYA3d6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744371000; c=relaxed/simple;
	bh=ITobTNBm1Gc5v5V7gvduzfEIZJrc0D/tLtfm5cITmQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CLIaZNy15JHphbaooCoFkJx1qukhfga2B1+0NeWEYOl9y9VkWytNJ4Ig5+zPUkO4VPNT0+rUV0thgtSaSJ/8q8OgmSmOnBDg5vQi+Up25Ta8Q33qs3p7gdEpDf+Kns0xHOR0x9mPQQwrbIayqyI3Ww5utM8dPSJkr+WVGH8IDbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zc1P6Ea0; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-39c30d9085aso1137307f8f.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 04:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744370997; x=1744975797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OPqkV2HVldL4zhFmR5iYsDPH20L6kRmLSe3SyWadxe8=;
        b=zc1P6Ea0UhcjXdjcxTDCo01WrMFHgj6sTXijSS4j9BrdkEmIJllxi8uD93Wdz2yL2y
         J+O9vVmpD/8P+idr0yEXzKr1rYuXql2iTrmf+flIUKT6vpvn8nD5OaqgctjNG81icWpn
         QfWym6DED8aKxwWH3V5ETutUnpddVnI78ksjtHjro2nlcpWPdWjcjTPDId/GwrsDimPq
         PcoaMuhmCO9cXhqaE32tEMJO7HE7TOjbmcxTOC8IOdJwh3kuGxBsRz40jPZN4rHO8Gt+
         e8TXyheHtRi3Kb4PgE0WuzfPUXfsg4Sg2rkb4nsPQugweli3eMvtovnvOJMw1H1z5FAD
         GH1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744370997; x=1744975797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OPqkV2HVldL4zhFmR5iYsDPH20L6kRmLSe3SyWadxe8=;
        b=YYV2YjftKDHfgHp5HFi8XMudYXnArZYSfO2Cj7kOARi4mMekHNE17QVelz3/pRHWw/
         FFW6uvBGkk5JYFB0qmrHKDdFVB2KARny6gvjV+IHUdo/1K1n9KphcMpvABX0a3QmlFNw
         6xJpQzHixD4RKdxlkW4G0HvtO9F7+9DiW1JQw07xDYaLjq/TKW6Jom3u/X0NXrOcug3c
         Fm1aHTpkpiW5xhiw3mOy+/W5sXt0OFp9fkJqoK+tJs8eWyWnpnd4oMKZyLp9+P4kf6W5
         ykJaw6rS8MRTjZIyPftk1B24uY+TQ1hotHjRTlUryjpYX0vLWeQiOnPJIkHucCE40loi
         TKhA==
X-Forwarded-Encrypted: i=1; AJvYcCVnQEzR3GxlHsSKW2aEB/PEQRVGRdcn4TmOXs8JSaZIW3NLVZBmX20ESfTLTC4kS2CWZr6RbVpYO5Zy@vger.kernel.org
X-Gm-Message-State: AOJu0YyEWR1ISQQXd2cs+5ww5t9x6Vow8L/PFr7ZcovrUp/MQrtijFke
	mX1d0EHn9J5KjBqzlsXXQT54nFusf6pMjOWuf+mCMfESFZ4H56rUHshpjCxJ4qs=
X-Gm-Gg: ASbGncv6p3khFODup8vJdX6+Q9RQpWFg7XnRAtM9Zq7GqndnJaIy7rBgvvDkMy4OckM
	7Fx+0cMCyrdmAFrzG3wIZUcmknyWoIrCwpL+K5Nh5ElhRhIJJFzs2MGD5TEUlJXcI55OgVLcLQ2
	zL/lqVyGIX1w3m4roclVJ6N6NsC0ihibjaXq2VdkypjJXTk5HHNQxmg0oDB9DwoXod4bd5K0Vfe
	Y1DPw7KMgqw0bqqLLG6sUx3V16Rp56gYKzN7HOGLIsW4Rmt/mrTEfDEp4kNLvhkY2Ifw8628VO9
	RbAfS1aY8XyaCwA5GVLqnIQ1rRQjn0Rcj3F78V2O8GlVcDnw4s6Tvui7l8Z7VSSAW/h5mBAfOAS
	2J3mFaUXx9a7UfWUK
X-Google-Smtp-Source: AGHT+IG3/taatt+v25pIkOfJoKgD5wRRb35FWlNZ8G2ZXlKNOep1C2wahmiGGvzzfmex6GFbSNFb9g==
X-Received: by 2002:a05:6000:18a5:b0:39c:2692:4259 with SMTP id ffacd0b85a97d-39ea51f5a85mr1888827f8f.21.1744370996902;
        Fri, 11 Apr 2025 04:29:56 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f235a5ec3sm81423945e9.39.2025.04.11.04.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 04:29:56 -0700 (PDT)
Message-ID: <5f10d82a-904a-46ba-b0a2-b9f1c1d307c0@linaro.org>
Date: Fri, 11 Apr 2025 12:29:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v5 8/8] media: platform: qcom/iris: add sm8650 support
To: neil.armstrong@linaro.org, Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
 <20250410-topic-sm8x50-upstream-iris-catalog-v5-8-44a431574c25@linaro.org>
 <919203d2-cae2-4ed8-8144-8303d185d773@linaro.org>
 <8005927b-8a2a-4e7b-b317-8db29501510c@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <8005927b-8a2a-4e7b-b317-8db29501510c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/04/2025 09:11, Neil Armstrong wrote:
>> This LGTM one thing is I think you should convert the sm8250 stuff 
>> into a corresponding iris_catalog_gen1.c
> 
> This is done in patch 1
> 
> Neil

True, patches 1 & 2 didn't hit my inbox.

Never mind.

---
bod

