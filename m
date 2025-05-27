Return-Path: <devicetree+bounces-180714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D923EAC4A07
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:19:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AACC2189BE8F
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 08:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29C72248F74;
	Tue, 27 May 2025 08:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pVTYCAhX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E092D248F73
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 08:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748333975; cv=none; b=fBD/MgtNwDPNGzdTfIFKS4/p4zQOSlBhRG9RWRmRirlLg5VRLKdr9Al+MHTncTF5i4IprDuboxmB2ZZcAzEKKSP7LJLsQeUgRk39Inpng5Tynmfmb79HZXQ72xsawcDi2nn29Ji2Y+ruarkeLJn+WHjMNZYrIIti1NezY0c1AIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748333975; c=relaxed/simple;
	bh=ia8kZdP0HFoJkRuqfb9xYK3PP1X9WFdfCow4Ewno8P0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qopnBluu+O4+/SskQUQNMZPb3y6dA5jG0Vo9A3KLsxVf+1Zb0lIF6hcnOtBZY/ZeZpgmim4CgI0BNyyRjiz4+WrJOoG24ikOFUqxe7a0fzEN/lqDc9vadO7lIBkK5iBPsdqF0HITMo6i7KnlypZm7Tcoql3ikaG7yzLlmWR6W6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pVTYCAhX; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so36295295e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 01:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748333971; x=1748938771; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dMOUzI+Rl9kCd96v3bJcE+T2pFM5Ij46/8q1c510Oug=;
        b=pVTYCAhXK0P46qJjOhOoNjEwGWdy7Z6CbVLokeqZf5mbK9vDAB/ep6MskK6VIrTfQM
         EcTNKvJs+jSB34M0oV7Na+ujMXdhffd4tDC/8qp063d2j4XOksNeFdgISMj/X30xiJty
         gM+/hTM8P4rLkgm6gk2IOrhD/j7Ci+M7BfWzfv9DnF6kAqPTK2xRO1y0N6Ys3TGzHWo0
         jvogReYJOQsXzrxW+qlqyBAHShL3nJ0lctCRC0DL2X8DM5+R6m5IQS9P03ZJenMhK1Zd
         Uw4mVOIF5+8jAq/hpmbzULXJXPlhDQVhVoIvDYV/IacmYptdI0gtYpQbDqi5O1XyNlnJ
         3w6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748333971; x=1748938771;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dMOUzI+Rl9kCd96v3bJcE+T2pFM5Ij46/8q1c510Oug=;
        b=X2Mt+PEHV8Aj3WMCVuC1ObE5SJ8Y1w90gee3dGc5glk0rsy3FCUunx4I0bsUUUAJ15
         xz+/Nq5t5xzxJtFfwS9YRQX9X6VCs8pGezuIvQmV6Gw+yeeGaHIc95kwD58mVZJEubNW
         RonkDi2jk/bh9uM/Di76ds9ES1lXqrz0ytdZYmz1M0mYJz0/qeXWLtAcnyiCfepN8zey
         5H3ioy/hVpKBASgsylCOyQ8MgrSDvkWBTAL/aKkQ5bYuoek3RjUTyaIqo2wcYrix3+oU
         aJt7Mh+JjVJS5yJDe2Wsx6fhyWDf5D7X3/d+Hg3hdGjttKPWI+9jhM+RMK1/1iEwsc+X
         wQEA==
X-Forwarded-Encrypted: i=1; AJvYcCV9CJBgWFPhJ9Id8yBiiW6/YXCay5jAlOWGY+WYs6tjhszZXParXIt3xxTebiV8o+lPus6vjvRNu5M+@vger.kernel.org
X-Gm-Message-State: AOJu0YwYUXYKGaJjVML54qga+8bSEB07zD9I+Bk44oTfpEWfvBUq+gOn
	SEjPLtwpm8w/A/OOgZ+rWx04O/zTpXA12MscWXE5br01buxhi1QL2MhHpC4CownhG0I=
X-Gm-Gg: ASbGncvAb3zBEJxg4w1wt7O+ZvIVeOXcfnMbthOrA2tJKSTC8wPtgZBZ5DZwZQfufSG
	zHKGOzmVzV6c9gTRD+nJ2tcVRXsJHRZEnelumMIp/wXo35O7DLPORxUgwPQY9azWqOJRto4QLXu
	1IqZg3sY6eoIo5E7l5VKUNsFKCQo1WIUnNVkznlPY69EOo9/lLG67CDFePRhCNHm0fcSlzC2Cj8
	zVEvfPwLu5uCPkgcHEb1d8MXACXfPr1nRb4JPI5vW6nrkO3XCC3VvE5gJA9QInIWzxRj+MM0/Xi
	2FB3JGQ2CKAQHqupmgdGI3LoAQMK0udU+sjy0K1DoE6R5+hXY27fDCz+YlvOUvWsNM3H7Xx5JtM
	UfZLm1QAJOZINBN0q
X-Google-Smtp-Source: AGHT+IFjTsGVi2CK4OkLJrI3Smdv4M+APjpCmrgDiR1D6zlgPXvjVIxxpzIlokGl7A7BbOpPT/vmFw==
X-Received: by 2002:a05:600c:a13:b0:440:6852:5b31 with SMTP id 5b1f17b1804b1-44c91dd151amr132439605e9.10.1748333971167;
        Tue, 27 May 2025 01:19:31 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a4d53ce0b4sm6807921f8f.37.2025.05.27.01.19.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 01:19:30 -0700 (PDT)
Message-ID: <b3d4b080-5a9e-4af0-bce7-41c06d1d27f0@linaro.org>
Date: Tue, 27 May 2025 09:19:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] media: qcom: camss: vfe: Add VBIF setting support
To: Vincent Knecht <vincent.knecht@mailoo.org>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20250525-camss-8x39-vbif-v2-0-6d3d5c5af456@mailoo.org>
 <20250525-camss-8x39-vbif-v2-1-6d3d5c5af456@mailoo.org>
 <f2162241-6423-43b3-a6b5-74e373cd8834@linaro.org>
 <10c45ae1d2453f7c81dadeb132b6c2911ab7d95c.camel@mailoo.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <10c45ae1d2453f7c81dadeb132b6c2911ab7d95c.camel@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 26/05/2025 17:20, Vincent Knecht wrote:
>> You have both
>>
>> if (vfe->res->has_vbif) {
>>
>> and the above switch, there's no point in checking this twice in two
>> different ways.
>>
>> Choose one, suggest has_vbif is enough.
> I think the switch is still needed, so that distinct settings
> can be applied for different SoCs.
> 
> Or should I just apply the 8939 settings unconditionally, and keep it
> as an exercice for the next dev who need other settings for another SoC
> to deal with ? 🙂
> 
> Thanks

The flag should be enough.

---
bod

