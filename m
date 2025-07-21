Return-Path: <devicetree+bounces-198418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC838B0CB79
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 22:15:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 236903AB3A5
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 20:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DEF3222590;
	Mon, 21 Jul 2025 20:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rpx+HCaC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FBB238D56
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 20:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753128931; cv=none; b=GDlQlV+XDRPwp7lU/yJ2AyPkGgIpRvP/msaPF/cjtsqnqUtHDLECw/FmrtFiIE3SX6UcXg3QEGfYioCqAK8dLuG2JLlDJPrlZLfRZw8Ain2uN5QDi0mfi+ZHOnLoDqC9s1Ghv3rhAZ7w814swdVptsbm11H8Cie18wjCdCnKJ5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753128931; c=relaxed/simple;
	bh=HpnlzZIT9bQcR33RL87yRWIWyYWt5p3SMJjbULZbuZI=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=ugkJjXMck0CGSe3euTpHP6bZf1vp82Ss8gysou99WrLs4vCiy9eoo3RLWGdqhIWw9JpYdnM4JSvelDGG+1Hm8t1AbLbeNXJyizu2BeQpBwoJLvYCyyhrElBHtsG7nA9vrrzUJjFJ1F+sAnPpLZ2iDpLGfJh7DZPmfRPHYevFz+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rpx+HCaC; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-451d41e1ad1so33489785e9.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 13:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753128927; x=1753733727; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v1Evg1hMcS2lFe2FWgE2HGBuWpCsCs05VIKODyvEC8Q=;
        b=rpx+HCaCj9+E+elS6lj2Nm7mHzEqFG67f4DRadAgi6l+Jio3+LH9IXaYuz3L8L7Klc
         lWhkz+vdLxgOyUuxBo70dNdcdS79q87Z5/9AtCqtE0U7Tq2mGzMw4eN/9gxy/Yson5OX
         8PmH+kht1M8CtFnLLksH9XVrGFQQrvp4eOqodg82r/V3ii/BF3Fvyb/ZV9FG674rG5zp
         7u2gfD5oUcONptJ+Bl2Ly8ZxHuHMPjddBSO+pMNy/aVIzMQ4iZENrU67WUFmtAo/+qsg
         hZUb28Ro4S3SOykagjTHHZOJHXqzj1mIyR225NfrTVANuhUCzErd/+vIWgADDkiR7EtY
         iWDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753128927; x=1753733727;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v1Evg1hMcS2lFe2FWgE2HGBuWpCsCs05VIKODyvEC8Q=;
        b=euO2IsglAZd/cyc6qU9LrY4eSKA2fyOM0gF3fviwrV93JM13DnhpQN5l6XsIiUBLVx
         7JBTx/pOGc0AcFt7ll15h7cgogSENwVhoXecHI1ZDHud5b895KISRKeOslY8HUlBBkkE
         TVSzoEIh7z/OKI0FwTcoz+wmHq78md/LQsXvdMAvGIIXlslzSjn9+uSyjPF5KN7dhxbS
         fAcPqNHEM1w3wXBSfFSoX1L11R/9kRuUOrdniB4szkBHqNoJr7jWZDtT3uXbEGRU6zQh
         SrrLLHjAkZU/rXgsWlBmKPmQnjLmo1nex/cCxrVL6MZaFmY7qsog7b5vYe70uRm+/pHh
         R/MA==
X-Forwarded-Encrypted: i=1; AJvYcCWD5KhNtOnuL2MVfkWmAPIVazDcnpAVAcNRks9sx/rA+KXF0C/ru6Gu/sh2sgRvl6jbIBgz4xYHKnsI@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo9gwAlMpjT+1oeWzfnPB61DpF2HmGBSpJZ+R/azgKYel1AWPe
	5BQrZT0Pq5bNNV7gM1JIIJOaeD+hrEen0znjBp6pPdW98zK0yHokWSsBU80djukltD8=
X-Gm-Gg: ASbGncuQcpGkuZUjy+O+vcLoETfP3p/untHumoTcEyyGrAYAIZ+peBaIKAc1/L5Uf1Q
	K8fPSPlImhOlFo5yjI6NY+CHPJx1dq9Vi5zoKjWreSoJrlKBqK6vZYmLnB9nEynUzlVJp+2HWWY
	F42VDjv/by6Efm/RGjN9BcOkMD60YIYDePtVuyKwXB9dGYxbBoQ36yf0LQjBiL67WvRAwiGovN0
	GlKynfIJhdRwfxIEdq8uNZOExYa+3fkCLJVU5/sKxpPOQAEaPeLOBWW2Wjd/2JZ0Ry1FCvEhCl1
	tTAHEdH+NTqkfkV+SNYy9Elyim4mZWK4/W/uXfH7nwN1CRPjf6iCNZfU+zVU67qoAe+E9MYnzR4
	lZJFfESIZaOVKmIUjxTMSntOml7qbJvbpCGQFwrnE2hkvqVWVPoMfEV0VIJLBY4HUoDAnGnn/Y8
	8o8pg=
X-Google-Smtp-Source: AGHT+IEs1SpeNsDlcNXymDwIPuOqH8vWQgXR2g+gfxRhvnHjkxrNi9d6JZdyI8+CcSx2oE6sMotV4Q==
X-Received: by 2002:a05:6000:4701:b0:3a6:d92f:b7a0 with SMTP id ffacd0b85a97d-3b60ddc8c3emr13360626f8f.58.1753128926796;
        Mon, 21 Jul 2025 13:15:26 -0700 (PDT)
Received: from ?IPV6:2a0d:e487:135f:abd:1f99:991c:5b07:cd28? ([2a0d:e487:135f:abd:1f99:991c:5b07:cd28])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b61ca4d92csm11380731f8f.74.2025.07.21.13.15.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 13:15:25 -0700 (PDT)
Message-ID: <151ac9e9-19e4-40d3-b6fa-cebc9978b9ae@linaro.org>
Date: Mon, 21 Jul 2025 22:15:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] Add thermal sensors support for MT7981
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Aleksander Jan Bajkowski <olek2@wp.pl>, rafael@kernel.org,
 rui.zhang@intel.com, lukasz.luba@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, s.hauer@pengutronix.de,
 rafal@milecki.pl, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20250712195904.6988-1-olek2@wp.pl>
 <23b3cd9e-50e2-4888-81a3-c6d340bb9583@linaro.org>
Content-Language: en-US
In-Reply-To: <23b3cd9e-50e2-4888-81a3-c6d340bb9583@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/21/25 22:14, Daniel Lezcano wrote:
> On 7/12/25 21:59, Aleksander Jan Bajkowski wrote:
>> This patch adds support for the temperature sensor in the MT7981 SoC.
>> This sensor is exactly the same as the one in the MT7986.
>>
>> Changes in v4:
>>   - sorted bindings by fallback names
>>   - dropped accepted patch
>>
>> Changes in v3:
>>   - added fallback in bindings
>>
>> Changes in v2:
>>   - added fallback to an existing compatible string
>>   - removed second patch as obsolete
>>
>> Aleksander Jan Bajkowski (2):
>>    dt-bindings: thermal: mediatek: add falback compatible string for
>>      MT7981 and MT8516
>>    arm64: dts: mediatek: add thermal sensor support on mt7981
>>
>>   .../bindings/thermal/mediatek,thermal.yaml    | 27 ++++++++++------
>>   arch/arm64/boot/dts/mediatek/mt7981b.dtsi     | 31 ++++++++++++++++++-
>>   2 files changed, 47 insertions(+), 11 deletions(-)
> 
> Applied, thanks

Sorry, I meant applied patch 1/2

Thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

