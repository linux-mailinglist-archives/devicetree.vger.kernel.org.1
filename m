Return-Path: <devicetree+bounces-4592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAA07B3393
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:28:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7B40128362B
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 13:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C0351A5B5;
	Fri, 29 Sep 2023 13:28:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60D611718
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 13:27:58 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1882F1AA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:27:56 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9936b3d0286so1900760166b.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 06:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695994074; x=1696598874; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RR4iyWCnxxiTXwK+vJVjfTwNi467Lc8/0G6NTNSWVB0=;
        b=IWSpDQt5ZerILotY2LCgGMHfGcidH514RvuZ37mI0J7ymSoXo3/9U1DAxrZnl0Ang5
         mmzigvtU5Alx+b9wvr+VAVWIZYtLzWnIs96MNk+xsdIrv6YDp9NSOiEFq05ndeU8AAFM
         Dcaz8y5pVICB2kWXAmVCfURIK8E3mwcR4OXckIe1ckVJmSrf9SmdsmghKYLIVQRpJ/AH
         WL9OVkEX2kzt2UcTzIVJw/8n6bFjhqVDKhvMW6km7CP4/5k6hKITv2L0UITAi0TJjQob
         jZKXt9ZmsBQ8dHtsKeA5mZ958NtyFrXP+w1P4OmxuBaMdj7cCQw8CGwNiL6HFcxPkQLi
         3C9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695994074; x=1696598874;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RR4iyWCnxxiTXwK+vJVjfTwNi467Lc8/0G6NTNSWVB0=;
        b=AFpYEN70f2wHiDh7UgY68N2ts9N3Reo4Bl0hejr5oDWXdclXczrM3GnVw0qKwvTltS
         C1WGCEKDZNg9dnJR9DjOvUZ0SBVQWOTB20LXzDGYP5DTo96A3DdPTtNt/7/OhSGXjVfx
         7vF4e443MpxhK9oeeFLw9fljQO9/ZT5Zpd8qmr0p2nQiNOSs2CnFOyU3hUU0o3Gsl+V9
         aKl4g0gwOkXZmFMqjgLzrI4N8RA9A1vhZ5aVmJ4mqUy7DFmaPqG6UpAQWptxOerjTQ2S
         hWFu9vEgwbTR9cyno89qgPSsa2VGbAIeJyoEsraNvm9tRG3E1cAsC7KjrMiVuzt9IPue
         34qg==
X-Gm-Message-State: AOJu0Yxd5VobFlfJ9gEw0SNkfxA2LUikdBry6k1Kl8FhQBRLBVQuoPZ6
	38hvpNCREaiJfb5rMA71vb6nlQ==
X-Google-Smtp-Source: AGHT+IFLyGaiTMrR/ocztQjw9LLZesCasMqbpd1yQIMKHkXVtKlcB84ep632aGhUJa3c+jjPh7ZHYg==
X-Received: by 2002:a17:906:20dd:b0:9ae:729c:f647 with SMTP id c29-20020a17090620dd00b009ae729cf647mr3368023ejc.77.1695994074437;
        Fri, 29 Sep 2023 06:27:54 -0700 (PDT)
Received: from [192.168.0.123] (178235177217.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.217])
        by smtp.gmail.com with ESMTPSA id dt18-20020a170906b79200b0099bcf9c2ec6sm12351420ejb.75.2023.09.29.06.27.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 06:27:54 -0700 (PDT)
Message-ID: <11b9d087-4668-e3a7-cae4-95b810fa64d1@linaro.org>
Date: Fri, 29 Sep 2023 15:27:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH V4 0/4] Add UFS host controller and Phy nodes for sc7280
Content-Language: en-US
To: Nitin Rawat <quic_nitirawa@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, mani@kernel.org, alim.akhtar@samsung.com,
 bvanassche@acm.org, avri.altman@wdc.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230929131936.29421-1-quic_nitirawa@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230929131936.29421-1-quic_nitirawa@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/29/23 15:19, Nitin Rawat wrote:
> This patch adds UFS host controller and Phy nodes for Qualcomm sc7280 SOC
> and sc7280 Board.
> 
> Changes from v3:
> - Addresses Mani comment to include interconnect entry.
These are not the only changes you've made.

> 
> Changes from v2:
> - Addressed Konrad comment to update binding qcom,ufs.yaml
> - Addresses mani/konrad comment to align ufs clock entry in devicetree.
> 
> Changes from v1:
> - Addressed mani comment to separate soc and board change.
> - Addressed mani comment to sort ufs node in ascending order.
> 
> Nitin Rawat (4):
>    scsi: ufs: qcom: dt-bindings: Add SC7280 compatible string
>    arm64: dts: qcom: sc7280: Add UFS nodes for sc7280 soc
>    arm64: dts: qcom: sc7280: Add UFS nodes for sc7280 IDP board
>    dt-bindings: ufs: qcom: Align clk binding property for Qualcomm UFS
> 
> Nitin Rawat (4):
>    scsi: ufs: qcom: dt-bindings: Add SC7280 compatible string
>    arm64: dts: qcom: sc7280: Add UFS nodes for sc7280 soc
>    arm64: dts: qcom: sc7280: Add UFS nodes for sc7280 IDP board
>    dt-bindings: ufs: qcom: Align clk binding property for Qualcomm UFS
And this is bad.

Please use the b4 tool [1], half of the issues will be solved..

Konrad

[1] https://b4.docs.kernel.org/

