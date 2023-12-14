Return-Path: <devicetree+bounces-25556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A02928139D9
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 19:22:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2801BB21078
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC89468B6F;
	Thu, 14 Dec 2023 18:22:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NaNr0mz1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27936111
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:22:16 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50dfac6c0beso6679268e87.2
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702578134; x=1703182934; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5zt6+gWy3AYMGQQWK/VYCZJ/8Ak/jHvaEgVD9s7jZJE=;
        b=NaNr0mz1qAc3gO7fJQL2VF0XNWaGagG1TgvrUlQoV1aLBDol6j7KEehPFNeB64gThz
         3kG/OEyyBEyxnwlu55AuZKgDbDXDXGzYlft1DQmbxiurB0BwFxFAjjoddlbCjx0qTzwZ
         GB9udkEMKsJCHxhA/JNHP8obwYXI1dJV/oEiDH9LYXclYqy1SKApT62vlj3etT9I6ztE
         qeop4/RcSywKAf2yDyqHqwsg8aubHeDTuNLoCaRen89GMtbQcFhuiRmHxeeAZNnvEIvA
         Yjb2tW6VZKxSigbfuhoggSjvdixTGH7d/M2X4FJKYo7l3i70XpBlp69Xfmp99eL7NCJX
         /FQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702578134; x=1703182934;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5zt6+gWy3AYMGQQWK/VYCZJ/8Ak/jHvaEgVD9s7jZJE=;
        b=XqmUjhstD5ARG1yK48ZQjQh/1TbURtrMCf9eMIBwA5KvU3iJ+tH9ZgISQ3GsrrkrFi
         DsQo2R3Q3CPUz3cG0u3kukofFXEvD216EphMRs6jVK/Ezf7r/SzBkAJxjnXUx1xKVKAs
         AVfRB5nuulzveERXH4RwmE99e8zydT3+6HVWDgLL4PtevgiPzM3kqbuZj7k0aUWpCqTA
         OMSTnR316ocWg62wG3f14aZ94JTmnEcKKgoLSmW97E1lBQOXMZPn0+VpHHhZu/Wxt6yS
         tBe979+WdvvWO4hANfqAEuPvYLhSgp4McXb2MhtYaQxaYmNj8Y0+8kypfMA3mYNwsPsA
         n4Jw==
X-Gm-Message-State: AOJu0YwmozepZIZbx1sfUsddGtJu561y/dh4GaoABukHl0FwpkRtTRWM
	LJWHXsS3y/xjEs6VvcqayiMRcA==
X-Google-Smtp-Source: AGHT+IG+XbVz7FwSzjj/gwHLGVwqaJROV9CW96oHkXLky1gS42N0U1lqDEU4h7qlZAmOkAmt1r4s7w==
X-Received: by 2002:a05:6512:92a:b0:50b:e9ec:4e2c with SMTP id f10-20020a056512092a00b0050be9ec4e2cmr4474729lft.104.1702578134417;
        Thu, 14 Dec 2023 10:22:14 -0800 (PST)
Received: from [172.30.205.72] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id i10-20020a056512340a00b0050be8d89aefsm1929877lfr.309.2023.12.14.10.22.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 10:22:14 -0800 (PST)
Message-ID: <d9a80642-dd8d-4b3a-bf59-2852b5a5146e@linaro.org>
Date: Thu, 14 Dec 2023 19:22:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sm8550-qrd: add PM8010
 regulators
Content-Language: en-US
To: quic_fenglinw@quicinc.com, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, kernel@quicinc.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, quic_collinsd@quicinc.com,
 quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
References: <20231214-pm8010-regulator-v2-0-82131df6b97b@quicinc.com>
 <20231214-pm8010-regulator-v2-5-82131df6b97b@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231214-pm8010-regulator-v2-5-82131df6b97b@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 12/14/23 03:59, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <quic_fenglinw@quicinc.com>
> 
> Add PM8010 regulator device nodes for sm8550-qrd board.
> 
> Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
> ---
Weird to have "pm8010" in p4 and "PM8010" in p5 commit title,
but it's fine, just remember to be consistent the next time
around

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

