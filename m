Return-Path: <devicetree+bounces-13615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAEB7DF442
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 44325281B17
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACECA18E2F;
	Thu,  2 Nov 2023 13:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A2MCWty7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF0618E2D
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 13:47:40 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8F6B13E
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 06:47:34 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-507bd19eac8so1149774e87.0
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 06:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698932853; x=1699537653; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IVRSWnlyu8gdIYg1ZZClUvvLadGrYWDf9Lfi6rPv/mo=;
        b=A2MCWty7H7Vw8GRzvKc/uGXY7NSHMVd4jdiSNZ1url0eNuJS/JXQK9w+C7kgJMFA3r
         4iOhwEBQ7RziSH4UttdipIfL2YYJlf1Ox9UtRbdw29p56bTvt1o1G94V1nRLcc1SkJmw
         TadWxxA6tGJkpdHZJouAgjsNeEOStRhtOo6g4aecRlq2PrKbMHcj2vAEFEQl8XIwEAak
         PbDH1uTA2fxC6m32/+RQZDRzwDre/sRMkepEVkHJpglVm3pV/4YWVQOWgGi7j44SYyeu
         z4KVD6bPJzQGl8TpdxEB7ZUMc8X90dp1FO4TxACJlrJ4aOZfahCqRlB/StptdwFNB28M
         zczw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932853; x=1699537653;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IVRSWnlyu8gdIYg1ZZClUvvLadGrYWDf9Lfi6rPv/mo=;
        b=rEfr89jhVDo4kMVlJKwDFHwPKM2p33b3fp/KQP1NG0q1d7ffnXDXGoLTSU2PAt8dE/
         HbG4Iun5xPODUcB6A/HnnYYpXyv68XKuA+yS9hIzgdRwvjDMTnMZYSLn+71jKJRcuwKl
         NIFcwk1HZ6N8EUGDlbipLSfnNltxQpEujWzrFCtSq2LI3G4H2UnC2SkZlDAT/Lrt/P3y
         0OT3jCaK1p5m8MSRowNproG6jB8AHW1b1uDAjlXV2/ekPO8eE4Y8MMRRraC5N5jsduAP
         GAq9Z+rfoO+g2cCvRyxg0PXIKH4Wu4lEptFRFmIHEsO0B8ozvxKEmudE+h0VehtXGk91
         gUoA==
X-Gm-Message-State: AOJu0YxQ8ViWXZQaZckR2V9dbBeAZ1gsefPKxW9Xbz+EY4mWKe07YPVg
	hgyEXPgHGUCDLmq0hhpAqLAK/g==
X-Google-Smtp-Source: AGHT+IEL6iiaR8yLtsrn7x6/zQGzeDyvOsggtK8cSwtByG0YhdsfLuNP63m2+nKbYCpUVbQCD5VjKg==
X-Received: by 2002:a05:6512:2309:b0:509:497c:9623 with SMTP id o9-20020a056512230900b00509497c9623mr2204823lfu.37.1698932853135;
        Thu, 02 Nov 2023 06:47:33 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id d14-20020a5d4f8e000000b0032d9f32b96csm2534757wru.62.2023.11.02.06.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:47:32 -0700 (PDT)
Message-ID: <58965dd2-878c-4530-91bb-03db02517dd6@linaro.org>
Date: Thu, 2 Nov 2023 13:47:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] media: qcom: camss: Add sc8280xp support
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, hverkuil-cisco@xs4all.nl,
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
 <20231102-b4-camss-sc8280xp-v1-5-9996f4bcb8f4@linaro.org>
 <9f088cfc-7b01-524c-1900-5acee6919ec4@linaro.org>
 <d26a975b-7a66-46db-af1f-685273f64faf@linaro.org>
 <e95642ea-14de-8ec5-11bf-1218426a23aa@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <e95642ea-14de-8ec5-11bf-1218426a23aa@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/11/2023 13:45, Konrad Dybcio wrote:
> 
> 
> On 02/11/2023 14:38, Bryan O'Donoghue wrote:
>> On 02/11/2023 13:35, Konrad Dybcio wrote:
>>>> +static int vfe_bpl_align(struct vfe_device *vfe)
>>>> +{
>>>> +    int ret = 8;
>>> return the value directly
>>
>> What's the motive for this comment ?
> stack size

An optimizing compiler - older than me - will not differentiate that at all.

:)

---
bod


