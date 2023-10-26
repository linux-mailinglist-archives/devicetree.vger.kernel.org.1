Return-Path: <devicetree+bounces-12240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A937D8891
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 20:53:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F6D71C20EA2
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 18:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F10323A278;
	Thu, 26 Oct 2023 18:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ws76dRbc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B2C1D68D
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 18:53:01 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E3BE10A
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:53:00 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507f1c29f25so1770029e87.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 11:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698346378; x=1698951178; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cGBbFnVPmOFrjTHoEzH5J6H2Hqy+10FpHLwr0vLtfI4=;
        b=ws76dRbcGrbVidpvwTMGfTv0Po8XM4dqUElpcxliVp67dzzMjAh34iXtxwN8MWm4hA
         Gb9r1OUzihI3fvCzmDxwQ58kt37b+8/6RSCQXXj34+aZKrIluy+1311MlSL0JizPnQgb
         pc0/KlbnQ8plP3G1yOpsWw+suqki/bicemffPMIkgDn8U9kLaZIRzppaRAmVnjtI8Sf5
         b7VZYfS/D90nhaqBiAWqZFyTuo4taTlA5hv/OExEXSzNlmGFo+1R4llSzzGX07Fe/iyq
         +49HgzA2ZMr6nPPT3fo1HGH2N49TQ3jDAII8MNrXAY9ZlT2dd4/TeQkUZ8rSvCYa3QF8
         fP4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698346378; x=1698951178;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cGBbFnVPmOFrjTHoEzH5J6H2Hqy+10FpHLwr0vLtfI4=;
        b=rAE15uyKzHpp9a1gbkdHaUVfB0/MUR4chETk2InxNLinplG/ojzOwakkMrqsVlo0mf
         MvydPE62T1aiYsZ1ZFVQhhI0Y0/7agroLu7i2jdH0dbzuH+om0hXIdvz8w2UncDkh5ow
         HXqp8olRJv/nQjEDe8UwsNR09wV67SaijYsFmeUdPyriFbP/OEPpdPWSNKZRIvLPOM6Y
         6xHKCtUreKdPyBhk44iq5M1IUH5IaXQAPflMTZoXdn7OePC/TMlJWF3TLWQJ7t5HIScl
         OeiQU4oit+FLSV1MLRNl2dxFccqjdrF+e9W2YaSa22TA0uhrgFkQWuTyQgzyOar133rk
         KPhQ==
X-Gm-Message-State: AOJu0YyD/IPlMruovRHIhWuL8WvQDzDcC2LsSll0urVqn/K0ycNEZa2y
	TV412Aj3Mcv59nuFVTDlajBdzw==
X-Google-Smtp-Source: AGHT+IEaensjbTbZ95CdUwbV/cQYQV+gNN+JsxWtfhZGK66ZooXahenjpHcQYV4syUFfh6gXkr//ig==
X-Received: by 2002:ac2:5a4d:0:b0:507:a6e9:fbba with SMTP id r13-20020ac25a4d000000b00507a6e9fbbamr159161lfn.63.1698346378301;
        Thu, 26 Oct 2023 11:52:58 -0700 (PDT)
Received: from [172.30.205.8] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id h28-20020a0565123c9c00b00507a96d17b3sm3057580lfv.237.2023.10.26.11.52.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 11:52:57 -0700 (PDT)
Message-ID: <0f4b901a-d907-4a10-aaa5-06eb9cb5eb32@linaro.org>
Date: Thu, 26 Oct 2023 20:52:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: ipq5018: add few more reserved memory
 regions
Content-Language: en-US
To: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-ipq5018-misc-v1-1-7d14fde97fe7@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231025-ipq5018-misc-v1-1-7d14fde97fe7@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/25/23 18:42, Kathiravan Thirumoorthy wrote:
> Like all other IPQ SoCs, bootloader will collect the system RAM contents
> upon crash for the post morterm analysis. If we don't reserve the memory
> region used by bootloader, obviously linux will consume it and upon next
> boot on crash, bootloader will be loaded in the same region, which will
> lead to loose some of the data, sometimes we may miss out critical
> information. So lets reserve the region used by the bootloader.
> 
> Similarly SBL copies some data into the reserved region and it will be
> used in the crash scenario. So reserve 1MB for SBL as well.
> 
> While at it, enable the SMEM support along with TCSR mutex.
> 
> Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
> ---
Bit of a "many things at once" but okay

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

