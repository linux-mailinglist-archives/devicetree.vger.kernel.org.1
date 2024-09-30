Return-Path: <devicetree+bounces-106413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D99989F42
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 12:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3D261F21CF2
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 10:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D8D189903;
	Mon, 30 Sep 2024 10:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WgplqV6r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C259B17BB28
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 10:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727691684; cv=none; b=QF9ldcr1g3HmdWabrSu35GlZ80FAvPWQnnkal/0UAodaRuph/OWyV6Mo2BPjbiE5u6gEC5Oqmtxmtl2WNCgjK2TxwTl5NKSqiOv+CSRAts5ChgiSWOegRvBhUm4flpIwn/YU7nw0TEE1rrkRSq9UWw2wH9SFJGGe2RRNGnCR0B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727691684; c=relaxed/simple;
	bh=gc+uLrwdpxTyQ+RNbZJMYDfXg9wqIwuTcRkGiZX+HHE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L+9MuQsb2Ul26vBAQhNETM0SSwR48KTP1s5Do9gNOSUVjv4HxQrxJIaZIPzgJtoOrc8GqdHzKROEN2+vdWaT716hjZMGGQ3Pb7jCAs53SVRBAIsGoso4F7lj+Spk1owcKoKXzQIgpAekKG6Sb9lAVgb+EgyOID8Iajb25R50vIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WgplqV6r; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a8ce5db8668so745054866b.1
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 03:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727691681; x=1728296481; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OTn+eEp8BtwLb5wSv/YS39w7TOIjFMyAlAJxy5TdSas=;
        b=WgplqV6r0TnJupdW9GRkQqxgNhKVoD3WEbVgBzxWIZ3XenurOMoQoRgm8mfMWWBsgo
         vN3WoRuuCcYQdyQgzua6/erJMbOnkP1h261oyyX0tGAZQCyikx2znzomeOM+UraTh87Z
         ML9NqtzQCVIqUUnlCOhCwMg/fJ77fx7q5y6ZNI6TKMpdqP61KCwOEQWzYX86QgD+l1YF
         8V+/OgG5LJipu9QmGaswgUPiQdYiEWvWRTq6DAwvKrN5oIM5SfH1x3577mXG0QikaJGA
         DRUCtYhCPIhwKfLDciKPBSB3rNbKqlZqLKIfz5byX34tXUTygZt2Qh9EVLgmttNzVWeG
         u9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727691681; x=1728296481;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OTn+eEp8BtwLb5wSv/YS39w7TOIjFMyAlAJxy5TdSas=;
        b=kR2N3YKU15bVAixeysxlWTGghKDa/ymS0/jqjjKYgbvceOaAhBa3RBNu7sqDUeBIBo
         nydYieb2R8Enr5D1R6hwrasWzQeKEQXgpQErSdp8y5ZQShM/ANCXJ/hxRxqOobazYC/f
         PcyIZP1p4F/PDuqcIM0hpDuPaT5xc7zsP1JrjcEOkNDvFo7mrqscAfgFYc4Zoh9X0Vow
         jlWREeQZp+Hw0KaY71/foU1b2RH0qurw3hVnGZl43ARSPLKmVGGtlJ6Jiz+vG9t73v8V
         M1BPD42grE9x7S1anr33dLBgrqefZvMb0Fz5bHk4GQkxgF6mQcosh2jqvXwOsV9WEhQs
         GCog==
X-Forwarded-Encrypted: i=1; AJvYcCUT6h+wz/jSpg8xPmJg/Ih0RTCq1VJ44ue+16A9b0djkOUWvnDuBmpUfncOHUAYNvX0r6vhJ6RDmt0L@vger.kernel.org
X-Gm-Message-State: AOJu0YzhalE9NIUOLH4rzEljLtKtxf8u/tYk4iPR/BJrpI30Yv8/CPAO
	MhSl7Sb19pJPZMG19DGKYy49vFHNw3sX7fHFrGaXRvVy25d3xvoos/FNJypJ5Uw=
X-Google-Smtp-Source: AGHT+IGqmsRPDmYEJCJLIxq27ME9A2QHZJbPvw2S1Vb8Xek0EHlKtBZs6+vKRacYJGGh4l21tJB0OA==
X-Received: by 2002:a17:907:1b92:b0:a80:d913:be07 with SMTP id a640c23a62f3a-a93c492a39emr799327766b.36.1727691681086;
        Mon, 30 Sep 2024 03:21:21 -0700 (PDT)
Received: from [192.168.0.15] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c299aca5sm512531566b.224.2024.09.30.03.21.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 03:21:20 -0700 (PDT)
Message-ID: <63d9c790-39f5-4f09-a6cc-a45283524a01@linaro.org>
Date: Mon, 30 Sep 2024 11:21:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/13] dt-bindings: media: camss: Add qcom,sm8550-camss
 binding
To: Depeng Shao <quic_depengs@quicinc.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, krzk+dt@kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@quicinc.com, Yongsheng Li <quic_yon@quicinc.com>, mchehab@kernel.org,
 robh@kernel.org, todor.too@gmail.com, rfoss@kernel.org, conor+dt@kernel.org
References: <20240812144131.369378-1-quic_depengs@quicinc.com>
 <20240812144131.369378-8-quic_depengs@quicinc.com>
 <b1b4a866-fa64-4844-a49b-dfdcfca536df@linaro.org>
 <82dd61ab-83c0-4f9c-a2ee-e00473f4ff23@linaro.org>
 <da60cf71-13a4-465d-a0ee-ca2ad3775262@linaro.org>
 <97e4f888-1ed7-4d82-b972-3e0b95610198@linaro.org>
 <6eadc285-f413-4bf0-8795-59ff19c734da@linaro.org>
 <6562a958-47e9-4a49-b235-fe8deba3c051@linaro.org>
 <cab95caa-9ffb-446a-858b-342939e80811@mleia.com>
 <4e94106d-5ca9-485b-8c51-c18dcd4e64b0@linaro.org>
 <b779182f-a963-400a-8fc1-2468710082d2@linaro.org>
 <a0f66292-fb97-40ae-9fb1-d79160e70bb3@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <a0f66292-fb97-40ae-9fb1-d79160e70bb3@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/09/2024 16:40, Depeng Shao wrote:
> 
> 2# Regarding the CSI supplies, if they need to be making as optional?
> Looks like there is no conclusion now.
> 
> @Bryan, do you agree with this?

It doesn't make sense to have those supplies optional. If you 
instantiate a csiphy for your board you need a power supply for it.

I believe I said I would _try_ to come up with a proposal for that. I 
should be able to get x1e80100 first pass patches out this week - 
including such a proposed fix.

---
bod

