Return-Path: <devicetree+bounces-13613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EBB7DF43A
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:45:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F6FC281ABD
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C954218E2D;
	Thu,  2 Nov 2023 13:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HL5oo8Lu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D81A14A89
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 13:45:54 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C410813E
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 06:45:47 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-53e04b17132so1523113a12.0
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 06:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698932746; x=1699537546; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LUcfPgQH1UWULWd4u1rfSI/DVi5ZQyAJ60XsJjsMiCE=;
        b=HL5oo8LuCoa/Vxk2ZBeC6LaA7r9nfXlbtLXUecfcwPeFFk/urV5Ql/Lgm3837EAG+2
         MOxQAtaYx2UNay24eeUUmpZ0xfv3bhErspiUI8Wv/oihDjEkKon+Z1HfeUtY5vn78uJd
         u1Mdc0d78kvE1n5DsCKpG5TDj3k7l6Z5s6bPHXwPUHFt7Y3CZD/Dn7iDPHiBuZx70tjQ
         /iuhvnPwPax5YOswkWTOPa+f7rwtoykx1BWgqHMVKT20QxCJJPuXebmXVcP706WmzZuA
         Uo4xHd+g9nayHeDoiDL75V3yKOChB1LhPMmYFKE6ystS6Cm144Y5W/5FJJcbUP6nnZDW
         /Nbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932746; x=1699537546;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LUcfPgQH1UWULWd4u1rfSI/DVi5ZQyAJ60XsJjsMiCE=;
        b=QVp2o+GR26i8TA8k1ix9OcFobic5i+YNdmx/hWUT3zc8VymTwWSTq2Fn/P610XGHtM
         NWejbgsjtFnz62UQ/zg5uInm6wV2zkMfKPXzHQQ1T4Rg1KcJ35lkPpDv8prXsbwNG3Lj
         E0qiizqRL/BgVCUOW+i8n+lVbF5/z8rwcH8ndw2YRqrZSqXLhpDrnbfcP7JhNEq3HhxG
         8BmwawyK2mhTZYAlcUAnXl9Ut2BdRTjMqiM2A3KxGywpgvlzNLS/EAbTbf+J13K+i1DS
         xw748MQp9RxqHtaIVW4pdBa6cQY4VbJZeI1W7sEzwHYIJa+ciHksPLFhi2u13r3MRQ8+
         IU1g==
X-Gm-Message-State: AOJu0YxewUq0LME36yDtJl+Il9kSJ5+wC/vFzGxIPzf50b6CIUWhQ4a9
	pYPm9EnmM64A2KlVHuLCRUrV5A==
X-Google-Smtp-Source: AGHT+IFZgOGw8+m3lyLjHxEHIO9L9vSCBqrsVZmFEzIqrumUDq6R67hsXwXlNZ91ruD7llEVEVllyw==
X-Received: by 2002:a50:9b42:0:b0:543:55d2:df2d with SMTP id a2-20020a509b42000000b0054355d2df2dmr5954672edj.41.1698932746058;
        Thu, 02 Nov 2023 06:45:46 -0700 (PDT)
Received: from [192.168.1.118] (abyj199.neoplus.adsl.tpnet.pl. [83.9.29.199])
        by smtp.gmail.com with ESMTPSA id u23-20020a056402111700b00543597cd190sm2339127edv.47.2023.11.02.06.45.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:45:45 -0700 (PDT)
Message-ID: <e95642ea-14de-8ec5-11bf-1218426a23aa@linaro.org>
Date: Thu, 2 Nov 2023 14:45:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.9.0
Subject: Re: [PATCH 5/6] media: qcom: camss: Add sc8280xp support
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, hverkuil-cisco@xs4all.nl,
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
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <d26a975b-7a66-46db-af1f-685273f64faf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 02/11/2023 14:38, Bryan O'Donoghue wrote:
> On 02/11/2023 13:35, Konrad Dybcio wrote:
>>> +static int vfe_bpl_align(struct vfe_device *vfe)
>>> +{
>>> +    int ret = 8;
>> return the value directly
> 
> What's the motive for this comment ?
stack size
> 
> ---
> bod

