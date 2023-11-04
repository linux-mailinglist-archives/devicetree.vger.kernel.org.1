Return-Path: <devicetree+bounces-13870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B9E7E0F61
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 13:32:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C98651C20978
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 12:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9FFE2F58;
	Sat,  4 Nov 2023 12:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wXjyy1+U"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8471A597
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 12:32:23 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C8F41B2
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 05:32:20 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9dd3f4a0f5aso195914566b.1
        for <devicetree@vger.kernel.org>; Sat, 04 Nov 2023 05:32:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699101139; x=1699705939; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aD8sQ7ZbeF75IJwsidf9wpTlqXnkpYqRPBDPPKQs8Y8=;
        b=wXjyy1+UKXWRQDWF7aiV9wGI2Caqz/ruh4cI/MXIOoMZUk6fUXtMvisoJa64K0z8PV
         Fl56SxD5jBcWLyZPXDOHJkYoRw89MM7AWHd5wf8nOdr+8uDoQTE5H3ZRBxbJBWEvChhr
         jvHLtOCbdikJ1IXKSOGssgqvTF8f46ERCkXIgo7+y1mUHaTxrHzMvqxwZ9bRNvTL7Zmn
         knMwIVrW7aZxYupBmB2JLmTBlDtYzKa3XG666T391lF+/HDsGQ/QoMcHXLYJdEDCE9sh
         v/5xn8gnhqd+zE7M18VhUftq2zt7yblCd8MrQ4quMb/+i8+nPJJAVIS7RyZrIBi9LKVx
         NSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699101139; x=1699705939;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aD8sQ7ZbeF75IJwsidf9wpTlqXnkpYqRPBDPPKQs8Y8=;
        b=KtM1ZLUhnST6XMY+IDA6B6HD/SLRQNmJ0jNdMgsWKohXwSJqnKHS4Q/cvDtk8+Z6kl
         t/cvVbGy0Z7C529XFBBqeKMpFPaVq+c7XeguA43aEte/jlnuEroIN2JBw1SOK0+W8E5T
         ropewPyKTqpQT+CMHWji/LhZxvQnEer7Ukk5/WczX/gbDcOQfCq/F4keYq+phBgvqgCe
         8tbzEbzH/Z3rJLe4GYjhifDkB99fGcvPvo1E3MFt8ahOap6tKbUMnVcSwBi1ufsS4oXB
         bEn+TD716ySAN/kUi55sg5BTh4wYkM5DFlSiIM2pv+ak8NTf05QbG5hqOjQK4JjKLsBm
         A33Q==
X-Gm-Message-State: AOJu0YzRHXjzbhWUuX0wWuXGV4M/qxDrEDgPNwTRVDI0dKAT6bKG5Jtd
	KAhS3CwIYMgUgmlNn97yYgFTCA==
X-Google-Smtp-Source: AGHT+IGHDBcap9eLMlD+wItasasKcPKHzhMXSkVNaXPMbhCdN1xZlc3moYKwu+Kens8XEBGhsaTeaQ==
X-Received: by 2002:a17:907:9603:b0:9d3:f436:6807 with SMTP id gb3-20020a170907960300b009d3f4366807mr10003624ejc.42.1699101138774;
        Sat, 04 Nov 2023 05:32:18 -0700 (PDT)
Received: from [192.168.0.153] (178235177017.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.17])
        by smtp.gmail.com with ESMTPSA id h3-20020a170906260300b009887f4e0291sm1903972ejc.27.2023.11.04.05.32.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Nov 2023 05:32:18 -0700 (PDT)
Message-ID: <62860baa-4a0f-4a69-bbe4-94579c28a1cb@linaro.org>
Date: Sat, 4 Nov 2023 13:32:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 2/2] arm64: dts: qcom: qcm6490: Add qcm6490 idp and
 rb3 board
Content-Language: en-US
To: Komal Bajaj <quic_kbajaj@quicinc.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_nainmeht@quicinc.com
References: <20231103184655.23555-1-quic_kbajaj@quicinc.com>
 <20231103184655.23555-3-quic_kbajaj@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231103184655.23555-3-quic_kbajaj@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/3/23 19:46, Komal Bajaj wrote:
> Add qcm6490 devicetree file for QCM6490 IDP and QCM6490 RB3
> platform. QCM6490 is derived from SC7280 meant for various
> form factor including IoT.
> 
> Supported features are, as of now:
> * Debug UART
> * eMMC (only in IDP)
> * USB
> 
> Co-developed-by: Naina Mehta <quic_nainmeht@quicinc.com>
> Signed-off-by: Naina Mehta <quic_nainmeht@quicinc.com>
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
[...]

> +
> +&sdhc_1 {
> +	non-removable;
> +	no-sd;
> +	no-sdio;
> +
> +	vmmc-supply = <&vreg_l7b_2p952>;
> +	vqmmc-supply = <&vreg_l19b_1p8>;
I think you also need to add regulator-allow-set-mode and something
something regulator allowed modes to VQMMC

[...]

> +	model = "Qualcomm Technologies, Inc. QCM6490 RB3";
Is the name just "QCM6490 RB3"? One already exists, based on SDM845.

Otherwise, this looks very good to me now, thanks.

With these nits addressed:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

