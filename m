Return-Path: <devicetree+bounces-217384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A735B5776D
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:01:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D690B7A7A62
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:59:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C872FF163;
	Mon, 15 Sep 2025 11:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cUpx8rxT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF13C2FE597
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934041; cv=none; b=a2w2769ad3j3sGopyqYj3YnaQLULi3xLZFx1Qm9qThm2vmgrCDali+WeAB4JO41rtqaMCEPPIio4rw43owHWQ2+wTODIiQ7Av6DGThOveC7MLrjR3TGcj+26lvO8ZaMAcwG+rzrdoUkywPlpP/Vd5L3BfmbBTk+janRka2zKFpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934041; c=relaxed/simple;
	bh=i5sgCc01vK4RPSfrnI/Y9ovkRzVT0szN5lG4kf9sjlg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DvU8Inxt7yeGAS6S0tSThbyB5U8CYVaL89FZDI0gQ6sMHIsSEaZkxKul9/Ggq9FHKZuiHW/XJ4Ly6Lv2iFsddlaUrtoA2j076cJegBIBzDs2uv+clAxXr2PRmlwVKwyeX9YKYgS/R++k+HxI3q4ODBUNMcpet6Pe5CA2m4yvurQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cUpx8rxT; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so2848083f8f.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757934038; x=1758538838; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XE7Xq4L1Dtfsz8f3IxnHKAOzDG+X/UjcqwyZapiSDj8=;
        b=cUpx8rxTrGfAhAUS02BT9pVpnxnIYzcbsXcry34hkSeZmwMLAcCj0nDPx2W2hGBiih
         vSk6a98fkN2/VOOzFzZ7eBqCqUaOJScX7+AKFlcgEi7SSevUvKZwvmUF2g9sVEOlcbqw
         XFmW+n/uhJ/ndzvhqB0umij2Oinq80pSqwxhtkRl4UrPpmULchBSchLFyrWzU8XQ6k7G
         sZSr2y44ALdMuSNe8If7jKjFIu6Nc4UFa6YTa9mVzVBr8XuEYEI5o7nGyOI02l1VhNKq
         NlfETCAnyeuULza+MILfbbuABtYdgw0HnFyGw6Mfly0S0YaWwvtyplXUXasCH4sN8Rsv
         JyRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757934038; x=1758538838;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XE7Xq4L1Dtfsz8f3IxnHKAOzDG+X/UjcqwyZapiSDj8=;
        b=S4/vhBTsv8Qck76VoNijGoOF3tLxFK9jxKZ75qIP3J0VIE5AM79WRdtFIG97wslVaB
         VIQWbd4VkDvpXPZKlMaLwDFZbK8wNo9x/PgaFFa1SwmNUv3b2S6+uekX/AWDdTvb6v5A
         zxTjTSQpgvEZPl7jAqv37nnpobfq47y1ZpMQBcihbH7sNKWLS4C4bEgWvcNH4o3/PcWA
         /thhQB+eBNWHm4DMUn4LpHVyw5h55/c71Ah6T6l+zuY8j/GklFUKBFRRBFG5tavu0LU1
         377c+YFkH+GLpJneludgbKYJSQACR5CgvbdwMyptsisuiUcyTzqh5tMcCTuwzPr4ytH1
         86uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJjwOWTJDRLC/FcuXKiBSzC797xtPBetLvkrmK2Gpnzx8jcWeZ4DMHixx73o/htXN5OQ/P9jODiSlm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs25ue8pTO+H0LLDzQWQ6jodWysFx9nZ3/IX5mBgjfjfb8l36s
	k0zJAZ9FNFYOvhQriRCBbuQ2Gnrql8h9lc3YAmxupo9BDIDKtqkMUQj+UEAbWWteykc=
X-Gm-Gg: ASbGncsO1m2m5Kp9a37+FDD9oSaDfUKRUR6KFY3X1XWVsyycqBR3p2jUEroENWs9hIp
	ojzZ8Gd3ylltFNY9bbHyVxOFi9Ze3hyvTvw6PxK9rKM0zeAnWf/R/AwJ7oNImMh6mzQPO1sUpkj
	qz2xT/nOZh7/OD+p8xb+Dwl59QsQYwz1ZM15GtSYdngSBqxUXLcyhp49dAOUudgtNiVzkUYyHir
	byogDdAD9brMx+ODsclNeyo0Mb6fHRuN0RGTHdC8ah7I0P373esPLouqqx+/FAd8Tpt6IL9okrF
	YmP6hIf3VCTpwTKskQbMwq76izHZaZ6SGlfji+kl5wu8YHZVCPQ16PdzHQI0tZc+pvHHabeER6r
	NR5oPwoBMnrmBKJvnPfbviHrmGm4/vsTU8qq9gwaZv/UyxDUpUgpolpvpyFCo8K10+HEVnIP8gz
	nRiAW4DVlwAC8HrDeBG/A=
X-Google-Smtp-Source: AGHT+IEWJRcQLHslpmLibsz3O85acgnTfdDU/E/N80/0EiGbiQC80sxLfM3h7gRZBVAU0IOwhNxuQg==
X-Received: by 2002:a5d:5f82:0:b0:3e5:a68:bdd0 with SMTP id ffacd0b85a97d-3e765a26bdemr11811776f8f.52.1757934038000;
        Mon, 15 Sep 2025 04:00:38 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017b4222sm175270115e9.20.2025.09.15.04.00.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 04:00:37 -0700 (PDT)
Message-ID: <9a91fb03-ee63-49e6-b554-aecdbdc20014@linaro.org>
Date: Mon, 15 Sep 2025 12:00:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/9] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Enable IRIS
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Alexey Klimov <alexey.klimov@linaro.org>,
 Anthony Ruhier <aruhier@mailbox.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
 <20250915-x1e-iris-dt-v2-6-1f928de08fd4@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250915-x1e-iris-dt-v2-6-1f928de08fd4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/09/2025 11:06, Stephan Gerhold wrote:
> IRIS firmware for the Lenovo Yoga Slim 7x is already upstream in
> linux-firmware at qcom/x1e80100/LENOVO/83ED/qcvss8380.mbn, so enable IRIS
> for the Slim 7x with the corresponding firmware-name property.
> 
> Tested-by: Anthony Ruhier <aruhier@mailbox.org>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index dae616cd93bdf54bf2d3a3d4d0848e7289a78845..e0642fe8343f6818e1e10656a1d8fec8fb09e7e2 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> @@ -1026,6 +1026,11 @@ touchscreen@14 {
>   	};
>   };
>   
> +&iris {
> +	firmware-name = "qcom/x1e80100/LENOVO/83ED/qcvss8380.mbn";
> +	status = "okay";
> +};
> +
>   &lpass_tlmm {
>   	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
>   		pins = "gpio12";
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

