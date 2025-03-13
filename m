Return-Path: <devicetree+bounces-157141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ABFA5EF2F
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 10:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B16CA188E2F3
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 09:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94D27264A76;
	Thu, 13 Mar 2025 09:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZY9Cn0Gg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B710263F2F
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 09:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741857038; cv=none; b=j/S46DF2LnVHCmkdb9hu2yUrAC/ama9dVetWuUOfEOQ2nS2RMXw8PljIk7uSNTHp53pip07OPZgrMPB2hHpdfrlT5jkEMPKw/MdcqhG+1inDBlXb1guuaHTTHkvRohGAE9AiIFKEoDS+12350xVCFCnbBsQP36yURuRN95iN5M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741857038; c=relaxed/simple;
	bh=nZv1gY6ezIhNopCsWK2xFniDLo8vetE0Mgdzt4JQTEA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S1TUUfMASwwPXYskglwz/6UbcZg0TirqTXJBJ4b48jx1dJoqmxh4dQDPM9cECCM6hmSd+VBJji+h5tDDA+4xMSGniTCrm82HMSmW09BOAfh5Y3lZKJl0iaOOj42whEmHnrRgYjWxEoqhOnb3vYFb/ALiQKE13PJ58lWeUJPMf2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZY9Cn0Gg; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac298c8fa50so138702466b.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 02:10:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741857034; x=1742461834; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QOcPeBvKiZjYkNIOUDpasD383L3JOlEk8FFNMJq4prM=;
        b=ZY9Cn0GgXV0/XgNWanrUm/ARhc/cabcihUDxNLeTRB6i3hAedYxDOXA70A3I7hG9B6
         SFJ2bEn8YJWOvmsNsxAKW8Ao9HhTOJqTwSQ/kVwrNr2/Xv93v37w/Ll5OdBuwWTSCJ7Q
         Qv+Pe6j6XdduD6KgQiQwo/9UIcrR//W3+E6Yk80QmziyjPp6vcg20LGPrGOV+dKzsMDj
         71iz0t5S2fCN7MPlT3l/JQcPL0K0yvgkx17c7udH3Fbj5L9CUimKmPRUh2eniVHbZ5D2
         ZDRwZQaJX6ggP0qVL/hUYMfoMFbApFqM0BrnTHnk8h2gTau5cBYwT1zTXwdI401XatQI
         noGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741857034; x=1742461834;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QOcPeBvKiZjYkNIOUDpasD383L3JOlEk8FFNMJq4prM=;
        b=Fbw6bnAATstqLiQzidmU7fWFiViSnGJ2Y6tgc/5b3Jv2bGNledjJnKEHCJis970+Vu
         yJUPArB5kMM3izColl7NqYu1/3s/1HeTZcVFuHd/Mcc0fCssKpzaYmlAC3I6yhl953IJ
         XoOUm8X6+je1eFsaQTKC5RkQgzeMcr993OSZraSm5TVU+q2/EXb6Xj3eacBsKfnd4Vuv
         9Bc/NTQHnVZalSQWmlzI2OqsXdruxzzPO3jcRivj4vtQaH2uCCxAKdTC5sQpPk16/gg6
         MtdHIqRDScJ3B8b70GVSOG2V/n2NoEbR5OUJI+pLxbrABKj3kv/PoGA+nfQb7QHiHWmL
         uIeA==
X-Forwarded-Encrypted: i=1; AJvYcCUsIIKgIldQyTEsHGeakS1YszXi+zx0KGCT9LxRncwL6NRlTr0dCx2UtTouRqvQTQvEfLY8Mp8kgsf4@vger.kernel.org
X-Gm-Message-State: AOJu0YzQZHtBU4C33SL8mcU66sCp/UgHUWQN8CNXf4VrDNMXrVM2tJs9
	udWMlmGOYsJ4zDoo/n48svz6qrgwUbz/ilpUNmv+UQND+3/gXTGo9FBd0IazhjE=
X-Gm-Gg: ASbGncuvmNz4I2gLDhvf7PaFkEA3UUcZazth05zHQImthU30LPyqiU6wAGDsf2k2i9s
	40l/5nsOzau/w4a0E2czA5sl+Jxiu+Cr4XifqD22FbMEvuUa9033MxSacQvUDk7a1g3uMm+e7fR
	aiHtpYyE1IMH7BtoANX+WEr7yqJBsHGnh5cmJP+P9Z00kPf903vNPuhGSPF2vYUrPmswyqcgSdT
	Fxi3r/gNrstW7yzqMSQx1pTe3DM6v7mdWw9dtOxaQh8H5Rdusy5dnToFWCLLL4ZldZcz2LqwVZH
	MQ2oOgWY50xu5HVh0MZgKPBX/e8NZKOYYwrQs0a/HmpJQM5WzrQY6N9sYDHj3nHAkNyVfDVzyy9
	7ToWHDTs4UrKqoQq4VZiQdHblkSVLS9/azuj78NGIEiYtMVTwWLZ/oVG8xh3QKH4kbWL6Nc+H4C
	vZRubeHsIrLEKUeWKfG1znxV8uS5kMWZ8=
X-Google-Smtp-Source: AGHT+IEtFUT/HyU1XkKnojP30ZgkyrJ7wulvcnYb4MSah+etAKV8hZac0ohkCGy+frqkdqETlqR81g==
X-Received: by 2002:a17:907:831a:b0:abf:645a:df9a with SMTP id a640c23a62f3a-ac2525ad616mr783408666b.10.1741857034541;
        Thu, 13 Mar 2025 02:10:34 -0700 (PDT)
Received: from ?IPV6:2001:1c06:2302:5600:7555:cca3:bbc4:648b? (2001-1c06-2302-5600-7555-cca3-bbc4-648b.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:7555:cca3:bbc4:648b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314a9d13bsm55663566b.167.2025.03.13.02.10.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 02:10:34 -0700 (PDT)
Message-ID: <93458252-956b-4630-957b-784cac4ca7ad@linaro.org>
Date: Thu, 13 Mar 2025 09:10:32 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
To: Taniya Das <quic_tdas@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Jagadeesh Kona <quic_jkona@quicinc.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20250303225521.1780611-1-vladimir.zapolskiy@linaro.org>
 <20250303225521.1780611-3-vladimir.zapolskiy@linaro.org>
 <dbxvzgqs5slrl5edqunal3wplg5jiszqv46dr4nzgowwlhkhxa@qwtfq7nfjwfo>
 <59b2553f-adbe-4a92-b7a1-8b388c03ef6b@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <59b2553f-adbe-4a92-b7a1-8b388c03ef6b@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/03/2025 04:39, Taniya Das wrote:
> power-domains = <&rpmhpd SM8550_MMCX>,
> 		<&rpmhpd SM8550_MXC>;
> 
> Once the above change is incorporated, please add
> 
> Reviewed-by: Taniya Das<quic_tdas@quicinc.com>

Why does the ordering matter ?

It shouldn't, right ?

