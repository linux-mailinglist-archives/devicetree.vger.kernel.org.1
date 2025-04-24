Return-Path: <devicetree+bounces-170441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3007BA9AD29
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 14:21:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56C79925E12
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F29CF22F764;
	Thu, 24 Apr 2025 12:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Suw1LZxz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CC81FAA
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745497237; cv=none; b=GYTYYDyfpu+S7aZo/jBpfj+iBlxg3iXTcpjyV5LKibmhiLpSOC8ZU73bWt7Vr4ylshuZO7arIyIv1gycSj/L/6kiSFk2zHPiaKKKup+QFHK11HTk/rBJA2Fbf41BUE72XiwcZVA8RNsXD87hSq6+QTP0NA3CfoDIpsfkXpz9pTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745497237; c=relaxed/simple;
	bh=bL8XZJpIQ328FckjzxCTkScUdzNQtFOutrtggIAGvho=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YwrZrjZk66afRqvCeWYR4384wRRP0TPEuOvoQrXKyN8+IoV5LVn1oqb+XMM0WjS8yYQzId0Wy40souXCPVKakASCe8aKpaMz9xq5x0awIuLOBm/596oxsMARRH7KQ4KSqR+gb3QsdKILjAKj8ynV3+Fb24ni5BEAm/bQD8aVHIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Suw1LZxz; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39c0dfba946so673709f8f.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 05:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745497233; x=1746102033; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u50Yy5Vg8srr8Se1a2fDdmj5mgoY3leB+NYiaQ0tKb4=;
        b=Suw1LZxzxoOoMZRlMgxKMu1qNBFbVt8fWs5AsneTXtfH7gNAf3SADchKKJdj2Qtkk6
         R/tWdiYKrYdtTEANlwpYvO6rWYSP0J4uqmU7i13FIGQ5ZkmYyf9uG39MoRrnuvPXWFxa
         Ll7Mk5yzRQgfl1W1Tq+622z0uLfPgF21YB+I2HpYEHtPs2iLLiGJwlrpJeNErtHiRTF6
         KgUhm3gPVAdhZtOIdxM1Q6vWYrNEX8DUOGF7WpT6E+8kC+U2lpAWUsIiB6Z3vNuczVQ1
         UweEmiHzHQ9opntm2TTGfWjBlkYIMXixUO45fVYi5fg+SuyKTgRHs9n0A3I1PUl16rjV
         ZxXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745497233; x=1746102033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u50Yy5Vg8srr8Se1a2fDdmj5mgoY3leB+NYiaQ0tKb4=;
        b=V8kBWccbi3M9bUueRcZXLfpSdf1SLBtlhNxiK4zdJqSrFvwDLkWTL8gVYCjkDfB5KK
         pYhhGkL3ph6CaYXQRtKclVCDRypfK4UzGtXYA5o/QDRZ0uUID2mKneHyITLxwJ+CTS4n
         0y+5a7lXyijW8ul4PfDThlb23EQhwCoXJ4bm6tsiL13Erp0sHEiwPPmr8VAPnEnyZrEa
         95oDYX7/d5rfUop/QsxSod+6gCnY62EuduQJz5ad54h5SiIBEQmJD1/3jf+Wq1YWqoq6
         +7f35zxrgZlmfVJ4/DtFYgx390Ld2awUvyy+JZMLL9Eu60XEpkNjfvUZHiyzQgXJ85gt
         qbow==
X-Forwarded-Encrypted: i=1; AJvYcCXMAyEnTNb50c5gXv3rslwy5bv1zhosL+JWxD7JToTTL5FAWi/hK/0kfFvEaHI7kc/ZtcZYNZVgaGfO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn/T/G1NxoTpxRt35GCrkLdkt51D+yAPUDU6gtR+bFYrjJhshR
	9DwcmkjzvBlJR0PlBA5s7bB6hm12H/USjPm409RXBcQqmF1BT+nYs93jky0v6yo=
X-Gm-Gg: ASbGncv8AtMrJWbmGSTvzbLPKo9c3BoQcyZcGcuexGHnIk97YDnLrVD1+6cyOCv2Kos
	2rXYIfgLGwMnyVBRDIOO5M5Wcj3bedbpgX0Bn1FI9uNIfhJq0XnZXD1KXF8heIVvuciK5xIv7WE
	TiTDhIpUNDkuDz0h5xlB6G8mEIYaQCZclAe/ursDrJIOh6IkSrGMIr0sA7DFebU+mXYRwkkKgAt
	L5YQMRRQwiWQQIlQGv3fpO0/Egd/gCWbFmWeNQAqm/Y0KmEjMw7RwmUSOZIyfGzM1yleKnxMeBm
	r1a0/9agavNPNMdubKqDkBWdPq+dxekvAOcTk+SlgoJsS6uxH7Fysk6fjnVQvKp6MF+iFYYZFVQ
	tUBlQPQ==
X-Google-Smtp-Source: AGHT+IErGqD7SWmT3PoP2Qcfi8RzPWJTMPf2UDlu9jVrXtYNixkU0DJW45avJrW+b31pNkThEJFAjQ==
X-Received: by 2002:a5d:64cf:0:b0:391:20ef:62d6 with SMTP id ffacd0b85a97d-3a06cf4a80emr1986260f8f.11.1745497232880;
        Thu, 24 Apr 2025 05:20:32 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a06d54c031sm1884747f8f.84.2025.04.24.05.20.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 05:20:32 -0700 (PDT)
Message-ID: <00fb511e-80b5-494b-acce-23093932c4ad@linaro.org>
Date: Thu, 24 Apr 2025 13:20:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] arm64: dts: qcom: qcs8300: add support for video
 node
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250424-qcs8300_iris-v5-0-f118f505c300@quicinc.com>
 <20250424-qcs8300_iris-v5-4-f118f505c300@quicinc.com>
 <47dtgkfqcpalixg36vxcurkmh5z52kdp7rbcvwl56wsyjsisdo@ylmmrvwde4nz>
 <d8db0361-b8d9-4ed5-0f92-f66f280f62e6@quicinc.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <d8db0361-b8d9-4ed5-0f92-f66f280f62e6@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2025 11:28, Vikash Garodia wrote:
> 
> On 4/24/2025 2:51 PM, Dmitry Baryshkov wrote:
>> On Thu, Apr 24, 2025 at 02:20:48PM +0530, Vikash Garodia wrote:
>>> Add the IRIS video-codec node on QCS8300.
>>
>> Nit: you can not "add support for the video node". You can either add
>> video node or add support for video en/decoding.
> Makes sense. Will wait for any other comments, before resending.
> 
> Regards,
> Vikash
>>
>>>
>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcs8300.dtsi | 71 +++++++++++++++++++++++++++++++++++
>>>   1 file changed, 71 insertions(+)
>>>
>>

Unless you get another comment, there's no need to resend.

I can fix the commit log for you on the way in.

---
bod

