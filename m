Return-Path: <devicetree+bounces-16032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 288687EC8FA
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:53:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4B0B28132E
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE7F02EAF7;
	Wed, 15 Nov 2023 16:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TrIUm4g7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8CB381BA
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:53:18 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2C3C11D
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:53:16 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507a98517f3so9336019e87.0
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700067195; x=1700671995; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pGO9Oq0SdGkpzzE3uJylZH6OCZ5SuMtsEESQkZwIHuM=;
        b=TrIUm4g7TNZg55PzIoN1oFIaRDAr2HToIM2TxwDH29q0uj1KWOfFvauCtab5t4sW7n
         cgItpGGESzApfoUdIuqiqREdXvQDYbwh3acs+fMgpDnTLeWbA2JD5xAD8kvw6+dk/Mdd
         ScS4J2r7Eq1QL5KpIPcy26OxAndey3QSK+hQD4JIloRa4CMFzC4d7vEeDiSE2lm5asYp
         bccg1G65pQ6FCiHClDknoU4t3blHxkvYu6+So9vg6/44UdEykaBnhDydsgJHnqMkxWar
         HsNVue7DUzeaZc4Mg8VpFo0ZmU5QKNHnjz9dkZeHCyEEXa9Q9fSMQIjjLB2hr7lVdSTm
         zlVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700067195; x=1700671995;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pGO9Oq0SdGkpzzE3uJylZH6OCZ5SuMtsEESQkZwIHuM=;
        b=DBGOwscYdpGk6tYiXRWfJ3Cbjz69MZTN08SWdoEVWuV1QjBJbtPOD1ls1FMBCiD9nG
         U538lkoyJFFuAZgrNGTVod29mRmjC5GOcEFYH/I0Fn22XoLjPLmDEuL3NXGFBUjWzBFZ
         /LpfeKD0LM6gbj5O+XS1BHxsZb9JaxqxJWNs4Cm60/nnIiySvirImgzvuCTkt8UuvPGs
         ztiI3X2mUY5vOW9yk0mgsj+wKQjKdwdwiZynLlyS8P9Dqiil8YKTck38asULkxyH3ZxA
         RzxiLpgmM5pq5kjOJ9Sq13fp6cRME0yTov72fqAH1D3TUEiKr+cijySgv6d/DWU66pzA
         1lwA==
X-Gm-Message-State: AOJu0YzTKDT/fj30aGp6QMwC2HPdiFtwp1caEbx7f1e2gnuIlxk2bzF5
	uemTyDsC7lXd47B0/GR2cpEOoQ==
X-Google-Smtp-Source: AGHT+IFCM+c6ikxUOMfm7OdMmGp21KvVxvkGqhc0L81YSlh7wIW29WUSnANYhPJ9hJXmUWlxyT5I7g==
X-Received: by 2002:a05:6512:12cf:b0:509:d962:3c67 with SMTP id p15-20020a05651212cf00b00509d9623c67mr11619942lfg.20.1700067194926;
        Wed, 15 Nov 2023 08:53:14 -0800 (PST)
Received: from [172.30.204.150] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b005007fc9ccd0sm1688540lfs.113.2023.11.15.08.53.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 08:53:14 -0800 (PST)
Message-ID: <3332e356-89d9-4e64-94d6-ed75a5ec0144@linaro.org>
Date: Wed, 15 Nov 2023 17:53:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: qcom: ipq4019: correct clock order in DWC3
 node
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231112080136.12518-1-krzysztof.kozlowski@linaro.org>
 <20231112080136.12518-3-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231112080136.12518-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/12/23 09:01, Krzysztof Kozlowski wrote:
> Align the order of clocks in Qualcomm DWC3 USB controller to match
> bindings.  Linux driver does not care about the order.  This fixes
> dtbs_check warning:
> 
>    qcom-ipq4018-ap120c-ac.dtb: usb@60f8800: clock-names:0: 'core' was expected
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

