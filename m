Return-Path: <devicetree+bounces-18091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9237F510E
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 21:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 864A1B20BEB
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 20:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFE845C076;
	Wed, 22 Nov 2023 20:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uYBL+oLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E3F11B5
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:04:33 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507e85ebf50so130113e87.1
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700683471; x=1701288271; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vxoJ2WrN8KtuI3BxSCT4WLfqN6zRjmbcz4kxjayHe9s=;
        b=uYBL+oLg6Es7jNba2xDLLOHXFQS3VESv3vTJ6F1HxllKVyfsbaDlwPw1FGT88OJjky
         tgpw7gECq/m9b+bBP2vYWZcnPiNZMpEsHGY10NIjHnwsyX6auy4DI7T0lvCit9ofKKvG
         /9d/7vj1B8hpAPionCJV7eOPe2hg6Hde5qg/l3M5YLdYY6fBvSll1j2frNHm2PNGA+2J
         vJcfINUW2Kc6LeOcInS5CfvfDLnT8/vhgDHclHEiMmGND/7JIWWAxXWzOpGSpdXtD2Qv
         TMC5fhzfe6HPRaWfD6KYk+UErpr5wKlWgxaCW/7Od6AlyclugCwAiixtzXLXEGeeeJ5e
         vY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700683471; x=1701288271;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vxoJ2WrN8KtuI3BxSCT4WLfqN6zRjmbcz4kxjayHe9s=;
        b=m3+jNCPv3TDV59MeDYEk2c71Ex7Rt4EnW9wFEEnaNWwPOFEoA4ins6TsO6DihX0jMd
         Zgwop5deOlgtSagEeJDtw6btzDVzYe9KXWOdwgVTUUAHrW1Jsy+M3gwtwT4hlmFSucm7
         ptYa9JelqI7UW16iKXqx+H6PtN1a+hHGZhPcqtnvp/qlaxJGdNanwkrQ/plgrffwvpjv
         P92G6ZmMoxAq5rWBx3a1IQKHfDEUXieoas3vhZWWlCYSUZ3xztJYuoza/iLwVk8RFxmF
         e41M7ae+oQ4FQBVwN9zbaZLT9M4SehYJRrl7GPZZoxRsZ+htInxHiWT4Lhc4eV7a3n9X
         9kXg==
X-Gm-Message-State: AOJu0Yw7Ug30YJWT1ehTRjlVAm8KuKkB3TuHWDOMHA4GiWgXngHJHYmT
	rRPxGr8w3eBNNkjFEBRqYhA6Jw==
X-Google-Smtp-Source: AGHT+IGHoVufOj4nZYvDHI80PACB0Odp4KmXAYiWrXeeS8aeTV8yPi2pgjfMuFu61pWjHALztnjZJw==
X-Received: by 2002:a19:7015:0:b0:50a:5df2:f322 with SMTP id h21-20020a197015000000b0050a5df2f322mr2391908lfc.13.1700683471420;
        Wed, 22 Nov 2023 12:04:31 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z15-20020ac2418f000000b005079ff02b36sm1932808lfh.131.2023.11.22.12.04.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:04:31 -0800 (PST)
Message-ID: <4ebb0e95-933d-4c50-8220-b763698e0169@linaro.org>
Date: Wed, 22 Nov 2023 21:04:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] arm64: dts: qcom: sc7180: Add UFS nodes
Content-Language: en-US
To: David Wronek <davidwronek@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Herbert Xu
 <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Joe Mason <buddyjojo06@outlook.com>,
 hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231117201720.298422-1-davidwronek@gmail.com>
 <20231117201720.298422-7-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231117201720.298422-7-davidwronek@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/17/23 21:08, David Wronek wrote:
> Add the UFS, QMP PHY and ICE nodes for the Qualcomm SC7180 SoC.
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
[...]

> +		ice: crypto@1d90000 {
> +			compatible = "qcom,sc7180-inline-crypto-engine",
> +				     "qcom,inline-crypto-engine";
> +			reg = <0x0 0x01d90000 0x0 0x8000>;
0x0 -> 0 for consistency with other nodes

Konrad

