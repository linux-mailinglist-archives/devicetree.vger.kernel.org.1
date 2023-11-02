Return-Path: <devicetree+bounces-13611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA577DF417
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:41:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 608791F21B3D
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A913918E23;
	Thu,  2 Nov 2023 13:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l5g8lpQv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECD212B87
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 13:41:52 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AF2C13E
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 06:41:44 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40906fc54fdso7446055e9.0
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 06:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698932502; x=1699537302; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IoVEsKSH/yNeagUTIKEYKzFjL77Kn7w6UCVXwC/EZTo=;
        b=l5g8lpQvalw6HrQsu/Vd2NquW68VNuOqBDCWpBlqMhtDr405yTHprSD1T+2og1UVnZ
         HXWk8xbZFLFtelXUk9NL6hIues7l74WgSdjnUi7I3X4V09YEFvaEEiRplAQkhB0pEAl/
         +Ju+z+ncXd87L8+MfT0xzXdxknXVAnOWi1ydOLO0VlkcVxpg6dB183rYnuDPO7OQQRXc
         Gi15TMcIRk0EmIWbR1/mbNJygBXL52k4A6P00BAATJ+7IafzHs1tmTH26sNfAwYuYDNW
         gAMerv2s1J+biCZleGbDRjonuo8hWsToGxGxHmCMR9zCXOJtFc/vvvxSMtivDnzrbPY2
         LYTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932502; x=1699537302;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IoVEsKSH/yNeagUTIKEYKzFjL77Kn7w6UCVXwC/EZTo=;
        b=f1mzQZrjpTBamdQ0Y2JDJ5cWnhz3iQH2c19Tt+QgKdum/QIAp8ONjp5eQ1851WUfsk
         L3ae7mjztwmp6SeJAImr2FoA5R7+s+BXd+7v68y2wWgFF9yiVgSmb9JZsV2bhOt9ePfV
         RG8cAPUImWyzw8n18p+Uy3YiAYoGEvWP5qBNvdDizeCo4v8HjTDA/UzMZtVvBsYudwHf
         CMfztbPN+IcoduAiHhF6Zxu6To4uHvSMvzeiK8T6nPAci5LI33jJyUdyzCaVR4+rsPMG
         sThXTn7pkarOKAhCcgbomVjwNFq4AVv+lycKE/xLt/0o51d425j/6B2iU42fIkZ/dSrL
         xuTQ==
X-Gm-Message-State: AOJu0Yzg4OLS7lmQ6jmjPBM5ZsOqxe5rSpdQIfuuMvR9DbOx6fq7ojb7
	D3dn4qJPm9UJ90TvrITKV/GoNQ==
X-Google-Smtp-Source: AGHT+IHyBXWc+KI6xooU7XYG0cVyd6LqTw2hPtbNe+ESLIHGp4Y73tjmno+Nuxo9WyhibCNdfnnajw==
X-Received: by 2002:a05:600c:5110:b0:405:34e4:14cf with SMTP id o16-20020a05600c511000b0040534e414cfmr15687654wms.4.1698932502266;
        Thu, 02 Nov 2023 06:41:42 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id t25-20020a05600c329900b003feae747ff2sm2902604wmp.35.2023.11.02.06.41.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:41:41 -0700 (PDT)
Message-ID: <70dff468-3405-41f6-9057-6a1eab3de75d@linaro.org>
Date: Thu, 2 Nov 2023 13:41:40 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] media: qcom: camss: vfe-17x: Rename camss-vfe-170 to
 camss-vfe-17x
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, hverkuil-cisco@xs4all.nl,
 laurent.pinchart@ideasonboard.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, vincent.knecht@mailoo.org,
 matti.lehtimaki@gmail.com, grosikop@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231102-b4-camss-sc8280xp-v1-0-9996f4bcb8f4@linaro.org>
 <20231102-b4-camss-sc8280xp-v1-6-9996f4bcb8f4@linaro.org>
 <4b8dab99-05aa-9f50-def4-85058294f069@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <4b8dab99-05aa-9f50-def4-85058294f069@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2023 13:40, Konrad Dybcio wrote:
> 
> 
> On 02/11/2023 12:41, Bryan O'Donoghue wrote:
>> vfe-170 and vfe-175 can be supported in the same file with some minimal
>> indirection to differentiate between the silicon versions.
>>
>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>> ---
> But you directly assigned v170 to sc8280xp, without any renaming or
> meaningful changes I think?
> 
> Konrad

The specific version for sc8280xp is 175-200 => the motivation for the 
name change.

I'll amend the log to reflect.

---
bod

