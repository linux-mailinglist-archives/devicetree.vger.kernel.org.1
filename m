Return-Path: <devicetree+bounces-1798-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A397A8688
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:28:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 511E028199A
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E443B29F;
	Wed, 20 Sep 2023 14:28:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53783B29B
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 14:28:43 +0000 (UTC)
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2050B9
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:28:41 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c007d6159aso56263921fa.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695220120; x=1695824920; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LtxCq9Na6rpCtPYQhYFE+hYkNtnlIQOOpKV463CAC6I=;
        b=fx3mtXeOQDHaBTQqDb8QNb5zG9AA0ZRMUjibtAtPb8eIW47Rg8uPulz6+FPRi/yEQU
         T7nZjwO5DcDXFv9DRXh4MVFjvSBqE8xjoxuHOdn3uRq3BvaqgJfvLwIB1Lt3g5zsO2J2
         bA+7ifQ9dGnWwYQEvm87fDeC2VhZA54P5Y3SYwszQwamig6B4CgbiF1GEucv2cJQOAg0
         6aJFHn2IxXypSw9y4l0UV87vemzYPgKjOz6WAaQmaOBG2NTWfmtAaDkc3rMEDH1OZmkn
         DLYVuQEqEZ3hXmPO/O80mCBpRF3IIaej1VvoOJrMifY/AhdLNB/oOnzJ0lbjQZG/ZlbC
         FFcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695220120; x=1695824920;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LtxCq9Na6rpCtPYQhYFE+hYkNtnlIQOOpKV463CAC6I=;
        b=Z7Gug8mrBwLCDfQjmwo5YH0TJGDltq1tc6doqCHS3QVNacXsK8sDfplAmoR/okMPWq
         lyYILx9xJmfXcK1iPAtwiAzecr0zH9fP47qAc+Y9yvk5Ki2qTcZeUIf8qQ04OlKfgpab
         0hsY6fEuDvbOs6WDw8XntAylS/hCLtZhKZMasCKxb8k5JfvXVzgmsClOLF+H2pFEi1fU
         +to51hWcQAi7cEqZi4uae/ZUbioelsQ2M4WF69D1SGZmI6D4T4HI+r+PHv4WFwdnWxhv
         Dzw3qnBnRxh5TfnqK+6vAdk+87XRioBLvrhvM5yJ4nK2jM0L283TJ6x8iRVZoC7H6vPO
         Qytg==
X-Gm-Message-State: AOJu0YxxbJFBQIq+/X50OjUqMPSwV3JRCVOtnv+dXuIdYRsGMQI8sQY3
	+ZUCFl+0izQRHTLbtelWnTL8+Q==
X-Google-Smtp-Source: AGHT+IHy7BqgLDFZs6UQbHtu2/7vJypH4EJX8MKjk8ev1/EHp8Jj55x1ob7FX8sqs1VAb0K4W9HOQA==
X-Received: by 2002:a2e:884e:0:b0:2bc:39f5:ecb4 with SMTP id z14-20020a2e884e000000b002bc39f5ecb4mr2411051ljj.25.1695220119763;
        Wed, 20 Sep 2023 07:28:39 -0700 (PDT)
Received: from [172.20.86.172] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id f13-20020a170906390d00b00982a92a849asm9418489eje.91.2023.09.20.07.28.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 07:28:39 -0700 (PDT)
Message-ID: <911fd752-d5dc-79e2-91b7-74c70e5d8632@linaro.org>
Date: Wed, 20 Sep 2023 16:28:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 4/5] PCI: epf-mhi: Add support for SA8775P
Content-Language: en-US
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
 quic_parass@quicinc.com, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
 linux-phy@lists.infradead.org
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-5-git-send-email-quic_msarkar@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1695218113-31198-5-git-send-email-quic_msarkar@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/20/23 15:55, Mrinmay Sarkar wrote:
> Add support for Qualcomm Snapdragon SA8775P SoC to the EPF driver.
> SA8775P has the PID (0x0306) and supports HDMA. Currently, it has
> no fixed PCI class, so it is being advertised as "PCI_CLASS_OTHERS".
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>   drivers/pci/endpoint/functions/pci-epf-mhi.c | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/pci/endpoint/functions/pci-epf-mhi.c b/drivers/pci/endpoint/functions/pci-epf-mhi.c
> index b7b9d3e..4b349fd 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-mhi.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-mhi.c
> @@ -114,6 +114,23 @@ static const struct pci_epf_mhi_ep_info sm8450_info = {
>   	.flags = MHI_EPF_USE_DMA,
>   };
>   
> +static struct pci_epf_header sa8775p_header = {
const?

Konrad

