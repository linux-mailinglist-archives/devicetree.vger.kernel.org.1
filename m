Return-Path: <devicetree+bounces-5044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C3A7B4ED2
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 11:16:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id C0C78B20C80
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D836E79E4;
	Mon,  2 Oct 2023 09:16:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025978C14
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:15:58 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94C35AB
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 02:15:54 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5041d6d8b10so25837306e87.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 02:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696238153; x=1696842953; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FTFxgVOu6FqWzooz8ERS8xM8WPaMS6pYudSyg6T5KGE=;
        b=Q8a5ie5NnUnsqKHu4PrFASCRpmQujPv25B0MS5CiBzia/6gCkeTHlE68bmPGtZ14e1
         GjUPKR6oLRG4Hli+YfOUP5dEBATV2FI9Roox20QuCue8YyQ2P/igeSJbpJbtDI6djKk9
         YRnkPzuk2+cCc3AMbQ72rVl1ulPtcn37saxXZ/uC6M+TulKG5Pcq2JtXFC5yh20p+8ag
         HuFKTtxgE/j95JWanANMV7wxMTF0qkYyDdswP8L8qcZ1T2BtdMLaJqq2CLSteEdf0Yjg
         69VlOqkNxyEENdVDwdUVf+C9JYBAR9vkOyFhU4R0UjkhBOMN/wu87ATKlEzeNakRWKZQ
         Vpwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696238153; x=1696842953;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FTFxgVOu6FqWzooz8ERS8xM8WPaMS6pYudSyg6T5KGE=;
        b=dSJsFXgLCDXaMDRi8Wf7DkIcR1IrP+A26HWYQPeBkux1zq9uE32Xp9DGBNB0SLTGC+
         pMI/A8P7uRafFqYqxt0YFvunvmjruWfBpyDAe9IneoMMF0e9EsPvMw+5DkTHW6yJs9vp
         jTRIXFXo8FVAlpf/foqPDbMwyi8SInsjDyLnJwoBNU2RDJPTYr83/ofa+Hh4fjXn/MuL
         059DtmP64TVa50JbJDZEKeTDsqSFvKdkFbVVLOAr/y43bwr0BFpoIT3fYh2GWzNXV7Hw
         6sk7MuBDYXyWDSr+pFIux9IQlXSDl0VCJFzofiXqf2MeKw0w+FUt+Ixmj8UmCGoXY2Fm
         +4gA==
X-Gm-Message-State: AOJu0YwlF+qG+Q5hm9/PUMdNhdrNEILNRTpvg4F03Fz2jLvjRRZTdXap
	TGjgqQL4qMh2708127jXGpGD7g==
X-Google-Smtp-Source: AGHT+IG7MFpGpFBBFGxenUypPs1uqY9lxRFgjFyW+IeEhpy3S168urO5h+mvMFwpIIgF4Xj6SANX/A==
X-Received: by 2002:a19:9141:0:b0:503:3cc:cd39 with SMTP id y1-20020a199141000000b0050303cccd39mr8161061lfj.8.1696238152842;
        Mon, 02 Oct 2023 02:15:52 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id t5-20020ac243a5000000b004fe26e36350sm4660646lfl.253.2023.10.02.02.15.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 02:15:52 -0700 (PDT)
Message-ID: <41e07183-e4bc-2bd6-8bc4-f5b6ab7f472c@linaro.org>
Date: Mon, 2 Oct 2023 11:15:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-xiaomi-beryllium: enable
 flash led
Content-Language: en-US
To: Caleb Connolly <caleb.connolly@linaro.org>, Andy Gross
 <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Joel Selvaraj <joelselvaraj.oss@gmail.com>
References: <20231001-b4-sdm845-flash-dts-v1-0-275a3abb0b10@linaro.org>
 <20231001-b4-sdm845-flash-dts-v1-2-275a3abb0b10@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231001-b4-sdm845-flash-dts-v1-2-275a3abb0b10@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/1/23 19:19, Caleb Connolly wrote:
> From: Joel Selvaraj <joelselvaraj.oss@gmail.com>
> 
> Configure and enable the dual-tone on the PocoPhone F1
> 
> Signed-off-by: Joel Selvaraj <joelselvaraj.oss@gmail.com>
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

