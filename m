Return-Path: <devicetree+bounces-85317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D868592FA2A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 14:24:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 082241C21C7A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 12:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2A2E16DED6;
	Fri, 12 Jul 2024 12:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yTBldjnl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FF216DEA2
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 12:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720787079; cv=none; b=lqOAUdYe3iRHqK3bpULpHB+VC1aqt+grrY/4osZoNrMCHI1baFbDKV/Tf+Nh30V3ZD02ZAxMi39qkYo0m7LbdhkeDNGURuW2GC0a7pxGz002LVK2c432nX053AB20qNmeXFRhaUBbCIoPg9IiJIPZx6qjjlE6uceTGbrmuS/yaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720787079; c=relaxed/simple;
	bh=eOtHQ8VYLXbFwsAe0fStVrT7vDzRsWhp35W29iwvnuc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Hduqf9Wa29q6gIsv9X0sZ4bwEcrFYWoqadSQy7cTQJPXH3UCU560puJL9xR7cQYB34I2LamG3BkR91TeMXDi8XLzFlBCuFkY+xWyT+qTUicvafyDYkRt+CLIItUrtgDQ31AP2SpXzXFJcwcJI43AkJmuGwSQw6aOo/Bbvl/djVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yTBldjnl; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2eeb1ba0468so21363211fa.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 05:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720787076; x=1721391876; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Z2W945V+blPWE0tngOuX4Nr23/wSDR4Zp/tDuMO/aPU=;
        b=yTBldjnly6BgT//33ty+TJNHZlMUVEk7j0DP8BDB3jxSy0M/hNRLSb7PNJHq/pQfSJ
         u3NYOP1AHdkaAMRlKhUiCKVFaxIWy7Ro+uLFNB6brrqShXmz5N9VBcxcErSr0ECflqX8
         T/ZDi57mWXfvfgeoiaSzj7xAByzoKvQwVD/NO+redcEAJO9S1i7LzGDwLaCe+B4yLELB
         7/Im6ZMr+PWt7i8KEpTVRsJ/7tjozM43yv/PEMIcvTce2g1o4Srcq7YRu8zon2X1CJe4
         y3nX9XW/Tp8/4yHl2UAmhkkA3By0674nbibEzh2/e2YqW2TMjmoSse72401/7ANmZbHs
         nzjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720787076; x=1721391876;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z2W945V+blPWE0tngOuX4Nr23/wSDR4Zp/tDuMO/aPU=;
        b=IdtHToIolwRr9VeRZQ5cZhZs6AM4L928rNPPiYKFSeYtlEzIiC195N5EYf6UtPCecA
         usrAoG7ovar/oanbmryKkSB7DAXOGhxXVBqaZR5ZdFVKZIC0ci2ZkFNZmcF/M8Q0UjHv
         9pzpAwwzCsFmBwBSgEG8GJwGUreijcqykyDk2qmgP/GGc9ssrXQ3xUxMUXcVRCSsgDIx
         72d07PBtXYXdfe/p7q+oLLXGEWeup6+AqRb17POy/7NQoS688d5BW5rmzAUVhzU5G2cB
         M/eQTCKyyWRmxWVRXSg/qSC9at3k3xLZ8IqVIrqMyBh212Lzg5eeTxjRMrm2cOmjXPjg
         ABPQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9uceTtgazqxAwN5HlKh3hL/Tm80sSd9wcbKIgGOCNh4tEHx3mj4OM2f8/CQNdnS4bL8qK7jk/RsFm6R4KbB2BxJp8AeIPHNcGuw==
X-Gm-Message-State: AOJu0YxdRsoL5ZO3UeKZBNV/b1ZHGsAmJOQbS2UVV0jSxovBSn/Eqkmj
	fyX2TxgQglhq2P+zKIayD9cfL15oDTS9ISo45XX/uMuTQz0zpo2uQaTzhAHg92k=
X-Google-Smtp-Source: AGHT+IHbGOIN0LzxY6IwvQUbrA1CTwSakCwk9wx0uX1QxwZSW//Y4FGXl5qZFzix6AoW6Lxu6VOeYg==
X-Received: by 2002:a2e:9bd5:0:b0:2ec:3dd4:75f4 with SMTP id 38308e7fff4ca-2eeb3189d46mr71173811fa.38.1720787075846;
        Fri, 12 Jul 2024 05:24:35 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bbe2ce4bsm4513068a12.25.2024.07.12.05.24.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jul 2024 05:24:35 -0700 (PDT)
Message-ID: <6628a6a8-1e25-42af-b9a0-18c2623c08e9@linaro.org>
Date: Fri, 12 Jul 2024 14:24:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: ipq5332: Add icc provider
 ability to gcc
To: Varadarajan Narayanan <quic_varada@quicinc.com>, andersson@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org,
 djakov@kernel.org, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <20240711113239.3063546-1-quic_varada@quicinc.com>
 <20240711113239.3063546-5-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240711113239.3063546-5-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11.07.2024 1:32 PM, Varadarajan Narayanan wrote:
> IPQ SoCs dont involve RPM in managing NoC related clocks and
> there is no NoC scaling. Linux itself handles these clocks.
> However, these should not be exposed as just clocks and align
> with other Qualcomm SoCs that handle these clocks from a
> interconnect provider.
> 
> Hence include icc provider capability to the gcc node so that
> peripherals can use the interconnect facility to enable these
> clocks. Change USB to use the icc-clk framework for the iface
> clock.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index 573656587c0d..f58fd70be826 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/clock/qcom,apss-ipq.h>
>  #include <dt-bindings/clock/qcom,ipq5332-gcc.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interconnect/qcom,ipq5332.h>

nit: this is not sorted alphabetically

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

