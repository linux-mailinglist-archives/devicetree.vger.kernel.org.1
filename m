Return-Path: <devicetree+bounces-24971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50847811D31
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A281FB20B5E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BAEB65A6A;
	Wed, 13 Dec 2023 18:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xqVyTqdP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DEE1183
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:46:04 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50bee606265so7771219e87.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702493163; x=1703097963; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NJcDS6iZliXqjE05cb2uxTI3zvo7+RZD1xOq9aPoV5E=;
        b=xqVyTqdPS6KsQCtisX7nDUNBxnFcmexBecTqq0Ye//WPZrYqDglW80Ubls/pTBlVL0
         fX3xh1oW2lZv81iazuI8Cznkvd6LRgIgT/l8KfSaE4LBedM3N454CMbrA8LSYC3wHqOG
         9tu4D8K2cYr3wuT/2gScyv0lTsCjPGELuhYlOMihdtsDIAVW3Hkyj2rpvY2beOAeEHhl
         onbzEWaPYzRxoudlF7/7CYOEcCqRUIls/jUtS/7yRq0rSrJ2TQptEDPID3GdKwH1LNoB
         rb0uG8/XtCtPzKYB7EMILK4TCtl7xEMeke3u7icT5I0ho5+2uSETI+IKkL2p4Gg/0vQ5
         zD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702493163; x=1703097963;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NJcDS6iZliXqjE05cb2uxTI3zvo7+RZD1xOq9aPoV5E=;
        b=wRrEDXrGX7Vu23LmQBMfjUBVvzSbjwaQyO9tlTnOutlsLZwyp1fBy0lUzKTuT3F1Mc
         dFjyDoRKGt19ocHzp3rcLqk3FyDBo8qfjalhzFkl8jSrkFYMzZxhKNLw93Z//kPWKJqk
         459P/zUesfJh1WbmR/WDTXq7csTfwDstPMZd8FCOV3UauYWCml5IfPxIel//C5S1deNl
         aQ7yL7gYpQm0pi5KTeVuwY5Q4vex8mWO0QlKqMyO/EpqzRDuQcl9AEy/YE5u601Tr56U
         CupNLDM5QeS7wfi+oZTWM7H81+TcJohcthGineB0V2bDRGmd2diiZQI3VFZ+wUsitCYh
         PsXw==
X-Gm-Message-State: AOJu0YxN5t1Zf7WKf6Xbw2CbN+FHW23M6QFLbwC2zA7lXMRB8iwCUbBK
	DciAYAxK0hyVW9jxfNqS8lq71g==
X-Google-Smtp-Source: AGHT+IFBTL+kVT6LHa5WVGqE7J+EbBusEZDVnlwohPacKbYoytXAPIlR7IaaWxn2/E6aOtvNjFtb+w==
X-Received: by 2002:a05:6512:39cc:b0:50b:ec63:8cf with SMTP id k12-20020a05651239cc00b0050bec6308cfmr5980794lfu.21.1702493162665;
        Wed, 13 Dec 2023 10:46:02 -0800 (PST)
Received: from [172.30.204.126] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f12-20020a19ae0c000000b0050bdf00f688sm1653687lfc.299.2023.12.13.10.46.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 10:46:02 -0800 (PST)
Message-ID: <a554ca80-d643-46a8-b15c-8cf9870e04ec@linaro.org>
Date: Wed, 13 Dec 2023 19:46:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] ARM: dts: qcom: sdx55: fix USB DP/DM HS PHY
 interrupts
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Manivannan Sadhasivam <mani@kernel.org>
References: <20231213173131.29436-1-johan+linaro@kernel.org>
 <20231213173131.29436-3-johan+linaro@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231213173131.29436-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/13/23 18:31, Johan Hovold wrote:
> The USB DP/DM HS PHY interrupts need to be provided by the PDC interrupt
> controller in order to be able to wake the system up from low-power
> states and to be able to detect disconnect events, which requires
> triggering on falling edges.
> 
> A recent commit updated the trigger type but failed to change the
> interrupt provider as required. This leads to the current Linux driver
> failing to probe instead of printing an error during suspend and USB
> wakeup not working as intended.
> 
> Fixes: d0ec3c4c11c3 ("ARM: dts: qcom: sdx55: fix USB wakeup interrupt types")
> Fixes: fea4b41022f3 ("ARM: dts: qcom: sdx55: Add USB3 and PHY support")
> Cc: stable@vger.kernel.org	# 5.12
> Cc: Manivannan Sadhasivam <mani@kernel.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
Matches the downstream kernel too (as it should!)

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

