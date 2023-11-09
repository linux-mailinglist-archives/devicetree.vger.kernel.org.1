Return-Path: <devicetree+bounces-14813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B7E7E6B3B
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 14:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50850280FDE
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 13:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39AD4111AA;
	Thu,  9 Nov 2023 13:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pQJSCPKs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31801DDD2
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:31:05 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 253F030D0
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 05:31:05 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-32f9268bf8cso517431f8f.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 05:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699536663; x=1700141463; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n7wSwsJDVC+WFzVhVIJKKG6kw5XK1WEXSl+1a+Sx190=;
        b=pQJSCPKsdvs+fLj7nRr1UkQOIaMhVssnuKSJi/Gm/m38ytCDaHkHBmZTSzDeFGI8g5
         92M+nD2/sj/EYcdinYTquRW5PoRE+Jpn/b37VSTPhNgyF52rMGwKNucz20UBV6xlYPGb
         2uePFK1hf75Qu8wxhrwCJNLAKamS2ExLA9PaDTh61iLLDneFaws3dmaYmspiSu8lFyl3
         tLq8XIdoZVDyBcUvj1mikkUMi4DJ/vhCv8oy8rtx6wrIbX+WXj8bhrEgAJN2yzmiXZE/
         gpCd9nG33VfBP4w47+022ZmwgnmFLA2gk4JJ1XVKVqbmKAOcIDvfoCBop9KNdFaDeEp3
         gr+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699536663; x=1700141463;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n7wSwsJDVC+WFzVhVIJKKG6kw5XK1WEXSl+1a+Sx190=;
        b=CF5PcG8STlmDqbq9wnJ0pvdXn2S8SA7u66uC+3olvWH20vA/BJgprsVnSCYZMVUQf8
         K4bAifYFxYAdMCcbJReXikw8/DPxIsHHlkF9I6latJbash73+c5hdp0sQ/A9D17U+BBm
         J0PViM/oZmiMcdfUSr9jL9LlT5viKH0y7KZ5zqsjYwiVBewOhfi9caTQ2am67vNEc6/a
         +p4B8cCOrSzguDbY8HkGK/fuPPdywOGSq3LpFfvQh77AXiTxeSziKliPt7QfTlPln/h8
         b0qNiHxWcqBM/MbMg/UmlbaLL3mXsSMJH9a9HWv71LpGhRjB0mSChNqu/+cGOeJrLdiU
         oWnw==
X-Gm-Message-State: AOJu0YxPHQx1tUKk6NbbTXsYtHwESm69Uqg0FDdgXSdqr/cOht6d+RYw
	NRHJZJ5VNsTvd1dh9oKadWjkAw==
X-Google-Smtp-Source: AGHT+IGlzYfCp7R2ALAusnJakOcIsFFY60CLzrvOpftGcSSMR7es7S+xeCW6gPM1nWx4ps1AB5k1BQ==
X-Received: by 2002:a05:6000:1842:b0:32f:7ebe:3e5a with SMTP id c2-20020a056000184200b0032f7ebe3e5amr5224216wri.50.1699536663530;
        Thu, 09 Nov 2023 05:31:03 -0800 (PST)
Received: from [10.66.66.2] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id z13-20020a5d640d000000b0032d96dd703bsm7425418wru.70.2023.11.09.05.31.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 05:31:03 -0800 (PST)
Message-ID: <038711cb-321d-47f0-82ad-44965116a4a9@linaro.org>
Date: Thu, 9 Nov 2023 14:30:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: sm8250: Add wakeup-source to usb_1
 and usb_2
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
 andersson@kernel.org, dmitry.baryshkov@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231109004311.2449566-1-bryan.odonoghue@linaro.org>
 <20231109004311.2449566-2-bryan.odonoghue@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231109004311.2449566-2-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/9/23 01:43, Bryan O'Donoghue wrote:
> To test out a different GDSC change I wanted to have a USB keypress resume
> a system in suspend.
> 
> Adding wakeup-source to usb_1 and usb_2 "just works" for me on rb5.
> Consistent with qcm2290 and sa8775p add wakeup-source to the dtsi for the
> SoC.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
Maybe we could make it the default in qcom glue somehow..

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

