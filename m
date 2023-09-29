Return-Path: <devicetree+bounces-4589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A85777B3382
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:25:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 465572831E7
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 13:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365481A5AB;
	Fri, 29 Sep 2023 13:25:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF5D11718
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 13:25:02 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D4DD11F
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:25:00 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso1904103366b.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695993899; x=1696598699; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qagqmXxFav4/9NIFK4762ByrJQt8UaYPm4niYdjtpZs=;
        b=UhyPKj/6Lfgzj8AUJbDbZ2uX39qMRQN+uf494SanraWUST+olUUTuKzoY4GQQQVA/t
         kECOgirNcm7aU/WTX1O1STdVdki380GnMO8waBrA3dmtjmQ2XAmD/1AfVaTZBw0Of5Dd
         g47v/qwSFGzvsBm0BC7dR/mm90l2xs/naFkH67YL0gR+KfGbXN3fqcHO6hSl8WtGgjCH
         d1TuUdGFfhpQVEhwZjWCtc+8RJXs6Z3x40g2i0eQ94z2a52zX0qLHNcmbNhwE1GDsl5B
         pzn8iDXs0yXjLEl1wBiXebDkMymH8g8NAs1SbxyFQW51dzYGzsSYhBaRJnhupk0keBtP
         1IgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695993899; x=1696598699;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qagqmXxFav4/9NIFK4762ByrJQt8UaYPm4niYdjtpZs=;
        b=ktAeT813mQ7QCQQuafvbCCRG/k+zrLt2xxzKwsqQWFdD241FRrrXKO+XU+NnsvvkJV
         kWfzZUYH7dAKaVeP0HwF2c8aDl93OTN3530PUYPbqZwRJ7mp8JUjc8cocfTG726XDIgx
         Otabww4CAYM5GOe2vybGDLr4EDv5f+togDJVPAAeOMK/AOjrmVb5GtJoKGMstmrHmSNz
         kgmToZboS7QBRsfQVU/P+ebKifnEpqnUNtXmEcH5a5+IP2tZc0I/1v6juoGeaVgREiP7
         RexfZXSv6OrY/XTEgLiY5jrSHucVyp9QD0PtzU8XApTrtExjChlrkEUH6lQz/dKnI6gu
         IeIQ==
X-Gm-Message-State: AOJu0YzZhTuC3WOyMOsWTot5fxX8sv/OgFe+NzekBu40EexhAb5dH/S2
	fIvVtI8H7xIfGFvN2ZHPAzMMjQ==
X-Google-Smtp-Source: AGHT+IG85WjZj97kdYjVbN8tWOk2oDGOZdRoVaBMP7/YHT4SQd1vdx4B2NPE04FCujEA10aJrFrTYQ==
X-Received: by 2002:a17:907:8b8c:b0:9a1:bd33:4389 with SMTP id tb12-20020a1709078b8c00b009a1bd334389mr5309521ejc.74.1695993899056;
        Fri, 29 Sep 2023 06:24:59 -0700 (PDT)
Received: from [192.168.0.123] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id h13-20020a170906584d00b00992b8d56f3asm12377832ejs.105.2023.09.29.06.24.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 06:24:58 -0700 (PDT)
Message-ID: <954ec977-f6a1-b8de-d267-74c86eca5161@linaro.org>
Date: Fri, 29 Sep 2023 15:25:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH V4 2/4] arm64: dts: qcom: sc7280: Add UFS nodes for sc7280
 soc
To: Nitin Rawat <quic_nitirawa@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, mani@kernel.org, alim.akhtar@samsung.com,
 bvanassche@acm.org, avri.altman@wdc.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230929131936.29421-1-quic_nitirawa@quicinc.com>
 <20230929131936.29421-3-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230929131936.29421-3-quic_nitirawa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/29/23 15:19, Nitin Rawat wrote:
> Add UFS host controller and PHY nodes for sc7280 soc.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
Not sure if intentionally, but you didn't include my review tags from v3.

[...]

> +			interconnects = <&aggre1_noc MASTER_UFS_MEM 0 &mc_virt SLAVE_EBI1 0>,
> +					<&gem_noc MASTER_APPSS_PROC 0 &cnoc2 SLAVE_UFS_MEM_CFG 0>;
include dt-bindings/interconnect/qcom,icc.h

interconnects = <&aggre1_noc MASTER_UFS_MEM QCOM_ICC_TAG_ALWAYS
		 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
		<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
		 &cnoc2 SLAVE_UFS_MEM_CFG QCOM_ICC_TAG_ALWAYS>;

Konrad

