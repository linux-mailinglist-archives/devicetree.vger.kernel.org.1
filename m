Return-Path: <devicetree+bounces-10811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B922C7D2CD8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:37:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6B991C20953
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E98E4C9E;
	Mon, 23 Oct 2023 08:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PPhvIOR7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CC3101EC
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:37:18 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7F40D5D
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:37:16 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c5087d19a6so44869221fa.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698050235; x=1698655035; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=me2MC4nn/CV3tpkA7KZB34ZTwycbNAKshOBYMr2X+Pk=;
        b=PPhvIOR7tf5eRKVGIOnItTLxoqVfUtMphG2mxi5WG83HKhPmatY8WspWdceVH+Cg98
         tPjI+S9JB2VUevZ5k4WVdY/GNpKFmANGaU62cBOwNV+d875stIGB6pGbDiHI0/guxG3O
         cZ5GUT+jyJqDHGUcrZrryE0G6mura5rZPg+ZhayY0tiW3RPFhmGdPJg3TJ0iDTRVy+7R
         UymCwJWTXvYwYgB4+1SBaeX0BSbkVVhmEqPyc5eB//esbWk8et42rprRHXGu/q/nfi/J
         WDQaBL4CDuTbYmsdvnkZWs+0P7RfzJka7VqSHui7+91ih2KozkMrxwxp4M6d6gUX/TW+
         Mg+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698050235; x=1698655035;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=me2MC4nn/CV3tpkA7KZB34ZTwycbNAKshOBYMr2X+Pk=;
        b=DIvA3calsAN90OA+uatIJmK0rHzfbjpZqnvILV6GNhQZqE9QWFTF1cmKe6exH7Rpp9
         upwTdBGVrWIoFbOI7hwkfSkB8bpVlhDsZG5KJP8M9/OVt2t94bw08RxKH9jCDVDPTXe+
         Mzg1UXLGKhdd+dFZNxuqJOsA3heUbgiAsSf8/BtoovAFV7jt/9tKqmPSt7ZYQM30FUhg
         M8KS2ZDv24pyxgjjsW0Lx2BPHWBd6MrmuMvjBCvs2MAd+kh2BonnFwfi8cndJjSDegEv
         2J+EOuNx/B5EgCSYFVic4YlILpCeGsuWNd1Y3CGlkpvqChKSBDwNNhc1S5wG8WmDM93N
         j8GA==
X-Gm-Message-State: AOJu0Yz6GuWqsPV3PncnfEGGZpMmWstRSblZEDm7D2N+JvrDQDCDlpfk
	g3VENCOKOEL4c2aD6hBf5GXutQ==
X-Google-Smtp-Source: AGHT+IHlKoNRRLj9D+bLl/GMYZXBlYtqehKTnbdPLVHoetbAT9+UytWeVgCL/DfTleBsee6/yAUHYQ==
X-Received: by 2002:a2e:a589:0:b0:2c5:1a8e:e4c9 with SMTP id m9-20020a2ea589000000b002c51a8ee4c9mr6107923ljp.31.1698050234775;
        Mon, 23 Oct 2023 01:37:14 -0700 (PDT)
Received: from [192.168.86.24] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id az20-20020a05600c601400b004054dcbf92asm8758062wmb.20.2023.10.23.01.37.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 01:37:14 -0700 (PDT)
Message-ID: <06a2c115-278a-47e0-b5ba-74639b6b23aa@linaro.org>
Date: Mon, 23 Oct 2023 09:37:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: qcom,q6dsp-lpass-ports: Add WSA2
 audio ports IDs
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Banajit Goswami <bgoswami@quicinc.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231019153541.49753-1-krzysztof.kozlowski@linaro.org>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20231019153541.49753-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *

Hi Krzysztof,

On 19/10/2023 16:35, Krzysztof Kozlowski wrote:
> Add defines for audio ports used on Qualcomm WSA2 LPASS (Low Power
> Audio SubSystem).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
> index 39f203256c4f..c5ea35abf129 100644
> --- a/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
> +++ b/include/dt-bindings/sound/qcom,q6dsp-lpass-ports.h
> @@ -139,6 +139,11 @@
>   #define DISPLAY_PORT_RX_5	133
>   #define DISPLAY_PORT_RX_6	134
>   #define DISPLAY_PORT_RX_7	135
> +#define WSA2_CODEC_DMA_RX_0	136
> +#define WSA2_CODEC_DMA_TX_0	137
> +#define WSA2_CODEC_DMA_RX_1	138
> +#define WSA2_CODEC_DMA_TX_1	139
> +#define WSA2_CODEC_DMA_TX_2	140
>   

Patches looks fine as it is, but do you realize that this s a dead code 
w.r.t upstream.
WSA2 is used only with 4 speaker setup and in such cases we use WSA 
codec dma to drive 4 channels.

So WSA2 will not be used by itself.
I would prefer support for this to be added when we are really able to 
test WSA2 by itself.

thanks,
Srini

>   #define LPASS_CLK_ID_PRI_MI2S_IBIT	1
>   #define LPASS_CLK_ID_PRI_MI2S_EBIT	2

