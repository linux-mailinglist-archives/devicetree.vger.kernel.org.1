Return-Path: <devicetree+bounces-50076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BD88796D0
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 15:49:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 28E70B218E9
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 14:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45CC37B3D2;
	Tue, 12 Mar 2024 14:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RtrFKblJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4AE7AE7A
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 14:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710254939; cv=none; b=Wb2V91J2WCfUV4jqAxZe64qeDopu5hF3vvi9XeA/oGE3Qy1iNvgEKm/nDAQ6kqMTh4sQeLNR77J8l/0p7fXEaOyUilLj7OPnC9Rd76f2fClf/elRU7FcG49uSeucqKAkM/FcUpLLV4kNYSpXEsxLJOhhkVypo62Ha9HyBc95I+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710254939; c=relaxed/simple;
	bh=ehkMxhxSjg2XhZ+RvTxPDoX4lka61fp6faUzxorfi84=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CLQvUq7eoJIYdUZzPh0BlFT255okwfB9Ym7n/IfoNqFKmKV8xA8NCQIeixd5DZL4U45/TvQcaDqugnxtScebLi7FF7w06zZkp6ITYeV4VcuRpPV1wT+gH4ykc1j9kpRWViJwXL1pqjAk54wfRwV0ecSl7JiBSmcRAnkdJKZ3fqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RtrFKblJ; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-513b16bb739so1700967e87.3
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 07:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710254936; x=1710859736; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vJBqb//ttMSi9W/J8xNh1OgzHq9LQEMmCQTMHoiXJQM=;
        b=RtrFKblJhTpI3m+rAIBHeKDsKFS4vpc/kMF4iNMEA4GYNZtK19+pv54+1wiqMA4USq
         bRq5zz7D9jMa3Yov47A7MQfWm3SbXUJ+kjSQ66dVHD2qP/8GTgRshH79D+q33UnlJvp3
         sZXWqffpzSuatewNEbqMVtPDMYmLaETiU35MmX06nHkOUQ7Jv/JBoKsHULXXU5KjBPsp
         RSP/gVdb8mDKFFUyWVAKEIAQRFKQPu9O88DkOFNV/nriuVfrs/YG6lTLlqpoeEpIzNtb
         /M6zrkaemMZjvfnWWDkMUWxZ0fIHbeBTAv/ai7tj/uDK0iuNdKBB5HTRlVUFz4Het1Nr
         1GKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710254936; x=1710859736;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vJBqb//ttMSi9W/J8xNh1OgzHq9LQEMmCQTMHoiXJQM=;
        b=hyN2JLYcQlvr5sTpDws9N2axpM+qlNFfhrPRMcMpjCe9PD8irmeoJP0EVFmVTrINLX
         NNhyl2/Los5oHKtYwY+ygKIg7UZ0lcEVZwBKePtEYSXuTAzZ79bET+0oodM6I/91Hkeo
         xuuFPPnja5SZqkQAp0+wvykLT2cmB+Gz4DVjAA28L5XChdfA1W5kIOGoCOhLVJ2YQ2Ub
         xH/x5Gfmi5vnRvPVGGqlReWrcI/evCW4nRDd5r24LzKJJlQLuhG5XyRfxjEE7IOHJmtJ
         k24PtquAnvQF2lZlmsYd4TXNBOnC6meki0YqV6qk6QzWCah1Z3GXlPgrli2m60kntip2
         hPtw==
X-Forwarded-Encrypted: i=1; AJvYcCXhqpS+n3HGuic6nxpVHJQLVqXEnHRnKDsD6r6bBnrjntIqthuuH9CHbv5g7FmtfIivvIsG3tZwdajt+1uKErJSeQN77yQ+E5uQQw==
X-Gm-Message-State: AOJu0YwYAqKFbAltxit1Vee7PitO2+eJG0B3qnOO+p6w+xNPh8TyrpcP
	8nEQiBlxAnrC8LfmUNRq0mudlyBnmfPUYSvnhD7WOmWzZvNZ09s6Sdfy5VJSd7hjN+xnA4vOqBN
	wqpM=
X-Google-Smtp-Source: AGHT+IHlExnmfR4kT+GhrIroVdprVrNybDbEQkw70027XzchLm1fcSlfQMkG5CBosKWyjRZqZe0c7g==
X-Received: by 2002:ac2:599b:0:b0:512:e57d:c9c9 with SMTP id w27-20020ac2599b000000b00512e57dc9c9mr6198989lfn.13.1710254935601;
        Tue, 12 Mar 2024 07:48:55 -0700 (PDT)
Received: from [172.30.205.61] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id i26-20020a198c5a000000b00513177e424csm1653978lfj.168.2024.03.12.07.48.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 07:48:55 -0700 (PDT)
Message-ID: <a8da3a73-11de-4b46-8dfc-f05335c22b08@linaro.org>
Date: Tue, 12 Mar 2024 15:48:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8650: add support for the
 SM8650-HDK board
Content-Language: en-US
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240223-topic-sm8650-upstream-hdk-v1-0-ccca645cd901@linaro.org>
 <20240223-topic-sm8650-upstream-hdk-v1-2-ccca645cd901@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240223-topic-sm8650-upstream-hdk-v1-2-ccca645cd901@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2/23/24 09:52, Neil Armstrong wrote:
> The SM8650-HDK is an embedded development platforms for the
> Snapdragon 8 Gen 3 SoC aka SM8650, with the following features:
> - Qualcomm SM8650 SoC
> - 16GiB On-board LPDDR5
> - On-board WiFi 7 + Bluetooth 5.3/BLE
> - On-board UFS4.0
> - M.2 Key B+M Gen3x2 PCIe Slot

finally somebody made the right call..

> - HDMI Output
> - USB-C Connector with DP Almode & Audio Accessory mode
> - Micro-SDCard Slot
> - Audio Jack with Playback and Microphone
> - 2 On-board Analog microphones
> - 2 On-board Speakers
> - 96Boards Compatible Low-Speed and High-Speed connectors [1]
>    - For Camera, Sensors and external Display cards
>      - Compatible with the Linaro Debug board [2]
>      - SIM Slot for Modem
>      - Debug connectors
>      - 6x On-Board LEDs
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

With Vlad's comments addressed:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

