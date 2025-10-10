Return-Path: <devicetree+bounces-225399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5876BCD62C
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 16:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C1EC19A15E3
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 14:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A06FF2EFDA6;
	Fri, 10 Oct 2025 14:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lZLZwCgd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC25F25A359
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 14:07:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760105237; cv=none; b=mUZIjBjEVx7VxEzw+qMETgB1X6u61H/6pfDWyu0CmA/eJ+An6BxODiRDsXb3FECnt03t3ijnOMK2SzWx81gYAJypfYPVlMbgKRcMjfWwMOFY/64s6igwCOmjuKoQxBroX8yzVb0gQJgTAGtob21aSFK7MCbCbpIy7+ruEISDzGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760105237; c=relaxed/simple;
	bh=EpvvbYbzvU6zmy28zGsL/hrDErMFtA16oSibI9TggNs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JhIPGK25q/M7GLWwNqdnVjbuLH5uG92fLI9hdmopqe+s5ycUAOSga3G2mfD/KCmErD1LkR+6b82CaoovwcSSSGFmRX8SoGYUh3lAucNBY/bJ4NG9U0jTWrKvgt/ZYOQbobKjsSkpCwY9dqjCgQqSYv0n6UBQhb8Dayl/QUj13+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lZLZwCgd; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-46e42fa08e4so21020415e9.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760105234; x=1760710034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Enu1DPq85k1M2WpWSEeI3rs72YHXo8vk1sE+FawP+Qo=;
        b=lZLZwCgdincZK8sEABhFZMr0j9WNDZ4uPN4WK/DvAn026vQAcW5o5YK5QHcF+wiBrI
         Uwgzn4TlduPRKm8j+0sjSq6AekZY32zPs3MgWugCxV+hkGBcbmGMXX44ghV0MC94LGKg
         NEJGxN3jnKHXtYaMhTa7VXCcasAtY21Wtm1pxv3wTmsXBI07CIRi4vkhW91WWuY9wlKw
         VLixueMZgw/NoUkB9d0Ey21l1zSp0G3D5/dXM68c1d2Seq7no5ONZ/MU7kLzl8AB2YRl
         bm4eKyarbpUi4HpQV/rEoP8QJpT9jz9A8FMynLzG6YTkPjUzUAdQnUh3opbL6Bm2wWJ1
         3AiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760105234; x=1760710034;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Enu1DPq85k1M2WpWSEeI3rs72YHXo8vk1sE+FawP+Qo=;
        b=pZT2MvhwjNkHNxiL7/WaoBgaN5mG7XFWEmTHlWM3sMIaOEUC8c1nD/u2Q8qeWXd9R7
         m3TJjMPFxdu+Pahhc1XtpJ/8o6i03TKgw7C0skhaPdmhPbuSHIjS0yDvts6a6jlKafsb
         eUXcRLblifS6Ww0rLx+xi7cWXKAMtHmFDoSpqnnmkvgD3X2zI2EtI8rHE9eU5thZu5sc
         RFmu9f3nnGgQ8W62ghue9vkpJvlojdOoyVicHT80tvALHV7G1G8UIzDtFcn+te8FmbcQ
         R05vq2UAwyz3hQ12jOi+QqhVMqoaXeMmZatvRo2hLWUiz9yKELqSn2fw1BsPQ5fCiTRR
         M5fQ==
X-Forwarded-Encrypted: i=1; AJvYcCW511igntLjl1Yx1XwDDWAWnYYCfzk0qCrGbbny9YUZTJPYq5NbopRzd56ETlGPUcKVdCU9vXvDVSju@vger.kernel.org
X-Gm-Message-State: AOJu0YwIkzK9+DTrDK1TmMI519r+Jslmg4NFvG+2gr7xzunAsPjpAjOd
	A8gFPqqZ5ujP8Oc4akMB+hB1FyVOiVvq3g7XoLTNOel3fgrnUHu02D/MpcIkVjZeOM0=
X-Gm-Gg: ASbGnct7EmlIR6MxxXsKZLL2ldJDU9YRTs5GH1o5L3MF0JpkAf6D2CYQF07bgf+VPGu
	lpHITH+nkNnXJDajwL7gtde6ix/lwZ1zPm3FX8ZpR3PclW1VVixYuoOXbUrZWjD+HRN2agPANEZ
	VMUQB2napvs4LyVYuYuvU6sXnPUpm2TIUzqQZFHzf5AIS+Ej34+zKva0yvUThaiPZOw0N8uckwX
	UNo6Ug70uPa5Yj5nkWC1nHqeKWJ6gLq/6hCHDmu/njcSXg1NTK/1kUIhRYTiiI6etvUHL6PWoXx
	vRsw5LYPIi5hoRgR4snHNVq+/QXqqxFw4l1XkM/EAIOVUR8qNMiwlnxEsLmv7Se7MIq4+rDXEhy
	jzknsPowbK5PiqWGfQja8ZltWw9izfIPwYznBBqOuUhJPCVMFwivtTa60/24aYcs=
X-Google-Smtp-Source: AGHT+IFolS4C8hT0Zmg7bmr6SzhI/cPbFJ3OA3Pjp2+/sYyehoF+n9CTxeFrReeZKbRbn30lJJ9YTw==
X-Received: by 2002:a05:600c:138a:b0:45f:2ed1:d1c5 with SMTP id 5b1f17b1804b1-46fa9b171f2mr80864615e9.36.1760105234051;
        Fri, 10 Oct 2025 07:07:14 -0700 (PDT)
Received: from [192.168.0.36] ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce583335sm4343474f8f.18.2025.10.10.07.07.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 07:07:13 -0700 (PDT)
Message-ID: <f033a8eb-df80-4f71-a941-09ba209f5901@linaro.org>
Date: Fri, 10 Oct 2025 17:07:12 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: crypto: qcom,inline-crypto-engine: Document
 the kaanapali ICE
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
 Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
References: <20250924-knp-ice-v1-1-1adfc2d9e83c@oss.qualcomm.com>
 <36759154-4e7b-4cc9-b50f-ffb51a0b8aaf@kernel.org>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <36759154-4e7b-4cc9-b50f-ffb51a0b8aaf@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/9/25 13:51, Krzysztof Kozlowski wrote:
> On 25/09/2025 08:29, Jingyi Wang wrote:
>> From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
>>
>> Document the Inline Crypto Engine (ICE) on the kaanapali platform.
>>
>> Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 

Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>

