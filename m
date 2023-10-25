Return-Path: <devicetree+bounces-11940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CA67D71E6
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:51:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 943E0281C8F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB1BB286A3;
	Wed, 25 Oct 2023 16:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fqU0ebeO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108BA273F2
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 16:50:55 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFD1A13A
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:50:53 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32dcd3e5f3fso4062263f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698252652; x=1698857452; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CZYImk/mXSSi+o4l71ADu1/FnBpFWcH0X2+sMWjIFRg=;
        b=fqU0ebeOVrFibfPJP3j0RdJ+BWZ9RpRksNhJXIkjJi5xdbeGxAAaZBMokHGiTIl129
         c6XXHHC2crBd0H/qbVKCvH7Y7wxWLu+6ek/IPrIU4+/oFZdhvdhZX3U68VdQGSiwS4Cl
         7TNcaFlp5FNs8aWD2XTxDbPCugGUZaMXe2ujJnxvHWJ4XEEzDiMFA1Q2ymsQRS5sMbug
         u85Vitqbm3mTodoLZ8qyVdCqcsUB2WLu7wsFl/+SkvY6huv5FLLXvggY7W8GXkYZbHf+
         7tYA06jY97v1X+GjSVxdcRH5p61780TupB7cj/6DmWzANmCLvkaZRbzDVfe8bJgFiriE
         p9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698252652; x=1698857452;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CZYImk/mXSSi+o4l71ADu1/FnBpFWcH0X2+sMWjIFRg=;
        b=Ul3iekFQIzr1O0oBuZUBJv1YHO82Fdy63YVZ+PmRFashhVmCQ3CawA7jIPj+6ysi/G
         5VwRMyX/uKg8i1NOdN4qLf7gWEs3ubA/RtusscqJIDBrZtzVRgxh9zSbMDguPUkYVgyB
         Z1MgkTIGYT/YaUQssayUFVAqWdQ6uOSa6iOW7XcJYKY1b8NsJWJY6UWG4OdTY18Dxb8y
         HoWxNGugC1q7ak8xCrAI2gUbkKU/Fm02S5senICfDePIO8Gy/KvCWtxreUMNL9Ze/wJX
         3lUrconPcEzNSplzKQ/LCkI/ygHl0rjdsIzwXyrpQMXQZwVwoYXhwAcSaynU4BBjustO
         MYbw==
X-Gm-Message-State: AOJu0Yz8XLfsSDaeipxtAx1XiJQwmdbEkyXpF0XdhiWCF7rJD73MnDe2
	FCpbGZNLy1Dx5md76BfawlJLXA==
X-Google-Smtp-Source: AGHT+IEQCFBk5Dxw5dhzmiY5H20nvQe5QOzfRpA8EQpGFtUhVqOtnnudYdGdu3Qw92qf1Qf1whdYXg==
X-Received: by 2002:adf:e58f:0:b0:31f:a0ab:26b5 with SMTP id l15-20020adfe58f000000b0031fa0ab26b5mr12193613wrm.8.1698252652187;
        Wed, 25 Oct 2023 09:50:52 -0700 (PDT)
Received: from [192.168.100.102] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id a3-20020a5d4d43000000b003196b1bb528sm12374109wru.64.2023.10.25.09.50.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Oct 2023 09:50:51 -0700 (PDT)
Message-ID: <03f6d583-8324-4ea2-ac6d-5e20987133e9@linaro.org>
Date: Wed, 25 Oct 2023 17:50:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] soc: qcom: llcc: Add configuration data for SC8380XP
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com,
 abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_tsoni@quicinc.com, neil.armstrong@linaro.org
References: <20231025134632.10363-1-quic_sibis@quicinc.com>
 <20231025134632.10363-3-quic_sibis@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20231025134632.10363-3-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/10/2023 14:46, Sibi Sankar wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> Add LLCC configuration data for SC8380XP SoC.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---

LGTM

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


