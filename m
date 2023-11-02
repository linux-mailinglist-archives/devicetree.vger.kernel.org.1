Return-Path: <devicetree+bounces-13608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8857DF3F7
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 14:38:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C4CFB2115F
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71CAC18E0D;
	Thu,  2 Nov 2023 13:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VDQzyUSN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355D717740
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 13:38:46 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F97A13E
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 06:38:42 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4084de32db5so8636835e9.0
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 06:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698932321; x=1699537121; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LKDV0c9x4kW8e+XafsUW03m+2ll3tOqbHuztuC5Z/Ss=;
        b=VDQzyUSNrnq/GAiNMVgM3ugYPkEail5HIZv4YyBKz4e0et5k9HXBU/yu6fA8ukJT0k
         ArrQKGR4lnFafbWxCMkV8QYbY7/9YDv6AKPs0BmxUaVHZMgtQvpw2GNYBV8AQq6QFKSS
         I191wgTaCDyygJzT7DTIeCjmt0xFsW0hqga5itZ/L7vaLHVIXJnhw8WYsJGFE+qu2Qod
         eaDnz/nvXC6S8CSnHAdE1aFecqC77xIp8CqmBVgwOx3g2p/h5qNQov+lSiaTXkp6r/Dt
         r1WOfEv7+4uwTnihk0pEuha/NDed9rIkplv9qM3IOymvaPEF5gqSgpYbAwFDNvenGn+Z
         rQHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932321; x=1699537121;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LKDV0c9x4kW8e+XafsUW03m+2ll3tOqbHuztuC5Z/Ss=;
        b=Z7G7LIuUfu4+mZqhaz6kpbnkxJDxHOj6+rHm+DIQu7Fj7qrLVgQq7TiaXJuuTQfwQ6
         lNTXzoGxXQ1igNnZXRbD8tVzdH1WB9W9XzNkSbntdBLBUQskNkWiIzcxHqJhDf0JZUs0
         o2LRCaf+3lBsFSVbbNLZtu+iXn6G3jgWBprRUJaKElnDLy1U6+AWQovLQm1BgKtPrsz5
         dY3df5hJsY2bGNLnf0PUk2LpR0pVFj+keXrGSFgbd5l3bMoi2GgQSkzGfvtFynbow5Xf
         GKCPDlQt4PNyCRLomlC1WKlM0SlvB/LuAq17hySZOZt9+6W8PmMqRsvQJDMsboD0vZpn
         C9Xg==
X-Gm-Message-State: AOJu0Yz8gKN6JOzv9tjnLI0xEaT49ub1jGCOaSzvAK0EV8KIrSK7Rmxs
	LYEbwNxmfu+T7ShZin4rykYzDw==
X-Google-Smtp-Source: AGHT+IFRNrImNNZe1+UHO1+GY0jPMqPvfsNYUI5eEtG8KDx9kCdwpIB2lTgqnA/58OpXHq8OQjJDTA==
X-Received: by 2002:a05:600c:2990:b0:402:ee71:29 with SMTP id r16-20020a05600c299000b00402ee710029mr15066683wmd.10.1698932320807;
        Thu, 02 Nov 2023 06:38:40 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id hj19-20020a05600c529300b004094d4292aesm2832396wmb.18.2023.11.02.06.38.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:38:40 -0700 (PDT)
Message-ID: <d26a975b-7a66-46db-af1f-685273f64faf@linaro.org>
Date: Thu, 2 Nov 2023 13:38:39 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] media: qcom: camss: Add sc8280xp support
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
 <20231102-b4-camss-sc8280xp-v1-5-9996f4bcb8f4@linaro.org>
 <9f088cfc-7b01-524c-1900-5acee6919ec4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <9f088cfc-7b01-524c-1900-5acee6919ec4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/11/2023 13:35, Konrad Dybcio wrote:
>> +static int vfe_bpl_align(struct vfe_device *vfe)
>> +{
>> +    int ret = 8;
> return the value directly

What's the motive for this comment ?

---
bod

