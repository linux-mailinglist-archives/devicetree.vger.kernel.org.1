Return-Path: <devicetree+bounces-2138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C127A9C77
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:18:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1020AB222EC
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D80B5134AB;
	Thu, 21 Sep 2023 17:49:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D53A29403
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:46 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E8287F37D
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:35:35 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-32155a45957so1263564f8f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695317734; x=1695922534; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uEg9oi9fsFQj5N/t7+XiCLJ8W8KXemvDmRrScebryl0=;
        b=wAX25j+EexOaB/OLdX0u27M37sh3VOSFK2UdcZdGMfF5kyScbWI8uRggD073WzzOzh
         Okc9kFM7wAHKZXzfgP/7exy7WM0O8fSGtnO+8ZheSGm6SV7eNM2d8vVBYsQ3oNokAjZu
         mrY6Bp5kGTWrYxFlh9pekSm0Tg8gTdagsCrtn/4DLLfHEB+oivrW2uEd/knD4GDm2ZU8
         dIEMB21MnWdgGS+ety+k49Tuwav7p2CRYShacsWWb7fWWcub4dhU8SCNe/iSvsTvu3g9
         DUNTFtJF4dCFzHsKuEFvqsv22Apy0Zn7Hi9DOlYROwmqT3AzC7sZg7HWvVCkdIxr9q0q
         YqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317734; x=1695922534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uEg9oi9fsFQj5N/t7+XiCLJ8W8KXemvDmRrScebryl0=;
        b=JHt9GemvOVftc/3Pr5dZeJnc/FWw/6QjmW+dGhZoCh6zgmViUXfUlKHrvDlPa4cguD
         J5cRgHEhYH4hKZM84NGr1y/0cFq6IPWxLndxPvmBvjOzl0iipgRZz9I6w58gdIh7SSA4
         o7+ujC6b+TdmsL46HjzPk6n6jkhZ6jUw3KIc0G4ClmWf7xMCLFFACpzYDPM6saP03Arz
         Na01eUbqJlO2UKnCmGSA44DLdzhCrLbz0kfDTnVSIAB6eCYoE4iWvGgwgzv/C01MOPrS
         O4log9uC7PfmVka9Rlg8G2zn+YI1plxmc6+mtgJ8scmSO9ovDBCY5JzvhaMPHW6tPS46
         eCSg==
X-Gm-Message-State: AOJu0YwtzooAR5iv1uj4fxKPtOU+TDUv2/zf3KGi2N7jz5XoB/EQ/P3u
	SbwHMqqzeVZXJ1vqIjWRtVJA5huxb+M/IGTEoyfPhg==
X-Google-Smtp-Source: AGHT+IHQrrrIHyHEDSkfYu9SO7d0pvsOVdZ1oGCXmoscM6UKG4H7ogFMpzJNut6Kcge3kLh4skQepQ==
X-Received: by 2002:a2e:86d6:0:b0:2bc:cc1a:139c with SMTP id n22-20020a2e86d6000000b002bccc1a139cmr4675996ljj.11.1695297522786;
        Thu, 21 Sep 2023 04:58:42 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id h10-20020a17090634ca00b00997e00e78e6sm931391ejb.112.2023.09.21.04.58.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Sep 2023 04:58:41 -0700 (PDT)
Message-ID: <707f3f85-d38d-f112-16a7-2c602c453298@linaro.org>
Date: Thu, 21 Sep 2023 13:58:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: qcom,qmp-usb: Add SDX75 USB3 PHY
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1695291692-18850-1-git-send-email-quic_rohiagar@quicinc.com>
 <1695291692-18850-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1695291692-18850-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.4 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 21/09/2023 12:21, Rohit Agarwal wrote:
> Add dt-bindings for USB3 PHY found on Qualcomm SDX75.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


