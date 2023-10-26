Return-Path: <devicetree+bounces-12141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACFF7D8177
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:03:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B3502B211B3
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 11:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785061A58B;
	Thu, 26 Oct 2023 11:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R24ij74O"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65151864
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:03:29 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1417F1A2
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:03:27 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-507c1936fd5so2177721e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698318205; x=1698923005; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VzUkjj3ioVAuziUZcUjR5KTsG1ZchY1msQxN7OBN/9E=;
        b=R24ij74OdmOpyo/Oix4XzS1/Te2vaVJIGtwd8a1jfygV41mBJPhZCT5/zEiUtQcXiO
         pLtJQWgxPzLSOmwDQYIGnZr6nyaxBkCNEuhQHg3vtyBZ/9pXSGv0f/a67WZv9NDJRszd
         UizYxzEKe4KKwy+Bh1Kv5hPf/7xmLjvBkJckvrYF4uyxUwzolbIiujBeiOImIOjDPpwC
         2fQONF8XDyJFk6sKW0w0DMJ/wXvSh546mEKxvSKWKS8mFf2ELeiQc0F/LoAM/7PyHH5c
         NirqqrcwozN/PLO60bM6L/LIhWxsHGf2TO+1+VF/Wq4nCiZGYulN03jO9tXi5fvlGH8N
         gXPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698318205; x=1698923005;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VzUkjj3ioVAuziUZcUjR5KTsG1ZchY1msQxN7OBN/9E=;
        b=cp1fepstj7WB11RtZ72CEWSD1ZaFHXXyu4SCJ6T0GmET0gU8/Ncn3v9z1aCct/IIlR
         4UOKAIcxCGB5YAaULCdnJyItVniJGcIjOycAQtLrGeUJTJwX4FJmhJ6Ypw1KDY0nqYFh
         i5KhGS7dSXuX5SQkZ/WApGTxvMFuMJd8N0rM+tv1xGpiWAEJcCPLdBNOZMlrl0VMApvs
         BH/sD9whOhZ5A4Wkf4T4EFyi2o97Vp9TN3e9hSBJeIU9J0rmcn9G30Z7lhWj+NLio8+F
         fbKcBAwTwwV2sLbax/8fbZxwj/fJxrF/eEOb1SnZBg+KE4yuMq6zZUZEG/3RIFfXSJAO
         DjWQ==
X-Gm-Message-State: AOJu0Yzb0OJtpE4yw0YWr9hJM1ap0SIICx+t1AkgJO9GD/oZxNCMky90
	ESGgB521q3dRLGfVyBhXBqOSdg==
X-Google-Smtp-Source: AGHT+IGXWeTTuhTugX6l5vKV6ed4QbMt4Upd/1mje4BckbkWso9Rz1mQfodP+vd3jINdRSXBP+zS5Q==
X-Received: by 2002:a05:6512:214d:b0:505:728d:b48c with SMTP id s13-20020a056512214d00b00505728db48cmr707543lfr.19.1698318205254;
        Thu, 26 Oct 2023 04:03:25 -0700 (PDT)
Received: from [172.30.204.123] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id m7-20020ac24247000000b005079d34f330sm2956190lfl.282.2023.10.26.04.03.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 04:03:24 -0700 (PDT)
Message-ID: <6017d366-b4fa-4ef1-ba39-f54d7963cc88@linaro.org>
Date: Thu, 26 Oct 2023 13:03:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] pmdomain: qcom: rpmhpd: Add SC8380XP power domains
Content-Language: en-US
To: Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
 ulf.hansson@linaro.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: agross@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com,
 abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, quic_tsoni@quicinc.com, neil.armstrong@linaro.org
References: <20231025135943.13854-1-quic_sibis@quicinc.com>
 <20231025135943.13854-4-quic_sibis@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025135943.13854-4-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 15:59, Sibi Sankar wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> Add the power domains exposed by RPMH in the Qualcomm SC8380XP platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Co-developed-by: Sibi Sankar <quic_sibis@quicinc.com>
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

