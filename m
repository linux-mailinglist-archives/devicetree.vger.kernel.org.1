Return-Path: <devicetree+bounces-169364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 075E6A96847
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 13:59:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C69DC179592
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 11:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52D1027C875;
	Tue, 22 Apr 2025 11:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xreADrxM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899621E3774
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745323152; cv=none; b=hnW4ewxLeh+cheAY9w6KRkTGMIo86OU4HuxHHX+MaqkatNR8MsNqDUPFirnGX8Q6JDS7JDpF6h3cYihgqFuQdMYuqJrQm94DgAllwo1La7Y3DCAvUeKiPTOB/hm4+F2rKG5BZS7kRoRB5e3b8U+YnDGjLBapWTRoRMXd90SWShY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745323152; c=relaxed/simple;
	bh=B8KDn3QvXvfYLh7t8A/lONT5acg89ujQ4x71zHRXKm8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BPhzRqT5A4CGBB/zOuWgVbIUJfzWEv9TKR6iToC897BOsABwXJZRpvMYv5GzSV9QxzVtrb/7sVzVuZ7dZBZelEr0SIprt+QQcrZE1rFsZAufV5T6rZ8lyqyV1hcNKhNru4ugmmlXeSbhAUMLdWR6VdJ3+uo31l3l7ocJnL08rRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xreADrxM; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-39ac56756f6so5006380f8f.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 04:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745323148; x=1745927948; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZtemBd3G/uirmnOoOQusjnqcdAhM8s88bXls8NzP5Fk=;
        b=xreADrxMbOd7nlDXWdt/NNWXmNZjNDEbLWeofh1TLSTPaR7YeWtH2om/GyLNnTuFwF
         MQshkEa8q0zor3+fqNiSkQWI5iBzADFggkeEbAmryDAovXFxs1ju6G4bHblUAuizF2Zj
         Yib3cr6Maw2t/TKyLJ3OrhkFBB7OZ+I3F+huuLPsWkMfPnfTfBlJTgutUzaqt+XwNyTk
         NdwWmRxa0aSt5oArN6j9vhwmilGBTj5maOXWSxDafR7TqEtGWO1p4xRwMH3m0/ZPs4PZ
         fX3C1496TGNpskbhSDWEEYMphOzg9p5TVtXe7IEJMfPsSRXtJhspAzFVYDKUzQM1NSAY
         7W6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745323148; x=1745927948;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZtemBd3G/uirmnOoOQusjnqcdAhM8s88bXls8NzP5Fk=;
        b=vZPw7VcZiaHGGVoMyZu4H5oGVnXvfLdlgWC5pORnGB/r9OMBsOm3Kpy7YCPn+864l+
         VlNlFc0kIxMIVTIW1tZwZrqnT5oLrHM1YJnkGCy3tyKlSUUgoAiSqZtrXuAwzKoD359Z
         yk0g3JQNVqTuzOy8gBxWwZ5NV0Nu0HUMI7UzlMaDteXsp+cBSW+fGXeryEVN4BJaTfhE
         Kk34z7/gcuh8+ZuG7PCFw+Qvqybx/S0BiTeOTHx9HGS6W+np0c+2adVgt8P32I4qP/GL
         W1z51cDVLRe9Lm5DjTRN0ZLxOTsbewjD++U7rCUWqrNPzgB8MLVzLyrqH4BjcEms979c
         numQ==
X-Forwarded-Encrypted: i=1; AJvYcCVslU9bdEgVuqR2yjtLZlgts24LxB14LnQDLK1hFUN1zxr3CV8FD68NqdOfbR4CSvOvclTKvAI9TrXZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwQUCNwU0by7CVkuo005ALH3omKi1Z1eov9mRnyrVM4r/sOwoQ1
	1voGBmwuxVRZEaD5R6TPAE+1vVCmSwM5rbzPLBXoUJzm/PcDX2aw7SiPeoG8F48=
X-Gm-Gg: ASbGncudR3bL0+FhukEET1OfYOkljv8BuIZ9oK8/EViqC03p4IGP5Js+FCAwChdGsHy
	6OUnKFMmXypWdVD5+Nr692iX1jLz6DMs1Vd8y6E3CfaMoGbpevokiZoHpVuzMUMPWxjMU9b2rx6
	UXYsjKpZ2sCooZN1Zha6P1hHQvgWdosmVo3jAIw0XwNiXa0TucUGP143MDOFLn5y7AqixvAqi41
	+Gas29dMf+FcMhohmkrHPRB+t1CPFW7HaCS2tE8MiRwAiWDH6T+lmc77bDse5PnrK72jgCXGiB0
	Tf8qBjUv/lN7Jja6FKZYmFGLYvM1d5Ttgj/LH14p8cdSVr/1sBBxYdVCOtXwgD5X8LHmDQaejfW
	/qtROBg==
X-Google-Smtp-Source: AGHT+IF1y0d12KuMkqHmAdbxu4rB1xn7kfvQc2RyPvUyr9/eORSwE/0jB/0/qhRoefW+QRojCB8LlQ==
X-Received: by 2002:a05:6000:290b:b0:390:eb6f:46bf with SMTP id ffacd0b85a97d-39efba3867amr13238328f8f.5.1745323147811;
        Tue, 22 Apr 2025 04:59:07 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa4235dasm14809380f8f.9.2025.04.22.04.59.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 04:59:07 -0700 (PDT)
Message-ID: <d19ce1ba-2b72-4c04-b405-f5a9d3df07e1@linaro.org>
Date: Tue, 22 Apr 2025 12:59:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] media: dt-bindings: media: camss: Add
 qcom,qcm2290-camss binding
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: rfoss@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 dmitry.baryshkov@oss.qualcomm.com
References: <20250418141147.205179-1-loic.poulain@oss.qualcomm.com>
 <20250418141147.205179-6-loic.poulain@oss.qualcomm.com>
 <20250422-nonchalant-bald-mink-7c2d34@kuoka>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250422-nonchalant-bald-mink-7c2d34@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/04/2025 10:15, Krzysztof Kozlowski wrote:
> On Fri, Apr 18, 2025 at 04:11:46PM GMT, Loic Poulain wrote:
>> +  vdda-csiphy-1p2-supply:
> 
> Why isn't this named vdd-phy-supply like in every other binding?
> 
>> +    description:
>> +      Phandle to a 1.2V regulator supply to CSI PHYs.
>> +
>> +  vdda-pll-1p8-supply:
> 
> Similar question.
> 
>> +    description:
>> +      Phandle to 1.8V regulator supply to CAMSS refclk pll block.
> 
> Best regards,
> Krzysztof
> 

In this series we agreed to include the voltage level in the regulator name.

https://lore.kernel.org/linux-arm-msm/20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org/

---
bod

