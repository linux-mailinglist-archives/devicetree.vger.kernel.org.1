Return-Path: <devicetree+bounces-7834-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EE47C5B43
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:26:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B46021C20AE0
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D127B22326;
	Wed, 11 Oct 2023 18:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pOajQnoj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA081B29C
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:26:14 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88AB1C6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:26:11 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5046bf37daeso236092e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697048768; x=1697653568; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NhaMMjUnOGS0snHYgCTJqAmCtSDPr4g2Spu2v7RzFSs=;
        b=pOajQnojjdMb1a5mZZN4VIeggGqvq+Z6aRZbtGzbmawN4rONbvAQdhBnsROfAEwkNk
         HFpxEsQgaUZSV8RZPnj/eQEmRvBtSXApMKT44t65zCSiFObq9c950xTHLsy2Cxls6/2w
         /JChni43UDj+m/HrPW+qRIPuMDl9E4obPpbBLsAZxH878MiG2Sm9uuhmqWEj9JFqjQfH
         d2kaHgKHPyt5u4CWTKIJlOEWudnHHHEp/F9b3SqA/ps2fKDPxRGMi3vzpaiGWo0ZKmtc
         +MPEu8X66qW79UUyp+Z0r4XXMjaBgZKZsRQf4dwM79OV7mizHOr4w+qPrzws1L+CUZlR
         CO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697048768; x=1697653568;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NhaMMjUnOGS0snHYgCTJqAmCtSDPr4g2Spu2v7RzFSs=;
        b=kke+6NXTSCUGVjGyW9ZtJ/jdqN9CX7cb+CIyczJdYeEVF2DMr36/MVUDZyPxAb5EIr
         KcQnGwKqobsQtACs5InJXnV97kBn3HraQaLXRWlGlrt83HMiRpZhZpynf9y8f7aO3vso
         veo3u+87/uIdzVoJukfPLJ+BcH0dEJq3uT82IQBXx/F6OPa9hQwA7pQ7uBO27GdYwHS9
         is0lRxAVJMSyjCBcHMucmvqkj/1BLuxIA1XYgnxDtI/UijPrCaWgGH/sMf1sDkmLZJ4b
         HhMlsUvpCqaL8LOlylCmjUeNuzKGrKweodvvwCtFMPZJOtRZ/IAH+jf5o3OBYK+s0sZh
         Tn8Q==
X-Gm-Message-State: AOJu0YzSS2r7KeONhB9vxpbiB8sAjG+ULDIGZxpvY9dELjLP9WfPFrg5
	39nisQDGRdiF8/WNZCFXnxkWWQ==
X-Google-Smtp-Source: AGHT+IFIQJKuaflQSrmmNd4avkHuLSJlTQxyhkmlvVp6ZFvXYbsrbTPzUobPhnyafRwU98QeWKTaCQ==
X-Received: by 2002:a19:6414:0:b0:4fb:8435:3efc with SMTP id y20-20020a196414000000b004fb84353efcmr16377878lfb.16.1697048768272;
        Wed, 11 Oct 2023 11:26:08 -0700 (PDT)
Received: from [172.30.204.35] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z10-20020ac24f8a000000b004fe2de20d88sm2372674lfs.232.2023.10.11.11.26.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 11:26:07 -0700 (PDT)
Message-ID: <67a76151-30ab-4e85-9dfc-0078a83d8830@linaro.org>
Date: Wed, 11 Oct 2023 20:26:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: document HTC
 Corporation
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20231011-htc-memul-v1-0-76e57873190c@z3ntu.xyz>
 <20231011-htc-memul-v1-1-76e57873190c@z3ntu.xyz>
 <9f270d15-6705-4392-b2cf-49edf5bc2d3b@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <9f270d15-6705-4392-b2cf-49edf5bc2d3b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/11/23 20:24, Krzysztof Kozlowski wrote:
> On 11/10/2023 19:02, Luca Weiss wrote:
>> Add the vendor prefix for HTC (https://www.htc.com/).
>>
>> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
>> ---
> 
> So it is the first HTC device in upstream? That's a surprise...
Same feeling, this was very unexpected!

Konrad

