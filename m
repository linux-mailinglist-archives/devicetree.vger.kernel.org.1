Return-Path: <devicetree+bounces-204746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD262B269B0
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:39:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C6241CE44C6
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 14:28:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 524721DDA09;
	Thu, 14 Aug 2025 14:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YLGN12Hl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620D11DD525
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 14:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755181679; cv=none; b=WkKBHj+Xg32JKAMr45NTru6RpLfWMeb41NbSbBllC+yR1+m02xZgngQLMq3VZwl68z0/yb9jDuIa565T5k1KXFqCUO65vWuE79VVCbqUoe5BNmkTuqstmdMhk9MO8bpe/5ODh0DEI4Krw7pkJDq17aAwqb1n05wbxt0sB/qzzDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755181679; c=relaxed/simple;
	bh=S5b+eovL2iZeTDEqXyirVn9j6379z4XQaMNNJg6f4QQ=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=XSOScvABCjN2gRXm0HGv0GXkucgmS6CT4GBkv+ZbM/v4Vh1OT54jX1BJbsFungqccvRxAKBtmYvC6XjAQfFP5a24RxQ3oDrYrVUyBti+Xzz8KgXQa0jgcHke7lHxCPwkrLlOfj9Rq+TagrUh4UmbxXMjuOQ3AOvyyzsukdboVVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YLGN12Hl; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6188b657548so193557a12.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755181676; x=1755786476; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8BBxrw5mS2tVpO6KfRm1eZFwAWJl/BjLqWDrRN6tfmg=;
        b=YLGN12HlggDPMGJjUJSXPSmVVkC+YdYPvQzqFCB6RykUiaoR62yqsGsBWc9kX6QETV
         rk08A1HUXNwIyAUiAfhiWlCzTB26AHZTr0joJ3DIrgzi9YxUKe5+RNSlMYCd60U+HNeb
         d500M5n5uB67lsJmVhUK7NPw7A3ZqSUsej/F656//k4mkmOQG0DWSI0jtMYp7KAQhTIx
         SlP2K8HThn/+JPqCb+Kq84LkzLyOWDkx2/fjTrG2Xh2dJbsgt/Zs7OnKvn8TJemqNakv
         TomHZ4uY+nGnEL5hlEvwOn/NIoVMPVinSXZEn2t7FtOJ446lFic+7Y3UjuqY49+lGBvH
         LH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755181676; x=1755786476;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8BBxrw5mS2tVpO6KfRm1eZFwAWJl/BjLqWDrRN6tfmg=;
        b=BSPOBWBXWYOyF9mDzsQuf6M9jknqmrg3rHQ5ZYgADN6xcYqSjb6Ib2H6MOR5pNV6+o
         3beNVsxpoO4DtCQhbDDQLXVUPQDk3m7WpPUjYbLmutmEkag5q/k5HPbsDbfpgEAyPDuk
         0iw+7xS1sh9oytj/FelKApobtzWUHVsd5ZSOOqzLzEyvJ6A1ujEICMesxhVTFX8OWtUA
         01vtbfCQIjemlbziSL2cDFrXCwupV5Ez6ew9BDCPLowqRtnuY5IkJr48fnEqu4WzB/OL
         ajd/IEpsxSrZBF6vcaU+AdhRno4crBZu5H8pB8bUOwBDMB2gxNSW/QjNLFOwh1ywvUT/
         ZM2w==
X-Forwarded-Encrypted: i=1; AJvYcCX97QqcFG6jqyrdbneA/+CnsQGH0uMT1Wt0rVL4CQ1LRUG8endUK9fHt5V8vA1u1EGm4l+YCBsYHIvG@vger.kernel.org
X-Gm-Message-State: AOJu0YzW2HihxwoL241kb+I77Op1wNgkxx+3lUqA1xMvQf5LZUBiZdAW
	Lz9vrc3kAD3GLLNrmkUNOGVVpHbUiQBAzTDqBpZe2+XrimvWJouPtcgmWBnHyTkdjr8=
X-Gm-Gg: ASbGncvkGd+Oi5VYxl78t9MEIbRx/37yn9A/j62CowfCbN63l+kwcZDantWzBqaomse
	3B7TA1/UJhgwBXEnekRqabgSFDfmmECU82540uBZeY4GZ+CsxN6k3W9VyGzqqVI2S1hYBBFyHvy
	KRhzuYLpUdo5ODp9VC8Y12p25r8S8n3QjveFF2T+z9DG8otlCS1BPK9kboA6ghH/i7kEH5qVDC0
	1XS09TxxnRkk95ro540Il3DflU17IQDtTjWAGU6OSwCWo+ypaVRAOb7DaLdxTc2u2x3VWggh1Jv
	yH3yRCwa4EA5YmJhgVIhBsXu1hNVjUaYPMrDx7ZfW+OQYRIKQMfKwJrvu77p/di8pqCyP0q3RBs
	RfnQRfu/MU3N2uww+A1kM9f4Zy80grQpZfVBIA4vW3N8=
X-Google-Smtp-Source: AGHT+IHUx+e/lw5MDVZ0rY6gKaSjgvW6ovRBztdS9oKGaCQ3QSVpY/hSp2FXXMtRQW++YksiYRIWHw==
X-Received: by 2002:a17:907:1c08:b0:af9:6666:4acb with SMTP id a640c23a62f3a-afcb98d5019mr149229466b.10.1755181675607;
        Thu, 14 Aug 2025 07:27:55 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af96bc4fb0dsm2016534966b.112.2025.08.14.07.27.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 07:27:54 -0700 (PDT)
Message-ID: <89cb937b-4ae7-4edd-be54-c4fb25e06826@linaro.org>
Date: Thu, 14 Aug 2025 16:27:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] dt-bindings: ufs: qcom: Split SC7180, SM8650 and
 similar into separate file
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
References: <20250731-dt-bindings-ufs-qcom-v2-0-53bb634bf95a@linaro.org>
 <yq1ms8d9nx2.fsf@ca-mkp.ca.oracle.com>
 <279fb589-d22c-47f8-9c71-4e959bce3800@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <279fb589-d22c-47f8-9c71-4e959bce3800@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/08/2025 07:58, Krzysztof Kozlowski wrote:
> On 06/08/2025 04:37, Martin K. Petersen wrote:
>>
>> Krzysztof,
>>
>>> The binding for Qualcomm SoC UFS controllers grew and it will grow
>>> further. It already includes several conditionals, partially for
>>> difference in handling encryption block (ICE, either as phandle or as
>>> IO address space) but it will further grow for MCQ.
>>
>> Which tree did you intend to route this through?
> 
> 
> These are bindings, so please take them via UFS tree. Just like with
> every other driver or bindings patch.


Hi Martin,

Did my answer reach you? Any questions about applying/merging?

Best regards,
Krzysztof

