Return-Path: <devicetree+bounces-182914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC84ACE747
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 01:49:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B3751786A3
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 23:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D302749CD;
	Wed,  4 Jun 2025 23:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eKSlsQB+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D921C84C4
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 23:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749080957; cv=none; b=hGeE2CzSccE1Lt+uQHrf3PSQ6e132S0IxgtasLQkrxXjt2kCnit3iEAVPKwLcKZTNcn2ImFWrD0s39SXdhpb38QUkumNBfWG35vVfp7vpH4KefHUqQwcsoxIi7XcV88WHYQgIpQAEMqlIXRqs5SJAHdVS5hA3b3yL/htGfHLX1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749080957; c=relaxed/simple;
	bh=ZESbz4ELnO8zQblI3om9NB+hAW28VwXYgt6cEiXrarg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qk/KU5tFDdn5zhyvQcKiFi+f2e/yDCN+INjjwVK8GXqomyA/38mSflc4fB11L60x+QPytHjVDpbDhVHYGRe5UqsngHcCJgNACrWgZ3X5EIWaO+tfgRlEHv05AaQ5wuS6aQsJZDhYQbte5cLc4047ddwYRl4z/CEJhUOLFsTueNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eKSlsQB+; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-451d3f72391so4027255e9.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 16:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749080954; x=1749685754; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LXMgX1rI0BiX2paFRHt2ngtjy2dYKyJCurcIJGGVP0I=;
        b=eKSlsQB+axJ2wBrBCcutB3u/sEifgBhfgzUGAXXMdeQQEVtOpHlVvpd8O0jbeWn7nj
         oiPgcvs7+si4r3rftBX02Ijlfw6LrW4jkD1rHsgm+BoG/2Jbmu2CJOAezK0/MkzlDLTF
         ND2HOjbvFzq1krlSILyAn+ByDVinaD5ubP3s8qTludNEpGdVXQTMdpDsVYNZiJ4o+R/l
         oFT5QmQaG2ggRpjrY1xuc017x6gJ3sr3mxY1qfcRDjMVMrDgltopcruGloUWrPuSNuxm
         DcsFCV6IuMB+khXbT9ezTn3tk37dktAZMY5NCcqIcCSWsDz0TddBcQtkFeNYwxjPC3Fs
         P/HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749080954; x=1749685754;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LXMgX1rI0BiX2paFRHt2ngtjy2dYKyJCurcIJGGVP0I=;
        b=bYyAYW76vU0Uqu6o++CDURPo7LOwmUtsRBSYPetr76hv/KEJwNCtXb7gkFa4/nqxS1
         Ji3qEFdAh/wpHehvqn1rIeTTq1ZGzmiAdhD0NNsZQAuPhuwAtRD0WCPiI2l8me5rKMf3
         5Y6+7x92DTT9O971F3/9s7g2363WQMD9zZMbihXMnZYMFpgTtGncti94udh08kYKdO+M
         JCEoVYpvkQSWZNg8zcLrHcpLsysh/KgSrKicMRtSoE4paznfRf02xXQIF6HHEcpXDpnH
         OeeBBumnPCsq/DhzDKZUGAvBfKsDCyX2Twf5oc/nzWL7MkaxhQRpKM4jX0CFG22FJiIi
         U6cQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1+jiM8CK1fKkMPAFwYno5ZERUIup0Y9X9lx1xN1CV2Ursg/V51H7ga4JxeX+yx+95HrMKnOvwJdVU@vger.kernel.org
X-Gm-Message-State: AOJu0YwrNQAD/dSi8FPpjFzEAKEQxo+ih1YxYiutYHQd/7p54T8vP+PM
	G2Eo5Ia6bPvDWpbQouWSZ4Uu6l3b1eXpbCn9KGJ10McBVKJzYhbNVgc23S/3geIVKlQ=
X-Gm-Gg: ASbGncszwyuRx4GkJYaeUzgxxqpTPC+Ln0vwDkYAy2MTHglcG6pjhZpKHzJzPaLyhvS
	PIdbWjMDQ4iru2opiY72O7zrsE8wucWZdrXVqYGbghltX+K/QO/5+acw+eHXAS43DjM0BC7rz+7
	ReYfVIfEA7JJWhkZFskKJUq32LB9+vXQ75jwYh19JpkdIMms4h5VeXJUoFeo1u6WWmbiObJCzH0
	1EN2K02I1ZxeJ63vU2vjHvpc93+PaZs3MYP4FJ2NHfsymqI4pIuiqHWARU+Dv51VyW6y3aZ35aM
	9WThMahqln4B8GwZ84/D2+Hewu8d8zbmPaD1SekkWkE9Fp7n4ldY1uexky6Cf19+UVPcj8GbFCZ
	hJ98wUbVLAFSLp5nZ
X-Google-Smtp-Source: AGHT+IF1mChU7rsrPqSp02CZnJuBIHPZRlYSiml5HbxrDzi778Xa2HmHel+wqN5T3oDjSRgQCq7PnA==
X-Received: by 2002:a05:600c:3b01:b0:450:cf2e:7c92 with SMTP id 5b1f17b1804b1-451f0b0e796mr46847795e9.16.1749080954166;
        Wed, 04 Jun 2025 16:49:14 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-451f9816cdasm5975275e9.13.2025.06.04.16.49.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 16:49:13 -0700 (PDT)
Message-ID: <bdcc3e48-ceee-45bf-bc4f-f0e63d44b333@linaro.org>
Date: Thu, 5 Jun 2025 00:49:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/8] serial: qcom-geni: move clock-rate logic to
 separate function
To: Praveen Talari <quic_ptalari@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: psodagud@quicinc.com, djaggi@quicinc.com, quic_msavaliy@quicinc.com,
 quic_vtanuku@quicinc.com, quic_arandive@quicinc.com,
 quic_mnaresh@quicinc.com, quic_shazhuss@quicinc.com
References: <20250506180232.1299-1-quic_ptalari@quicinc.com>
 <VkNsXqYDdmwW9dutwc76Dv8ks2pvgcUwpf1UREJXhbXDQRaobVZL8m0hLz6rsOG-v6CjyAW3vHbuKMiPc9kN_Q==@protonmail.internalid>
 <20250506180232.1299-7-quic_ptalari@quicinc.com>
 <47d19ad8-37ad-462f-8cb3-d39c29008709@linaro.org>
 <8f18716f-cba2-4615-950a-63b6b73e23e9@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <8f18716f-cba2-4615-950a-63b6b73e23e9@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/06/2025 18:11, Praveen Talari wrote:
>> Separate this stuff out.
>>
>> Your code should match the commit log. If you want to convert %u to 
>> %lu make a patch to do that, even if it seems trivial, it is better to 
>> make granular submissions.
> 
> It comes under newly added API. Do we still need to make separate patch?

Best practice is to split this stuff up.

If your commit log says "I'm moving code" then it should _only_ move 
code, don't sneak any other changes in, no matter how seemingly innocuous.

---
bod

