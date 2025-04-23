Return-Path: <devicetree+bounces-170079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 606BCA99AD5
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 23:37:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0AB63B61F7
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 21:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 474A21FBCB1;
	Wed, 23 Apr 2025 21:36:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P9eszGJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0341E25F2
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 21:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745444213; cv=none; b=YS2X39ZPjMDPFxaIX+83Afcidf39vCbghZ4cWEy1PB1SfkQ0aq/CEc4mL4GpiAzYap8bGXJHYiKHyPf8IeCRPx+tzReUV35NvAtWN4UvEMAX7A2S0vNmnh00Zf4viVka+IcYFoNWZbm6qbGv8wv5/S9bp3WT5hPuS7DibIofH0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745444213; c=relaxed/simple;
	bh=bLFs+8/609N5da21p6V3HY8mVyw8mskxF34anzVCFCI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lBgD4J3unHcE3JzcD0AqLvQVbEwx5UBbyldytSYKFbaQwQnlv1RJV9I+S9QzZO7lPbzn5Q9jWQql1LW5m6bu1lLO23Zgy1IUQtowxYiWfpSLJRN6Y13kl8fuWed/8oUuEX8dEsjbR08wTJ74ZKdrnogxLvqIe+kDNbnO6YWsfxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P9eszGJ1; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cf06eabdaso2769045e9.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 14:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745444208; x=1746049008; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bLFs+8/609N5da21p6V3HY8mVyw8mskxF34anzVCFCI=;
        b=P9eszGJ1vxDzwFgcnqRyNPl4UJaD5snD8B1AbGdJWsgcJootZkpKFXM1n6Cg/nwCew
         ol7bFG+ziEZe46xK1m515LtX1mKcpuZt0m39GmgO1yKBCwgHoE64F73veMI1I8s7pyYs
         nXrRIyS2XCJiheGBRSxJ4ZE+SBFS/hgnj6v02S7FAdSoFKkOTBrG/OxslvkBf2XvOV4q
         LGbVW5boPt9Q7ANvjbtJl43gk9CKN+1jK578htQQiyWQV74EjSJsu2aPdehrDRwhiwY+
         lK758+WoJLcG4qzQfdrkW+9JV7l9Y1AMSOqsiW26oPZeLEERwor/HgHbhykoOUWjp+bo
         bkaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745444208; x=1746049008;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bLFs+8/609N5da21p6V3HY8mVyw8mskxF34anzVCFCI=;
        b=l7Gw/JXDww1E+jyCBO2YYqvbEHnqL63qvqtWr0YRGk60pHptijfBrkEf9Yg1nnlh1x
         9vnpIHBGz054C8rTffGZ5lL9xl2osKYcd1EHojYxcKVfD3vX75tHr/xAyMGsYeL9w9n9
         zj0btA5ayILvLqXQQmLVl4Z7OMBcCOPbSuP2F6oZ/Be8wEj25LoS23sM9B+FOoR4yikx
         lH6toyDH3ebMVh9dZfMI9IM+Iv4zADnEXFViIh11vG9rSaudISlG+PeqRXgM/xR82Ddy
         CtlXRBvzb1VQKRjXkpnrcD/XXKHGGCd/Cq4rCmespiwBacHdJaiONii6dk4XuHzYqNyh
         RpQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWamsOW2EEhRtRLj0f6GqTrZiAFWXjoD37oOvtDD5KWLlTV0E0TdyKuW64Gz7NvsJG9Q+fqzDInxFJm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1bIgJytpHqpGwuiUqrlcvqGvxQkeEkRw/w8887pfxuGxJbn0S
	IOVD3jhJ5veB81Logsx25Nk45BqxeaE2QDES69QFRSAUJMmcDvzHRkuidV+WQRQ=
X-Gm-Gg: ASbGncvpKhSUp4/ijxv6PNn48WSLBtyk4G3NXxQ1h4wlllzkN+fS3SwqiLD9D1digwR
	2+qR+L4IPq5f03TsnQH4xtg2tMIoksj+8gMjA37HnlK8Z0nB+Sd6TKCi34Qz2Oy19H2B0qCH3N5
	6dysGEb5OhcGV1aYzkxRaM/rRb/jMSlX0pIZkqQvUXnBFRdIaXWvXEFaz6cchYyEBYZIfssRGHt
	Vz6lcmHziQodp3opte+s7TZQ8MQ38bQJbHNBF20vjlWYivuIYjNM3FkD2RoJm//WGWXg5Balfcu
	i4v250D4Co03E4LGfhEXIRa6QRQkzR/8dkPdV8eXSf03UrOoc3fhlbcvUNrTakJIdOIKbY73utJ
	cOSxbSw==
X-Google-Smtp-Source: AGHT+IHX4800B8+8wispo4NFuzLS1LI13Oo5p3SlOPOoJI9EwHInwHF0S8Z/t4cJbeWZDuERNzlMOA==
X-Received: by 2002:a5d:47a9:0:b0:39c:30cd:352c with SMTP id ffacd0b85a97d-3a06cf4b95amr43032f8f.8.1745444208469;
        Wed, 23 Apr 2025 14:36:48 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a06d4c4945sm5473f8f.47.2025.04.23.14.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 14:36:48 -0700 (PDT)
Message-ID: <0e1030b2-0bf1-4fb7-8588-4019d7dfeedf@linaro.org>
Date: Wed, 23 Apr 2025 22:36:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] media: iris: add qcs8300 platform data
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250424-qcs8300_iris-v4-0-6e66ed4f6b71@quicinc.com>
 <20250424-qcs8300_iris-v4-3-6e66ed4f6b71@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250424-qcs8300_iris-v4-3-6e66ed4f6b71@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/04/2025 20:33, Vikash Garodia wrote:
> Add platform data for QCS8300, which has different capabilities compared
> to SM8550. Introduce a QCS8300 header that defines these capabilities
> and fix the order of compat strings.

I'll drop the "and fix the order of compat strings" no need to resend.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

