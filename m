Return-Path: <devicetree+bounces-13869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 972057E0F3B
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 12:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46FB1281B64
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 11:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95F8015AF9;
	Sat,  4 Nov 2023 11:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r/VR7jwM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EF015AE6
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 11:52:25 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54342D49
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 04:52:23 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso453784366b.1
        for <devicetree@vger.kernel.org>; Sat, 04 Nov 2023 04:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699098742; x=1699703542; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WWPBcRahpNs2iNp1kwWVGUoxxZvN0/nq7y6p5xp+O68=;
        b=r/VR7jwM6g5H8PXmGLgNk2Rj64s4x54PFDnioeJDKNRlybwyFqAIYZVZ+go65Kd21v
         m8yLm40bUCkPxqs168Du0fvO5IZWqMQgTRKAikR+CiEuXEGKi0BY5bymbxeY1hG4Utc1
         dd2tRYubwHBgY1UXMvsqUzqYvvbJgJDXuomYUWdRsIvsnSIJ8pUOgt12wa56SVhN29sR
         AxCl7nDoi2Vq/hfN3cqaPkxVcWuoNUie9w6OtoBNiKeC9Uy+zpwSySNIY44h3gox/8Q+
         C5tzoS5YP3XDUOz786q2Shh2QR1MrUr4PP2gFSFtpQS8bOxmDF9BHjH5VVtuerhgxtEd
         HQIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699098742; x=1699703542;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WWPBcRahpNs2iNp1kwWVGUoxxZvN0/nq7y6p5xp+O68=;
        b=Bgr0YjL5tgs+bzFM3b9TTrFPi3jtXEwMb5zLkP/NNfsMhGPZSJ46k84jwqBRhtGN/7
         JbTEP5FMAAQUqmxkyn/wWRnvBYuKYUnaYYL4lzkK5zwBH4JUCoXxrHdAkldLZ+Fwi2nV
         +5DRAsyby2bIudog2vn2Q8oLivelIzEk/F7+9z0UXO/JVh3LOB543grr4jaunzCzZtF7
         0ainF+huuENC6CaSV5inlucOGwQJ8fqCTEQfb5pMfPd6DbJEbUE0dRvSNjAtq1GNdnpA
         3JcVC77zE3N3I3COkVu8UpYgBrH2sDQD2WIwz+Oz12lPk3cC9qGrxov70m17RP7ARVNX
         cm/w==
X-Gm-Message-State: AOJu0YwEnXIQP7pdoYuIXRqWgR65E2eJ/dSvMvzNHS8GumTgNHeGFQ8A
	xK8EiV8kUU5M9lrp8TJrGcJ2SA==
X-Google-Smtp-Source: AGHT+IFHQR5kD9RVIq1ZrE+i++iTprawD+bDXUmB0DSZB5rfFud+zZgi6DJ4p7MlZQJQvGhfkFonyA==
X-Received: by 2002:a17:907:1c17:b0:9be:fc60:32d9 with SMTP id nc23-20020a1709071c1700b009befc6032d9mr8994010ejc.47.1699098741750;
        Sat, 04 Nov 2023 04:52:21 -0700 (PDT)
Received: from [192.168.0.153] (178235177017.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.17])
        by smtp.gmail.com with ESMTPSA id g19-20020a170906349300b009c3828fec06sm1873727ejb.81.2023.11.04.04.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Nov 2023 04:52:21 -0700 (PDT)
Message-ID: <feca8e74-6653-4cec-943d-47302431e1fc@linaro.org>
Date: Sat, 4 Nov 2023 12:52:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add capacity and DPC
 properties
Content-Language: en-US
To: Ankit Sharma <quic_anshar@quicinc.com>,
 cros-qcom-dts-watchers@chromium.org, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, quic_ashayj@quicinc.com,
 quic_atulpant@quicinc.com, quic_rgottimu@quicinc.com,
 quic_shashim@quicinc.com, quic_pkondeti@quicinc.com
References: <20231103105440.23904-1-quic_anshar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231103105440.23904-1-quic_anshar@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 11/3/23 11:54, Ankit Sharma wrote:
> The "capacity-dmips-mhz" and "dynamic-power-coefficient" are
> used to build Energy Model which in turn is used by EAS to take
> placement decisions. So add it to SC7280 soc.
> 
> Signed-off-by: Ankit Sharma <quic_anshar@quicinc.com>
> ---Hi, thanks for this patch

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

I performed a quick grep in arch/arm64/boot/dts/qcom and noticed
that at least one of these values is missing for:

rg -l --files-without-match dynamic-power-coeff $(rg cpu@ -l) | sort
ipq5018.dtsi (homogeneous cluster)
ipq5332.dtsi (homogeneous cluster)
ipq6018.dtsi (homogeneous cluster)
ipq8074.dtsi (homogeneous cluster)
ipq9574.dtsi (homogeneous cluster)
msm8916.dtsi (homogeneous cluster)
msm8939.dtsi
msm8953.dtsi
msm8976.dtsi
msm8994.dtsi
msm8996.dtsi
msm8998.dtsi
qcs404.dtsi (homogeneous cluster)
qdu1000.dtsi (homogeneous cluster)
sa8775p.dtsi
sc7280.dtsi
sc8180x.dtsi
sc8280xp.dtsi
sdm630.dtsi
sm4450.dtsi
sm6125.dtsi
sm6375.dtsi
sm8350.dtsi
sm8450.dtsi

rg -l --files-without-match capacity-dmips $(rg cpu@ -l) | sort
ipq5018.dtsi (homogeneous cluster)
ipq5332.dtsi (homogeneous cluster)
ipq6018.dtsi (homogeneous cluster)
ipq8074.dtsi (homogeneous cluster)
ipq9574.dtsi (homogeneous cluster)
msm8916.dtsi (homogeneous cluster)
msm8939.dtsi
msm8994.dtsi
qcs404.dtsi (homogeneous cluster)
qdu1000.dtsi (homogeneous cluster)
sa8775p.dtsi
sc7280.dtsi
sm4450.dtsi
sm6375.dtsi
sm8350.dtsi
sm8450.dtsi

Where platforms with a single, homogeneous cluster likely don't
benefit from EAS..

Is there any chance you could dig up the correct values, for at least
some of these platforms? Or would you know whom to ask?

FWIW the one we're missing the most is sc8280xp..

Konrad

