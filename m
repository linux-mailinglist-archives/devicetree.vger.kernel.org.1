Return-Path: <devicetree+bounces-127540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A039E5B09
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D460328168C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD3F222599;
	Thu,  5 Dec 2024 16:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YcE9ZlYJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5154721D581
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733415089; cv=none; b=pi2C8YbySqhhXb9wXzqYt1WGpBxT3My94x40GXdIfgL85t/WHrxE4WileIHV8kKREq4BE1xBcsXJtMGfC4IIg0aROk+3hxxflUDMVVfdR7kib2R6TbtToKxDXlVLzYhSGUt5qFTOOPDCgtitTpKEm3Mdv926mF0gLLGzssJHXh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733415089; c=relaxed/simple;
	bh=4cvbUpYGVqBA+5ai/iSMN03QRJijrW6a/ORs1SZ3FJo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SX9emn0yw7W+/kf6RY0QAcpXIEMC0lKQIarpLgtQjQKH34r2ZiskSn98R7Scx04e1duVj5XvwXjN3HsqkQdsVPiDmAiMKERafJNVM9E5O5L2VXrZJvYmzYqd6AQoybNG5WHxHma2MQ4V3bMHtkRFV/pSEv0HBG6SDz+Kxuaggpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YcE9ZlYJ; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-3000b64fbe9so10618771fa.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733415078; x=1734019878; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3vAx1ky+XubxvxkSqpCsICGxY0icdOX0ReI1Rb+eWgA=;
        b=YcE9ZlYJ0sHi+Mev5UheCnJwg1rEeLJMovhxUPe79Y/1EEybZKPKLQWA4k306pEqhw
         uLWo5AcK8+SnO1NVr2Qbinzi0dLGX4IjBWcO/Iytr8aABhvmCcyNXasFgYCRbo72ALCF
         +ZnSLYWGc3lTgeQF68uznDyYUgUUc5d3wHeugrBbNGeUZioeLbt5+8357mC/uh+iVDog
         NuZEGtKAgAA5OAWcvxQ2VhmQRdPSFpTJm/750zgkaWGzgE9+m7ZhmLTNe6X7O+ciCcGZ
         qQ3RcekS+b/QkOXlGzAzMP2FINg+dAADhhIfEcSWjwHSsL8mMKQBmuWey5ij/hWQxJo0
         xVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733415078; x=1734019878;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3vAx1ky+XubxvxkSqpCsICGxY0icdOX0ReI1Rb+eWgA=;
        b=cbQnHfqwDzT1znAqou3lSseMwcATAubkIhBitmqd7ZaFOGYiMIkPEwejoJy2ggAfwM
         69I0R90ANpDgwuTyARqAZvQaL87H/6yzO3MChi2V/3nG8r0RWt3q+cXeLXmfndsPVGuZ
         tpJx2t3r1weAIZ1kGz6v5nYBacryg+Q0uytm1HzkNqNOYn9ZPtYfBxmiNVlI3F107nYU
         7V5SfqvTjHO35VzKCHtAGtPhapi0pDn52DhOInVi4SvloYwj6V3qtmLMeAGoJNLxN0TM
         ZlyGQbsi9E3/s5QW8nS5i0JysdmY7XnsVQiXXZOwnZbraPmMVs584KUkn/JbSE2ZCoxW
         XpGA==
X-Forwarded-Encrypted: i=1; AJvYcCVlQUTC7dnYDLntJ9pbk/06o6yxvUOXg+dbq9n6MvsfvbQPVKM+FLUJzGetShoWb2Xrp0I+8965uSR2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1iLKte+SoS93EJyxYyHJeQ8N8GsxBUWeXk7xZA7zf7uLR0P/z
	imt+xF490pgx44UpIBrZlB30/1at64ObYaYcX/ZIg2er5t6H39ztX5vSJoEBjsg=
X-Gm-Gg: ASbGncu/hududJ5fdBuGAcC4WOYkfai4wh3uCxyY0zE5cOiU7vmRyKidJC1HQFt+ofV
	g5ct6A9Yb8oxVGNpiDHDD6C+MCtawfcr5MKkrbSV/0tJ7ExHcNpz82h5gg1Fr13KpD3tnKDZGq2
	K2W7jwZX2nB2eZ3tz5vYLkcxtre1D5bnFkN2aYUK/MgHrTQUqdexBOONcpZ5SzslI384VgjzlHr
	+Y0Gz1q1rGEoq5og/mT50bfxlN2Z/1gjJNqkjzdjy+56g6sUQ0u5Kh/MF/2CkU=
X-Google-Smtp-Source: AGHT+IGa6a28W61iyTDan8zO3enSWPo6CBbm0HhVWYO80g9pqx5TBN734XHJ16y+KxOFW8ykpVAjnw==
X-Received: by 2002:a05:651c:1614:b0:2fb:5a7e:5072 with SMTP id 38308e7fff4ca-30009cb184fmr75615231fa.34.1733415078119;
        Thu, 05 Dec 2024 08:11:18 -0800 (PST)
Received: from [192.168.0.40] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da0da461sm28223735e9.20.2024.12.05.08.11.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:11:17 -0800 (PST)
Message-ID: <0909a2b2-089d-41f3-82e6-f0e05682ce27@linaro.org>
Date: Thu, 5 Dec 2024 16:11:16 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/16] dt-bindings: media: camss: Add qcom,sm8550-camss
 binding
To: Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, vladimir.zapolskiy@linaro.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com,
 Yongsheng Li <quic_yon@quicinc.com>
References: <20241205155538.250743-1-quic_depengs@quicinc.com>
 <20241205155538.250743-12-quic_depengs@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20241205155538.250743-12-quic_depengs@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2024 15:55, Depeng Shao wrote:
> +            iommus = <&apps_smmu 0x800 0x20>;

This iommu list looks a bit spartan.

Here's what I have for X1E:

https://git.codelinaro.org/bryan.odonoghue/kernel/-/commit/9686eaf9557c386a2525d6668da6fe24ffd518c4#5b6ff684e5292a4c0b51f6a38631777fafae7561_4749_4874

Could you double check this list ?

---
bod

