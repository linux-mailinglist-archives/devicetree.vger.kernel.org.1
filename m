Return-Path: <devicetree+bounces-167981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EEFA90FBA
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 01:38:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AABE9446D5C
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 23:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4973D24A06F;
	Wed, 16 Apr 2025 23:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XjRW7+dq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C37724A042
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744846699; cv=none; b=udz7Rk+0GsYFERtBRo/8ICkyl1ODUHVY9c/MQ1QSqwkhHut03Mn+7sjiNUA1PQpLoW+1aJ+sBlC/eEzlqk0L3UsZVkR3fpCr1g/juDTUc+tdjOqjdSu8XHJ4k9zFownRGluuW4TWU7QkeC0GwJ2ci45bHJjC69uI4uhgJnENAIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744846699; c=relaxed/simple;
	bh=g2QVmNXl5Ww36gdjvP7omDNKUjJYLG1PI+JsXbS41KY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YRLRxInLKQwtoB+wRcS/DW5Gau4XWZLnYgvYdEBKvcDQEkv8DpuVFku3Fzx4Qy4aFjKKzUeKh96LgNcYHoEee67lmfGxOdBFSYa28mwP9rKoQCOOThQVFd4cPFWUpGQuMspkmD1SjcC5HqsqTOfB6BrfF7XqjJiV4yn0g6VoF2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XjRW7+dq; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43d04ea9d9aso791415e9.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 16:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744846695; x=1745451495; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g2QVmNXl5Ww36gdjvP7omDNKUjJYLG1PI+JsXbS41KY=;
        b=XjRW7+dqsrRZDwudHxlHPFTL8IHBjtpqdRlYHHHlTUNZVmfG8cS7zrRUQ/MlsQhyV8
         MvKRLKfIflGU+LqJA3g1olm2iKqYVx8qyMUkK/K5nLR18urm8aEaouSEKZcUgQXemDAa
         MIcmkKfZOumhO9zZ2X84hBNjfW7PeKbURTuucGKtt3MVVT4Q2ApyA0A8DXy3Kuac+YdJ
         w20vtotm70rXZjslAzwCiN2zuGXd0yvETGf5bkWMoczt9P8P7VJu6piYdjEC5ePZCxN/
         fECmeouAew+T5FEKwn4ke0N6pP2fYJ/KST/X8QL7BEwJZ2E2YrQzGiVF+0YQVQWb/XGp
         fbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744846695; x=1745451495;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2QVmNXl5Ww36gdjvP7omDNKUjJYLG1PI+JsXbS41KY=;
        b=LrDzh/1CK171ecs8H4oiPOprzv9hkH4izDbrTDyKC9CCyzWqVVV0wEIrvHO7I+U6h0
         vhuGOtbEg1cHooIUM1xlaQGHyn5KQKGmCmTIe4MzVknKNXVC1CAyJDm4d9wRMPmK9iZM
         MosIIUm7a3rGT/fgP3XMcfh5w+yYxtv4QCVP+q17THgo/ijSM3C77PasWUQW9JNwbs4c
         x0FcMEZ320ydk9Bx2fyKDWw+Fh/tUP2T3nGVjw5qHbQiJIFs68nTCVXNNiUwoe5+7TPZ
         NkKy1t9HVLQibuge4edusW7URDarON7VtFpPFGz37HIMINVE7gSAkZR2K/8ooVmreMz/
         gp+w==
X-Forwarded-Encrypted: i=1; AJvYcCXZw7qxIqSA/YDMZlRZrMn3oMthcbIBSj96K8xVApZCZlfei5pbKVbX3riKLYpL7GrgdRQp6elIpCNc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz449hP+slK7KSJJiT8MbaDPVYkng8xtvAS87PPP5Mpk/BxD8PU
	zOn5iKs8RWhJvDPlug7HXKBHq/BxL6ju12+4gGnEBsDLhcPv/j1q6h+JTP9zOMU=
X-Gm-Gg: ASbGncthIaYZhLrBo3HrUD2HW7ixgq/wP3aGbonJYiR29HIZSLERUVA3tupdF1V+//2
	1icOV2P3TMVKe5qaR0SQ5KW+NnU6RHYN4qwXN7lVzTcOf7dQR1InSwK1qnbmXr1hNCtwZ6K9qa/
	iPjrD7Wu0r6WvsxZC+wWL5mKmJF1rbXU9hjWKiVqZFP73IZS2syohln2AsFVnY2fzFApRydJdHj
	Hhiw4AR7gCtkLOC8uAmYLuURLttl+zgmhfkhxP4zkAo+ngt2EKTM2TAThbAK3Qp7TU0tKCk+cL5
	gjKN7XfG95p1gOb7HuDQH1aYnMuWueW2KRS5TsRGV77j+OlbiDaNl08X6HPVoxWAmppxQQzjpmO
	sda/prla6w/CWIG4t
X-Google-Smtp-Source: AGHT+IEsUGhnZeo6N9qyRuGOXeA4IIrbhFbh4yfkkwI9r1JHh3TkDWmK/o+1wvxvOJUt+CJZWV6UZA==
X-Received: by 2002:a05:6000:2287:b0:39c:2688:6edd with SMTP id ffacd0b85a97d-39ee5b16f7emr3483954f8f.15.1744846695474;
        Wed, 16 Apr 2025 16:38:15 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae9640fdsm18172312f8f.7.2025.04.16.16.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 16:38:15 -0700 (PDT)
Message-ID: <65051936-2b8f-477b-89b8-2c14872c31f8@linaro.org>
Date: Thu, 17 Apr 2025 00:38:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-6-loic.poulain@oss.qualcomm.com>
 <c57084c4-189a-484f-af2f-8e4181f547fb@oss.qualcomm.com>
 <CAFEp6-1iUapOg3DU2+NG7q9E5EPgwBuNUvpgLJL2jWKT=0SOkw@mail.gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CAFEp6-1iUapOg3DU2+NG7q9E5EPgwBuNUvpgLJL2jWKT=0SOkw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 16/04/2025 17:16, Loic Poulain wrote:
>> we also have a pair of TPGs at 0x5c6[68]000 - I think it would be good to
>> describe them from the get-go
> If we want to be ready for TPG, we may also want a camss 'top' reg
> (0x05C11000), since it seems to be required for configuring CSID input
> mux (TPG vs CSIPHY).

There's no harm in including the TPG in the reg list.

---
bod

